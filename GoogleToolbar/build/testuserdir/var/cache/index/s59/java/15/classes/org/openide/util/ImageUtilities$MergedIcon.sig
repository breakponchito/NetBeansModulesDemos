����   4 j      javax/swing/Icon getIconWidth ()I
  	 
   java/lang/Math max (II)I     getIconHeight
       org/openide/util/CachedHiDPIIcon <init> (II)V	      *org/openide/util/ImageUtilities$MergedIcon icon1 Ljavax/swing/Icon;	     icon2	    ! " x I	  $ % " y
  ' ( ) createBufferedImage =(Ljava/awt/image/ColorModel;II)Ljava/awt/image/BufferedImage;
 + , - . / java/awt/image/BufferedImage createGraphics ()Ljava/awt/Graphics2D; 1 java/awt/Rectangle
 0 3  4 (IIII)V
 6 7 8 9 : java/awt/Graphics2D clip (Ljava/awt/Shape;)V
 6 < = > scale (DD)V  @ A B 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V
 6 D E F dispose ()V )(Ljavax/swing/Icon;Ljavax/swing/Icon;II)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/util/ImageUtilities$MergedIcon; MethodParameters createAndPaintImage D(Ljava/awt/Component;Ljava/awt/image/ColorModel;IID)Ljava/awt/Image; c Ljava/awt/Component; 
colorModel Ljava/awt/image/ColorModel; deviceWidth deviceHeight D ret Ljava/awt/image/BufferedImage; g Ljava/awt/Graphics2D; StackMapTable ] java/awt/Component _ java/awt/image/ColorModel a java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ImageUtilities.java InnerClasses h org/openide/util/ImageUtilities 
MergedIcon 0                 ! "    % "      G  H   �     =*+�  ,�  `� +�  ,�  `� � *+� *,� *� *� #�    I   "    � $ '� ,� 1� 6� <� J   4    = K L     =      =      = ! "    = % "  M          !   %    N O  H  .  
   a,� &:� *:� 0Y� 2� 5� ;*� +� ? *� +*� *� #� ? � C� :	� C	��   L T   T V T    I   .   � 	� � !� *� 8� L� Q� T� [� ^� J   R    a K L     a P Q    a R S    a T "    a U "    a = V  	 X W X   Q Y Z  [    � T   \ ^ + 6  `	 M    P   R   T   U   =   b     c    d    e f   
   g i 