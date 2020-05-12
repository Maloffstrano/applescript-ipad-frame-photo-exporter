-- Title: applescript-ipad-frame-photo-exporter
-- Author: Sheldon Maloff
-- License: CC BY-SA (Attribution + ShareAlike)
-- GitHub: https://github.com/Maloffstrano/applescript-ipad-frame-photo-exporter
-- GitHub clone: git@github.com:Maloffstrano/applescript-ipad-frame-photo-exporter.git
--
-- How to use this file:
-- 1) Script Editor
--    To use the macOS native _Script Editor_ tool, copy the contents of this 
--    file into the _Script Editor_ macOS app. Save the file with an _scpt_ 
--    extension and press the Play button on the toolbar to run the script.
-- 2) Visual Studio Code
--    To use Visual Studio Code (VScode), make sure you have the AppleScript
--    extension to VScode installed. Open this file in VScode and use the
--    keystroke Shift-Option-R command (or the command palette _AppleScript:
--    Run Script_) to run the script. On macOS Catalina, you will get a 
--    security prompt about every application this script "tells" when the
--    code is run from VScode.
--
-- Short description:
-- Exports selected images from the macOS Photos app and then uses macOS 
-- Keynote app to process the images down to first generation iPad screen size. 
-- Each image is captioned with either the EXIF Description, EXIF Title or 
-- EXIF creation date. For a longer description, see the README.md on GitHub.
--
-- Inpiration:
-- This script was inspired by a Pages example at: https://iworkautomation.com/pages/image.html

-- The list of landscape and portrait frames. Names are used as folder prefixes.
property landscapeFrames : {"Landscape"}
property portraitFrames : {"Portrait1", "Portrait2"}

-- Choose the display aspect ratio. First generation iPads are 4:3.
-- 4:3 aspect ratio
property imageShortDimension : 768
property imageLongDimension : 1024
--  16:9 aspect ratio
-- property imageShortDimension : 1080
-- property imageLongDimension : 1920

-- Use CMD-T (Font > Show Fonts) in Script Editor to see available fonts.
property captionFont : "Sheldon_Printing"    -- My custom hand writing font
-- property captionFont : "Helvetical Neue"  -- Standard Apple font
property captionSize : 20
property captionColor : "white"
property captionOpacity : 60
property captionBottomPadding : 3

-- Adjust this value depending on how big the final images should be.
property jpegCompressionFactor : 0.8 -- ~200-300KB files

-- For the export to work, Keynote needs permission to write to whatever is 
-- specified here.
property defaultExportFolder : path to documents folder
property resultFolderPrefix : "Frame-"

-- Keynote theme to use. It doesn't really matter, script overrides everything.
property themeName : "Basic White"


my go()

on go()
    my ensureAppIsRunning("Photos", "Photos is not running", "Start Photos, select 1 or more images and then try the script again.")
    my ensurePhotosSelected()

    set runDate to current date
    set photosExportFolder to my createDatedFolder(defaultExportFolder, "Photos-Export", runDate)
    my exportPhotos(photosExportFolder)
    
    set landscapeFolders to my createFrameFolders(photosExportFolder, landscapeFrames)
    set portraitFolders to my createFrameFolders(photosExportFolder, portraitFrames)
    
    tell application "Finder" to set exportedImageFiles to get every file of photosExportFolder
    my ensurePhotosExported(photosExportFolder, count of exportedImageFiles)
    
    my moveOriginalsToFrameFolders(exportedImageFiles, portraitFolders, landscapeFolders)
    
    tell application "Finder"
        repeat with folderToProcess in portraitFolders
            set resultFolder to my createDatedFolder(defaultExportFolder, resultFolderPrefix & name of folderToProcess, runDate)
            my processImagesWithKeynote(get every file of folderToProcess, resultFolder, imageShortDimension, imageLongDimension)
        end repeat
        
        repeat with folderToProcess in landscapeFolders
            set resultFolder to my createDatedFolder(defaultExportFolder, resultFolderPrefix & name of folderToProcess, runDate)
            my processImagesWithKeynote(get every file of folderToProcess, resultFolder, imageLongDimension, imageShortDimension)
        end repeat
        
        delete photosExportFolder
    end tell
end go

