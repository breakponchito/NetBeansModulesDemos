����   4
      org/openide/util/ImageUtilities 
colorModel (I)Ljava/awt/image/ColorModel;
   	 
 ensureLoaded (Ljava/awt/Image;)V	     ERR Ljava/util/logging/Logger;	     dummyIconComponentButton Ljava/awt/Component;	     dummyIconComponentLabel
      java/lang/Object <init> ()V
     	loadImage %(Ljava/lang/String;Z)Ljava/awt/Image;
  ! " # loadImageInternal C(Ljava/lang/String;Z)Lorg/openide/util/ImageUtilities$ToolTipImage;
  % & ' 	isDarkLaF ()Z
  ) * + addDarkSuffix &(Ljava/lang/String;)Ljava/lang/String;
  - . # getIcon
  0 1 2 getImageIconFilter !()Ljava/awt/image/RGBImageFilter;
 4 5 6 7 8 org/openide/util/FilteredIcon create E(Ljava/awt/image/RGBImageFilter;Ljavax/swing/Icon;)Ljavax/swing/Icon;	 : ; < = > ,org/openide/util/ImageUtilities$ToolTipImage url Ljava/net/URL;
  @ A B icon2ToolTipImage P(Ljavax/swing/Icon;Ljava/net/URL;)Lorg/openide/util/ImageUtilities$ToolTipImage;
 : D E F asImageIcon ()Ljavax/swing/ImageIcon; H nb.dark.theme
 J K L M N javax/swing/UIManager 
getBoolean (Ljava/lang/Object;)Z
 P Q R S T java/lang/String lastIndexOf (I)I V java/lang/StringBuilder
 U 
 P Y Z [ 	substring (II)Ljava/lang/String;
 U ] ^ _ append -(Ljava/lang/String;)Ljava/lang/StringBuilder; a _dark
 P c Z d (I)Ljava/lang/String;
 U f g h toString ()Ljava/lang/String;	  j k l imageIconFilter Ljava/awt/image/RGBImageFilter; n nb.imageicon.filter
 J p q r get &(Ljava/lang/Object;)Ljava/lang/Object; t java/awt/image/RGBImageFilter v java/lang/NullPointerException
 u  y 1org/openide/util/ImageUtilities$CompositeImageKey
 x {  | %(Ljava/awt/Image;Ljava/awt/Image;II)V	  ~  � compositeCache Ljava/util/Map; � p � java/util/Map � )org/openide/util/ImageUtilities$ActiveRef
 � � q � ()Ljava/lang/Object;
  � � � doMergeImages R(Ljava/awt/Image;Ljava/awt/Image;II)Lorg/openide/util/ImageUtilities$ToolTipImage;
 � �  � R(Lorg/openide/util/ImageUtilities$ToolTipImage;Ljava/util/Map;Ljava/lang/Object;)V � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; �  
  � � � assignToolTipToImageInternal R(Ljava/awt/Image;Ljava/lang/String;)Lorg/openide/util/ImageUtilities$ToolTipImage;	  � �  LOGGER	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � !org/openide/nodes/defaultNode.png � -org/openide/util/ImageUtilities$IconImageIcon
 � � � � getDelegateIcon ()Ljavax/swing/Icon;
  � � � 
