����   4 p	      =org/openide/util/NbBundle$UtfThenIsoCharset$UtfThenIsoDecoder this$0 -Lorg/openide/util/NbBundle$UtfThenIsoCharset;
  	 
   java/nio/charset/CharsetDecoder <init> (Ljava/nio/charset/Charset;FF)V	      !java/nio/charset/StandardCharsets UTF_8 Ljava/nio/charset/Charset;
      java/nio/charset/Charset 
newDecoder #()Ljava/nio/charset/CharsetDecoder;	      "java/nio/charset/CodingErrorAction REPORT $Ljava/nio/charset/CodingErrorAction;
    ! " onMalformedInput G(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
  $ % " onUnmappableCharacter	  ' ( ) 
decoderUTF !Ljava/nio/charset/CharsetDecoder;	  + , ) 
decoderISO
  . / 0 decode K(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
 2 3 4 5 6 java/nio/ByteBuffer mark ()Ljava/nio/ByteBuffer;
 8 9 : 5 ; java/nio/CharBuffer ()Ljava/nio/CharBuffer;
 = > ? @ A java/nio/charset/CoderResult isUnderflow ()Z
 = C D A 
isOverflow
 F G H I J +org/openide/util/NbBundle$UtfThenIsoCharset 
access$200 0(Lorg/openide/util/NbBundle$UtfThenIsoCharset;)Z
 2 L M 6 reset
 8 O M ;	  Q R  
ISO_8859_1 L(Lorg/openide/util/NbBundle$UtfThenIsoCharset;Ljava/nio/charset/Charset;FF)V Code LineNumberTable LocalVariableTable this ?Lorg/openide/util/NbBundle$UtfThenIsoCharset$UtfThenIsoDecoder; cs averageCharsPerByte F maxCharsPerByte MethodParameters 
decodeLoop J(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult; in Ljava/nio/ByteBuffer; out Ljava/nio/CharBuffer; cr Ljava/nio/charset/CoderResult; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile NbBundle.java InnerClasses m org/openide/util/NbBundle UtfThenIsoCharset UtfThenIsoDecoder 0       ( )    , )          S  T   �     $*+� *,%� *� � � � � � #� &�    U      � � � � � #� V   *    $ W X     $ Y     $ Z [    $ \ [  ]     Y   Z   \    ^ _  T   �     b*� *� *� *+,� -�+� 1W,� 7W*� &+,� -N-� <� 
-� B� -�*� � E� -�+� KW,� NW*� P� � **� *+,� -�    U   6   � �    ' 5
 7 A C H M W V   *    b W X     b ` a    b b c  ' ; d e  f    � " = ]   	 `   b   g     h    i    j k     F l n 
  F o 