-- Ensure the named app is running. 
-- This handler may terminate the script.
-- Based on: https://stackoverflow.com/a/16071855
on ensureAppIsRunning(appName, dialogTitle, dialogMessage)
    if application appName is not running then
      tell application "Finder"
        activate
        display dialog dialogMessage with title dialogTitle buttons {"Quit"} default button "Quit"
        my endScript()
      end tell
    end if
end ensureAppIsRunning

-- Ensures the user has selected photos.
-- This handler may terminate the script.
on ensurePhotosSelected()
    local selectedCount
    local dialogResult

    tell application "Photos"
        activate
        set selectedCount to count of selection
        if selectedCount is 0 then
            display dialog "Select 1 or more images and then try the script again." ¬
                with title "No images selected" ¬
                buttons {"Quit"} default button "Quit"
            my endScript()
        else
            set dialogResult to button returned of ¬
                (display dialog "Images to export: " & selectedCount ¬
                    with title "Photos export" ¬
                    buttons {"Quit", "Continue"} default button "Continue")
            if dialogResult is "Quit" then
                my endScript()
            end
        end if
    end tell
end ensurePhotosSelected

-- Shows the exported folder.
-- This handler may terminate the script.
on ensurePhotosExported(exportFolder, fileCount)
    tell application "Finder"
        activate
        open exportFolder
        
        if fileCount is 0 then
            set buttonText to "Quit"
        else
            set buttonText to "Continue"
        end if
        
        -- WEIRD: This dialog is needed to give Finder file read access. Why?
        display dialog "Photos exported images:" & fileCount ¬
            with title "Exported photos" ¬
            buttons buttonText default button buttonText
        
        if fileCount is 0 then
            my endScript()
        end if
    end tell
end ensureFilesSelected

-- Ends the script with a user cancelled error.
on endScript()
    error number -128
end endScript

on exportPhotos(exportFolder)
    tell application "Photos"
        activate
        set selectedImages to selection
        export selectedImages to file (my pathToString(exportFolder))
    end tell
end exportPhotos

-- Distribute the original files evenly into the portrait and landscape folders
on moveOriginalsToFrameFolders(imageFiles, portraitFolders, landscapeFolders)
    tell application "Finder"
        set currentLandscapeFrameIndex to 1
        set currentPortraitFrameIndex to 1
        
        local destinationFolder
        
        repeat with imageFile in imageFiles
            set imageHeight to my spotlightProperty("kMDItemPixelHeight", imageFile)
            set imageWidth to my spotlightProperty("kMDItemPixelWidth", imageFile)
            
            if imageWidth < imageHeight then
                set {destinationFolder, currentPortraitFrameIndex} to my nextFolder(portraitFolders, currentPortraitFrameIndex)
            else
                set {destinationFolder, currentLandscapeFrameIndex} to my nextFolder(landscapeFolders, currentLandscapeFrameIndex)
            end if
            move file (my pathToString(imageFile)) to folder (my pathToString(destinationFolder))
        end repeat
    end tell
end moveOriginalsToFrameFolders

on processImagesWithKeynote(selectedImages, outputFolder, slideWidth, slideHeight)
    tell application "Keynote"
        -- Uncomment if you want to see Keynote in action
        -- activate
        
        -- make a new page layout document
        set keynoteDocument to make new document with properties {document theme:theme themeName, height:slideHeight, width:slideWidth}
        
        tell keynoteDocument
            -- add images, one per slide
            repeat with selectedImage in selectedImages
                make new slide
                
                tell current slide
                    -- import the image
                    set importedImage to make new image with properties {file:my pathToAlias(selectedImage)}

                    -- center the image on the slide
                    tell importedImage
                        set importedHeight to height 
                        -- setting one image dimension to the slide dimension causes the 
                        -- other to overflow due to "contrain proportions" 
                        if importedHeight is slideHeight then
                            set its width to slideWidth
                        else
                            set its height to slideHeight
                        end if
                        copy {width of it, height of it} to {actualWidth, actualHeight}
                        -- center the image on the slide
                        set its position to {-(actualWidth - slideWidth) div 2, -(actualHeight - slideHeight) div 2}
                    end tell

                    -- apply the caption to the image, if any
                    set captionText to my extractCaption(selectedImage)
                    if captionText is not "" then
                        set imageCaption to make new text item with properties ¬
                            {object text:captionText ¬
                                , width:slideWidth ¬
                                , height:captionSize ¬
                                , position:{0, slideHeight - captionSize - captionBottomPadding} ¬
                                , opacity:captionOpacity}
                        
                        tell object text of imageCaption
                            set properties to {font:captionFont, size:captionSize, color:captionColor}
                        end tell
                    end if

                end tell
            end repeat
            
            delete first slide -- First slide is always blank
        end tell
        
        export keynoteDocument to my pathToAlias(outputFolder) ¬ 
            as slide images ¬
            with properties ¬
            {compression factor:jpegCompressionFactor ¬
                , image format:JPEG ¬
                , export style:IndividualSlides}
        
        delete keynoteDocument
        quit
    end tell
