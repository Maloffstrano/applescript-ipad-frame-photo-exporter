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
slideWidth8 9��9 o      ���� 0 slideheight slideHeight��  ��  1 O    O:;: k   N<< =>= l   ��?@��  ? 5 / Uncomment if you want to see Keynote in action   @ �AA ^   U n c o m m e n t   i f   y o u   w a n t   t o   s e e   K e y n o t e   i n   a c t i o n> BCB I   	������
�� .miscactvnull��� ��� null��  ��  C DED l  
 
��������  ��  ��  E FGF l  
 
��HI��  H &   make a new page layout document   I �JJ @   m a k e   a   n e w   p a g e   l a y o u t   d o c u m e n tG KLK r   
 #MNM I  
 !����O
�� .corecrel****      � null��  O ��PQ
�� 
koclP m    ��
�� 
docuQ ��R��
�� 
prdtR K    SS ��TU
�� 
KndtT 4    ��V
�� 
KnthV o    ���� 0 	themename 	themeNameU ��WX
�� 
sithW o    ���� 0 slideheight slideHeightX ��Y��
�� 
sitwY o    ���� 0 
slidewidth 
slideWidth��  ��  N o      ���� "0 keynotedocument keynoteDocumentL Z[Z l  $ $��������  ��  ��  [ \]\ O   $^_^ k   (`` aba l  ( (��cd��  c    add images, one per slide   d �ee 4   a d d   i m a g e s ,   o n e   p e r   s l i d eb fgf X   ( �h��ih k   8 �jj klk r   8 @mnm n  8 >opo I   9 >��q����  0 extractcaption extractCaptionq r��r o   9 :���� 0 selectedimage selectedImage��  ��  p  f   8 9n o      ���� 0 imagecaption imageCaptionl sts l  A A��������  ��  ��  t uvu I  A H����w
�� .corecrel****      � null��  w ��x��
�� 
koclx m   C D��
�� 
KnSd��  v yzy l  I I��������  ��  ��  z {��{ O   I �|}| k   Q �~~ � l  Q Q������  �   import the image   � ��� "   i m p o r t   t h e   i m a g e� ��� r   Q h��� I  Q f�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   S V��
�� 
imag� ���~
� 
prdt� K   W b�� �}��|
�} 
file� n  Z `��� I   [ `�{��z�{ 0 pathtoalias pathToAlias� ��y� o   [ \�x�x 0 selectedimage selectedImage�y  �z  �  f   Z [�|  �~  � o      �w�w 0 importedimage importedImage� ��� l  i i�v�u�t�v  �u  �t  � ��� l  i i�s���s  � %  image takes up the whole slide   � ��� >   i m a g e   t a k e s   u p   t h e   w h o l e   s l i d e� ��� O   i ���� k   m ��� ��� r   m r��� o   m n�r�r 0 
slidewidth 
slideWidth� n     ��� 1   o q�q
�q 
sitw�  g   n o� ��� r   s x��� o   s t�p�p 0 slideheight slideHeight� n     ��� 1   u w�o
�o 
sith�  g   t u� ��n� r   y ���� J   y }�� ��� m   y z�m�m  � ��l� m   z {�k�k  �l  � n     ��� 1   ~ ��j
�j 
sipo�  g   } ~�n  � o   i j�i�i 0 importedimage importedImage� ��� l  � ��h�g�f�h  �g  �f  � ��e� Z   � ����d�c� >  � ���� o   � ��b�b 0 imagecaption imageCaption� m   � ��� ���  � k   � ��� ��� r   � ���� I  � ��a�`�
�a .corecrel****      � null�`  � �_��
�_ 
kocl� m   � ��^
�^ 
shtx� �]��\
�] 
prdt� l 	 � ���[�Z� K   � ��� �Y��
�Y 
pDTx� l 
 � ���X�W� o   � ��V�V 0 imagecaption imageCaption�X  �W  � �U��
�U 
sitw� l 
 � ���T�S� o   � ��R�R 0 
slidewidth 
slideWidth�T  �S  � �Q��
�Q 
sith� l 
 � ���P�O� o   � ��N�N 0 textsize textSize�P  �O  � �M��
�M 
sipo� l 
 � ���L�K� J   � ��� ��� m   � ��J�J  � ��I� \   � ���� \   � ���� o   � ��H�H 0 slideheight slideHeight� o   � ��G�G 0 textsize textSize� o   � ��F�F 0 textpadding textPadding�I  �L  �K  � �E��D
�E 
pSOp� o   � ��C�C 0 textopacity textOpacity�D  �[  �Z  �\  � o      �B�B 0 textitem textItem� ��� l  � ��A�@�?�A  �@  �?  � ��>� O   � ���� r   � ���� K   � ��� �=��
�= 
font� o   � ��<�< 0 textfont textFont� �;��
�; 
ptsz� o   � ��:�: 0 textsize textSize� �9��8
�9 
colr� o   � ��7�7 0 	textcolor 	textColor�8  � 1   � ��6
�6 
pALL� n   � ���� 1   � ��5
�5 
pDTx� o   � ��4�4 0 textitem textItem�>  �d  �c  �e  } 1   I N�3
�3 
crsl��  �� 0 selectedimage selectedImagei o   + ,�2�2  0 selectedimages selectedImagesg ��� l  � ��1�0�/�1  �0  �/  � ��.� l  ����� I  ��-��,
�- .coredelonull���     obj � 4  � ��+�
�+ 
KnSd� m   � ��*�* �,  � "  First slide is always blank   � ��� 8   F i r s t   s l i d e   i s   a l w a y s   b l a n k�.  _ o   $ %�)�) "0 keynotedocument keynoteDocument] ��� l �(�'�&�(  �'  �&  � ��� I B�%��
�% .Knstexponull���     docu� o  �$�$ "0 keynotedocument keynoteDocument� �#��
�# 
kfil� 4  �"�
�" 
file� l 
��!� � l ���� c  � � n  I  ��� &0 createdatedfolder createDatedFolder  o  �� *0 defaultexportfolder defaultExportFolder � b   m  		 �

  F r a m e - o  �� 00 exportfoldernameprefix exportFolderNamePrefix�  �    f    m  �
� 
TEXT�  �  �!  �   � �
� 
exft l 
"%�� m  "%�
� KnefKimg�  �   ��
� 
expr l 	(>�� K  (> �
� 
Kxic l 
+0�� o  +0�� .0 jpegcompressionfactor jpegCompressionFactor�  �   �
� 
Kxif l 
36�
�	 m  36�
� KnmfKifj�
  �	   ��
� 
Kxpw m  9<�
� KnpwKpwi�  �  �  �  �  l CC����  �  �    I CH�� 
� .coredelonull���     obj  o  CD���� "0 keynotedocument keynoteDocument�    �� I IN������
�� .aevtquitnull��� ��� null��  ��  ��  ; m     �                                                                                  keyn  alis    &  Macintosh HD                   BD ����Keynote.app                                                    ����            ����  
 cu             Applications  /:Applications:Keynote.app/     K e y n o t e . a p p    M a c i n t o s h   H D  Applications/Keynote.app  / ��  /   l     ��������  ��  ��    !"! l     ��#$��  # 6 0 Get the image description, title or create date   $ �%% `   G e t   t h e   i m a g e   d e s c r i p t i o n ,   t i t l e   o r   c r e a t e   d a t e" &'& i   Q T()( I      ��*����  0 extractcaption extractCaption* +��+ o      ���� 0 	imagefile 	imageFile��  ��  ) Q     @,-., k    6// 010 r    232 n   
454 I    
��6���� &0 spotlightproperty spotlightProperty6 787 m    99 �:: $ k M D I t e m D e s c r i p t i o n8 ;��; o    ���� 0 	imagefile 	imageFile��  ��  5  f    3 l     <����< o      ���� "0 embeddedcaption embeddedCaption��  ��  1 =>= Z     ?@����? =   ABA o    ���� "0 embeddedcaption embeddedCaptionB m    CC �DD  @ r    EFE n   GHG I    ��I���� &0 spotlightproperty spotlightPropertyI JKJ m    LL �MM  k M D I t e m T i t l eK N��N o    ���� 0 	imagefile 	imageFile��  ��  H  f    F l     O����O o      ���� "0 embeddedcaption embeddedCaption��  ��  ��  ��  > PQP Z   ! 3RS����R =  ! $TUT o   ! "���� "0 embeddedcaption embeddedCaptionU m   " #VV �WW  S r   ' /XYX n  ' -Z[Z I   ( -��\���� 00 imagecreationyearmonth imageCreationYearMonth\ ]��] o   ( )���� 0 	imagefile 	imageFile��  ��  [  f   ' (Y l     ^����^ o      ���� "0 embeddedcaption embeddedCaption��  ��  ��  ��  Q _��_ L   4 6`` o   4 5���� "0 embeddedcaption embeddedCaption��  - R      ������
�� .ascrerr ****      � ****��  ��  . L   > @aa m   > ?bb �cc  ' ded l     ��������  ��  ��  e fgf i   U Xhih I      ��j���� &0 spotlightproperty spotlightPropertyj klk o      ���� 0 propertyname propertyNamel m��m o      ���� 0 	imagefile 	imageFile��  ��  i k     &nn opo q      qq ������ 0 command  ��  p rsr q      tt ������ 0 shellresult shellResult��  s uvu l     ��������  ��  ��  v wxw r     yzy b     {|{ b     }~} b     � m     �� ���   m d l s   - r a w   - n a m e  � o    ���� 0 propertyname propertyName~ m    �� ���   | n    ��� 1    ��
�� 
strq� n   ��� I    ������� &0 pathtoposixstring pathToPosixString� ���� o    ���� 0 	imagefile 	imageFile��  ��  �  f    z o      ���� 0 command  x ��� r    ��� I   �����
�� .sysoexecTEXT���     TEXT� o    ���� 0 command  ��  � o      ���� 0 shellresult shellResult� ��� l   ��������  ��  ��  � ���� Z    &������ =   ��� o    ���� 0 shellresult shellResult� m    �� ���  ( n u l l )� L    !�� m     �� ���  ��  � L   $ &�� o   $ %���� 0 shellresult shellResult��  g ��� l     ��������  ��  ��  � ��� i   Y \��� I      ������� "0 imagedimensions imageDimensions� ���� o      ���� 0 	imagefile 	imageFile��  ��  � O     "��� k    !�� ��� r    ��� I   �����
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
TEXT��  ��  � m   % &�
� 
alis� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     �~�}�|�~  �}  �|  � ��� l     �{���{  � ( " Convert anything to a string path   � ��� D   C o n v e r t   a n y t h i n g   t o   a   s t r i n g   p a t h� ��� i   a d��� I      �z��y�z 0 pathtostring pathToString� ��x� o      �w�w 0 thepath thePath�x  �y  � O     ��� Q    ���� L    �� n    ��� 1    �v
�v 
ppth� 4    �u�
�u 
ditm� l  	 ��t�s� c   	 ��� o   	 
�r�r 0 thepath thePath� m   
 �q
�q 
TEXT�t  �s  � R      �p�o�n
�p .ascrerr ****      � ****�o  �n  � L    �� n    ��� 1    �m
�m 
ppth� o    �l�l 0 thepath thePath� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �    l     �k�j�i�k  �j  �i    l     �h�h   . ( Convert anything to a POSIX string path    � P   C o n v e r t   a n y t h i n g   t o   a   P O S I X   s t r i n g   p a t h  i   e h	
	 I      �g�f�g &0 pathtoposixstring pathToPosixString �e o      �d�d 0 thepath thePath�e  �f  
 k     %  O      Q     r     n     1    �c
�c 
ppth 4    �b
�b 
ditm l  	 �a�` c   	  o   	 
�_�_ 0 thepath thePath m   
 �^
�^ 
TEXT�a  �`   o      �]�] 0 thepath thePath R      �\�[�Z
�\ .ascrerr ****      � ****�[  �Z   r     n      1    �Y
�Y 
ppth  o    �X�X 0 thepath thePath o      �W�W 0 thepath thePath m     !!�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   "�V" L     %## n     $$%$ 1   ! #�U
�U 
psxp% o     !�T�T 0 thepath thePath�V   &'& l     �S�R�Q�S  �R  �Q  ' ()( l     �P*+�P  * S M Returns a string of the form YY/MM representing the time the photo was taken   + �,, �   R e t u r n s   a   s t r i n g   o f   t h e   f o r m   Y Y / M M   r e p r e s e n t i n g   t h e   t i m e   t h e   p h o t o   w a s   t a k e n) -.- i   i l/0/ I      �O1�N�O 00 imagecreationyearmonth imageCreationYearMonth1 2�M2 o      �L�L 0 	imagefile 	imageFile�M  �N  0 k     033 454 r     	676 I     �K8�J�K &0 spotlightproperty spotlightProperty8 9:9 m    ;; �<< 4 k M D I t e m C o n t e n t C r e a t i o n D a t e: =�I= o    �H�H 0 	imagefile 	imageFile�I  �J  7 o      �G�G 0 
createdate 
createDate5 >?> r   
 @A@ c   
 BCB n   
 DED 7   �FFG
�F 
cha F m    �E�E G m    �D�D E o   
 �C�C 0 
createdate 
createDateC m    �B
�B 
TEXTA o      �A�A 0 createdyear createdYear? HIH r    )JKJ c    'LML n    %NON 7   %�@PQ
�@ 
cha P m    !�?�? Q m   " $�>�> O o    �=�= 0 
createdate 
createDateM m   % &�<
�< 
TEXTK o      �;�; 0 createdmonth createdMonthI R�:R L   * 0SS b   * /TUT b   * -VWV o   * +�9�9 0 createdyear createdYearW m   + ,XX �YY  /U o   - .�8�8 0 createdmonth createdMonth�:  . Z[Z l     �7�6�5�7  �6  �5  [ \]\ l     �4^_�4  ^ ? 9 Get the date and time suitable for part of a folder name   _ �`` r   G e t   t h e   d a t e   a n d   t i m e   s u i t a b l e   f o r   p a r t   o f   a   f o l d e r   n a m e] aba i   m pcdc I      �3�2�1�3 $0 formattedtimenow formattedTimeNow�2  �1  d k     fee fgf r     hih l    j�0�/j I    �.�-�,
�. .misccurdldt    ��� null�-  �,  �0  �/  i o      �+�+ 0 now  g klk r    mnm c    opo n    qrq 1   	 �*
�* 
yearr o    	�)�) 0 now  p m    �(
�( 
TEXTn o      �'�' 0 theyear theYearl sts r    uvu c    wxw n    yzy m    �&
�& 
mnthz o    �%�% 0 now  x m    �$
�$ 
TEXTv o      �#�# 0 themonthname theMonthNamet {|{ r    $}~} I    "�"�!�" 0 zeropad zeroPad �� � c    ��� n    ��� 1    �
� 
day � o    �� 0 now  � m    �
� 
TEXT�   �!  ~ o      �� 0 theday theDay| ��� r   % 1��� I   % /���� 0 zeropad zeroPad� ��� c   & +��� n   & )��� 1   ' )�
� 
hour� o   & '�� 0 now  � m   ) *�
� 
TEXT�  �  � o      �� 0 thehour theHour� ��� r   2 >��� I   2 <���� 0 zeropad zeroPad� ��� c   3 8��� n   3 6��� 1   4 6�
� 
min � o   3 4�� 0 now  � m   6 7�
� 
TEXT�  �  � o      �� 0 	theminute 	theMinute� ��� r   ? K��� I   ? I���� 0 zeropad zeroPad� ��� c   @ E��� n   @ C��� m   A C�

�
 
scnd� o   @ A�	�	 0 now  � m   C D�
� 
TEXT�  �  � o      �� 0 	thesecond 	theSecond� ��� l  L L����  �  �  � ��� r   L c��� b   L a��� b   L _��� b   L ]��� b   L [��� b   L Y��� b   L W��� b   L U��� b   L S��� b   L Q��� b   L O��� o   L M�� 0 theyear theYear� m   M N�� ���  -� o   O P�� 0 themonthname theMonthName� m   Q R�� ���  -� o   S T�� 0 theday theDay� m   U V�� ���  _� o   W X� �  0 thehour theHour� m   Y Z�� ���  -� o   [ \���� 0 	theminute 	theMinute� m   ] ^�� ���  -� o   _ `���� 0 	thesecond 	theSecond� o      ���� 0 formatteddate formattedDate� ���� L   d f�� o   d e���� 0 formatteddate formattedDate��  b ��� l     ��������  ��  ��  � ��� l     ������  � : 4 Pad theValue with a leading zero when less than 10.   � ��� h   P a d   t h e V a l u e   w i t h   a   l e a d i n g   z e r o   w h e n   l e s s   t h a n   1 0 .� ��� i   q t��� I      ������� 0 zeropad zeroPad� ���� o      ���� 0 thevalue theValue��  ��  � n     ��� 7   ����
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
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� L    �� o    ���� 0 	thefolder 	theFolder��  � ��� l     ��������  ��  ��  � � � l     ����   C = Create a uniquely named folder and return the folder object.    � z   C r e a t e   a   u n i q u e l y   n a m e d   f o l d e r   a n d   r e t u r n   t h e   f o l d e r   o b j e c t .   i   y | I      ������ &0 createdatedfolder createDatedFolder 	
	 o      ���� 0 parentfolder parentFolder
 �� o      ���� 0 folderprefix folderPrefix��  ��   L      n     I    ������ 0 createfolder createFolder  o    ���� 0 parentfolder parentFolder �� b     b     o    ���� 0 folderprefix folderPrefix m     �  - n   
 I    
�������� $0 formattedtimenow formattedTimeNow��  ��    f    ��  ��    f       l     ��������  ��  ��    l     �� ��   V P Create a folder for each frame name in the list and return the list of folders.     �!! �   C r e a t e   a   f o l d e r   f o r   e a c h   f r a m e   n a m e   i n   t h e   l i s t   a n d   r e t u r n   t h e   l i s t   o f   f o l d e r s . "#" i   } �$%$ I      ��&���� (0 createframefolders createFrameFolders& '(' o      ���� 0 parentfolder parentFolder( )��) o      ���� 0 	framelist 	frameList��  ��  % k     ,** +,+ r     -.- J     ����  . o      ���� 0 
folderlist 
folderList, /0/ Y    )1��23��1 k    $44 565 r    787 n    9:9 4    ��;
�� 
cobj; o    ���� 0 
framecount 
frameCount: o    ���� 0 	framelist 	frameList8 o      ���� 0 	framename 	frameName6 <��< r    $=>= n   !?@? I    !��A���� 0 createfolder createFolderA BCB o    ���� 0 parentfolder parentFolderC D��D o    ���� 0 	framename 	frameName��  ��  @  f    > n      EFE  ;   " #F o   ! "���� 0 
folderlist 
folderList��  �� 0 
framecount 
frameCount2 m    	���� 3 l  	 G����G I  	 ��H��
�� .corecnte****       ****H o   	 
���� 0 	framelist 	frameList��  ��  ��  ��  0 I��I L   * ,JJ o   * +���� 0 
folderlist 
folderList��  # KLK l     ��������  ��  ��  L MNM l     ��OP��  O B < Return the next destination folder from the list of folders   P �QQ x   R e t u r n   t h e   n e x t   d e s t i n a t i o n   f o l d e r   f r o m   t h e   l i s t   o f   f o l d e r sN RSR i   � �TUT I      ��V���� 0 
nextfolder 
nextFolderV WXW o      ���� 0 
folderlist 
folderListX Y��Y o      ���� (0 currentfolderindex currentFolderIndex��  ��  U k     $ZZ [\[ q      ]] ������ 0 currentfolder currentFolder��  \ ^_^ r     `a` n     bcb 4    ��d
�� 
cobjd o    ���� (0 currentfolderindex currentFolderIndexc o     ���� 0 
folderlist 
folderLista o      ���� 0 currentfolder currentFolder_ efe r    ghg [    
iji o    ���� (0 currentfolderindex currentFolderIndexj m    	���� h o      ���� (0 currentfolderindex currentFolderIndexf klk Z    mn����m ?    opo o    ���� (0 currentfolderindex currentFolderIndexp l   q����q I   ��r��
�� .corecnte****       ****r o    ���� 0 
folderlist 
folderList��  ��  ��  n r    sts m    ���� t o      ���� (0 currentfolderindex currentFolderIndex��  ��  l u��u L    $vv J    #ww xyx o     ���� 0 currentfolder currentFoldery z��z o     !���� (0 currentfolderindex currentFolderIndex��  ��  S {|{ l     ��������  ��  ��  | }��} l     ����~��  �  �~  ��       #�}~� t�|�{�z�y ��x ��w�v ����������������������}  ~ !�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�u "0 landscapeframes landscapeFrames�t  0 portraitframes portraitFrames�s 0 	themename 	themeName�r 0 defaultmargin defaultMargin�q 0 textiteminset textItemInset�p *0 imageshortdimension imageShortDimension�o (0 imagelongdimension imageLongDimension�n 0 textfont textFont�m 0 textsize textSize�l 0 	textcolor 	textColor�k 0 textpadding textPadding�j 0 textopacity textOpacity�i .0 jpegcompressionfactor jpegCompressionFactor�h *0 defaultexportfolder defaultExportFolder�g 0 go  �f ,0 exportselectedphotos exportSelectedPhotos�e .0 showphotoexportfolder showPhotoExportFolder�d :0 moveoriginalstoframefolders moveOriginalsToFrameFolders�c 40 processimageswithkeynote processImagesWithKeynote�b  0 extractcaption extractCaption�a &0 spotlightproperty spotlightProperty�` "0 imagedimensions imageDimensions�_ 0 pathtoalias pathToAlias�^ 0 pathtostring pathToString�] &0 pathtoposixstring pathToPosixString�\ 00 imagecreationyearmonth imageCreationYearMonth�[ $0 formattedtimenow formattedTimeNow�Z 0 zeropad zeroPad�Y 0 createfolder createFolder�X &0 createdatedfolder createDatedFolder�W (0 createframefolders createFrameFolders�V 0 
nextfolder 
nextFolder
�U .aevtoappnull  �   � **** �T��T �   b� �S��S �   j m�| $�{ �z �y �x �w �v <�&alis    "  Macintosh HD                   BD ����	Documents                                                      ����            ����  
 cu             sheldon   /:Users:sheldon:Documents/   	 D o c u m e n t s    M a c i n t o s h   H D  Users/sheldon/Documents   /    ��  � �R ��Q�P���O�R 0 go  �Q  �P  � �N�M�L�K�J�N (0 photosexportfolder photosExportFolder�M $0 landscapefolders landscapeFolders�L "0 portraitfolders portraitFolders�K (0 exportedimagefiles exportedImageFiles�J "0 foldertoprocess folderToProcess�  ��I�H�G�F�E�D�C�B�A�@�?�>�=�I &0 createdatedfolder createDatedFolder�H ,0 exportselectedphotos exportSelectedPhotos�G (0 createframefolders createFrameFolders
�F 
file
�E .corecnte****       ****�D .0 showphotoexportfolder showPhotoExportFolder�C :0 moveoriginalstoframefolders moveOriginalsToFrameFolders
�B 
kocl
�A 
cobj
�@ 
pnam�? �> 40 processimageswithkeynote processImagesWithKeynote
�= .coredelonull���     obj �O �)b  �l+ E�O)�k+ O)�b   l+ E�O)�b  l+ E�O� ��-EE�UO)��j l+ O)���m+ O� _ *�[��l kh )��-E��,b  b  �+ [OY��O *�[��l kh )��-E��,b  b  �+ [OY��O�j U� �<Y�;�:���9�< ,0 exportselectedphotos exportSelectedPhotos�; �8��8 �  �7�7 0 exportfolder exportFolder�:  � �6�5�6 0 exportfolder exportFolder�5  0 selectedimages selectedImages� o�4�3�2�1�0�/
�4 .miscactvnull��� ��� null
�3 
selc
�2 
insh
�1 
file�0 0 pathtostring pathToString
�/ .IPXSexponull���     ****�9 !� *j O*�,E�O��*�)�k+ /l U� �.�-�,���+�. .0 showphotoexportfolder showPhotoExportFolder�- �*��* �  �)�(�) 0 exportfolder exportFolder�( 0 	filecount 	fileCount�,  � �'�&�%�' 0 exportfolder exportFolder�& 0 	filecount 	fileCount�% 0 
buttontext 
buttonText� ��$�#����"�!� ���
�$ .miscactvnull��� ��� null
�# .aevtodocnull  �    alis
�" 
btns
�! 
dflt�  
� .sysodlogaskr        TEXT
� 
errn����+ @� <*j O�j O�j  �E�Y �E�O�%�kv�� 	O�j  )��lhY hU� �������� :0 moveoriginalstoframefolders moveOriginalsToFrameFolders� ��� �  ���� 0 
imagefiles 
imageFiles� "0 portraitfolders portraitFolders� $0 landscapefolders landscapeFolders�  � 	���������� 0 
imagefiles 
imageFiles� "0 portraitfolders portraitFolders� $0 landscapefolders landscapeFolders� 80 currentlandscapeframeindex currentLandscapeFrameIndex� 60 currentportraitframeindex currentPortraitFrameIndex� &0 destinationfolder destinationFolder� 0 	imagefile 	imageFile� 0 imageheight imageHeight� 0 
imagewidth 
imageWidth� +��
�	���������
� 
kocl
�
 
cobj
�	 .corecnte****       ****� &0 spotlightproperty spotlightProperty� 0 
nextfolder 
nextFolder
� 
file� 0 pathtostring pathToString
� 
insh
� 
cfol
� .coremovenull���     obj � �� �kE�OkE�O u�[��l kh )�l+ E�O)�l+ E�O�� )��l+ E[�k/E�Z[�l/E�ZY )��l+ E[�k/E�Z[�l/E�ZO*�)�k+ 	/�*�)�k+ 	/l [OY��U� �1� ������� 40 processimageswithkeynote processImagesWithKeynote�  ����� �  ����������  0 selectedimages selectedImages�� 00 exportfoldernameprefix exportFolderNamePrefix�� 0 
slidewidth 
slideWidth�� 0 slideheight slideHeight��  � 	��������������������  0 selectedimages selectedImages�� 00 exportfoldernameprefix exportFolderNamePrefix�� 0 
slidewidth 
slideWidth�� 0 slideheight slideHeight�� "0 keynotedocument keynoteDocument�� 0 selectedimage selectedImage�� 0 imagecaption imageCaption�� 0 importedimage importedImage�� 0 textitem textItem� -�������������������������������������������������������������	������������������������
�� .miscactvnull��� ��� null
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
�� .aevtquitnull��� ��� null��P�L*j O*����*�b  /���� E�O� � Ϡ[��l kh )�k+ E�O*��l O*a , �*�a �a )�k+ l� E�O� �*�,FO�*�,FOjjlv*a ,FUO�a  f*�a �a ���b  a j�b  b  
lva b  a � E�O�a , "a b  a b  a b  	�*a ,FUY hU[OY�?O*�k/j UO�a *a )b  a  �%l+ !a "&/a #a $a %a &b  a 'a (a )a *�� +O�j O*j ,U� ��)����������  0 extractcaption extractCaption�� ����� �  ���� 0 	imagefile 	imageFile��  � ������ 0 	imagefile 	imageFile�� "0 embeddedcaption embeddedCaption� 	9��CLV������b�� &0 spotlightproperty spotlightProperty�� 00 imagecreationyearmonth imageCreationYearMonth��  ��  �� A 8)�l+ E�O��  )�l+ E�Y hO��  )�k+ E�Y hO�W 	X  �� ��i���������� &0 spotlightproperty spotlightProperty�� ����� �  ������ 0 propertyname propertyName�� 0 	imagefile 	imageFile��  � ���������� 0 propertyname propertyName�� 0 	imagefile 	imageFile�� 0 command  �� 0 shellresult shellResult� ������������ &0 pathtoposixstring pathToPosixString
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
alis��  ��  �� *� & *��&/�,�&W X  *��,E/�,�&�&U� ������������� 0 pathtostring pathToString�� ����� �  ���� 0 thepath thePath��  � ���� 0 thepath thePath� �����������
�� 
ditm
�� 
TEXT
�� 
ppth��  ��  ��  �  *��&/�,EW X  ��,EU� ��
���������� &0 pathtoposixstring pathToPosixString�� ����� �  ���� 0 thepath thePath��  � ���� 0 thepath thePath� !��~�}�|�{�z
� 
ditm
�~ 
TEXT
�} 
ppth�|  �{  
�z 
psxp�� &�  *��&/�,E�W X  ��,E�UO��,E� �y0�x�w���v�y 00 imagecreationyearmonth imageCreationYearMonth�x �u��u �  �t�t 0 	imagefile 	imageFile�w  � �s�r�q�p�s 0 	imagefile 	imageFile�r 0 
createdate 
createDate�q 0 createdyear createdYear�p 0 createdmonth createdMonth� ;�o�n�m�l�k�jX�o &0 spotlightproperty spotlightProperty
�n 
cha �m 
�l 
TEXT�k �j �v 1*�l+ E�O�[�\[Zm\Z�2�&E�O�[�\[Z�\Z�2�&E�O��%�%� �id�h�g���f�i $0 formattedtimenow formattedTimeNow�h  �g  � �e�d�c�b�a�`�_�^�e 0 now  �d 0 theyear theYear�c 0 themonthname theMonthName�b 0 theday theDay�a 0 thehour theHour�` 0 	theminute 	theMinute�_ 0 	thesecond 	theSecond�^ 0 formatteddate formattedDate� �]�\�[�Z�Y�X�W�V�U�����
�] .misccurdldt    ��� null
�\ 
year
�[ 
TEXT
�Z 
mnth
�Y 
day �X 0 zeropad zeroPad
�W 
hour
�V 
min 
�U 
scnd�f g*j  E�O��,�&E�O��,�&E�O*��,�&k+ E�O*��,�&k+ E�O*��,�&k+ E�O*��,�&k+ E�O��%�%�%�%�%�%�%�%�%�%E�O�� �T��S�R���Q�T 0 zeropad zeroPad�S �P��P �  �O�O 0 thevalue theValue�R  � �N�N 0 thevalue theValue� ��M�L�K
�M 
TEXT
�L 
ctxt�K���Q �%�&[�\[Z�\Zi2E� �J��I�H���G�J 0 createfolder createFolder�I �F��F �  �E�D�E 0 parentfolder parentFolder�D 0 
foldername 
folderName�H  � �C�B�A�C 0 parentfolder parentFolder�B 0 
foldername 
folderName�A 0 	thefolder 	theFolder� ��@�?�>�=�<�;�:
�@ 
kocl
�? 
cfol
�> 
insh
�= 
prdt
�< 
pnam�; 
�: .corecrel****      � null�G � *�����l� E�UO�� �9�8�7���6�9 &0 createdatedfolder createDatedFolder�8 �5��5 �  �4�3�4 0 parentfolder parentFolder�3 0 folderprefix folderPrefix�7  � �2�1�2 0 parentfolder parentFolder�1 0 folderprefix folderPrefix� �0�/�0 $0 formattedtimenow formattedTimeNow�/ 0 createfolder createFolder�6 )���%)j+ %l+ � �.%�-�,���+�. (0 createframefolders createFrameFolders�- �*��* �  �)�(�) 0 parentfolder parentFolder�( 0 	framelist 	frameList�,  � �'�&�%�$�#�' 0 parentfolder parentFolder�& 0 	framelist 	frameList�% 0 
folderlist 
folderList�$ 0 
framecount 
frameCount�# 0 	framename 	frameName� �"�!� 
�" .corecnte****       ****
�! 
cobj�  0 createfolder createFolder�+ -jvE�O #k�j  kh ��/E�O)��l+ �6F[OY��O�� �U������ 0 
nextfolder 
nextFolder� ��� �  ��� 0 
folderlist 
folderList� (0 currentfolderindex currentFolderIndex�  � ���� 0 
folderlist 
folderList� (0 currentfolderindex currentFolderIndex� 0 currentfolder currentFolder� ��
� 
cobj
� .corecnte****       ****� %��/E�O�kE�O��j  kE�Y hO��lv� �������
� .aevtoappnull  �   � ****� k     ��  ���  �  �  �  � �� 0 go  � )j+  ascr  ��ޭ