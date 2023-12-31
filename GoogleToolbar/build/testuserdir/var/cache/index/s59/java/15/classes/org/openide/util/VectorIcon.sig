����   4 �
      java/lang/Object <init> ()V  "java/lang/IllegalArgumentException
  	      org/openide/util/VectorIcon width I	     height
      java/awt/Graphics create ()Ljava/awt/Graphics;  java/awt/Graphics2D
       java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit; " awt.font.desktophints
  $ % & getDesktopProperty &(Ljava/lang/String;)Ljava/lang/Object; ( java/util/LinkedHashMap
 '  + java/util/Map * - . / putAll (Ljava/util/Map;)V	 1 2 3 4 5 java/awt/RenderingHints KEY_ANTIALIASING Ljava/awt/RenderingHints$Key;	 1 7 8 9 VALUE_ANTIALIAS_ON Ljava/lang/Object; * ; < = put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	 1 ? @ 5 KEY_TEXT_ANTIALIASING	 1 B C 9 VALUE_TEXT_ANTIALIAS_ON	 1 E F 5 KEY_STROKE_CONTROL	 1 H I 9 VALUE_STROKE_PURE
  K L / addRenderingHints	 1 N O 9 VALUE_ANTIALIAS_OFF
 Q R S T U java/lang/Math round (D)J
  W X Y *createGraphicsWithRenderingHintsConfigured *(Ljava/awt/Graphics;)Ljava/awt/Graphics2D;
  [ \ ] getIconWidth ()I
  _ ` ] getIconHeight
  b c d clipRect (IIII)V
  f g h 	translate (II)V
  j k l getTransform !()Ljava/awt/geom/AffineTransform;
 n o p q ] java/awt/geom/AffineTransform getType
 n s t u 	getScaleX ()D
  w x y 	paintIcon /(Ljava/awt/Component;Ljava/awt/Graphics2D;IID)V
  { |  dispose
 n ~  u getTranslateX
 n � � u getTranslateY
 Q � � � ceil (D)D
 n �  � 	(DDDDDD)V
  � � � setTransform "(Ljava/awt/geom/AffineTransform;)V
 Q � � � floor � javax/swing/Icon � java/io/Serializable Code LineNumberTable LocalVariableTable this Lorg/openide/util/VectorIcon; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; basedOn Ljava/awt/Graphics; ret Ljava/awt/Graphics2D; desktopHints hints Ljava/util/Map; LocalVariableTypeTable 5Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>; setAntiAliasing (Ljava/awt/Graphics2D;Z)V g enabled Z � java/awt/RenderingHints$Key (D)I d D ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V scaling tx Ljava/awt/geom/AffineTransform; txType previousDevicePosX previousDevicePosY alignedDevicePosX alignedDevicePosY transDeviceAdjX transDeviceAdjY deviceWidth deviceHeight c Ljava/awt/Component; g0 x y g2 � java/awt/Component � java/lang/Throwable 
SourceFile VectorIcon.java InnerClasses Key!    � �               h  �   �     *� � � � Y� 	�*� 
*� �    �       =  >  ?  @  A  B �         � �               �    �      �   	        \ ]  �   /     *� 
�    �       F �        � �   �     �    ` ]  �   /     *� �    �       K �        � �   �     �   
 X Y  �   �     X*� � L� !� #M� 'Y� )N,� *� -,� *� , -� 0� 6� : W-� >� A� : W-� D� G� : W+-� J+�    �   * 
   R  T  U  V   W * Z 7 _ D a Q b V c �   *    X � �    P � �   G � 9   ? � �  �      ? � �  �    � *   * �    �    � �  �   �     %� 'Y� )M,� 0� 	� 6� � M� : W*,� J�    �       o  p  q  p  r $ s �        % � �     % � �    � �  �       � �  �   - �    *  * ��    *  * �  �   	 �   �    T �  �   \     &� P�=&�� � � �    �   
    v  w �        � �     �   �    � @ �    �    x �  �  {     �,� V:*� Z*� ^� a� e� i:� m6		� 		� � r9� *+*� Z*� ^� v� z�� }9
� �9
� �9� �9� nY� �� �
g9g9*� Z�kg� ��6*� ^�kg� ��6*+� v� z� :� z��   R �   X � �   � � �    �   f    |    �  � % � , � 8 � B � R � W � X � _ � f � m � t � � � � � � � � � � � � � � � � � � � � � �   �  ?  � �  X m � �  % � � �  , � �  	 _ f � � 
 f _ � �  m X � �  t Q � �  � 6 � �  � / � �  �  �   �  �     � � �     � � �    � � �    � �     � �    � � �  �   Q � 8 
  �     n  	�  	  �   n  � t   �    �	 �    �   �   �   �   �     �   x y  �    �   �         �    �    � �   
  � 1 �	