����   4
      java/lang/Object <init> ()V	  	 
   1org/netbeans/swing/tabcontrol/plaf/ChicletWrapper allowVertical Z	     	leftNotch	     
rightNotch	     state I  java/awt/Rectangle
  	     bounds Ljava/awt/Rectangle;	     ! arcs [F	 # $ % & ' 8org/netbeans/swing/tabcontrol/plaf/GenericGlowingChiclet INSTANCE :Lorg/netbeans/swing/tabcontrol/plaf/GenericGlowingChiclet;	  ) * ' chiclet
  , - . 	setBounds (IIII)V	  0 1  width	  3 4  height
  6 7 8 findBufferedImage  ()Ljava/awt/image/BufferedImage; : java/awt/Graphics2D
 < = > ? @ java/awt/geom/AffineTransform getTranslateInstance #(DD)Ljava/awt/geom/AffineTransform;
 9 B C D drawRenderedImage @(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V	  F G  	drawCount
 I J K L M javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V
 O P Q R S java/lang/Double doubleToLongBits (D)J              %       +       /      1      �      � c java/lang/Long
 b e  f (J)V
  h i j hash ()Ljava/lang/Long; l <org/netbeans/swing/tabcontrol/plaf/ChicletWrapper$CacheEntry
 k n  o (Ljava/lang/Long;)V	  q r s cache Ljava/util/HashMap;
 u v w x y java/util/HashMap get &(Ljava/lang/Object;)Ljava/lang/Object; { java/awt/image/BufferedImage
  } ~ 8 createImage
 u � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 z �  � (III)V
 # � � � setNotch (ZZ)V
 # � � � setArcs (FFFF)V	  � �  x	  � �  y
 # ,
 # � � � setAllowVertical (Z)V
 # � � � setState (I)V
 z � � � getGraphics ()Ljava/awt/Graphics;
 � � � � � java/awt/Graphics 	translate (II)V
 � � � � � ,org/netbeans/swing/tabcontrol/plaf/ColorUtil setupAntialiasing (Ljava/awt/Graphics;)V
 # � � � draw (Ljava/awt/Graphics2D;)V
 u � � � size ()I
 u �  � (Ljava/util/Map;)V
 � � � � � java/lang/System currentTimeMillis ()J
 u � � � keySet ()Ljava/util/Set; � � � � � java/util/Set toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � ?[Lorg/netbeans/swing/tabcontrol/plaf/ChicletWrapper$CacheEntry;
 � � � � � java/util/Arrays sort ([Ljava/lang/Object;)V	 k � � � 	timestamp J     ��
 u � � y remove
 u  � java/lang/Runnable 	Signature qLjava/util/HashMap<Lorg/netbeans/swing/tabcontrol/plaf/ChicletWrapper$CacheEntry;Ljava/awt/image/BufferedImage;>; Code LineNumberTable LocalVariableTable this 3Lorg/netbeans/swing/tabcontrol/plaf/ChicletWrapper; MethodParameters w h g Ljava/awt/Graphics; img Ljava/awt/image/BufferedImage; StackMapTable a F b c d right left result Ljava/lang/Long; entry >Lorg/netbeans/swing/tabcontrol/plaf/ChicletWrapper$CacheEntry; run i newCache 	startTime entries LocalVariableTypeTable <clinit> 
SourceFile ChicletWrapper.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses 
CacheEntry !    � 	                             !     * '    G    
 r s  �    �      �   x     2*� *� *� *� *� *� Y� � *�� *� "� (�    �   "    *  + 	 ,  -  .  / # 0 * 1 �       2 � �    � �  �   >     *� �    �   
    4  5 �        � �         �        - .  �   c     *� � +�    �   
    8  9 �   4     � �      �      �      �      �   �    �   �   �   �    � �  �   �     =*� � /� *� � 2� �*� 5M+� 9,� ;� A� E`� E� Edp� *� H�    �   "    =  >  @  A ' B / C 8 E < G �        = � �     = � �   # � �  �   
  � & z �    �    � �  �   �     *� #Q*� $Q*� %Q*� Q�    �       J  K  L  M  N �   4     � �      � �     � �     � �     � �  �    �   �   �   �    � �  �   >     *� �    �   
    R  S �        � �      �   �    �    � �  �   Q     *� *� �    �       V  W 
 X �         � �      �      �   �   	 �   �    i j  �   �     �*� �h�*� 0�� N Tia*� 0�� N Via*� 0�� N Xia*� 0�� N Zia*� � //h�a*� � 2�h�a@*� � 	 \i@*� � 	 ^i@*� � 	 `i@� bY� d�    �   2    [  ]  ^ . _ = ` ` d g e m g t h z j � k � n �       � � �   ` 0 � �  �    � m  7 8  �   �     -*� gL� kY+� mM� p,� t� zN-� *� |N� p,-� W-�    �       t  u  w  x  y " | + } �   *    - � �    ( i �    � �    � �  �    � " b k z  ~ 8  �  $     �� zY*� � /*� � 2� �L*� (*� *� � �*� (*� 0*� 0*� 0*� 0� �*� (*� � �*� � �*� � /*� � 2� �*� (*� � �*� (*� � �+� �M,*� � �t*� � �t� �,� �*� (,� 9� �,*� � �*� � �� �+�    �   2    �  � & � E � h � s � ~ � � � � � � � � � � � �        � � �    � � �  � 7 � �   �   �       h� p� �� �� uY� p� �L� �A+� �� k� � � �:� ��d6�l� $ 2� �e Ԕ� +2� �W�����+� p�    �   2    � 
 �  �  �  � , � 1 � B � S � ] � c � g � �   4  8 + �     h � �    R � s   N � �  , < � �  �      R � �  �    � ,   u �  $�   �   �   +      � E� uY� ٳ p�    �   
    ;  q  �    � �              
  k  