����   4 �  5org/openide/text/PositionRef$Manager$DocumentRenderer
      java/lang/Object <init> ()V	 
     )org/openide/text/PositionRef$Manager$Kind mgr &Lorg/openide/text/PositionRef$Manager;
     0(ILorg/openide/text/PositionRef$Manager$Kind;Z)V
     renderToObject ()Ljava/lang/Object;  1org/openide/text/PositionRef$Manager$PositionKind
 
    	getOffset ()I
     getClass ()Ljava/lang/Class; ! ,org/openide/text/PositionRef$Manager$OutKind
 
 # $  getLine
 
 & '  	getColumn
 ) * + , - $org/openide/text/PositionRef$Manager 
access$300 I(Lorg/openide/text/PositionRef$Manager;)Ljavax/swing/text/StyledDocument;
 / 0 1 2 3 org/openide/text/NbDocument findLineRootElement =(Ljavax/swing/text/StyledDocument;)Ljavax/swing/text/Element; 5 6 7 8  javax/swing/text/Element getElementCount 5 : ; < 
getElement (I)Ljavax/swing/text/Element; 5 > ?  getStartOffset 5 A B  getEndOffset
 D E F G H java/lang/Math min (II)I J java/io/IOException	 L M N O P javax/swing/text/Position$Bias Backward  Ljavax/swing/text/Position$Bias;	 L R S P Forward
 / U V W createPosition Y(Ljavax/swing/text/Document;ILjavax/swing/text/Position$Bias;)Ljavax/swing/text/Position; Y %javax/swing/text/BadLocationException [ \ ] ^ _ javax/swing/text/StyledDocument getEndPosition ()Ljavax/swing/text/Position;
  a  b D(Ljavax/swing/text/Position;Lorg/openide/text/PositionRef$Manager;)V )(Lorg/openide/text/PositionRef$Manager;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/text/PositionRef$Manager$Kind; MethodParameters 
Exceptions write (Ljava/io/DataOutput;)V os toMemory 6(Z)Lorg/openide/text/PositionRef$Manager$PositionKind; insertAfter Z toMemoryLockAcquired lineElem Ljavax/swing/text/Element; lineStartOffset I lineLen line col lineRoot p Ljavax/swing/text/Position; e 'Ljavax/swing/text/BadLocationException; offset StackMapTable � javax/swing/text/Position isMemoryType ()Z fromMemoryLockAcquired -()Lorg/openide/text/PositionRef$Manager$Kind; 
SourceFile PositionRef.java InnerClasses � org/openide/text/PositionRef Manager DocumentRenderer Kind PositionKind OutKind Bias  
          	    c  d   F     
*� *+� 	�    e      � � 	� f       
 g h     
    i           $   j     I '   j     I k l  j     I i    m    n o  d   E     � Y*� � � �    e      � f        g h      p q  i    p    r o  d  �  
   �*� >*�  � c*� "6*� %6*� 	� (� .:� 4 � :� 9 :� = 6� @ d6		� 	d� C6`>� :*� 	� (� 	� K� � Q� TM� :*� 	� (� Z M� Y,*� 	� `�   i l I n � � X  e   Z   � � � � � &� 2� =� F� R� X� c� i� l� n� r� v� �� �� �� �� �� f   z  = , s t  F # u v  R  w v 	  U x v   O y v  & C z t  �  { |  �  } ~    � g h     � p q  �  { |   �  v  �   D � i B I�   
   [�   
   [ LF X�   
 �   i    p    � �  d   ,     �    e       f        g h    � �  d   ,     *�    e       f        g h    �    � �   2  ) � �   ) �  
 ) �
  ) �    ) �  L � � 