Êşº¾   4 
      javax/swing/ImageIcon <init> ()V
  	 
   javax/swing/JComponent 	getParent ()Ljava/awt/Container;  "java/lang/IllegalArgumentException
  	      3org/openide/util/actions/SystemAction$ComponentIcon comp Ljavax/swing/JComponent;
     getPreferredSize ()Ljava/awt/Dimension;	      java/awt/Dimension width I
 ! " # $ % java/lang/Math max (II)I	  ' (  height
  * + , setSize (II)V
 . / 0 1 2 java/awt/Component getBackground ()Ljava/awt/Color;
  4 5 6 setBackground (Ljava/awt/Color;)V
 . 8 9 2 getForeground
  ; < 6 setForeground
  > ? @ getIconWidth ()I
  B C @ getIconHeight
 E F G H I java/awt/Graphics create (IIII)Ljava/awt/Graphics;
  K L M paint (Ljava/awt/Graphics;)V
  O P @ getWidth
  R S @ 	getHeight	  U V W image Ljava/awt/image/BufferedImage; Y java/awt/image/BufferedImage
 X [  \ (III)V	 ^ _ ` a b java/awt/Color black Ljava/awt/Color;
 X d e f getGraphics ()Ljava/awt/Graphics; (Ljavax/swing/JComponent;)V Code LineNumberTable LocalVariableTable this 5Lorg/openide/util/actions/SystemAction$ComponentIcon; size Ljava/awt/Dimension; StackMapTable MethodParameters 	loadImage (Ljava/awt/Image;)V i Ljava/awt/Image; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V c Ljava/awt/Component; g Ljava/awt/Graphics; x y clip getImage ()Ljava/awt/Image; 
SourceFile SystemAction.java InnerClasses  %org/openide/util/actions/SystemAction ComponentIcon              V W      g  h        4*· +¶ Æ » Y· ¿*+µ +¶ M+,´ ¸  ,´ &¸  ¶ )±    i      e f g j l p 3q j        4 k l     4      m n  o    ÿ       p        q r  h   5      ±    i      u j        k l      s t  p    s   u     v    w x  h        1*´ +¶ -¶ 3*´ +¶ 7¶ :,*¶ =*¶ A¶ D:*´ ¶ J±    i      z { } '~ 0 j   >    1 k l     1 y z    1 { |    1 }     1 ~   ' 
  |  p    y   {   }   ~   u     v    ? @  h   2     *´ ¶ N¬    i       j        k l   u     v    C @  h   2     *´ ¶ Q¬    i       j        k l   u     v       h   {     8*´ TÇ /*» XY*¶ =*¶ A· Zµ T*´ ² ]¶ :*´ *´ T¶ c¶ J*´ T°    i         % 3 j       8 k l   o    3 u     v            
     
