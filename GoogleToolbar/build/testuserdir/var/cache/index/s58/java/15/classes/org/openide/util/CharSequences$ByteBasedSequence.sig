����   4 m	      0org/openide/util/CharSequences$ByteBasedSequence value [B
   	 
 <init> ([B)V
    	  java/lang/Object ()V	     hash I
      java/util/Arrays equals ([B[B)Z
      org/openide/util/CharSequences access$1200 ([BII)Ljava/lang/CharSequence;
  ! " # toChars ()[C % java/lang/String
 $ ' 	 ( ([C)V
 * + , - . 5org/openide/util/CharSequences$CharSequenceComparator access$1300 M(Lorg/openide/util/CharSequences$ByteBasedSequence;Ljava/lang/CharSequence;)I 0 java/lang/CharSequence
  2 3 4 	compareTo (Ljava/lang/CharSequence;)I 6 2org/openide/util/CharSequences$CompactCharSequence 8 java/lang/Comparable Code LineNumberTable LocalVariableTable this 2Lorg/openide/util/CharSequences$ByteBasedSequence; b MethodParameters length ()I #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; charAt (I)C index r (Ljava/lang/Object;)Z otherString object Ljava/lang/Object; StackMapTable hashCode i n h subSequence (II)Ljava/lang/CharSequence; 
beginIndex endIndex toString ()Ljava/lang/String; [C c W o Ljava/lang/CharSequence; (Ljava/lang/Object;)I '([BLorg/openide/util/CharSequences$1;)V x0 x1 "Lorg/openide/util/CharSequences$1; access$1500 6(Lorg/openide/util/CharSequences$ByteBasedSequence;)[B 	Signature vLjava/lang/Object;Lorg/openide/util/CharSequences$CompactCharSequence;Ljava/lang/Comparable<Ljava/lang/CharSequence;>; 
SourceFile CharSequences.java InnerClasses ByteBasedSequence CharSequenceComparator CompactCharSequence l  org/openide/util/CharSequences$1 0    5 7              	 
  9   F     
*� *+� �    :      � � 	� ;       
 < =     
 >   ?    >    @ A  9   0     *� ��    :      � ;        < =   B     C    D E  9   P     *� 3 �~=��    :   
   � � ;         < =      F     G   ?    F   B     C     H  9   �     <*+� �+� � /+� M*� � ,� � *� ,� � �*� ,� � ��    :   & 	  � � � � � !� ,� .� :� ;       ' I =    < < =     < J K  L    � & �  ?    J   B     C    M A  9   �     /*� <� '*� �=>� h*� 3`<����*� �    :   "   � � 	� � � "� (� -� ;   *    N     O     / < =    * P   L    � � �  B     C    Q R  9   J     *� d� �    :      � ;         < =      S      T   ?   	 S   T   B     C    U V  9   F     *�  L� $Y+� &�    :   
   � � ;        < =    	 G W  B     C    " #  9   �     +*� �<�M>� *� 3 �~6,�U����,�    :      � � 
� � � #� )� ;   4    X     N     + < =    % O   
 ! G W  L    �  Y�   3 4  9   :     *+� )�    :      � ;        < =      Z [  ?    Z   B     C  A 3 \  9   3     	*+� /� 1�    :      � ;       	 < =   ?    Z  B     C    	 ]  9   D     *+� �    :      � ;         < =      ^      _ `  a b  9   /     *� �    :      � ;        ^ =    c    d e    f g   "    h  *  i 
 5  j
 k    