end processImagesWithKeynote

-- Get the image description, title or create date
on extractCaption(imageFile)
    try
        set the embeddedCaption to my spotlightProperty("kMDItemDescription", imageFile)
        if embeddedCaption is "" then
            set the embeddedCaption to my spotlightProperty("kMDItemTitle", imageFile)
        end if
        if embeddedCaption is "" then
            set the embeddedCaption to my imageCreationYearMonth(imageFile)
        end if
        return embeddedCaption
    on error
        return ""
    end try
end extractCaption

on spotlightProperty(propertyName, imageFile)
    local command
    local shellResult
    
    set command to "mdls -raw -name " & propertyName & " " & quoted form of my pathToPosixString(imageFile)
    set shellResult to do shell script command
    
    if shellResult is "(null)" then
        return ""
    else
        return shellResult
    end if
end spotlightProperty

-- Convert anything to an alias
on pathToAlias(thePath)
    tell application "System Events"
        try
            return (path of disk item (thePath as string)) as alias
        on error
            return (path of disk item (path of thePath) as string) as alias
        end try
    end tell
end pathToAlias

-- Convert anything to a string path
on pathToString(thePath)
    tell application "System Events"
        try
            return path of disk item (thePath as string)
        on error
            return path of thePath
        end try
    end tell
end pathToString

-- Convert anything to a POSIX string path
on pathToPosixString(thePath)
    tell application "System Events"
        try
            set thePath to path of disk item (thePath as string)
        on error
            set thePath to path of thePath
        end try
    end tell
    return POSIX path of thePath
end pathToPosixString

-- Returns a string as form YY/MM representing the time the photo was taken
on imageCreationYearMonth(imageFile)
    set createDate to spotlightProperty("kMDItemContentCreationDate", imageFile)
    set createdYear to characters 3 thru 4 of createDate as string
    set createdMonth to characters 6 thru 7 of createDate as string
    return createdYear & "/" & createdMonth
end imageCreationYearMonth

-- Get the date and time suitable for part of a folder name
on formattedTime(theTime)
    set theYear to year of theTime as string
    set theMonthName to month of theTime as string
    set theDay to zeroPad(day of theTime as string)
    set theHour to zeroPad(hours of theTime as string)
    set theMinute to zeroPad(minutes of theTime as string)
    set theSecond to zeroPad(seconds of theTime as string)
    
    set formattedDate to theYear & "-" & theMonthName & "-" & theDay & "_" & theHour & "-" & theMinute & "-" & theSecond
    return formattedDate
end formattedTime

-- Pad theValue with a leading zero when less than 10.
on zeroPad(theValue)
    text -2 thru -1 of ("00" & theValue as string)
end zeroPad

on createFolder(parentFolder, folderName)
    tell application "Finder"
        set theFolder to make new folder at parentFolder with properties {name:folderName}
    end tell
    return theFolder
end createFolder

-- Create a uniquely named folder and return the folder object.
on createDatedFolder(parentFolder, folderPrefix, theDate)
    return my createFolder(parentFolder, folderPrefix & "-" & my formattedTime(theDate))
end createDatedFolder

-- Create a folder for each frame name in the list and return the list of folders.
on createFrameFolders(parentFolder, frameList)
    set folderList to {}
    repeat with frameCount from 1 to the count of frameList
        set frameName to item frameCount of frameList
        set end of folderList to my createFolder(parentFolder, frameName)
    end repeat
    return folderList
end createFrameFolders

-- Return the next destination folder from the list of folders
on nextFolder(folderList, currentFolderIndex)
    local currentFolder
    set currentFolder to item currentFolderIndex of folderList
    set currentFolderIndex to currentFolderIndex + 1
    if currentFolderIndex > (count of folderList) then
        set currentFolderIndex to 1
    end if
    return {currentFolder, currentFolderIndex}
end nextFolder
