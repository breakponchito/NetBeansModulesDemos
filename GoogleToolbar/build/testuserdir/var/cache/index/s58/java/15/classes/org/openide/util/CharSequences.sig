����   40
      org/openide/util/CharSequences create ([BII)Ljava/lang/CharSequence;
   	 
 decode6BitChar (I)C
     encode6BitChar (I)J	     
Comparator 7Lorg/openide/util/CharSequences$CharSequenceComparator;  )java/lang/StringIndexOutOfBoundsException
     <init> (I)V	     EMPTY 4Lorg/openide/util/CharSequences$CompactCharSequence;
      
is6BitChar (I)Z
  " # $ createFromBytes :([BIZ)Lorg/openide/util/CharSequences$CompactCharSequence;
 & ' ( ) * java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V , 0org/openide/util/CharSequences$CharBasedSequence
 + .  / '([CLorg/openide/util/CharSequences$1;)V 1 2org/openide/util/CharSequences$CompactCharSequence 3 4 5 6 7 java/lang/CharSequence length ()I 3 9 : 
 charAt
  < = > indexOf 4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I @ -org/openide/util/CharSequences$Fixed6Bit_1_10
 ? B  C (([BILorg/openide/util/CharSequences$1;)V E .org/openide/util/CharSequences$Fixed6Bit_11_20
 D B H .org/openide/util/CharSequences$Fixed6Bit_21_30
 G B K (org/openide/util/CharSequences$Fixed_0_7
 J B N )org/openide/util/CharSequences$Fixed_8_15
 M B Q *org/openide/util/CharSequences$Fixed_16_23
 P B T 0org/openide/util/CharSequences$ByteBasedSequence
 S V  W '([BLorg/openide/util/CharSequences$1;)V	  Y Z [ encodeTable [J	  ] ^ _ decodeTable [C
 a b c  d java/lang/Object ()V��������       >                                                        	       
                                                                                                                                                                  !       "       #       ?       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       = � 5org/openide/util/CharSequences$CharSequenceComparator
 � �  � %(Lorg/openide/util/CharSequences$1;)V ([CII)Ljava/lang/CharSequence; Code LineNumberTable LocalVariableTable o I d i buf start count n b [B bytes Z id v StackMapTable _ � MethodParameters 2(Ljava/lang/CharSequence;)Ljava/lang/CharSequence; s Ljava/lang/CharSequence; 
comparator ()Ljava/util/Comparator; 	Signature 2()Ljava/util/Comparator<Ljava/lang/CharSequence;>; empty ()Ljava/lang/CharSequence; 	isCompact (Ljava/lang/CharSequence;)Z cs 3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I text seq k j end 	fromIndex 
textLength 	seqLength first C max this  Lorg/openide/util/CharSequences; 
access$800 9()Lorg/openide/util/CharSequences$CharSequenceComparator; 
access$900 x0 access$1000 access$1200 x1 x2 <clinit> 
SourceFile CharSequences.java InnerClasses CharSequenceComparator CompactCharSequence CharBasedSequence(  org/openide/util/CharSequences$1 Fixed6Bit_1_10 Fixed6Bit_11_20 Fixed6Bit_21_30 	Fixed_0_7 
Fixed_8_15 Fixed_16_23 ByteBasedSequence 1  a     Z [    ^ _              	  �  �  �  
   �� � Y� �� � Y� �*�d� � Y`� �>� � ��:666		� :*	`46 �~6� 	6� � 
� 6	�T�	���� � !��:	*	� %� +Y	� -�    �   n    G  H  J  K  N " O - Q / R 3 T 7 V < W ? Z B \ K ] S ^ [ _ b a e b h d m e t g | \ � i � j � l � m � n �   p  S / � �  [ ' � �  E = � � 	   � � _     � � �    � � �  / z � �  < m � �  ? j � �  B g � �  �  � _ 	 �   I 	� 	�  
 � �    � " 
 � �  �  	 � �     �    �   �   �   	  �  �  �  	   �*� �*� 0� *�*� 2 <� � ��M>66� :*� 8 6 �~6� >� � 
� 6,�T����� ,� !��:6� *� 8 U���� +Y� -�    �   n    {  |    �  �  �  �  � " � $ � ' � 0 � : � B � I � K � N � S � Z � a � g � k � s � x � � � � � � � �   f 
 : - � �  B % � �  * = � �  {  � �    � �     � � �  " } � �  $ { � �  ' x � �  x ' � _  �   L 
� �   3 �    � #  3 �  �   3 �    �  ��  �    �   	  �         � �    �       �    	  �         � �    �       � 	  �   /     *� 0�    �       � �       	    �   	   	 =
  �   ;     *+� ;�    �       � �                �   	     	 = >  �  �     �*� 2 >+� 2 6� � � �� =� �+� 8 6d66� v*� 8 � �� *� 8 � ���� B`6`d6	6
	� *� 8 +
� 8 � ��
���	� ������    �   V    �  �  �  �  � # � % � * � , � 5 � ; � E � R � l � s � y � � � � � � � � � � � �   p  � # � 
 y 9 �  � 0 � 	 > z � �    �      �     � �   � �   � �  5 �  ;  �  �   # � @ � � � "� 	�  �          
 # $  �   �     x� :� 6
� � ?Y*� A�� � DY*� F�� � GY*� I�� � JY*� L�� � MY*� O�� � PY*� R�� SY*� U�    �   :    �  �  �    * 0 ; A L R	 ]
 c n �        x � �     x � �    x � �  �     �    �   �   �   
    �  /     o� � Y� �� � Y� �*�d� � Y`� �>� � ��:*� %66� � 3� 6����� !�    �   F        " - / 3! 7# <$ E% H& Q' V( `& f- �   H  K  � �    o � �     o � �    o � �  / @ � �  < 3 � �  H ' � �  �    � 	�  ��  �    �   �   �   
     �   L      �� � X/	�� � �    �      � �        � �   �    @ �    �   
    �   0     � X/�    �      � �        � �   �    �   
 	 
  �   0     � \4�    �      � �        � �   �    �     d  �   3     *� `�    �   
   � � �           �         � �    �       :   �   /     � �    �       : �        �   
  �   /     � �    �       : �        �     �   E     *� �    �       : �         �      �     �    d  �  >      ��Y ePY ePY ePY ePY ePY ePY ePY ePY ePY	 ePY
 ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY ePY  ePY! ePY" ePY# ePY$ ePY% ePY& ePY' ePY( ePY) ePY* ePY+ ePY, ePY- ePY. gPY/ ePY0	PY1
PY2 iPY3 kPY4 mPY5 oPY6 qPY7 sPY8 uPY9 wPY: ePY; ePY< ePY= ePY> ePY? ePY@ ePYA yPYB {PYC }PYD PYE �PYF �PYG �PYH �PYI �PYJ �PYK �PYL �PYM �PYN �PYO �PYP �PYQ �PYR �PYS �PYT �PYU �PYV �PYW �PYX �PYY �PYZ �PY[ ePY\ ePY] ePY^ ePY_ �PY` ePYa �PYb �PYc �PYd �PYe �PYf �PYg �PYh �PYi �PYj �PYk �PYl �PYm �PYn �PYo �PYp �PYq �PYr �PYs �PYt �PYu �PYv �PYw �PYx �PYy �PYz �PY{ ePY| ePY} ePY~ ePY eP� X@�Y0UY1UY2UY3UY4UY5UY6UY7UY8UY	9UY
AUYBUYCUYDUYEUYFUYGUYHUYIUYJUYKUYLUYMUYNUYOUYPUYQUYRUYSUYTUYUUYVUY WUY!XUY"YUY#ZUY$aUY%bUY&cUY'dUY(eUY)fUY*gUY+hUY,iUY-jUY.kUY/lUY0mUY1nUY2oUY3pUY4qUY5rUY6sUY7tUY8uUY9vUY:wUY;xUY<yUY=zUY>.UY?_U� \� JY�� L� � �Y� � �    �      �~�� !   "#   Z  � $ 
 0 %
 + & '     ? )  D *  G +  J ,  M -  P .  S / 