����   4 6
      java/lang/Object <init> ()V	  	 
   Iorg/openide/explorer/propertysheet/AutoGridLayout$PreferredSizeComparator 
smallFirst Z
      java/awt/Component getPreferredSize ()Ljava/awt/Dimension;	      java/awt/Dimension width I
     compare +(Ljava/awt/Component;Ljava/awt/Component;)I  java/util/Comparator (Z)V Code LineNumberTable LocalVariableTable this KLorg/openide/explorer/propertysheet/AutoGridLayout$PreferredSizeComparator; MethodParameters c1 Ljava/awt/Component; c2 d1 Ljava/awt/Dimension; d2 StackMapTable '(Ljava/lang/Object;Ljava/lang/Object;)I 	Signature >Ljava/lang/Object;Ljava/util/Comparator<Ljava/awt/Component;>; 
SourceFile AutoGridLayout.java InnerClasses 4 1org/openide/explorer/propertysheet/AutoGridLayout PreferredSizeComparator 0                     F     
*� *� �    !      6 7 	8 "       
 # $     
    %               �     *+� N,� :*� � -� � d� � -� d�    !      ; < > "   4    * # $     * & '    * ( '   % ) *    + *  ,    �   I %   	 &   (  A  -      7     *+� ,� � �    !      3 "        # $   %   	 &  (   .    / 0    1 2   
   3 5 