����   4 i
      java/lang/Object <init> ()V  java/lang/ref/SoftReference
  
   (Ljava/lang/Object;)V	      0org/openide/awt/HtmlRendererImpl$ScratchGraphics graphics Ljava/lang/ref/Reference;  java/lang/NullPointerException
  	     configuration  Ljava/awt/GraphicsConfiguration;
      java/awt/GraphicsConfiguration getColorModel ()Ljava/awt/image/ColorModel;
   ! " # $ java/awt/image/ColorModel equals (Ljava/lang/Object;)Z
  & ' ( getDefaultTransform !()Ljava/awt/geom/AffineTransform;
 * ! + java/awt/geom/AffineTransform
 - . / 0 1 java/lang/ref/Reference get ()Ljava/lang/Object; 3 java/awt/Graphics2D
   5 6 7 createCompatibleWritableRaster #(II)Ljava/awt/image/WritableRaster; 9 java/awt/image/BufferedImage
   ; < = isAlphaPremultiplied ()Z
 8 ?  @ S(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
 8 B C D createGraphics ()Ljava/awt/Graphics2D;
 2 F G H setClip (Ljava/awt/Shape;)V
 2 J K L setTransform "(Ljava/awt/geom/AffineTransform;)V 	Signature 0Ljava/lang/ref/Reference<Ljava/awt/Graphics2D;>; #(Ljava/awt/GraphicsConfiguration;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/awt/HtmlRendererImpl$ScratchGraphics; StackMapTable MethodParameters isConfigurationCompatible #(Ljava/awt/GraphicsConfiguration;)Z other getGraphics model Ljava/awt/image/ColorModel; raster Ljava/awt/image/WritableRaster; img Ljava/awt/image/BufferedImage; result Ljava/awt/Graphics2D; 
SourceFile HtmlRendererImpl.java InnerClasses g  org/openide/awt/HtmlRendererImpl ScratchGraphics 0               M    N    O  P        "*� *� Y� 	� +� � Y� �*+� �    Q      [ Y \ ] _ !` R       " S T     "    U    �       V        W X  P   o     (*� � +� � � *� � %+� %� )� � �    Q      c d 'c R       ( S T     ( Y   U    &@ V    Y    Z D  P   �     R*� � ,� 2L+� 4*� � M,� 4N� 8Y,-,� :� >:� AL*� Y+� 	� +� E+*� � %� I+�    Q   * 
  h i l m n .o 4p @s Ev Pw R   4   ) [ \   " ] ^  .  _ `    R S T    G a b  U    � @ 2  c    d e   
   f h 