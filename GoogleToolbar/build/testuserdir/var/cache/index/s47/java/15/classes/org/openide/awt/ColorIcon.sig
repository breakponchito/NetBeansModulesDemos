����   4 ?
      java/lang/Object <init> ()V	  	 
   org/openide/awt/ColorIcon color Ljava/awt/Color;	     size I	      java/awt/Color black
      java/awt/Graphics setColor (Ljava/awt/Color;)V
     drawRect (IIII)V
  ! "  drawLine
  $ %  fillRect ' javax/swing/Icon (Ljava/awt/Color;I)V Code LineNumberTable LocalVariableTable this Lorg/openide/awt/ColorIcon; MethodParameters 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V c Ljava/awt/Component; g Ljava/awt/Graphics; x y StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getIconWidth ()I getIconHeight 
SourceFile ColorIcon.java 0    &               (  )   Y     *� *+� *� �    *       %  & 	 '  ( +         , -               .   	        / 0  )   �     ],� � ,*� d*� d� *� � ,*� `d*� `d�  � ",*� � ,``*� d*� d� #�    *       ,  -  . " / = 1 E 2 \ 4 +   4    ] , -     ] 1 2    ] 3 4    ] 5     ] 6   7    = .    1   3   5   6   8     9    : ;  )   /     *� �    *       8 +        , -   8     9    < ;  )   /     *� �    *       = +        , -   8     9    =    >