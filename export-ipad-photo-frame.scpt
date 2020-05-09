FasdUAS 1.101.10   ��   ��    k             l     ��  ��    3 - Title: applescript-ipad-frame-photo-exporter     � 	 	 Z   T i t l e :   a p p l e s c r i p t - i p a d - f r a m e - p h o t o - e x p o r t e r   
  
 l     ��  ��      Author: Sheldon Maloff     �   .   A u t h o r :   S h e l d o n   M a l o f f      l     ��  ��    3 - License: CC BY-SA (Attribution + ShareAlike)     �   Z   L i c e n s e :   C C   B Y - S A   ( A t t r i b u t i o n   +   S h a r e A l i k e )      l     ��  ��    T N GitHub: https://github.com/Maloffstrano/applescript-ipad-frame-photo-exporter     �   �   G i t H u b :   h t t p s : / / g i t h u b . c o m / M a l o f f s t r a n o / a p p l e s c r i p t - i p a d - f r a m e - p h o t o - e x p o r t e r      l     ��  ��    Z T GitHub clone: git@github.com:Maloffstrano/applescript-ipad-frame-photo-exporter.git     �   �   G i t H u b   c l o n e :   g i t @ g i t h u b . c o m : M a l o f f s t r a n o / a p p l e s c r i p t - i p a d - f r a m e - p h o t o - e x p o r t e r . g i t      l     ��������  ��  ��       !   l     �� " #��   "   Short Description:    # � $ $ &   S h o r t   D e s c r i p t i o n : !  % & % l     �� ' (��   ' J D A script that exports selected images from the macOS Photos app and    ( � ) ) �   A   s c r i p t   t h a t   e x p o r t s   s e l e c t e d   i m a g e s   f r o m   t h e   m a c O S   P h o t o s   a p p   a n d &  * + * l     �� , -��   , H B then uses macOS Keynote app to process the images down to iPad v1    - � . . �   t h e n   u s e s   m a c O S   K e y n o t e   a p p   t o   p r o c e s s   t h e   i m a g e s   d o w n   t o   i P a d   v 1 +  / 0 / l     �� 1 2��   1 N H screen size. Each image is captioned with either the EXIF Description,     2 � 3 3 �   s c r e e n   s i z e .   E a c h   i m a g e   i s   c a p t i o n e d   w i t h   e i t h e r   t h e   E X I F   D e s c r i p t i o n ,   0  4 5 4 l     �� 6 7��   6 M G EXIF Title or EXIF creation date. For the longer description, see the     7 � 8 8 �   E X I F   T i t l e   o r   E X I F   c r e a t i o n   d a t e .   F o r   t h e   l o n g e r   d e s c r i p t i o n ,   s e e   t h e   5  9 : 9 l     �� ; <��   ;   README.md on GitHub.    < � = = *   R E A D M E . m d   o n   G i t H u b . :  > ? > l     ��������  ��  ��   ?  @ A @ l     �� B C��   B   To do:    C � D D    T o   d o : A  E F E l     �� G H��   G E ? 1) Center and crop images that are not 4:3. Currently an image    H � I I ~   1 )   C e n t e r   a n d   c r o p   i m a g e s   t h a t   a r e   n o t   4 : 3 .   C u r r e n t l y   a n   i m a g e F  J K J l     �� L M��   L = 7 is cropped on the right and bottom when it is not 4:3.    M � N N n   i s   c r o p p e d   o n   t h e   r i g h t   a n d   b o t t o m   w h e n   i t   i s   n o t   4 : 3 . K  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S   Inpiration:    T � U U    I n p i r a t i o n : R  V W V l     �� X Y��   X c ] This script was inspired by a Pages example at: https://iworkautomation.com/pages/image.html    Y � Z Z �   T h i s   s c r i p t   w a s   i n s p i r e d   b y   a   P a g e s   e x a m p l e   a t :   h t t p s : / / i w o r k a u t o m a t i o n . c o m / p a g e s / i m a g e . h t m l W  [ \ [ l     ��������  ��  ��   \  ] ^ ] j     �� _�� "0 landscapeframes landscapeFrames _ J      ` `  a�� a m      b b � c c  L a n d s c a p e��   ^  d e d j    
