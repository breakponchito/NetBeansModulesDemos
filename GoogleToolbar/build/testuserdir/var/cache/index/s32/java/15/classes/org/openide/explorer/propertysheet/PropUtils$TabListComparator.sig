����   4 7
      >org/openide/explorer/propertysheet/PropUtils$TabListComparator <init> ()V
   	 java/lang/Object  java/lang/String
      ,org/openide/explorer/propertysheet/PropUtils basicPropsTabName ()Ljava/lang/String;
 
    equals (Ljava/lang/Object;)Z
 
    	compareTo (Ljava/lang/String;)I  java/util/Comparator Code LineNumberTable LocalVariableTable this @Lorg/openide/explorer/propertysheet/PropUtils$TabListComparator; compare '(Ljava/lang/Object;Ljava/lang/Object;)I o1 Ljava/lang/Object; o2 s1 Ljava/lang/String; s2 bn StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 3(Lorg/openide/explorer/propertysheet/PropUtils$1;)V x0 0Lorg/openide/explorer/propertysheet/PropUtils$1; 
SourceFile PropUtils.java InnerClasses TabListComparator 6 .org/openide/explorer/propertysheet/PropUtils$1                 /     *� �          '               ! "     �     6+� 
N,� 
:-� �� :-� � �� � �-� �       * 
  * + - . 1 3 !4 #7 -8 /;    >    6        6 # $    6 % $   1 & '   + ( '    ) '  *    �  
 
�  
 +   	 #   %   ,     -     .     9     *� �          '                 / 0   1    2 3       4 
 5      