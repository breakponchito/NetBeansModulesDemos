����   4 {
      (org/openide/util/CharSequences$Fixed_0_7 <init> ([BI)V
  	 
   java/lang/Object ()V  "java/lang/IllegalArgumentException
  		     i1 I	     i2  �  �  
     length ()I
     charAt (I)C ! java/lang/String
   #  $ ([C)V
  & ' ( toString ()Ljava/lang/String;
   * + , 	substring (II)Ljava/lang/String;
 . / 0 1 2 org/openide/util/CharSequences create 2(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
 . 4 5 6 
access$800 9()Lorg/openide/util/CharSequences$CharSequenceComparator;
 8 9 : ; < 5org/openide/util/CharSequences$CharSequenceComparator compare 3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I > java/lang/CharSequence
  @ A B 	compareTo (Ljava/lang/CharSequence;)I D 2org/openide/util/CharSequences$CompactCharSequence F java/lang/Comparable Code LineNumberTable LocalVariableTable this *Lorg/openide/util/CharSequences$Fixed_0_7; b [B n a1 a2 StackMapTable M MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value fallthrough Ljava/lang/Override; index r i [C \ equals (Ljava/lang/Object;)Z otherString object Ljava/lang/Object; hashCode hash subSequence (II)Ljava/lang/CharSequence; start end o Ljava/lang/CharSequence; (Ljava/lang/Object;)I (([BILorg/openide/util/CharSequences$1;)V x0 x1 x2 "Lorg/openide/util/CharSequences$1; 	Signature vLjava/lang/Object;Lorg/openide/util/CharSequences$CompactCharSequence;Ljava/lang/Comparable<Ljava/lang/CharSequence;>; 
SourceFile CharSequences.java InnerClasses 	Fixed_0_7 CharSequenceComparator CompactCharSequence z  org/openide/util/CharSequences$1 0    C E            
     G  _     �*� >6�    �          �   �   u   h   \   M   >   .+3 �~x`6+3 �~x`6+3 �~x`6+3 �~`6+3 �~x`>+3 �~x`>+3 �~x`>� � Y� �*� *� �    H   B   p q r 	s 8u Hw Wy f{ r}  �� �� �� �� �� �� I   4    � J K     � L M    � N    � O   	 � P   Q    
� 8   R   S   	 L   N   T     U  V[ s W     G   3     	*�  �~�    H      � I       	 J K   T     X       G       �=�   �          )   7   E   T   `   n   |*� ~z=� T*� ~z=� F*� z �~=� 7*�  �~=� +*� ~z=� *� ~z=� *� z �~=��    H   B   � � ,� 7� :� E� H� T� W� `� c� n� q� |� � �� I        � J K     � Y    � Z   Q    � , S    Y   T     X    ' (  G   �     '*� <�M>� ,*� U����  Y,� "�    H      � � 	� � � � I   *    [     ' J K    " N   	  Z \  Q    �  ]�  T     X    ^ _  G   �     1*+� �+� � $+� M*� ,� � *� ,� � � ��    H      � � � � � /� I        ` K    1 J K     1 a b  Q    � % @�   S    a   T     X    c   G   �     A*� h%*� h`<x�}�`<
|�<x`<|�<xx``<|��    H      � � � "� (� /� :� I       A J K    1 d   T     X    e f  G   K     *� %� )� -�    H      � I         J K      g      h   S   	 g   h   T     X    A B  G   =     	� 3*+� 7�    H      � I       	 J K     	 i j  S    i   T     X  A A k  G   3     	*+� =� ?�    H      j I       	 J K   S    i  T     X     l  G   O     *+� �    H      j I   *     J K      m M     n      o p   q    r s    t u   "   . v  8 . w 
 C . x
 y    