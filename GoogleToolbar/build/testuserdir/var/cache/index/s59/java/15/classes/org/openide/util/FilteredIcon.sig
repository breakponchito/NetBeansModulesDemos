����   4 �      javax/swing/Icon getIconWidth ()I   	  getIconHeight
       org/openide/util/CachedHiDPIIcon <init> (II)V  filter
      org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V  delegate	      org/openide/util/FilteredIcon Ljava/awt/image/RGBImageFilter;	     ! Ljavax/swing/Icon;
 # $ % & ' org/openide/util/ImageUtilities 
icon2Image $(Ljavax/swing/Icon;)Ljava/awt/Image; ) url
 + , - . / java/awt/Image getProperty D(Ljava/lang/String;Ljava/awt/image/ImageObserver;)Ljava/lang/Object;	  1 2 3 LOG Ljava/util/logging/Logger;	 5 6 7 8 9 java/util/logging/Level WARNING Ljava/util/logging/Level; ; UNETBEANS-3671: FilteredIcon.create got {0} of invalid dimensions {1}x{2} with URL={3} = java/lang/Object  ? @ A getClass ()Ljava/lang/Class;
 C D E F G java/lang/Class getName ()Ljava/lang/String;
 I J K L M java/lang/Integer valueOf (I)Ljava/lang/Integer;
 O P Q R S java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  U  V 4(Ljava/awt/image/RGBImageFilter;Ljavax/swing/Icon;)V
  X Y Z createBufferedImage =(Ljava/awt/image/ColorModel;II)Ljava/awt/image/BufferedImage;
 \ ] ^ _ ` java/awt/image/BufferedImage createGraphics ()Ljava/awt/Graphics2D; b java/awt/Rectangle
 \ d e  getWidth
 \ g h  	getHeight
 a j  k (IIII)V
 m n o p q java/awt/Graphics2D clip (Ljava/awt/Shape;)V
 m s t u scale (DD)V  w x y 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V
 m { | } dispose ()V
  � � � � java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit; � "java/awt/image/FilteredImageSource
 \ � � � 	getSource  ()Ljava/awt/image/ImageProducer;
 � �  � =(Ljava/awt/image/ImageProducer;Ljava/awt/image/ImageFilter;)V
  � � � createImage 0(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;
 O � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Code LineNumberTable LocalVariableTable this Lorg/openide/util/FilteredIcon; MethodParameters create E(Ljava/awt/image/RGBImageFilter;Ljavax/swing/Icon;)Ljavax/swing/Icon; Ljava/lang/Object; width I height StackMapTable createAndPaintImage D(Ljava/awt/Component;Ljava/awt/image/ColorModel;IID)Ljava/awt/Image; c Ljava/awt/Component; 
colorModel Ljava/awt/image/ColorModel; deviceWidth deviceHeight D img Ljava/awt/image/BufferedImage; imgG Ljava/awt/Graphics2D; � java/awt/Component � java/awt/image/ColorModel � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile FilteredIcon.java 0       2 3          !      V  �   y     '*,�  ,�  � 
+� ,� *+� *,� �    �       4  5  6  7 ! 8 & 9 �        ' � �     '      '  !  �   	       	 � �  �   �     \+�  =+�  >� � ?+� "(� *:� 0� 4:� <Y+� > � BSY� HSY� HSYS� N+�� Y*+� T�    �   & 	   <  =  >  A " B 1 D M B P E R G �   4  " 0 ) �    \       \  !   U � �   N � �  �    � ; �   	        � �  �  9  
   h,� W:� [:� aY� c� f� i� l� r*� +� v � z� :	� z	�� ~� �Y� �*� � �� ��   ? G   G I G    �   2    N 	 O  Q ( R 1 S ? U D V G U N V Q W Z X d W �   R    h � �     h � �    h � �    h � �    h � �    h t �  	 _ � �   X � �  �    � G   � � \ m  �	 �    �   �   �   �   t   �     �    � }  �   $      � B� �� 0�    �       /  �    