����   4 c	      0org/openide/util/CharSequences$CharBasedSequence value [C
   	 
 <init> ([C)V
    	  java/lang/Object ()V	     hash I
      java/util/Arrays equals ([C[C)Z
      org/openide/util/CharSequences create ([CII)Ljava/lang/CharSequence; ! java/lang/String
   
 $ % & ' ( 5org/openide/util/CharSequences$CharSequenceComparator access$1100 M(Lorg/openide/util/CharSequences$CharBasedSequence;Ljava/lang/CharSequence;)I * java/lang/CharSequence
  , - . 	compareTo (Ljava/lang/CharSequence;)I 0 2org/openide/util/CharSequences$CompactCharSequence 2 java/lang/Comparable Code LineNumberTable LocalVariableTable this 2Lorg/openide/util/CharSequences$CharBasedSequence; v MethodParameters length ()I #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; charAt (I)C index (Ljava/lang/Object;)Z otherString object Ljava/lang/Object; StackMapTable hashCode i n h subSequence (II)Ljava/lang/CharSequence; 
beginIndex endIndex toString ()Ljava/lang/String; o Ljava/lang/CharSequence; (Ljava/lang/Object;)I '([CLorg/openide/util/CharSequences$1;)V x0 x1 "Lorg/openide/util/CharSequences$1; access$1600 6(Lorg/openide/util/CharSequences$CharBasedSequence;)[C 	Signature vLjava/lang/Object;Lorg/openide/util/CharSequences$CompactCharSequence;Ljava/lang/Comparable<Ljava/lang/CharSequence;>; 
SourceFile CharSequences.java InnerClasses CharBasedSequence CharSequenceComparator CompactCharSequence b  org/openide/util/CharSequences$1 0    / 1              	 
  3   F     
*� *+� �    4      t u 	v 5       
 6 7     
 8   9    8    : ;  3   0     *� ��    4      z 5        6 7   <     =    > ?  3   ;     *� 4�    4       5        6 7      @   9    @   <     =     A  3   �     <*+� �+� � /+� M*� � ,� � *� ,� � �*� ,� � ��    4   & 	  � � � � � !� ,� .� :� 5       ' B 7    < 6 7     < C D  E    � & �  9    C   <     =    F ;  3   �     /*� <� '*� �=>� h*� 4`<����*� �    4   "   � � 	� � � "� (� -� 5   *    G     H     / 6 7    * I   E    � � �  <     =    J K  3   J     *� d� �    4      � 5         6 7      L      M   9   	 L   M   <     =    N O  3   6     �  Y*� � "�    4      � 5        6 7   <     =    - .  3   :     *+� #�    4      � 5        6 7      P Q  9    P   <     =  A - R  3   3     	*+� )� +�    4      o 5       	 6 7   9    P  <     =    	 S  3   D     *+� �    4      o 5         6 7      T      U V  W X  3   /     *� �    4      o 5        T 7    Y    Z [    \ ]   "    ^  $  _ 
 /  `
 a    