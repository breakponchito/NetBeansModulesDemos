����   4  org/openide/util/ImageUtilities
     
access$600 (Ljava/awt/Image;)V  java/awt/Transparency  
   getTransparency ()I
     
access$700 (I)Ljava/awt/image/ColorModel;
      java/awt/Image getWidth !(Ljava/awt/image/ImageObserver;)I
      java/lang/Math max (II)I
     	getHeight ! url
  # $ % getProperty D(Ljava/lang/String;Ljava/awt/image/ImageObserver;)Ljava/lang/Object; ' java/net/URL ) ,org/openide/util/ImageUtilities$ToolTipImage
 ( + , - getDelegateIcon ()Ljavax/swing/Icon;
 / 0 1 2 3 java/awt/image/ColorModel createCompatibleWritableRaster #(II)Ljava/awt/image/WritableRaster;
 / 5 6 7 isAlphaPremultiplied ()Z
 ( 9 : ; <init> �(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;Ljava/net/URL;)V
 ( = > ? createGraphics ()Ljava/awt/Graphics2D;
 A B C D E java/awt/Graphics 	drawImage 3(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
 A G H I dispose ()V
 K L M : N java/awt/image/BufferedImage S(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V	 ( P Q R toolTipText Ljava/lang/String;	 ( T U V delegateIcon Ljavax/swing/Icon;	 ( X ! Y Ljava/net/URL;	 ( [ \ ] imageIconVersion Ljavax/swing/ImageIcon;
 _ ` a b c -org/openide/util/ImageUtilities$IconImageIcon 
access$800 +(Ljavax/swing/Icon;)Ljavax/swing/ImageIcon; e f g h  javax/swing/Icon getIconWidth e j k  getIconHeight
 K m : n (III)V
 K p  
 K r   e t u v 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V
 A x y z create ()Ljava/awt/Graphics; | java/awt/Graphics2D
 { ~  � getTransform !()Ljava/awt/geom/AffineTransform;
 � � � �  java/awt/geom/AffineTransform getType
 � � � � 	getScaleX ()D	 � � � � � java/awt/RenderingHints KEY_INTERPOLATION Ljava/awt/RenderingHints$Key;	 � � � � VALUE_INTERPOLATION_BICUBIC Ljava/lang/Object;
 { � � � setRenderingHint 2(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V	 � � � � KEY_ALPHA_INTERPOLATION	 � � � � !VALUE_ALPHA_INTERPOLATION_QUALITY	 � � � � KEY_RENDERING	 � � � � VALUE_RENDER_QUALITY
 � � � � getTranslateX
 � � � � getTranslateY
 � � : � 	(DDDDDD)V
 { � � � setTransform "(Ljava/awt/geom/AffineTransform;)V
 { B
 { G
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z � javax/swing/ImageIcon
 � � � � getImage ()Ljava/awt/Image;
 K # 	createNew `(Ljava/lang/String;Ljava/awt/Image;Ljava/net/URL;)Lorg/openide/util/ImageUtilities$ToolTipImage; Code LineNumberTable LocalVariableTable value image Ljava/awt/Image; bitmask Z model Ljava/awt/image/ColorModel; w I h icon newImage .Lorg/openide/util/ImageUtilities$ToolTipImage; g Ljava/awt/Graphics; StackMapTable � java/lang/Object MethodParameters this cm raster Ljava/awt/image/WritableRaster; isRasterPremultiplied 
properties Ljava/util/Hashtable; LocalVariableTypeTable Ljava/util/Hashtable<**>; 	Signature �(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable<**>;Ljava/net/URL;)V asImageIcon ()Ljavax/swing/ImageIcon; 6(Ljavax/swing/Icon;Ljava/lang/String;Ljava/net/URL;I)V 	imageType scale D tx Ljava/awt/geom/AffineTransform; txType g2 Ljava/awt/Graphics2D; c Ljava/awt/Component; x y � java/awt/Component � java/lang/Throwable name observer Ljava/awt/image/ImageObserver; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ImageUtilities.java InnerClasses ToolTipImage IconImageIcon java/awt/RenderingHints$Key Key   ( K  e   Q R    U V    ! Y     \ ]   	 	 � �  �  � 	 
   �+� +� � +� � 	 � � >� � � :+� � 6+� � 6,� + � ":� &� � &� M+� (� +� (� *� :� (Y*� .� 4,� 8:� <:		+� @W	� F�    �   F   P Q R ,S 7T BU FV OW aY hZ u[ �_ �` �c �d �e �f �   p  O  � �    � Q R     � � �    � ! Y   � � �  , � � �  7 u � �  B j � �  u 7 � V  �  � �  �  � � 	 �   0 	@� @� 7  �  & / �  @ &�  @ e �    Q   �   !    : ;  �   �     *-� J*+� O*,� S*� W�    �      m n o p q �   R     � �      Q R     U V     � �     � �     � �     � �     ! Y  �        � �  �    Q   U   �   �   �   �   !   �    � ! � �  �   O     *� Z� **� ^� Z*� Z�    �      t u v �        � �   �      : �  �   �     **+� d � +� i � � l*+� S*,� O*-� W�    �      ~  ~ � � $� )� �   4    * � �     * U V    * Q R    * ! Y    * � �  �    U   Q   !   �    , -  �   /     *� S�    �      � �        � �    k   �   /     *� o�    �      � �        � �    h   �   /     *� q�    �      � �        � �    u v  �  �     �*� S� *� S+,� s � �,� w� {:� }:� �6� 	� � �9� 9�� D� �� �� �� �� �� �� �� �� �� �Y� ���� ���� �� �*� �W� �� :
� �
��  ! � �   � � �    �   V   � � � !� (� /� ;� E� H� O� Z� e� p� ~� �� �� �� �� �� �� �� �   f 
 B  � �  ( s � �  / l � �  H S � �  ! � � �    � � �     � � �    � � �    � � �    � � �  �   0 � " { �	� � G�   ( � A {  �� 	 �    �   �   �   �    $ %  �   �     E +� �� 8*� W� *� W�*� S� �� �*� S� �� �N-*� -� �-+,� "�*+,� ��    �   * 
  � 	� � � � !� ,� 5� 7� >� �   *  ,  � �    E � �     E � R    E � �  �    �  �  �   	 �   �   �     �    �    � �     (  � 
 _  �   �	