�� f��  0 portraitframes portraitFrames f J    	 g g  h i h m     j j � k k  P o r t r a i t 1 i  l�� l m     m m � n n  P o r t r a i t 2��   e  o p o l     ��������  ��  ��   p  q r q j    �� s�� 0 	themename 	themeName s m     t t � u u  B a s i c   W h i t e r  v w v j    �� x�� 0 defaultmargin defaultMargin x m    ���� $ w  y z y j    �� {�� 0 textiteminset textItemInset { m    ����  z  | } | l     ��������  ��  ��   }  ~  ~ l     �� � ���   �   4:3 aspect ratio    � � � � "   4 : 3   a s p e c t   r a t i o   � � � j    �� ��� *0 imageshortdimension imageShortDimension � m    ����  �  � � � j    �� ��� (0 imagelongdimension imageLongDimension � m    ����  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    16:9 aspect ratio    � � � � &     1 6 : 9   a s p e c t   r a t i o �  � � � l     �� � ���   � * $ property imageShortDimension : 1080    � � � � H   p r o p e r t y   i m a g e S h o r t D i m e n s i o n   :   1 0 8 0 �  � � � l     �� � ���   � ) # property imageLongDimension : 1920    � � � � F   p r o p e r t y   i m a g e L o n g D i m e n s i o n   :   1 9 2 0 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 3 - Choose the font fromm your available fonts.     � � � � Z   C h o o s e   t h e   f o n t   f r o m m   y o u r   a v a i l a b l e   f o n t s .   �  � � � l     �� � ���   � W Q Use CMD-T (Font > Show Fonts) in the Script Editor to view your available fonts.    � � � � �   U s e   C M D - T   ( F o n t   >   S h o w   F o n t s )   i n   t h e   S c r i p t   E d i t o r   t o   v i e w   y o u r   a v a i l a b l e   f o n t s . �  � � � j    �� ��� 0 textfont textFont � m     � � � � �   S h e l d o n _ P r i n t i n g �  � � � j    !�� ��� 0 textsize textSize � m     ����  �  � � � j   " &�� ��� 0 	textcolor 	textColor � m   " % � � � � � 
 w h i t e �  � � � j   ' )�� ��� 0 textpadding textPadding � m   ' (����  �  � � � j   * .�� ��� 0 textopacity textOpacity � m   * -���� < �  � � � l     ��������  ��  ��   �  � � � j   / 3�� ��� .0 jpegcompressionfactor jpegCompressionFactor � m   / 2 � � ?陙���� �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ^ X For the export to work, Keynote needs permission to write to whatever is specified here    � � � � �   F o r   t h e   e x p o r t   t o   w o r k ,   K e y n o t e   n e e d s   p e r m i s s i o n   t o   w r i t e   t o   w h a t e v e r   i s   s p e c i f i e d   h e r e �  � � � j   4 <�� ��� *0 defaultexportfolder defaultExportFolder � I  4 ;�� ���
�� .earsffdralis        afdr � m   4 7��
�� afdrdocs��   �  � � � l     ��������  ��  ��   �  � � � l     ����� � n     � � � I    �������� 0 go  ��  ��   �  f     ��  ��   �  � � � l     ��������  ��  ��   �  � � � i   = @ � � � I      �������� 0 go  ��  ��   � k     � � �  � � � r      � � � n     � � � I    �� ����� &0 createdatedfolder createDatedFolder �  � � � o    ���� *0 defaultexportfolder defaultExportFolder �  ��� � m     � � � � �  P h o t o s - E x p o r t��  ��   �  f      � o      ���� (0 photosexportfolder photosExportFolder �  � � � n    � � � I    �� ����� ,0 exportselectedphotos exportSelectedPhotos �  ��� � o    ���� (0 photosexportfolder photosExportFolder��  ��   �  f     �  � � � l   ��������  ��  ��   �  � � � r    " � � � n     � � � I     �� ����� (0 createframefolders createFrameFolders �  � � � o    ���� (0 photosexportfolder photosExportFolder �  ��� � o    ���� "0 landscapeframes landscapeFrames��  ��   �  f     � o      ���� $0 landscapefolders landscapeFolders �  � � � r   # 0 � � � n  # . � � � I   $ .�� ����� (0 createframefolders createFrameFolders �  � � � o   $ %���� (0 photosexportfolder photosExportFolder �  ��� � o   % *����  0 portraitframes portraitFrames��  ��   �  f   # $ � o      ���� "0 portraitfolders portraitFolders �    l  1 1��������  ��  ��    O  1 < r   5 ; e   5 9 n   5 9	
	 2   6 8��
�� 
file
 o   5 6���� (0 photosexportfolder photosExportFolder o      ���� (0 exportedimagefiles exportedImageFiles m   1 2�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��    n  = H I   > H������ .0 showphotoexportfolder showPhotoExportFolder  o   > ?���� (0 photosexportfolder photosExportFolder �� I  ? D��~
� .corecnte****       **** o   ? @�}�} (0 exportedimagefiles exportedImageFiles�~  ��  ��    f   = >  l  I I�|�{�z�|  �{  �z    n  I Q I   J Q�y�x�y :0 moveoriginalstoframefolders moveOriginalsToFrameFolders  o   J K�w�w (0 exportedimagefiles exportedImageFiles  o   K L�v�v "0 portraitfolders portraitFolders  �u  o   L M�t�t $0 landscapefolders landscapeFolders�u  �x    f   I J !"! l  R R�s�r�q�s  �r  �q  " #�p# O   R �$%$ k   V �&& '(' X   V �)�o*) n  f |+,+ I   g |�n-�m�n 40 processimageswithkeynote processImagesWithKeynote- ./. e   g k00 n   g k121 2   h j�l
�l 
file2 o   g h�k�k "0 foldertoprocess folderToProcess/ 343 n   k n565 1   l n�j
�j 
pnam6 o   k l�i�i "0 foldertoprocess folderToProcess4 787 o   n s�h�h *0 imageshortdimension imageShortDimension8 9�g9 o   s x�f�f (0 imagelongdimension imageLongDimension�g  �m  ,  f   f g�o "0 foldertoprocess folderToProcess* o   Y Z�e�e "0 portraitfolders portraitFolders( :;: l  � ��d�c�b�d  �c  �b  ; <=< X   � �>�a?> n  � �@A@ I   � ��`B�_�` 40 processimageswithkeynote processImagesWithKeynoteB CDC e   � �EE n   � �FGF 2   � ��^
�^ 
fileG o   � ��]�] "0 foldertoprocess folderToProcessD HIH n   � �JKJ 1   � ��\
�\ 
pnamK o   � ��[�[ "0 foldertoprocess folderToProcessI LML o   � ��Z�Z (0 imagelongdimension imageLongDimensionM N�YN o   � ��X�X *0 imageshortdimension imageShortDimension�Y  �_  A  f   � ��a "0 foldertoprocess folderToProcess? o   � ��W�W $0 landscapefolders landscapeFolders= OPO l  � ��V�U�T�V  �U  �T  P Q�SQ I  � ��RR�Q
�R .coredelonull���     obj R o   � ��P�P (0 photosexportfolder photosExportFolder�Q  �S  % m   R SSS�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �p   � TUT l     �O�N�M�O  �N  �M  U VWV i   A DXYX I      �LZ�K�L ,0 exportselectedphotos exportSelectedPhotosZ [�J[ o      �I�I 0 exportfolder exportFolder�J  �K  Y O      \]\ k    ^^ _`_ I   	�H�G�F
�H .miscactvnull��� ��� null�G  �F  ` aba r   
 cdc 1   
 �E
�E 
selcd o      �D�D  0 selectedimages selectedImagesb e�Ce I   �Bfg
�B .IPXSexponull���     ****f o    �A�A  0 selectedimages selectedImagesg �@h�?
�@ 
inshh 4    �>i
�> 
filei l   j�=�<j n   klk I    �;m�:�; 0 pathtostring pathToStringm n�9n o    �8�8 0 exportfolder exportFolder�9  �:  l  f    �=  �<  �?  �C  ] m     oo�                                                                                  Phts  alis    0  Macintosh HD                   BD ����
Photos.app                                                     ����            ����  
 cu             Applications  !/:System:Applications:Photos.app/    
 P h o t o s . a p p    M a c i n t o s h   H D  System/Applications/Photos.app  / ��  W pqp l     �7�6�5�7  �6  �5  q rsr l     �4tu�4  t ; 5 Show the export folder and a count of files exported   u �vv j   S h o w   t h e   e x p o r t   f o l d e r   a n d   a   c o u n t   o f   f i l e s   e x p o r t e ds wxw l     �3yz�3  y I C This handler will terminate the script when no files were exported   z �{{ �   T h i s   h a n d l e r   w i l l   t e r m i n a t e   t h e   s c r i p t   w h e n   n o   f i l e s   w e r e   e x p o r t e dx |}| i   E H~~ I      �2��1�2 .0 showphotoexportfolder showPhotoExportFolder� ��� o      �0�0 0 exportfolder exportFolder� ��/� o      �.�. 0 	filecount 	fileCount�/  �1   O     ?��� k    >�� ��� I   	�-�,�+
�- .miscactvnull��� ��� null�,  �+  � ��� I  
 �*��)
�* .aevtodocnull  �    alis� o   
 �(�( 0 exportfolder exportFolder�)  � ��� l   �'�&�%�'  �&  �%  � ��� l   �$���$  � = 7 TODO: why is a dialog needed to give file read access?   � ��� n   T O D O :   w h y   i s   a   d i a l o g   n e e d e d   t o   g i v e   f i l e   r e a d   a c c e s s ?� ��� Z    ���#�� =   ��� o    �"�" 0 	filecount 	fileCount� m    �!�!  � r    ��� m    �� ���  Q u i t� o      � �  0 
buttontext 
buttonText�#  � r    ��� m    �� ���  C o n t i n u e� o      �� 0 
buttontext 
buttonText� ��� l     ����  �  �  � ��� I    -���
� .sysodlogaskr        TEXT� b     #��� m     !�� ���   E x p o r t e d   i m a g e s :� o   ! "�� 0 	filecount 	fileCount� ���
� 
btns� J   $ '�� ��� o   $ %�� 0 
buttontext 
buttonText�  � ���
� 
dflt� o   ( )�� 0 
buttontext 
buttonText�  � ��� l  . .����  �  �  � ��� Z   . >����� =  . 1��� o   . /�� 0 	filecount 	fileCount� m   / 0��  � R   4 :��
�
� .ascrerr ****      � ****�
  � �	��
�	 
errn� m   6 7�����  �  �  �  � m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  } ��� l     ����  �  �  � ��� l     ����  � S M Distribute the original files evenly into the portrait and landscape folders   � ��� �   D i s t r i b u t e   t h e   o r i g i n a l   f i l e s   e v e n l y   i n t o   t h e   p o r t r a i t   a n d   l a n d s c a p e   f o l d e r s� ��� i   I L��� I      ���� :0 moveoriginalstoframefolders moveOriginalsToFrameFolders� ��� o      � �  0 
imagefiles 
imageFiles� ��� o      ���� "0 portraitfolders portraitFolders� ���� o      ���� $0 landscapefolders landscapeFolders��  �  � O     ���� k    ��� ��� r    ��� m    ���� � o      ���� 80 currentlandscapeframeindex currentLandscapeFrameIndex� ��� r    ��� m    	���� � o      ���� 60 currentportraitframeindex currentPortraitFrameIndex� ��� l   ��������  ��  ��  � ��� q    �� ������ &0 destinationfolder destinationFolder��  � ��� l   ��������  ��  ��  � ���� X    ������ k    }�� ��� r    %��� n   #��� I    #������� &0 spotlightproperty spotlightProperty� ��� m    �� ��� $ k M D I t e m P i x e l H e i g h t� ���� o    ���� 0 	imagefile 	imageFile��  ��  �  f    � o      ���� 0 imageheight imageHeight� ��� r   & /��� n  & -��� I   ' -������� &0 spotlightproperty spotlightProperty� ��� m   ' (�� ��� " k M D I t e m P i x e l W i d t h� ���� o   ( )���� 0 	imagefile 	imageFile��  ��  �  f   & '� o      ���� 0 
imagewidth 
imageWidth� ��� l  0 0��������  ��  ��  � ��� Z   0 e���� � A   0 3 o   0 1���� 0 
imagewidth 
imageWidth o   1 2���� 0 imageheight imageHeight� r   6 L n  6 = I   7 =������ 0 
nextfolder 
nextFolder 	 o   7 8���� "0 portraitfolders portraitFolders	 
��
 o   8 9���� 60 currentportraitframeindex currentPortraitFrameIndex��  ��    f   6 7 J        o      ���� &0 destinationfolder destinationFolder �� o      ���� 60 currentportraitframeindex currentPortraitFrameIndex��  ��    r   O e n  O V I   P V������ 0 
nextfolder 
nextFolder  o   P Q���� $0 landscapefolders landscapeFolders �� o   Q R���� 80 currentlandscapeframeindex currentLandscapeFrameIndex��  ��    f   O P J        o      ���� &0 destinationfolder destinationFolder �� o      ���� 80 currentlandscapeframeindex currentLandscapeFrameIndex��  � �� I  f }��
�� .coremovenull���     obj  4   f o��
�� 
file l  h n���� n  h n !  I   i n��"���� 0 pathtostring pathToString" #��# o   i j���� 0 	imagefile 	imageFile��  ��  !  f   h i��  ��   ��$��
�� 
insh$ 4   p y��%
�� 
cfol% l  r x&����& n  r x'(' I   s x��)���� 0 pathtostring pathToString) *��* o   s t���� &0 destinationfolder destinationFolder��  ��  (  f   r s��  ��  ��  ��  �� 0 	imagefile 	imageFile� o    ���� 0 
imagefiles 
imageFiles��  � m     ++�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ,-, l     ��������  ��  ��  - ./. i   M P010 I      ��2���� 40 processimageswithkeynote processImagesWithKeynote2 343 o      ����  0 selectedimages selectedImages4 565 o      ���� 00 exportfoldernameprefix exportFolderNamePrefix6 787 o      ���� 0 
slidewidth 
slideWidth8 9��9 o      ���� 0 slideheight slideHeight��  ��  1 O    G:;: k   F<< =>= l   ��?@��  ? 5 / Uncomment if you want to see Keynote in action   @ �AA ^   U n c o m m e n t   i f   y o u   w a n t   t o   s e e   K e y n o t e   i n   a c t i o n> BCB l   ��DE��  D  	 activate   E �FF    a c t i v a t eC GHG l   ��������  ��  ��  H IJI l   ��KL��  K &   make a new page layout document   L �MM @   m a k e   a   n e w   p a g e   l a y o u t   d o c u m e n tJ NON r    PQP I   ����R
�� .corecrel****      � null��  R ��ST
�� 
koclS m    ��
�� 
docuT ��U��
�� 
prdtU K    VV ��WX
�� 
KndtW 4   	 ��Y
�� 
KnthY o    ���� 0 	themename 	themeNameX ��Z[
�� 
sithZ o    ���� 0 slideheight slideHeight[ ��\��
�� 
sitw\ o    ���� 0 
slidewidth 
slideWidth��  ��  Q o      ���� "0 keynotedocument keynoteDocumentO ]^] l   ��������  ��  ��  ^ _`_ O    �aba k   " �cc ded l  " "��fg��  f    add images, one per slide   g �hh 4   a d d   i m a g e s ,   o n e   p e r   s l i d ee iji X   " �k��lk k   2 �mm non r   2 :pqp n  2 8rsr I   3 8��t����  0 extractcaption extractCaptiont u��u o   3 4���� 0 selectedimage selectedImage��  ��  s  f   2 3q o      ���� 0 imagecaption imageCaptiono vwv l  ; ;��������  ��  ��  w xyx I  ; B����z
�� .corecrel****      � null��  z ��{��
�� 
kocl{ m   = >��
�� 
KnSd��  y |}| l  C C��������  ��  ��  } ~��~ O   C �� k   I ��� ��� l  I I������  �   import the image   � ��� "   i m p o r t   t h e   i m a g e� ��� r   I `��� I  I ^�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   K N��
�� 
imag� �����
�� 
prdt� K   O Z�� ���~
� 
file� n  R X��� I   S X�}��|�} 0 pathtoalias pathToAlias� ��{� o   S T�z�z 0 selectedimage selectedImage�{  �|  �  f   R S�~  ��  � o      �y�y 0 importedimage importedImage� ��� l  a a�x�w�v�x  �w  �v  � ��� l  a a�u���u  � %  image takes up the whole slide   � ��� >   i m a g e   t a k e s   u p   t h e   w h o l e   s l i d e� ��� O   a |��� k   e {�� ��� r   e j��� o   e f�t�t 0 
slidewidth 
slideWidth� n     ��� 1   g i�s
�s 
sitw�  g   f g� ��� r   k p��� o   k l�r�r 0 slideheight slideHeight� n     ��� 1   m o�q
�q 
sith�  g   l m� ��p� r   q {��� J   q u�� ��� m   q r�o�o  � ��n� m   r s�m�m  �n  � n     ��� 1   v z�l
�l 
sipo�  g   u v�p  � o   a b�k�k 0 importedimage importedImage� ��� l  } }�j�i�h�j  �i  �h  � ��g� Z   } ����f�e� >  } ���� o   } ~�d�d 0 imagecaption imageCaption� m   ~ ��� ���  � k   � ��� ��� r   � ���� I  � ��c�b�
�c .corecrel****      � null�b  � �a��
�a 
kocl� m   � ��`
�` 
shtx� �_��^
�_ 
prdt� l 	 � ���]�\� K   � ��� �[��
�[ 
pDTx� l 
 � ���Z�Y� o   � ��X�X 0 imagecaption imageCaption�Z  �Y  � �W��
�W 
sitw� l 
 � ���V�U� o   � ��T�T 0 
slidewidth 
slideWidth�V  �U  � �S��
�S 
sith� l 
 � ���R�Q� o   � ��P�P 0 textsize textSize�R  �Q  � �O��
�O 
sipo� l 
 � ���N�M� J   � ��� ��� m   � ��L�L  � ��K� \   � ���� \   � ���� o   � ��J�J 0 slideheight slideHeight� o   � ��I�I 0 textsize textSize� o   � ��H�H 0 textpadding textPadding�K  �N  �M  � �G��F
�G 
pSOp� o   � ��E�E 0 textopacity textOpacity�F  �]  �\  �^  � o      �D�D 0 textitem textItem� ��� l  � ��C�B�A�C  �B  �A  � ��@� O   � ���� r   � ���� K   � ��� �?��
�? 
font� o   � ��>�> 0 textfont textFont� �=��
�= 
ptsz� o   � ��<�< 0 textsize textSize� �;��:
�; 
colr� o   � ��9�9 0 	textcolor 	textColor�:  � 1   � ��8
�8 
pALL� n   � ���� 1   � ��7
�7 
pDTx� o   � ��6�6 0 textitem textItem�@  �f  �e  �g  � 1   C F�5
�5 
crsl��  �� 0 selectedimage selectedImagel o   % &�4�4  0 selectedimages selectedImagesj ��� l  � ��3�2�1�3  �2  �1  � ��0� l  � ����� I  � ��/��.
�/ .coredelonull���     obj � 4  � ��-�
�- 
KnSd� m   � ��,�, �.  � "  First slide is always blank   � ��� 8   F i r s t   s l i d e   i s   a l w a y s   b l a n k�0  b o    �+�+ "0 keynotedocument keynoteDocument` ��� l  � ��*�)�(�*  �)  �(  � ��� I  �:�'��
�' .Knstexponull���     docu� o   � ��&�& "0 keynotedocument keynoteDocument� �%��
�% 
kfil� 4   ��$�
�$ 
file� l 
 �#�"  l �!�  c   n  I  ��� &0 createdatedfolder createDatedFolder  o  	�� *0 defaultexportfolder defaultExportFolder 	�	 b  	

 m  	 �  F r a m e - o  �� 00 exportfoldernameprefix exportFolderNamePrefix�  �    f   m  �
� 
TEXT�!  �   �#  �"  � �
� 
exft l 
�� m  �
� KnefKimg�  �   ��
� 
expr l 	 6�� K   6 �
� 
Kxic l 
#(�� o  #(�� .0 jpegcompressionfactor jpegCompressionFactor�  �   �
� 
Kxif l 
+.�� m  +.�

�
 KnmfKifj�  �   �	�
�	 
Kxpw m  14�
� KnpwKpwi�  �  �  �  �  l ;;����  �  �    I ;@��
� .coredelonull���     obj  o  ;<�� "0 keynotedocument keynoteDocument�    �   I AF������
�� .aevtquitnull��� ��� null��  ��  �   ; m     !!�                                                                                  keyn  alis    &  Macintosh HD                   BD ����Keynote.app                                                    ����            ����  
 cu             Applications  /:Applications:Keynote.app/     K e y n o t e . a p p    M a c i n t o s h   H D  Applications/Keynote.app  / ��  / "#" l     ��������  ��  ��  # $%$ l     ��&'��  & 6 0 Get the image description, title or create date   ' �(( `   G e t   t h e   i m a g e   d e s c r i p t i o n ,   t i t l e   o r   c r e a t e   d a t e% )*) i   Q T+,+ I      ��-����  0 extractcaption extractCaption- .��. o      ���� 0 	imagefile 	imageFile��  ��  , Q     @/01/ k    622 343 r    565 n   
787 I    
��9���� &0 spotlightproperty spotlightProperty9 :;: m    << �== $ k M D I t e m D e s c r i p t i o n; >��> o    ���� 0 	imagefile 	imageFile��  ��  8  f    6 l     ?����? o      ���� "0 embeddedcaption embeddedCaption��  ��  4 @A@ Z     BC����B =   DED o    ���� "0 embeddedcaption embeddedCaptionE m    FF �GG  C r    HIH n   JKJ I    ��L���� &0 spotlightproperty spotlightPropertyL MNM m    OO �PP  k M D I t e m T i t l eN Q��Q o    ���� 0 	imagefile 	imageFile��  ��  K  f    I l     R����R o      ���� "0 embeddedcaption embeddedCaption��  ��  ��  ��  A STS Z   ! 3UV����U =  ! $WXW o   ! "���� "0 embeddedcaption embeddedCaptionX m   " #YY �ZZ  V r   ' /[\[ n  ' -]^] I   ( -��_���� 00 imagecreationyearmonth imageCreationYearMonth_ `��` o   ( )���� 0 	imagefile 	imageFile��  ��  ^  f   ' (\ l     a����a o      ���� "0 embeddedcaption embeddedCaption��  ��  ��  ��  T b��b L   4 6cc o   4 5���� "0 embeddedcaption embeddedCaption��  0 R      ������
�� .ascrerr ****      � ****��  ��  1 L   > @dd m   > ?ee �ff  * ghg l     ��������  ��  ��  h iji i   U Xklk I      ��m���� &0 spotlightproperty spotlightPropertym non o      ���� 0 propertyname propertyNameo p��p o      ���� 0 	imagefile 	imageFile��  ��  l k     &qq rsr q      tt ������ 0 command  ��  s uvu q      ww ������ 0 shellresult shellResult��  v xyx l     ��������  ��  ��  y z{z r     |}| b     ~~ b     ��� b     ��� m     �� ���   m d l s   - r a w   - n a m e  � o    ���� 0 propertyname propertyName� m    �� ���    n    ��� 1    ��
�� 
strq� n   ��� I    ������� &0 pathtoposixstring pathToPosixString� ���� o    ���� 0 	imagefile 	imageFile��  ��  �  f    } o      ���� 0 command  { ��� r    ��� I   �����
�� .sysoexecTEXT���     TEXT� o    ���� 0 command  ��  � o      ���� 0 shellresult shellResult� ��� l   ��������  ��  ��  � ���� Z    &������ =   ��� o    ���� 0 shellresult shellResult� m    �� ���  ( n u l l )� L    !�� m     �� ���  ��  � L   $ &�� o   $ %���� 0 shellresult shellResult��  j ��� l     ��������  ��  ��  � ��� i   Y \��� I      ������� "0 imagedimensions imageDimensions� ���� o      ���� 0 	imagefile 	imageFile��  ��  � O     "��� k    !�� ��� r    ��� I   �����
�� .aevtodocnull  �    alis� I    
������� 0 pathtostring pathToString� ���� o    ���� 0 	imagefile 	imageFile��  ��  ��  � o      ���� 0 theimage theImage� ��� O    ��� r    ��� 1    ��
�� 
dmns� o      ���� 0 thedimensions theDimensions� o    ���� 0 theimage theImage� ���� L    !�� l    ������ 1     ��
�� 
dmns��  ��  ��  � m     ���                                                                                  imev  alis    X  Macintosh HD                   BD ����Image Events.app                                               ����            ����  
 cu             CoreServices  //:System:Library:CoreServices:Image Events.app/   "  I m a g e   E v e n t s . a p p    M a c i n t o s h   H D  ,System/Library/CoreServices/Image Events.app  / ��  � ��� l     ��������  ��  ��  � ��� l     ������  � #  Convert anything to an alias   � ��� :   C o n v e r t   a n y t h i n g   t o   a n   a l i a s� ��� i   ] `��� I      ������� 0 pathtoalias pathToAlias� ���� o      ���� 0 thepath thePath��  ��  � O     )��� Q    (���� L    �� c    ��� l   ������ n    ��� 1    ��
�� 
ppth� 4    ���
�� 
ditm� l  	 ������ c   	 ��� o   	 
���� 0 thepath thePath� m   
 ��
�� 
TEXT��  ��  ��  ��  � m    ��
�� 
alis� R      ������
�� .ascrerr ****      � ****��  ��  � L    (�� c    '��� l   %������ c    %��� n    #��� 1   ! #��
�� 
ppth� 4    !���
�� 
ditm� l    ������ n     ��� 1    ��
�� 
ppth� o    ���� 0 thepath thePath��  ��  � m   # $��
�� 
TEXT��  ��  � m   % &��
�� 
alis� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ����~��  �  �~  � ��� l     �}���}  � ( " Convert anything to a string path   � ��� D   C o n v e r t   a n y t h i n g   t o   a   s t r i n g   p a t h� ��� i   a d��� I      �|��{�| 0 pathtostring pathToString� ��z� o      �y�y 0 thepath thePath�z  �{  � O     ��� Q    ���� L    �� n    ��� 1    �x
�x 
ppth� 4    �w�
�w 
ditm� l  	 ��v�u� c   	 ��� o   	 
�t�t 0 thepath thePath� m   
 �s
�s 
TEXT�v  �u  � R      �r�q�p
�r .ascrerr ****      � ****�q  �p  � L    �� n       1    �o
�o 
ppth o    �n�n 0 thepath thePath� m     �                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  l     �m�l�k�m  �l  �k    l     �j�j   . ( Convert anything to a POSIX string path    �		 P   C o n v e r t   a n y t h i n g   t o   a   P O S I X   s t r i n g   p a t h 

 i   e h I      �i�h�i &0 pathtoposixstring pathToPosixString �g o      �f�f 0 thepath thePath�g  �h   k     %  O      Q     r     n     1    �e
�e 
ppth 4    �d
�d 
ditm l  	 �c�b c   	  o   	 
�a�a 0 thepath thePath m   
 �`
�` 
TEXT�c  �b   o      �_�_ 0 thepath thePath R      �^�]�\
�^ .ascrerr ****      � ****�]  �\   r     !  n    "#" 1    �[
�[ 
ppth# o    �Z�Z 0 thepath thePath! o      �Y�Y 0 thepath thePath m     $$�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   %�X% L     %&& n     $'(' 1   ! #�W
�W 
psxp( o     !�V�V 0 thepath thePath�X   )*) l     �U�T�S�U  �T  �S  * +,+ l     �R-.�R  - S M Returns a string of the form YY/MM representing the time the photo was taken   . �// �   R e t u r n s   a   s t r i n g   o f   t h e   f o r m   Y Y / M M   r e p r e s e n t i n g   t h e   t i m e   t h e   p h o t o   w a s   t a k e n, 010 i   i l232 I      �Q4�P�Q 00 imagecreationyearmonth imageCreationYearMonth4 5�O5 o      �N�N 0 	imagefile 	imageFile�O  �P  3 k     066 787 r     	9:9 I     �M;�L�M &0 spotlightproperty spotlightProperty; <=< m    >> �?? 4 k M D I t e m C o n t e n t C r e a t i o n D a t e= @�K@ o    �J�J 0 	imagefile 	imageFile�K  �L  : o      �I�I 0 
createdate 
createDate8 ABA r   
 CDC c   
 EFE n   
 GHG 7   �HIJ
�H 
cha I m    �G�G J m    �F�F H o   
 �E�E 0 
createdate 
createDateF m    �D
�D 
TEXTD o      �C�C 0 createdyear createdYearB KLK r    )MNM c    'OPO n    %QRQ 7   %�BST
�B 
cha S m    !�A�A T m   " $�@�@ R o    �?�? 0 
createdate 
createDateP m   % &�>
�> 
TEXTN o      �=�= 0 createdmonth createdMonthL U�<U L   * 0VV b   * /WXW b   * -YZY o   * +�;�; 0 createdyear createdYearZ m   + ,[[ �\\  /X o   - .�:�: 0 createdmonth createdMonth�<  1 ]^] l     �9�8�7�9  �8  �7  ^ _`_ l     �6ab�6  a ? 9 Get the date and time suitable for part of a folder name   b �cc r   G e t   t h e   d a t e   a n d   t i m e   s u i t a b l e   f o r   p a r t   o f   a   f o l d e r   n a m e` ded i   m pfgf I      �5�4�3�5 $0 formattedtimenow formattedTimeNow�4  �3  g k     fhh iji r     klk l    m�2�1m I    �0�/�.
�0 .misccurdldt    ��� null�/  �.  �2  �1  l o      �-�- 0 now  j non r    pqp c    rsr n    tut 1   	 �,
�, 
yearu o    	�+�+ 0 now  s m    �*
�* 
TEXTq o      �)�) 0 theyear theYearo vwv r    xyx c    z{z n    |}| m    �(
�( 
mnth} o    �'�' 0 now  { m    �&
�& 
TEXTy o      �%�% 0 themonthname theMonthNamew ~~ r    $��� I    "�$��#�$ 0 zeropad zeroPad� ��"� c    ��� n    ��� 1    �!
�! 
day � o    � �  0 now  � m    �
� 
TEXT�"  �#  � o      �� 0 theday theDay ��� r   % 1��� I   % /���� 0 zeropad zeroPad� ��� c   & +��� n   & )��� 1   ' )�
� 
hour� o   & '�� 0 now  � m   ) *�
� 
TEXT�  �  � o      �� 0 thehour theHour� ��� r   2 >��� I   2 <���� 0 zeropad zeroPad� ��� c   3 8��� n   3 6��� 1   4 6�
� 
min � o   3 4�� 0 now  � m   6 7�
� 
TEXT�  �  � o      �� 0 	theminute 	theMinute� ��� r   ? K��� I   ? I���� 0 zeropad zeroPad� ��� c   @ E��� n   @ C��� m   A C�
� 
scnd� o   @ A�� 0 now  � m   C D�

�
 
TEXT�  �  � o      �	�	 0 	thesecond 	theSecond� ��� l  L L����  �  �  � ��� r   L c��� b   L a��� b   L _��� b   L ]��� b   L [��� b   L Y��� b   L W��� b   L U��� b   L S��� b   L Q��� b   L O��� o   L M�� 0 theyear theYear� m   M N�� ���  -� o   O P�� 0 themonthname theMonthName� m   Q R�� ���  -� o   S T�� 0 theday theDay� m   U V�� ���  _� o   W X�� 0 thehour theHour� m   Y Z�� ���  -� o   [ \�� 0 	theminute 	theMinute� m   ] ^�� ���  -� o   _ `� �  0 	thesecond 	theSecond� o      ���� 0 formatteddate formattedDate� ���� L   d f�� o   d e���� 0 formatteddate formattedDate��  e ��� l     ��������  ��  ��  � ��� l     ������  � : 4 Pad theValue with a leading zero when less than 10.   � ��� h   P a d   t h e V a l u e   w i t h   a   l e a d i n g   z e r o   w h e n   l e s s   t h a n   1 0 .� ��� i   q t��� I      ������� 0 zeropad zeroPad� ���� o      ���� 0 thevalue theValue��  ��  � n     ��� 7   ����
�� 
ctxt� m   	 ������� m    ������� l    ������ c     ��� b     ��� m     �� ���  0 0� o    ���� 0 thevalue theValue� m    ��
�� 
TEXT��  ��  � ��� l     ��������  ��  ��  � ��� i   u x��� I      ������� 0 createfolder createFolder� ��� o      ���� 0 parentfolder parentFolder� ���� o      ���� 0 
foldername 
folderName��  ��  � k     �� ��� O     ��� r    ��� I   �����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
cfol� ����
�� 
insh� o    	���� 0 parentfolder parentFolder� �����
�� 
prdt� K   
 �� �����
�� 
pnam� o    ���� 0 
foldername 
folderName��  ��  � o      ���� 0 	thefolder 	theFolder� m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� L    �� o    ���� 0 	thefolder 	theFolder��  �    l     ��������  ��  ��    l     ����   C = Create a uniquely named folder and return the folder object.    � z   C r e a t e   a   u n i q u e l y   n a m e d   f o l d e r   a n d   r e t u r n   t h e   f o l d e r   o b j e c t .  i   y |	
	 I      ������ &0 createdatedfolder createDatedFolder  o      ���� 0 parentfolder parentFolder �� o      ���� 0 folderprefix folderPrefix��  ��  
 L      n     I    ������ 0 createfolder createFolder  o    ���� 0 parentfolder parentFolder �� b     b     o    ���� 0 folderprefix folderPrefix m     �  - n   
 I    
�������� $0 formattedtimenow formattedTimeNow��  ��    f    ��  ��    f       l     ��������  ��  ��    !  l     ��"#��  " V P Create a folder for each frame name in the list and return the list of folders.   # �$$ �   C r e a t e   a   f o l d e r   f o r   e a c h   f r a m e   n a m e   i n   t h e   l i s t   a n d   r e t u r n   t h e   l i s t   o f   f o l d e r s .! %&% i   } �'(' I      ��)���� (0 createframefolders createFrameFolders) *+* o      ���� 0 parentfolder parentFolder+ ,��, o      ���� 0 	framelist 	frameList��  ��  ( k     ,-- ./. r     010 J     ����  1 o      ���� 0 
folderlist 
folderList/ 232 Y    )4��56��4 k    $77 898 r    :;: n    <=< 4    ��>
�� 
cobj> o    ���� 0 
framecount 
frameCount= o    ���� 0 	framelist 	frameList; o      ���� 0 	framename 	frameName9 ?��? r    $@A@ n   !BCB I    !��D���� 0 createfolder createFolderD EFE o    ���� 0 parentfolder parentFolderF G��G o    ���� 0 	framename 	frameName��  ��  C  f    A n      HIH  ;   " #I o   ! "���� 0 
folderlist 
folderList��  �� 0 
framecount 
frameCount5 m    	���� 6 l  	 J����J I  	 ��K��
�� .corecnte****       ****K o   	 
���� 0 	framelist 	frameList��  ��  ��  ��  3 L��L L   * ,MM o   * +���� 0 
folderlist 
folderList��  & NON l     ��������  ��  ��  O PQP l     ��RS��  R B < Return the next destination folder from the list of folders   S �TT x   R e t u r n   t h e   n e x t   d e s t i n a t i o n   f o l d e r   f r o m   t h e   l i s t   o f   f o l d e r sQ UVU i   � �WXW I      ��Y���� 0 
nextfolder 
nextFolderY Z[Z o      ���� 0 
folderlist 
folderList[ \��\ o      ���� (0 currentfolderindex currentFolderIndex��  ��  X k     $]] ^_^ q      `` ������ 0 currentfolder currentFolder��  _ aba r     cdc n     efe 4    ��g
�� 
cobjg o    ���� (0 currentfolderindex currentFolderIndexf o     ���� 0 
folderlist 
folderListd o      ���� 0 currentfolder currentFolderb hih r    jkj [    
lml o    ���� (0 currentfolderindex currentFolderIndexm m    	���� k o      ���� (0 currentfolderindex currentFolderIndexi non Z    pq����p ?    rsr o    ���� (0 currentfolderindex currentFolderIndexs l   t����t I   ��u��
�� .corecnte****       ****u o    ���� 0 
folderlist 
folderList��  ��  ��  q r    vwv m    ���� w o      ���� (0 currentfolderindex currentFolderIndex��  ��  o x��x L    $yy J    #zz {|{ o     ���� 0 currentfolder currentFolder| }��} o     !���� (0 currentfolderindex currentFolderIndex��  ��  V ~~ l     ��������  ��  ��   ���� l     ��������  ��  ��  ��       #���� t�~�}�|�{ ��z ��y�x ����������������������  � !�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�w "0 landscapeframes landscapeFrames�v  0 portraitframes portraitFrames�u 0 	themename 	themeName�t 0 defaultmargin defaultMargin�s 0 textiteminset textItemInset�r *0 imageshortdimension imageShortDimension�q (0 imagelongdimension imageLongDimension�p 0 textfont textFont�o 0 textsize textSize�n 0 	textcolor 	textColor�m 0 textpadding textPadding�l 0 textopacity textOpacity�k .0 jpegcompressionfactor jpegCompressionFactor�j *0 defaultexportfolder defaultExportFolder�i 0 go  �h ,0 exportselectedphotos exportSelectedPhotos�g .0 showphotoexportfolder showPhotoExportFolder�f :0 moveoriginalstoframefolders moveOriginalsToFrameFolders�e 40 processimageswithkeynote processImagesWithKeynote�d  0 extractcaption extractCaption�c &0 spotlightproperty spotlightProperty�b "0 imagedimensions imageDimensions�a 0 pathtoalias pathToAlias�` 0 pathtostring pathToString�_ &0 pathtoposixstring pathToPosixString�^ 00 imagecreationyearmonth imageCreationYearMonth�] $0 formattedtimenow formattedTimeNow�\ 0 zeropad zeroPad�[ 0 createfolder createFolder�Z &0 createdatedfolder createDatedFolder�Y (0 createframefolders createFrameFolders�X 0 
nextfolder 
nextFolder
�W .aevtoappnull  �   � ****� �V��V �   b� �U��U �   j m�~ $�} �| �{ �z �y �x <�&alis    "  Macintosh HD                   BD ����	Documents                                                      ����            ����  
 cu             sheldon   /:Users:sheldon:Documents/   	 D o c u m e n t s    M a c i n t o s h   H D  Users/sheldon/Documents   /    ��  � �T ��S�R���Q�T 0 go  �S  �R  � �P�O�N�M�L�P (0 photosexportfolder photosExportFolder�O $0 landscapefolders landscapeFolders�N "0 portraitfolders portraitFolders�M (0 exportedimagefiles exportedImageFiles�L "0 foldertoprocess folderToProcess�  ��K�J�I�H�G�F�E�D�C�B�A�@�?�K &0 createdatedfolder createDatedFolder�J ,0 exportselectedphotos exportSelectedPhotos�I (0 createframefolders createFrameFolders
�H 
file
�G .corecnte****       ****�F .0 showphotoexportfolder showPhotoExportFolder�E :0 moveoriginalstoframefolders moveOriginalsToFrameFolders
�D 
kocl
�C 
cobj
�B 
pnam�A �@ 40 processimageswithkeynote processImagesWithKeynote
�? .coredelonull���     obj �Q �)b  �l+ E�O)�k+ O)�b   l+ E�O)�b  l+ E�O� ��-EE�UO)��j l+ O)���m+ O� _ *�[��l kh )��-E��,b  b  �+ [OY��O *�[��l kh )��-E��,b  b  �+ [OY��O�j U� �>Y�=�<���;�> ,0 exportselectedphotos exportSelectedPhotos�= �:��: �  �9�9 0 exportfolder exportFolder�<  � �8�7�8 0 exportfolder exportFolder�7  0 selectedimages selectedImages� o�6�5�4�3�2�1
�6 .miscactvnull��� ��� null
�5 
selc
�4 
insh
�3 
file�2 0 pathtostring pathToString
�1 .IPXSexponull���     ****�; !� *j O*�,E�O��*�)�k+ /l U� �0�/�.���-�0 .0 showphotoexportfolder showPhotoExportFolder�/ �,��, �  �+�*�+ 0 exportfolder exportFolder�* 0 	filecount 	fileCount�.  � �)�(�'�) 0 exportfolder exportFolder�( 0 	filecount 	fileCount�' 0 
buttontext 
buttonText� ��&�%����$�#�"�!� �
�& .miscactvnull��� ��� null
�% .aevtodocnull  �    alis
�$ 
btns
�# 
dflt�" 
�! .sysodlogaskr        TEXT
�  
errn����- @� <*j O�j O�j  �E�Y �E�O�%�kv�� 	O�j  )��lhY hU� �������� :0 moveoriginalstoframefolders moveOriginalsToFrameFolders� ��� �  ���� 0 
imagefiles 
imageFiles� "0 portraitfolders portraitFolders� $0 landscapefolders landscapeFolders�  � 	���������� 0 
imagefiles 
imageFiles� "0 portraitfolders portraitFolders� $0 landscapefolders landscapeFolders� 80 currentlandscapeframeindex currentLandscapeFrameIndex� 60 currentportraitframeindex currentPortraitFrameIndex� &0 destinationfolder destinationFolder� 0 	imagefile 	imageFile� 0 imageheight imageHeight� 0 
imagewidth 
imageWidth� +�����
��	�����
� 
kocl
� 
cobj
� .corecnte****       ****�
 &0 spotlightproperty spotlightProperty�	 0 
