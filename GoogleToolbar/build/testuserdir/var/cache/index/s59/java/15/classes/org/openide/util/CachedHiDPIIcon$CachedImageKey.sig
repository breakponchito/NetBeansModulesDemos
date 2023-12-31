����   4 �
      java/lang/Object <init> ()V  
colorModel
 
     org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V  "java/lang/IllegalArgumentException
  	      /org/openide/util/CachedHiDPIIcon$CachedImageKey Ljava/awt/image/ColorModel;	     scale D
       java/awt/Graphics2D getTransform !()Ljava/awt/geom/AffineTransform;
 " # $ % & java/awt/geom/AffineTransform getType ()I
 " ( ) * 	getScaleX ()D
  , - . getDeviceConfiguration "()Ljava/awt/GraphicsConfiguration; 0 java/awt/Transparency
 2 3 4 5 6 java/awt/GraphicsConfiguration getColorModel (I)Ljava/awt/image/ColorModel;
  8  9 (Ljava/awt/image/ColorModel;D)V
  ; < * getScale@       
 @ A B C D java/lang/Math pow (DD)D
 F G H I J java/lang/Double valueOf (D)Ljava/lang/Double;
 L M N O P java/util/Objects hash ([Ljava/lang/Object;)I
 R S T U V java/awt/image/ColorModel equals (Ljava/lang/Object;)Z X java/lang/StringBuilder
 W  [ CachedImageKey(
 W ] ^ _ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 W a ^ b -(Ljava/lang/Object;)Ljava/lang/StringBuilder; d , 
 W f ^ g (D)Ljava/lang/StringBuilder; i )
 W k l m toString ()Ljava/lang/String; Code LineNumberTable LocalVariableTable this 1Lorg/openide/util/CachedHiDPIIcon$CachedImageKey; StackMapTable MethodParameters create H(Ljava/awt/Graphics2D;)Lorg/openide/util/CachedHiDPIIcon$CachedImageKey; g Ljava/awt/Graphics2D; tx Ljava/awt/geom/AffineTransform; txType I gconf  Ljava/awt/GraphicsConfiguration; getSize ()Ljava/awt/image/ColorModel; hashCode #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; obj Ljava/lang/Object; other 
SourceFile CachedHiDPIIcon.java InnerClasses �  org/openide/util/CachedHiDPIIcon CachedImageKey 0                   9  n   �     #*� +� 	(�� � Y� �*+� *(� �    o       �  � 
 �  �  �  � " � p        # q r     #      #    s    �    R   t   	       	 u v  n   �     7*� L+� !=� � +� 'J� J*� +:� 1:� Y)� 7�    o   "    �  � 
 �  �  �  � $ � , � p   H         7 w x    2 y z  
 - { |       $  } ~  ,     s    �  "�  t    w    < *  n   /     *� �    o       � p        q r     *  n   5     *� : =� ?�    o       � p        q r    5 �  n   /     *� �    o       � p        q r    � &  n   C     � Y*� SY*� � ES� K�    o       � p        q r   �     �    U V  n   �     .+� � �+� M*� ,� � Q� *� ,� �� � �    o       �  � 	 �   p        . q r     . � �     � r  s    	� " @ t    �   �     �    l m  n   R     (� WY� YZ� \*� � `c� \*� � eh� \� j�    o       p       ( q r   �     �    �    � �   
   � � 