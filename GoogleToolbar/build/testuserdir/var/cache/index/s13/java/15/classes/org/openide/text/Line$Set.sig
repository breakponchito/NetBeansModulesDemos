����   4 k
      java/lang/Object <init> ()V  java/util/Date
  	      org/openide/text/Line$Set date Ljava/util/Date;
     computeOriginal 5(Lorg/openide/text/Line$Set;Lorg/openide/text/Line;)I	     
lineVector Lorg/openide/text/LineVector;  org/openide/text/LineVector
    java/lang/NullPointerException
  
     ! findLineVector ()Lorg/openide/text/LineVector;
  # $ % findOrCreateLine C(ILorg/openide/text/LineVector$LineCreator;)Lorg/openide/text/Line;
 ' ( ) * + org/openide/text/Line getLineNumber ()I
  - . / getOriginal (I)Lorg/openide/text/Line;
  1 2 3 equals (Ljava/lang/Object;)Z 5 #java/lang/IndexOutOfBoundsException
  7 8 9 findMaxLine (Lorg/openide/text/Line$Set;)I
  ; < = binarySearch !(Lorg/openide/text/Line$Set;III)I Code LineNumberTable LocalVariableTable this Lorg/openide/text/Line$Set; getLines ()Ljava/util/List; 	Signature ,()Ljava/util/List<+Lorg/openide/text/Line;>; getDate ()Ljava/util/Date; 
Exceptions MethodParameters line 
getCurrent getOriginalLineNumber (Lorg/openide/text/Line;)I Lorg/openide/text/Line; StackMapTable R java/lang/Throwable 	lineIndex I lineCreator )Lorg/openide/text/LineVector$LineCreator; findLine 0(Lorg/openide/text/Line;)Lorg/openide/text/Line; set n current middle l ln number from to ex %Ljava/lang/IndexOutOfBoundsException; 
SourceFile 	Line.java InnerClasses Set i 'org/openide/text/LineVector$LineCreator LineCreator!                     >   B     *� *� Y� 	� 
�    ?      � � � @        A B   C D  E    F  G H  >   /     *� 
�    ?      � @        A B   . /  I     4 J    K   L /  I     4 J    K    M N  >   :     *+� �    ?      � @        A B      K O  J    K       !  >   �     ,*� 
YL�*� � 
*� +ð*� Y� � *� +ðM+�,�    '    & '   ' * '    ?      � �      ' @       , A B   P    �  Q Q  $ %  >   u     ,� � Y� �*� N-,� "�    ?          @   *     A B      S T     U V       P     J   	 S   U    W X  >   Q     *� M,+� &� "�    ?   
     @         A B      K O   
    J    K       >   �     L+� &=N*� ,N+-� 0� �� :-� **� 6� :�-� &� *-� &� :�*-� &*� 6� :�     4  ?   2   / 0 3 5 6 ; 8 =  > +A 3B >D @   *    L Y B     L K O   G Z T   E [ O  P    �  'B 4 J   	 Y   K   
 < =  >   �     <� 8`l6*� ,:� &6� �� `=� d>����    ?   .   K L N O Q !R $U *W 2Z 7\ :^ @   H   + \ T   # ] O    ^ T    < Y B     < _ T    < ` T    < a T  P     � # '�  J    Y   _   `   a   
 8 9  >       <<} =*� ,W<h=���N� � ``l>*� ,W<� 	:d=����     4 & . 1 4  ?   F   b c h l m p n o s t &w ,z .~ 1{ 3} 7 :� @   >    b c  3  b c  &  \ T    < Y B    : ` T   6 a T  P     � N 4�     4�  J    Y    d    e f      ' g	 h  j