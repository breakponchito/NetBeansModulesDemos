����   4 M
      java/lang/Object <init> ()V	  	 
   Lorg/netbeans/swing/outline/DefaultOutlineCellRenderer$RestrictedInsetsBorder delegate Ljavax/swing/border/Border;      javax/swing/border/Border paintBorder .(Ljava/awt/Component;Ljava/awt/Graphics;IIII)V     getBorderInsets '(Ljava/awt/Component;)Ljava/awt/Insets;	      java/awt/Insets top I	     left	  ! "  bottom	  $ %  right
 ' ( ) * + java/lang/Math min (II)I
  -  . (IIII)V  0 1 2 isBorderOpaque ()Z (Ljavax/swing/border/Border;)V Code LineNumberTable LocalVariableTable this NLorg/netbeans/swing/outline/DefaultOutlineCellRenderer$RestrictedInsetsBorder; MethodParameters c Ljava/awt/Component; g Ljava/awt/Graphics; x y width height #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; insets Ljava/awt/Insets; StackMapTable 
SourceFile DefaultOutlineCellRenderer.java InnerClasses K 5org/netbeans/swing/outline/DefaultOutlineCellRenderer RestrictedInsetsBorder                3  4   F     
*� *+� �    5      ` a 	b 6       
 7 8     
    9           4   }     *� +,�  �    5   
   f g 6   H     7 8      : ;     < =     >      ?      @      A   9    :   <   >   ?   @   A   B     C       4   �     U*� +�  M,� � ,� � ,�  � ,� #� +� Y,� � &,� � &,�  � &,� #� &� ,M,�    5      k l +m <n Do Lp Sr 6        U 7 8     U : ;   J D E  F   	 � + ' 9    :   B     C    1 2  4   4     
*� � / �    5      w 6       
 7 8   B     C    G    H I   
   J L 
