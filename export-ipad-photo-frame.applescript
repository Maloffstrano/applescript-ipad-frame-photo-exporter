-- Title: applescript-ipad-frame-photo-exporter
-- Author: Sheldon Maloff
-- License: CC BY-SA (Attribution + ShareAlike)
-- GitHub: https://github.com/Maloffstrano/applescript-ipad-frame-photo-exporter
-- GitHub clone: git@github.com:Maloffstrano/applescript-ipad-frame-photo-exporter.git
--
-- How to use:
-- 1) Script Editor
--    To use the macOS native _Script Editor_ tool, copy the contents of this 
--    file into the _Script Editor_ macOS app. Save the file with an _scpt_ 
--    extension and press the Play button on the toolbar to run the script.
-- 2) Visual Studio Code
--    To use Visual Studio Code (VScode), make sure you have the AppleScript
--    extension to VScode installed. Open this file in VScode and use the
--    keystroke Shift-Option-R command (or the command palette _AppleScript:
--    Run Script_) to run the script.
--
-- Short Description:
-- Exports selected images from the macOS Photos app and then uses macOS 
-- Keynote app to process the images down to first generation iPad screen size. 
-- Each image is captioned with either the EXIF Description, EXIF Title or 
-- EXIF creation date. For a longer description, see the README.md on GitHub.
--
-- To do:
-- 1) Center and crop images that are not 4:3. Currently an image
-- is cropped on the right and bottom when it is not 4:3.
--
-- Inpiration:
-- This script was inspired by a Pages example at: https://iworkautomation.com/pages/image.html

property landscapeFrames : {"Landscape"}
property portraitFrames : {"Portrait1", "Portrait2"}

property themeName : "Basic White"
property defaultMargin : 36
property textItemInset : 12

-- 4:3 aspect ratio
property imageShortDimension : 768
property imageLongDimension : 1024

--  16:9 aspect ratio
-- property imageShortDimension : 1080
-- property imageLongDimension : 1920

-- Choose the font fromm your available fonts. 
-- Use CMD-T (Font > Show Fonts) in the Script Editor to view your available fonts.
property textFont : "Sheldon_Printing"
property textSize : 20
property textColor : "white"
property textPadding : 3
property textOpacity : 60

property jpegCompressionFactor : 0.8

-- For the export to work, Keynote needs permission to write to whatever is specified here
property defaultExportFolder : path to documents folder

my go()

on go()
    my ensureAppIsRunning("Photos", "Photos is not running", "Start Photos, select 1 or more images and then try the script again.")
    my ensurePhotosSelected()

    set photosExportFolder to my createDatedFolder(defaultExportFolder, "Photos-Export")
    my exportPhotos(photosExportFolder)
    
    set landscapeFolders to my createFrameFolders(photosExportFolder, landscapeFrames)
    set portraitFolders to my createFrameFolders(photosExportFolder, portraitFrames)
    
    tell application "Finder" to set exportedImageFiles to get every file of photosExportFolder
    my ensurePhotosExported(photosExportFolder, count of exportedImageFiles)
    
    my moveOriginalsToFrameFolders(exportedImageFiles, portraitFolders, landscapeFolders)
    
    tell application "Finder"
        repeat with folderToProcess in portraitFolders
            my processImagesWithKeynote(get every file of folderToProcess, name of folderToProcess, imageShortDimension, imageLongDimension)
        end repeat
        
        repeat with folderToProcess in landscapeFolders
            my processImagesWithKeynote(get every file of folderToProcess, name of folderToProcess, imageLongDimension, imageShortDimension)
        end repeat
        
        delete photosExportFolder
    end tell
end go

on exportPhotos(exportFolder)
    tell application "Photos"
        activate
        set selectedImages to selection
        export selectedImages to file (my pathToString(exportFolder))
    end tell
end exportPhotos

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
        
        -- WEIRD: This dialog is needed to give Finder file read access. Why?
        if fileCount is 0 then
            set buttonText to "Quit"
        else
            set buttonText to "Continue"
        end if
        
        display dialog "Exported images:" & fileCount with title "Done exporting photos" buttons buttonText default button buttonText
        
        if fileCount is 0 then
            my endScript()
        end if
    end tell
end ensureFilesSelected

-- Ends the script with a user cancelled error.
on endScript()
    error number -128
end endScript

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

on processImagesWithKeynote(selectedImages, exportFolderNamePrefix, slideWidth, slideHeight)
    tell application "Keynote"
        -- Uncomment if you want to see Keynote in action
        -- activate
        
        -- make a new page layout document
        set keynoteDocument to make new document with properties {document theme:theme themeName, height:slideHeight, width:slideWidth}
        
        tell keynoteDocument
            -- add images, one per slide
            repeat with selectedImage in selectedImages
                set imageCaption to my extractCaption(selectedImage)
                
                make new slide
                
                tell current slide
                    -- import the image
                    set importedImage to make new image with properties {file:my pathToAlias(selectedImage)}
                    
                    -- image takes up the whole slide
                    tell importedImage
                        set its width to slideWidth
                        set its height to slideHeight
                        set its position to {0, 0}
                    end tell
                    
                    if imageCaption is not "" then
                        set textItem to make new text item with properties ¬
                            {object text:imageCaption ¬
                                , width:slideWidth ¬
                                , height:textSize ¬
                                , position:{0, slideHeight - textSize - textPadding} ¬
                                , opacity:textOpacity}
                        
                        tell object text of textItem
                            set properties to {font:textFont, size:textSize, color:textColor}
                        end tell
                    end if
                end tell
            end repeat
            
            delete first slide -- First slide is always blank
        end tell
        
        export keynoteDocument to file (my createDatedFolder(defaultExportFolder, "Frame-" & exportFolderNamePrefix) as string) ¬
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

on imageDimensions(imageFile)
    tell application "Image Events"
        set theImage to open pathToString(imageFile)
        tell theImage
            set theDimensions to dimensions
        end tell
        return the dimensions
    end tell
end imageDimensions

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

-- Returns a string of the form YY/MM representing the time the photo was taken
on imageCreationYearMonth(imageFile)
    set createDate to spotlightProperty("kMDItemContentCreationDate", imageFile)
    set createdYear to characters 3 thru 4 of createDate as string
    set createdMonth to characters 6 thru 7 of createDate as string
    return createdYear & "/" & createdMonth
end imageCreationYearMonth

-- Get the date and time suitable for part of a folder name
on formattedTimeNow()
    set now to (current date)
    set theYear to year of now as string
    set theMonthName to month of now as string
    set theDay to zeroPad(day of now as string)
    set theHour to zeroPad(hours of now as string)
    set theMinute to zeroPad(minutes of now as string)
    set theSecond to zeroPad(seconds of now as string)
    
    set formattedDate to theYear & "-" & theMonthName & "-" & theDay & "_" & theHour & "-" & theMinute & "-" & theSecond
    return formattedDate
end formattedTimeNow

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
on createDatedFolder(parentFolder, folderPrefix)
    return my createFolder(parentFolder, folderPrefix & "-" & my formattedTimeNow())
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