nextfolder 
nextFolder
� 
file� 0 pathtostring pathToString
� 
insh
� 
cfol
� .coremovenull���     obj � �� �kE�OkE�O u�[��l kh )�l+ E�O)�l+ E�O�� )��l+ E[�k/E�Z[�l/E�ZY )��l+ E[�k/E�Z[�l/E�ZO*�)�k+ 	/�*�)�k+ 	/l [OY��U� �1����� � 40 processimageswithkeynote processImagesWithKeynote� ����� �  ����������  0 selectedimages selectedImages�� 00 exportfoldernameprefix exportFolderNamePrefix�� 0 
slidewidth 
slideWidth�� 0 slideheight slideHeight�  � 	��������������������  0 selectedimages selectedImages�� 00 exportfoldernameprefix exportFolderNamePrefix�� 0 
slidewidth 
slideWidth�� 0 slideheight slideHeight�� "0 keynotedocument keynoteDocument�� 0 selectedimage selectedImage�� 0 imagecaption imageCaption�� 0 importedimage importedImage�� 0 textitem textItem� ,!�����������������������������������������������������������������������������������
�� 
kocl
�� 
docu
�� 
prdt
�� 
Kndt
�� 
Knth
�� 
sith
�� 
sitw�� �� 
�� .corecrel****      � null
�� 
cobj
�� .corecnte****       ****��  0 extractcaption extractCaption
�� 
KnSd
�� 
crsl
�� 
imag
�� 
file�� 0 pathtoalias pathToAlias
�� 
sipo
�� 
shtx
�� 
pDTx
�� 
pSOp�� 

�� 
font
�� 
ptsz
�� 
colr
�� 
pALL
�� .coredelonull���     obj 
�� 
kfil�� &0 createdatedfolder createDatedFolder
�� 
TEXT
�� 
exft
�� KnefKimg
�� 
expr
�� 
Kxic
�� 
Kxif
�� KnmfKifj
�� 
Kxpw
�� KnpwKpwi
�� .Knstexponull���     docu
�� .aevtquitnull��� ��� null� H�D*����*�b  /���� 
E�O� � ͠[��l kh )�k+ E�O*��l 
O*�, �*�a �a )�k+ l� 
E�O� �*�,FO�*�,FOjjlv*a ,FUO�a  f*�a �a ���b  a j�b  b  
lva b  a � 
E�O�a , "a b  a b  a b  	�*a ,FUY hU[OY�AO*�k/j UO�a *a )b  a �%l+  a !&/a "a #a $a %b  a &a 'a (a )�� *O�j O*j +U� ��,����������  0 extractcaption extractCaption�� ����� �  ���� 0 	imagefile 	imageFile��  � ������ 0 	imagefile 	imageFile�� "0 embeddedcaption embeddedCaption� 	<��FOY������e�� &0 spotlightproperty spotlightProperty�� 00 imagecreationyearmonth imageCreationYearMonth��  ��  �� A 8)�l+ E�O��  )�l+ E�Y hO��  )�k+ E�Y hO�W 	X  �� ��l���������� &0 spotlightproperty spotlightProperty�� ����� �  ������ 0 propertyname propertyName�� 0 	imagefile 	imageFile��  � ���������� 0 propertyname propertyName�� 0 	imagefile 	imageFile�� 0 command  �� 0 shellresult shellResult� ������������ &0 pathtoposixstring pathToPosixString
�� 
strq
�� .sysoexecTEXT���     TEXT�� '�%�%)�k+ �,%E�O�j E�O��  �Y �� ������������� "0 imagedimensions imageDimensions�� ����� �  ���� 0 	imagefile 	imageFile��  � �������� 0 	imagefile 	imageFile�� 0 theimage theImage�� 0 thedimensions theDimensions� ��������� 0 pathtostring pathToString
�� .aevtodocnull  �    alis
�� 
dmns�� #� *�k+ j E�O� *�,E�UO*�,EU� ������������� 0 pathtoalias pathToAlias�� ����� �  ���� 0 thepath thePath��  � ���� 0 thepath thePath� �������������
�� 
ditm
�� 
TEXT
�� 
ppth
�� 
alis��  ��  �� *� & *��&/�,�&W X  *��,E/�,�&�&U� ������������� 0 pathtostring pathToString�� ����� �  ���� 0 thepath thePath��  � ���� 0 thepath thePath� ����������
�� 
ditm
�� 
TEXT
�� 
ppth��  ��  ��  �  *��&/�,EW X  ��,EU� ������������ &0 pathtoposixstring pathToPosixString�� ����� �  ���� 0 thepath thePath��  � ���� 0 thepath thePath� $��������~�}
�� 
ditm
�� 
TEXT
�� 
ppth�  �~  
�} 
psxp�� &�  *��&/�,E�W X  ��,E�UO��,E� �|3�{�z���y�| 00 imagecreationyearmonth imageCreationYearMonth�{ �x��x �  �w�w 0 	imagefile 	imageFile�z  � �v�u�t�s�v 0 	imagefile 	imageFile�u 0 
createdate 
createDate�t 0 createdyear createdYear�s 0 createdmonth createdMonth� >�r�q�p�o�n�m[�r &0 spotlightproperty spotlightProperty
�q 
cha �p 
�o 
TEXT�n �m �y 1*�l+ E�O�[�\[Zm\Z�2�&E�O�[�\[Z�\Z�2�&E�O��%�%� �lg�k�j���i�l $0 formattedtimenow formattedTimeNow�k  �j  � �h�g�f�e�d�c�b�a�h 0 now  �g 0 theyear theYear�f 0 themonthname theMonthName�e 0 theday theDay�d 0 thehour theHour�c 0 	theminute 	theMinute�b 0 	thesecond 	theSecond�a 0 formatteddate formattedDate� �`�_�^�]�\�[�Z�Y�X�����
�` .misccurdldt    ��� null
�_ 
year
�^ 
TEXT
�] 
mnth
�\ 
day �[ 0 zeropad zeroPad
�Z 
hour
�Y 
min 
�X 
scnd�i g*j  E�O��,�&E�O��,�&E�O*��,�&k+ E�O*��,�&k+ E�O*��,�&k+ E�O*��,�&k+ E�O��%�%�%�%�%�%�%�%�%�%E�O�� �W��V�U���T�W 0 zeropad zeroPad�V �S��S �  �R�R 0 thevalue theValue�U  � �Q�Q 0 thevalue theValue� ��P�O�N
�P 
TEXT
�O 
ctxt�N���T �%�&[�\[Z�\Zi2E� �M��L�K���J�M 0 createfolder createFolder�L �I��I �  �H�G�H 0 parentfolder parentFolder�G 0 
foldername 
folderName�K  � �F�E�D�F 0 parentfolder parentFolder�E 0 
foldername 
folderName�D 0 	thefolder 	theFolder� ��C�B�A�@�?�>�=
�C 
kocl
�B 
cfol
�A 
insh
�@ 
prdt
�? 
pnam�> 
�= .corecrel****      � null�J � *�����l� E�UO�� �<
�;�:���9�< &0 createdatedfolder createDatedFolder�; �8��8 �  �7�6�7 0 parentfolder parentFolder�6 0 folderprefix folderPrefix�:  � �5�4�5 0 parentfolder parentFolder�4 0 folderprefix folderPrefix� �3�2�3 $0 formattedtimenow formattedTimeNow�2 0 createfolder createFolder�9 )���%)j+ %l+ � �1(�0�/���.�1 (0 createframefolders createFrameFolders�0 �-��- �  �,�+�, 0 parentfolder parentFolder�+ 0 	framelist 	frameList�/  � �*�)�(�'�&�* 0 parentfolder parentFolder�) 0 	framelist 	frameList�( 0 
folderlist 
folderList�' 0 
framecount 
frameCount�& 0 	framename 	frameName� �%�$�#
�% .corecnte****       ****
�$ 
cobj�# 0 createfolder createFolder�. -jvE�O #k�j  kh ��/E�O)��l+ �6F[OY��O�� �"X�!� ����" 0 
nextfolder 
nextFolder�! ��� �  ��� 0 
folderlist 
folderList� (0 currentfolderindex currentFolderIndex�   � ���� 0 
folderlist 
folderList� (0 currentfolderindex currentFolderIndex� 0 currentfolder currentFolder� ��
� 
cobj
� .corecnte****       ****� %��/E�O�kE�O��j  kE�Y hO��lv� �������
� .aevtoappnull  �   � ****� k     ��  ���  �  �  �  � �� 0 go  � )j+  ascr  ��ޭ