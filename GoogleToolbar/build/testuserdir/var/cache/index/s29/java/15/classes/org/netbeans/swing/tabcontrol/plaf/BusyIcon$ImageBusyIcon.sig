����   4 {
      java/awt/Image getWidth !(Ljava/awt/image/ImageObserver;)I
   	  	getHeight
      +org/netbeans/swing/tabcontrol/plaf/BusyIcon <init> (II)V	      9org/netbeans/swing/tabcontrol/plaf/BusyIcon$ImageBusyIcon state I	     img Ljava/awt/Image;  java/awt/geom/AffineTransform
     ()V	    ! " at Ljava/awt/geom/AffineTransform; $ java/lang/Math@	!�TD-@f�     	  * +  width	  - .  height
  0 1 2 rotate (DDD)V 4 java/awt/Graphics2D	 6 7 8 9 : java/awt/RenderingHints KEY_ANTIALIASING Ljava/awt/RenderingHints$Key;	 6 < = > VALUE_ANTIALIAS_ON Ljava/lang/Object;
 3 @ A B setRenderingHint 2(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V	 6 D E : KEY_RENDERING	 6 G H > VALUE_RENDER_QUALITY	 6 J K : KEY_INTERPOLATION	 6 M N > VALUE_INTERPOLATION_BICUBIC	 6 P Q : KEY_ALPHA_INTERPOLATION	 6 S T > !VALUE_ALPHA_INTERPOLATION_QUALITY
 3 V W  	translate
 3 Y Z [ 	drawImage P(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z STEP ConstantValue    (Ljava/awt/Image;)V Code LineNumberTable LocalVariableTable this ;Lorg/netbeans/swing/tabcontrol/plaf/BusyIcon$ImageBusyIcon; MethodParameters tick StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V g2d Ljava/awt/Graphics2D; c Ljava/awt/Component; g Ljava/awt/Graphics; x y 
SourceFile BusyIcon.java InnerClasses ImageBusyIcon y java/awt/RenderingHints$Key Key                   ! "    \   ]    ^    _  `   Y     *+� +� � 
*� *+� �    a       Z  U  [  \ b        c d         e         f   `   �     H*Y� `� *� h� *� *� Y� � *� *� � %k 'o*� )l�*� ,l�� /�    a       `  a  b  c % d G e b       H c d   g     h     i    j k  `   �     [,� 3� V,� 3:� 5� ;� ?� C� F� ?� I� L� ?� O� R� ?� U*� *� � XWtt� U�    a   * 
   i  j  l  m # n . o 9 p A q P r Z t b   >   M l m    [ c d     [ n o    [ p q    [ r     [ s   g    � Z e    n   p   r   s   h     i    t    u v       w 
 x 6 z	