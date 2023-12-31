����   4 t
      java/io/InputStream <init> ()V	  	 
   %org/openide/util/io/ReaderInputStream reader Ljava/io/Reader;  java/io/PipedOutputStream
  	     pos Ljava/io/PipedOutputStream;  java/io/PipedInputStream
     (Ljava/io/PipedOutputStream;)V	     pis Ljava/io/PipedInputStream;  java/io/OutputStreamWriter
     ! (Ljava/io/OutputStream;)V	  # $ % osw Ljava/io/OutputStreamWriter;
  '  ( +(Ljava/io/OutputStream;Ljava/lang/String;)V
  * + , 	available ()I
  . / , read
 1 . 2 java/io/Reader
  4 5 6 write (I)V
  8 9  flush
  8 < java/io/IOException > java/lang/StringBuilder
 =  A Cannot encode input data using 
 = C D E append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  G H I getEncoding ()Ljava/lang/String; K 
 encoding.
 = M N I toString
 ; P  Q (Ljava/lang/String;)V
  .
 1 T U V ready ()Z
 1 X Y  close
  X
  X (Ljava/io/Reader;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/util/io/ReaderInputStream; 
Exceptions MethodParameters %(Ljava/io/Reader;Ljava/lang/String;)V encoding Ljava/lang/String; c I StackMapTable ([BII)I b [B off len i #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ReaderInputStream.java !                      $ %      \  ]   {     3*� *+� *� Y� � *� Y*� � � *� Y*� � � "�    ^       *  + 	 ,  - # . 2 / _       3 ` a     3    b     ; c         d  ]   �     4*� *+� *� Y� � *� Y*� � � *� Y*� ,� &� "�    ^       7  8 	 9  : # ; 3 < _        4 ` a     4      4 e f  b     ; c   	    e    / ,  ]   �     o*� � )� *� � -�*� � 0<� �*� "� 3*� "� 7*� � :*� � )� *� � -�� ;Y� =Y� ?@� B*� "� F� BJ� B� L� O�    ^   .    ? 
 @  C  E  F ! I ) J 0 K 7 M A N I P _       o ` a    U g h  i    � ' b     ;  / j  ]   �     N� �*� R6� �+�T6� +*� � S� !*� R6� �+`�T�����    ^   :    V  W  Z  \  ]  `  b  e - f 3 h 9 i < l E e K o _   >    N ` a     N k l    N m h    N n h   B g h   1 o h  i    � �  b     ; c    k   m   n   p     q    + ,  ]   q     *� � )<� �*� � S� ��    ^       t  v  w  z  |  ~ _        ` a     o h  i    �  b     ; p     q    Y   ]   L     *� � W*� "� Z*� � [�    ^       �  �  �  � _        ` a   b     ; p     q    r    s