icon2Image $(Ljavax/swing/Icon;)Ljava/awt/Image; � javax/swing/ImageIcon
 � � � � getImage ()Ljava/awt/Image; � icon
 � � � � � org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V � java/awt/image/BufferedImage
 : �  � 6(Ljavax/swing/Icon;Ljava/lang/String;Ljava/net/URL;I)V
 : � � � getGraphics ()Ljava/awt/Graphics; � � � � � javax/swing/Icon 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V � java/lang/ClassCastException
 � � � �  java/awt/Graphics dispose � image � text � /org/openide/util/ImageUtilities$ToolTipImageKey
 � �  � %(Ljava/awt/Image;Ljava/lang/String;)V	  � � � imageToolTipCache
 : � � � 	createNew `(Ljava/lang/String;Ljava/awt/Image;Ljava/net/URL;)Lorg/openide/util/ImageUtilities$ToolTipImage;	 : � � � toolTipText Ljava/lang/String;
 U �  � (Ljava/lang/String;)V
 U � � � length ()I
 P � � <br>
  � � � assignToolTipToImage 4(Ljava/awt/Image;Ljava/lang/String;)Ljava/awt/Image;	 � � � � l 4org/openide/util/ImageUtilities$DisabledButtonFilter INSTANCE_DARK	 � l INSTANCE_LIGHT
  
image2Icon $(Ljava/awt/Image;)Ljavax/swing/Icon;
 	
 createDisabledIcon &(Ljavax/swing/Icon;)Ljavax/swing/Icon; =
 java/awt/Image getProperty D(Ljava/lang/String;Ljava/awt/image/ImageObserver;)Ljava/lang/Object; java/net/URL	  svgLoaderLoader 4Lorg/openide/util/ImageUtilities$CachedLookupLoader;
 � 2org/openide/util/ImageUtilities$CachedLookupLoader 	getLoader org/openide/util/spi/SVGLoader	  ! classLoaderLoader# java/lang/ClassLoader	 %& � localizedCache	 ()* NO_ICON +Lorg/openide/util/ImageUtilities$ActiveRef;
 ,-. getClassLoader ()Ljava/lang/ClassLoader;
 P �
 P12 h intern
"456 getResource "(Ljava/lang/String;)Ljava/net/URL;
8,9 java/lang/Class
;<=>? org/openide/util/NbBundle getLocalizingSuffixes ()Ljava/util/Iterator;ABCD ' java/util/Iterator hasNextAFG � next
 I .J Z(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lorg/openide/util/ImageUtilities$ToolTipImage;	 LM � cacheO /
 PQRS 
startsWith (Ljava/lang/String;)ZU .png
 PWXS endsWithZ .gif\ .svg
 ^_` getSVGLoader "()Lorg/openide/util/spi/SVGLoader;	 �bc � INFOe 'No SVG loader available for loading {0}
 �g �h @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)Vjkl loadIcon "(Ljava/net/URL;)Ljavax/swing/Icon;n java/io/IOExceptionp Failed to load SVG image 
 Ur ^s -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
