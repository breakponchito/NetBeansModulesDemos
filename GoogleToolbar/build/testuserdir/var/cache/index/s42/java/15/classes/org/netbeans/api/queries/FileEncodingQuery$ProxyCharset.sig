����   4 y	      7org/netbeans/api/queries/FileEncodingQuery$ProxyCharset EMPTY_CHAR_BUFFER Ljava/nio/CharBuffer;	   	 
 EMPTY_BYTE_BUFFER Ljava/nio/ByteBuffer;	     	delegates Ljava/util/List;
     <init> (Ljava/util/List;)V      java/util/List get (I)Ljava/lang/Object;  java/nio/charset/Charset
     name ()Ljava/lang/String;
    ! " aliases ()Ljava/util/Set; $ % & ' ( java/util/Set size ()I * java/lang/String $ , - . toArray (([Ljava/lang/Object;)[Ljava/lang/Object; 0 [Ljava/lang/String;
  2  3 ((Ljava/lang/String;[Ljava/lang/String;)V
  5 6 7 contains (Ljava/nio/charset/Charset;)Z 9 Dorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset$ProxyDecoder
  ; < = 
newDecoder #()Ljava/nio/charset/CharsetDecoder;
 8 ?  @ �(Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;Ljava/nio/charset/CharsetDecoder;Lorg/netbeans/api/queries/FileEncodingQuery$1;)V B Dorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset$ProxyEncoder
  D E F 
newEncoder #()Ljava/nio/charset/CharsetEncoder;
 A H  I �(Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;Ljava/nio/charset/CharsetEncoder;Lorg/netbeans/api/queries/FileEncodingQuery$1;)V
 K L M N O java/nio/ByteBuffer allocate (I)Ljava/nio/ByteBuffer;
 Q R S N T java/nio/CharBuffer (I)Ljava/nio/CharBuffer; 	Signature -Ljava/util/List<+Ljava/nio/charset/Charset;>; Code LineNumberTable LocalVariableTable this 9Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset; LocalVariableTypeTable MethodParameters 0(Ljava/util/List<+Ljava/nio/charset/Charset;>;)V charset Ljava/nio/charset/Charset; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; A(Ljava/util/List;Lorg/netbeans/api/queries/FileEncodingQuery$1;)V x0 x1 .Lorg/netbeans/api/queries/FileEncodingQuery$1; 
access$300 K(Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;)Ljava/util/List; 
access$500 ()Ljava/nio/ByteBuffer; 
access$600 ()Ljava/nio/CharBuffer; <clinit> ()V 
SourceFile FileEncodingQuery.java InnerClasses s *org/netbeans/api/queries/FileEncodingQuery ProxyCharset ProxyDecoder w ,org/netbeans/api/queries/FileEncodingQuery$1 ProxyEncoder         	 
            U    V 	     W   �     A*+�  � � +�  � � +�  � � � # � )� + � /� 1*+� �    X       � ; � @ � Y       A Z [     A    \       A  V  ]      U    ^  6 7  W   F     *� �  � +� 4�    X       � Y        Z [      _ `  ]    _   a     b    < =  W   D     � 8Y**� �  � � :� >�    X       � Y        Z [   a     b    E F  W   D     � AY**� �  � � C� G�    X       � Y        Z [   a     b     c  W   D     *+� �    X       � Y         Z [      d      e f  g h  W   /     *� �    X       � Y        d [   i j  W         � �    X       � k l  W         � �    X       �  m n  W   +      � J� � P� �    X   
    �  �  o    p q   "   r t 
 8  u  v     A  x 