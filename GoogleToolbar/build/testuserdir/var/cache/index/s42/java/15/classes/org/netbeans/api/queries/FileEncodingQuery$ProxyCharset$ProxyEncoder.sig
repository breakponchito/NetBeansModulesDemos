����   4 �  *org/netbeans/api/queries/FileEncodingQuery
      Dorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset$ProxyEncoder <init> ](Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;Ljava/nio/charset/CharsetEncoder;)V	  
   this$0 9Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;
      java/nio/charset/CharsetEncoder averageBytesPerChar ()F
     maxBytesPerChar
     replacement ()[B
     !(Ljava/nio/charset/Charset;FF[B)V
     ! " java/nio/CharBuffer allocate (I)Ljava/nio/CharBuffer;	  $ % & buffer Ljava/nio/CharBuffer;	  ( ) * currentEncoder !Ljava/nio/charset/CharsetEncoder;	  , - . initialized Z	  0 1 2 lastByteBuffer Ljava/nio/ByteBuffer;	  4 5 & 	remainder
  7 8 9 encode K(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
  ; < = hasRemaining ()Z
 ? @ A B = java/nio/charset/CoderResult isUnderflow
  D E F 	remaining ()I
  H I F position
  K L F limit
  N O 9 
encodeHead
  Q L "
  S T U put ,(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;	 ? W X Y 	UNDERFLOW Ljava/nio/charset/CoderResult;
  [ \ ] flip ()Ljava/nio/CharBuffer;
 _ ` a b c 7org/netbeans/api/queries/FileEncodingQuery$ProxyCharset 
access$300 K(Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;)Ljava/util/List; e f g h F java/util/List size e j k l get (I)Ljava/lang/Object; n java/nio/charset/Charset
 m p q r 
newEncoder #()Ljava/nio/charset/CharsetEncoder;	  t u v malformedInputAction $Ljava/nio/charset/CodingErrorAction;
  x y z onMalformedInput G(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;	  | } v unmappableCharAction
   � z onUnmappableCharacter	  � � � replace [B
  � � � replaceWith %([B)Ljava/nio/charset/CharsetEncoder;
 � H � java/nio/ByteBuffer
  � � ] asReadOnlyBuffer
 ? � � = 
isOverflow
  � � � 
access$400 ()Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINEST Ljava/util/logging/Level; � encoder-selected
 � � � � � java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 ? � � = isUnmappable
  � � � flush 5(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult; � ,org/netbeans/modules/queries/UnknownEncoding	  � � . $assertionsDisabled � java/lang/AssertionError
 � �  � ()V
 _ � � ] 
access$600
  � � � 	implFlush
  � � r reset
 � � � � = java/lang/Class desiredAssertionStatus Code LineNumberTable LocalVariableTable this FLorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset$ProxyEncoder; defaultEncoder MethodParameters 
encodeLoop J(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult; result I in out StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; view e .Lorg/netbeans/modules/queries/UnknownEncoding; outPos i b 	implReset implOnMalformedInput '(Ljava/nio/charset/CodingErrorAction;)V action implOnUnmappableCharacter implReplaceWith ([B)V �(Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;Ljava/nio/charset/CharsetEncoder;Lorg/netbeans/api/queries/FileEncodingQuery$1;)V x0 x1 x2 .Lorg/netbeans/api/queries/FileEncodingQuery$1; <clinit> 
SourceFile FileEncodingQuery.java InnerClasses ProxyCharset ProxyEncoder � ,org/netbeans/api/queries/FileEncodingQuery$1       
  ) *    % &    5 &    u v    } v    � �    - .    1 2   � .       
     �   s     +*+� 	*+,� ,� ,� � * � � #*,� '*� +�    �      E F =  G %H *I �       + � �     + � *  �   	  �   � �  �  �     �*,� /*� #� =*� 3� )*� '*� 3,� 6N*� 3� :� *� 3-� >� -�*� '+,� 6N-�*� #� C� *� #� G� +� J� *+,� MN-�*� #� C+� C� 4+� J>++� G*� #� C`� PW*� #+� RW+� PW*+,� M:�*� #+� RW� V�    �   Z   M N O P !Q +R 0T 7V 9Y DZ F\ a] i^ k_ y` ~a �b �c �d �e �g �h �   R  !  � Y  D  � Y  i  � Y  ~ , L �  �  � Y    � � �     � � &    � � 2  �    � 0 ?� 	> �   	 �   �   �     �    O 9  �  �  	  E*� #� 
*� 3� *� #:� ZW:6*� 	� ^� d � �**� 	� ^� i � m� o� '*� s� *� '*� s� wW*� {� *� '*� {� ~W*� �� *� '*� �� �W,� �6� �:*� ',+� � � 6:� ��  � �� ��*� '� �*� 3*� #�� �� �+� *� '+,� 6:� >� � *� ',� �:� �� ��*� '� �*� #�:,� �� *� #�����*� #� �� � � �Y� ���  � � � � � � � �  �   � %  n o p q 1r Is Pt \v cw oy vz �| �~ � �� �� �� �� �� �� �� �� �� �� �� �� ��	�����!�$q*�/�B� �   f 
 � � � &   � �  � � � �   
 � �   E � �    E � &   E � 2   E � .  1 � &  ( � Y  �   � C �   ?;�  	   �  ?     ��   	   �  ?     �)
�     �  ?  �� �  �    �   �   �    � �  �        1*� /*� #� 
*� 3� *+� M�*� '� �+� 6W*� '+� ��    �      � � � � (� �       1 � �     1 � 2  �     �    �   �     �    � �  �   X     *� /� **� /� �W*� '� �W�    �      � � � � �        � �   �     �     �    � �  �   k      *� #� 
*� +� *+� s� *� '+� wW�    �      � � � � �         � �       � v  �     �    �   �     �    � �  �   k      *� #� 
*� +� *+� {� *� '+� ~W�    �      � � � � �         � �       � v  �     �    �   �     �    � �  �   k      *� #� 
*� +� *+� �� *� '+� �W�    �      � � � � �         � �       � �  �     �    �   �     �     �  �   O     *+,� �    �      : �   *     � �      �      � *     � �   � �  �   4      � �� � � ��    �      : �    @  �    � �     _  � 
  _ �  �    