uvw 
openStream ()Ljava/io/InputStream;
yz{|} javax/imageio/ImageIO createImageInputStream ;(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;	 �� 
PNG_READER Ljavax/imageio/ImageReader;
����� javax/imageio/ImageReader getDefaultReadParam  ()Ljavax/imageio/ImageReadParam;
���� setInput (Ljava/lang/Object;ZZ)V
���� read ?(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;� Image �  is not PNG����  %javax/imageio/stream/ImageInputStream close
y��� .(Ljava/net/URL;)Ljava/awt/image/BufferedImage;� Cannot load �  image	 ��� extraInitialSlashes Ljava/util/Set;���� N java/util/Set add� @Initial slashes in Utilities.loadImage deprecated (cf. #20072): 
 ��� � warning	 ��� � FINE
 ���� 
isLoggable (Ljava/util/logging/Level;)Z� loading icon {0} = {1}
 �� �� A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 � �
��� 	getHeight !(Ljava/awt/image/ImageObserver;)I
��� getWidth
 ��� createBufferedImage "(II)Ljava/awt/image/BufferedImage;
 ���� createGraphics ()Ljava/awt/Graphics2D;
 ���� 	drawImage 3(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
��  flush
����� java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
���� 
checkImage 3(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)I� java/awt/image/ImageObserver	 ��� tracker Ljava/awt/MediaTracker;	 ��� mediaTrackerID I
����� java/awt/MediaTracker addImage (Ljava/awt/Image;I)V
���� 	waitForID (IJ)Z� java/lang/InterruptedException	����� java/lang/System out Ljava/io/PrintStream;� INTERRUPTED while loading Image
���� � java/io/PrintStream println
�� � removeImage
 java/lang/Math max (II)I java/awt/Transparency
 � getTransparency *org/openide/util/ImageUtilities$MergedIcon
  )(Ljavax/swing/Icon;Ljavax/swing/Icon;II)V
 java/awt/image/ColorModel createCompatibleWritableRaster #(II)Ljava/awt/image/WritableRaster;
 ' isAlphaPremultiplied
 :  �(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;Ljava/net/URL;)V
 :�
 !" ' org/openide/util/Utilities isMac
 �$ % (III)V
 �' ( S(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
*+,-. java/awt/GraphicsEnvironment getLocalGraphicsEnvironment  ()Ljava/awt/GraphicsEnvironment;
*012 getDefaultScreenDevice ()Ljava/awt/GraphicsDevice;
45678 java/awt/GraphicsDevice getDefaultConfiguration "()Ljava/awt/GraphicsConfiguration;
:;<=  java/awt/GraphicsConfiguration getColorModel? (java/lang/ArrayIndexOutOfBoundsException
ABC getRGBdefault ()Ljava/awt/image/ColorModel;E java/awt/HeadlessException
8GH h getName
 �JKL 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;N java/util/HashMap
MP Q (I)VS java/util/HashSet
R 
V W (Ljava/lang/Class;)VY !org/openide/util/ImageUtilities$1
X 	 \]  	component
�_ ` (Ljava/awt/Component;)V
bcde ' java/awt/EventQueue isDispatchThreadg javax/swing/JLabel
f j javax/swing/JCheckBox
i m !org/openide/util/ImageUtilities$2
l 
pqrst javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V
yvwx setUseCache (Z)Vz 	image/png
y|}~ getImageReadersByMIMEType ((Ljava/lang/String;)Ljava/util/Iterator; PROPERTY_URL ConstantValue TOOLTIP_SEPAR 	Signature ?Lorg/openide/util/ImageUtilities$ActiveRef<Ljava/lang/String;>; bLjava/util/Map<Ljava/lang/String;Lorg/openide/util/ImageUtilities$ActiveRef<Ljava/lang/String;>;>; �Ljava/util/Map<Lorg/openide/util/ImageUtilities$CompositeImageKey;Lorg/openide/util/ImageUtilities$ActiveRef<Lorg/openide/util/ImageUtilities$CompositeImageKey;>;>; �Ljava/util/Map<Lorg/openide/util/ImageUtilities$ToolTipImageKey;Lorg/openide/util/ImageUtilities$ActiveRef<Lorg/openide/util/ImageUtilities$ToolTipImageKey;>;>; #Ljava/util/Set<Ljava/lang/String;>; MLorg/openide/util/ImageUtilities$CachedLookupLoader<Ljava/lang/ClassLoader;>; VLorg/openide/util/ImageUtilities$CachedLookupLoader<Lorg/openide/util/spi/SVGLoader;>; DARK_LAF_SUFFIX Code LineNumberTable LocalVariableTable this !Lorg/openide/util/ImageUtilities; $(Ljava/lang/String;)Ljava/awt/Image; 
resourceID MethodParameters resource 	localized Z imageFilter .Lorg/openide/util/ImageUtilities$ToolTipImage; StackMapTable loadImageIcon ,(Ljava/lang/String;Z)Ljavax/swing/ImageIcon; resourceName dotIndex obj Ljava/lang/Object; mergeImages 4(Ljava/awt/Image;Ljava/awt/Image;II)Ljava/awt/Image; cached r image1 Ljava/awt/Image; image2 x y k 3Lorg/openide/util/ImageUtilities$CompositeImageKey; LocalVariableTypeTable `Lorg/openide/util/ImageUtilities$ActiveRef<Lorg/openide/util/ImageUtilities$CompositeImageKey;>;� java/lang/Throwable ret Ljavax/swing/Icon; ex Ljava/lang/ClassCastException; g Ljava/awt/Graphics; key 1Lorg/openide/util/ImageUtilities$ToolTipImageKey; ^Lorg/openide/util/ImageUtilities$ActiveRef<Lorg/openide/util/ImageUtilities$ToolTipImageKey;>; getImageToolTip $(Ljava/awt/Image;)Ljava/lang/String; addToolTipToImage tti str Ljava/lang/StringBuilder; createDisabledImage "(Ljava/awt/Image;)Ljava/awt/Image; findImageBaseURL  (Ljava/awt/Image;)Ljava/net/URL; o base ext i suffix ref img loader Ljava/lang/ClassLoader; idx baseurl it Ljava/util/Iterator; (Ljava/util/Iterator<Ljava/lang/String;>; n warn svgURL e Ljava/io/IOException; ioe1 stream 'Ljavax/imageio/stream/ImageInputStream; param Ljavax/imageio/ImageReadParam; ioe toolTipImage 	svgLoader  Lorg/openide/util/spi/SVGLoader; useClassLoader result name localizedQuery� javax/imageio/ImageReadParam toBufferedImage rep Ljava/awt/image/BufferedImage;  Ljava/lang/InterruptedException; id toolTip w h bitmask firstUrl model Ljava/awt/image/ColorModel; delegateIcon 	buffImage� java/awt/image/WritableRaster width height aioobE *Ljava/lang/ArrayIndexOutOfBoundsException; he Ljava/awt/HeadlessException; transparency 
access$002 *(Ljava/awt/Component;)Ljava/awt/Component; x0 
access$102 
access$300 ()Ljava/util/logging/Logger; 
access$600 
access$700 <clinit> 
SourceFile ImageUtilities.java InnerClasses ToolTipImage CompositeImageKey 	ActiveRef IconImageIcon ToolTipImageKey DisabledButtonFilter CachedLookupLoader 
MergedIcon 1       � �     �    � � �    � )* �   � M � �   � & � �   �   � �   �  � � �   � 
 k l   �� �   � ! �   �  �   � ]    ��   
��   
��        � � �    ` J     J     "    �   3     *� �   �   
    �  ��       ��    � �   0     *� �   �       ��       � �  �   �      �   :     *�  �   �       ��       � �     �� �   	�  �   
 " # �   �     ?*� �M� $� *� (� ,M,� $*� ,M� /N,� -� -,� 3,� 9� ?M,�   �   .    �  �  �  �  �  �  � " � & � 0 � = ��   *  & � l    ?� �     ?��   7 �� �   
 �  :%�   	�  �   �� �   i     *�  M,� �,� C�   �       �  � 
 �  ��        � �     ��    �� �    �  :�   	�  �   
 & ' �         G� I�   �       
 * + �   �     @*.� O<� $� UY� W*� X� \`� \*� b� \� e�� UY� W*� \`� \� e�   �         ,�       @� �    9�� �    � ,�   �   
 1 2 �   b     � i� m� oK*� s� 
*� s� i� i�   �          �      ��  �     �� �  �  	   }*� +� � uY� w�� xY*+� z:� }Y:² }� � � �:� � �� ::� 	ð*+� �:� }� �Y� }� �� � Wð:��  $ L u   M t u   u z u   �   6   * + . 1 $2 33 84 B5 G6 M9 V: o; u<�   R  B ��  3 B�*  V ��    }��     }��    }��    }��   `�� �     3 B�� �   6 � <  x   �  � '  x   ��   �  �  �  �    �   T     *� :� 
*� :� 	*�� ��   �      G H G�        ��  �    E ��    �    � � �   �     U*� � �� �� uY� w� ��� �*� :� *� :�*� �� *� �� �� ��*� �� *� �� �L+� +�*� ?�   �   2   T U V X #Y (Z /[ :\ A] I^ M_ Oa�     I ��    U ��  �    �    �   
 A B �   �     G�*� �*� :� *� :�� :Y*�+� �M,� �N*� -� � � :*� -� � -� �,�  $ 0 3 � �   .   h i j l m $u 0{ 3v 5z A| E}�   4  5 ��    G ��     G = >   ( ��  $ #�� �    �    � : �  ��   	 �   =    � � �   :     *+� ��   �      ��        ��      � � �   	 �   �   
 � � �  X     l�*� ��+� �� �Y*+� �M� �Y:² �,� � � �:� � �� :N-� -ð+*� �N� �,� �Y-� �,� �� � W-ð:��   A d   B c d   d i d   �   6   � � � � � +� 0� 9� =� B� I� _� d��   >  9 	��  + 9�*  I ��    l ��     l � �   V�� �     + 9�� �   0 � B  P �   �  � !  P �   ��   	 �   �   �� �   M     *� :� *� :� ���   �      � � ��        ��  �    �    �   � � �   �     B*� :� 8*� :M� UY,� � �N-� � +� �� 
-�� \W-+� \W*-� e� ��*+� ��   �   "   � � � � &� -� 3� <��   *   0��   $��    B ��     B � � �    � - : U� �   	 �   �   		
 �   ]     �*� �� $� 	� �� � *� 3�   �      � � � ��        ��  �    B s�    �   	�� �   ?     �*� �*��� ��   �   
   � ��        ��  �    �   	�� �   c     *�L+�� 
+�� �   �   
   � 	��        ��   	 �� �    �  @�    �   
_` �   "      
����   �      � -. �   "      
���"�   �        . # �  <    5�+*� ��$YM²$*� � � �N:-�'� ,ð-� -� �� ::� ,ð�+:� PY*�/�0K*.� O6� "*/� O� *� X:*� b:� 
*:�:� *�3� �7*�3:	�::

�@ � h
�E � P:� �� *�H:� $� UY� W� \� \� \� e�H:� �$*� �Y�$*� �� � W,ð����$*�'� � W,ð:,��*�+�H�   *%   + A%   B%  $%  %)%   �   � $  V W X 
Z [ \  _ '` +c /e 8i =j Bn Gq Su [w lx uy �{ �| �� �� �� �� �� �� �� �� �� �����!�%�,��   �  u � �  } � �  � ��  � V� �  � !��  �*   ��  G ���  � �� �  � �� �  [ ���  � �� > 	 � ��� 
  5� �    5�� �     ��  � ��� 
�   { 
�    � :	� = 	 P  � :"    �  	 P  � :" P P  H� A� ) P�   :�  �   P  �� �   	�  �   
 .J �  �    �*� ��K*� � � �N:-�'� �-� -� �� ::� ��KY:²K*� � � �N-�'� ð-� -� �� ::� 	ð*N�P� 6*� b:� 	6*::+� +� �7:	:
T�V� Y�V� [�V� N	� UY� W� �d� X� \[� \� e�3:� "�]:� 
:
� � �ad�f
� [�V� 	�3:
:
� �� ;
�i 
� ?:� �:� �a� UY� Wo� \
�q� e� �� e*T�V� [
�t�x:�~��:�~���~��:� *:� �a� UY� W�� \*� \�� \� e� ��� � 

��:� *:� � �� UY� W�� \*� \�� \� e� �� �� )��*�� � � � UY� W�� \*� \� e��� ����� � ���� YSYS��� PY*�/�0K� :� � :� �
� �:�K*� �Y�K*� �� � Wð� �K*�'� � Wð:�� 0@Cm���m&��m ; S�   T k�   l��  ���  ���   �  " H  � � � � � � � #� ,� 1� 4� ;� H� O� T� X� a� f� l� v� y� �� �� �� �� �� �� �� �� �� �� �� ��
��#�&�+�0�@�C�E�e�h�r�|������������������ 
0<Vbjr}����!�#�   �  � � �  y 
��  � $� > E  �� � %�� | N�� � F�� � %�� } ��  �'� �  �*��  �$��  ��� 	 � = > 
&���   �� �    ���   ���  ��*  ��� �     ��� �   � �  � :�  
�  P� 
D"� %"� <� �   P" � :  P" m$� 3  P" � :  P"�� m&� Bm&/%H :�   P" � :  ��   �  �  �   �� �   �     D� �Y*���W*��*��h@� *�*��*����L+��M,*��W,� �*��+�   �   & 	  , . / 1 ,2 13 :4 >5 B7�        D��   , ��  1 �� �    �   �   
 	 
 �       T��*��0~� ���YL²�`Y��=��*���	��W� N�������*��+ç 
:+���  ) 2 5�  I L   L P L   �   2   < ? B C !D )G 2J 5H 6I ?N GO SP�      6 	��  ! &��    T ��  �   ( � #   �	�    �� �    �    � � �  � 	   .*� +� *��+��`��6*��+��`��6*�� (*��	 � +�� +��	 � � 6� UY*� :� *� :� � �� �:+� :� ,+� :� �:� � � �� �� \W� \W*�:� � � :	�Y*�+��:
� :Y� e
		�	��� �� �:�:*��W+��W� ��   �   Z   S T V W 2X QY a[ }\ �] �^ �_ �a �c �e �g �h �imno&p+r�   �  �  � �   .��    .��   .��   .��  ��  2 ���  a ���  } ���  � w��  � h�� 	 � U�� 
 #��  �� �   � 
� ^@�    a a�    a a P� , U P� �  @� C  U  �  � � P ���    U  � 	 � � P ���   �  �  �  �   �� �   �     ,�� � �Y�#�� M� �Y,,�,��&N-�   �      � � � � � *��   *    ,��     ,��   ��  * �� �    �   	�  �   
   �   �      �)�/�3�9L� M�@L� M�@L+�     >    D �   * 
  � � 
� � � � � � � ��   >   ��   ��   ��   ��     ��    �� �    Q>GD� �   �  �� �   0     *Y� �   �       P�       �   �� �   0     *Y� �   �       P�       �   �� �         � �   �       P  
 �   /     *� �   �       P�       ��    �   /     � �   �       P�       ��     �  C      ��F�I� �� �Y� ��'�MY ��O�K�MY ��O�$�MY ��O� }�MY ��O� �� i�RY�T���Y"�U��Y�U��XY�Z�[��Y�[�^���F�I� �a� �fY�h� �iY�k� � �lY�n�o�uy�{�E ���~�   �   R    X  ]  _ % ` 2 a ? b L d P i Z j g l t n ~ q � v � � � � � � � � � � � � � ��    � �	       R 
 :  
 x  
 �   � 	  � 
 
 �      X      l      