����   4 v
      java/lang/Object <init> ()V  original icon
 
     org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V	      org/openide/awt/IconWithArrow orig Ljavax/swing/Icon;	     paintRollOver Z	      'org/openide/awt/IconWithArrow$ArrowIcon INSTANCE_DISABLED	      INSTANCE_DEFAULT	  " #  arrow
  % & ' getIconHeight ()I ) % * javax/swing/Icon ) , - . 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V ) 0 1 ' getIconWidth 3 controlHighlight
 5 6 7 8 9 javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color; ; controlShadow
 = > ? @ A java/awt/Component getBackground ()Ljava/awt/Color;
 C D E F A java/awt/Color brighter
 C H I A darker
 K L M N O java/awt/Graphics setColor (Ljava/awt/Color;)V
 K Q R S drawLine (IIII)V
 U V W X Y java/lang/Math max (II)I GAP I ConstantValue    (Ljavax/swing/Icon;ZZ)V Code LineNumberTable LocalVariableTable this Lorg/openide/awt/IconWithArrow; disabledArrow StackMapTable MethodParameters Ljava/awt/Color; c Ljava/awt/Component; g Ljava/awt/Graphics; x y height #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getArrowAreaWidth 
SourceFile IconWithArrow.java InnerClasses 	ArrowIcon      )        #          Z [  \    ]    ^  _   �     &*� +� 	*+� *� *� 	� � � � !�    `       /  0 
 1  2  3 % 4 a   *    & b c     &      &      & d   e   ) �    )  �    )   ) f          d    - .  _  �     �*� $6*� +,*� � ( dl`� + *� !+,`*� � / `*� !� ( dl`� + *� � �2� 4::� 4:� 	� +� <� B:+� <� G:� c� ],� J,*� � / ``*� � / ``*� $`� P,� J,*� � / ``*� � / ``*� $`� P�    `   N    8  9 # ; M = T > [ ? b @ n A w B � D � E � F � G � F � H � I � J � I � M a   R  [ � F g  b � I g    � b c     � h i    � j k    � l [    � m [   � n [  e    � n C C� e f    h   j   l   m   o     p    1 '  _   A     *� � / `*� !� / `�    `       Q a        b c   o     p    & '  _   @     *� � ( *� !� ( � T�    `       V a        b c   o     p   	 q '  _         �    `       Z  r    s t   
    u 