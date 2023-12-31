����   4 �  *org/netbeans/api/queries/FileEncodingQuery
      Dorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset$ProxyDecoder <init> ](Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;Ljava/nio/charset/CharsetDecoder;)V	  
   this$0 9Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;
      java/nio/charset/CharsetDecoder averageCharsPerByte ()F
     maxCharsPerByte
     (Ljava/nio/charset/Charset;FF)V
      java/nio/ByteBuffer allocate (I)Ljava/nio/ByteBuffer;	    ! " buffer Ljava/nio/ByteBuffer;	  $ % & currentDecoder !Ljava/nio/charset/CharsetDecoder;	  ( ) * initialized Z	  , - . lastCharBuffer Ljava/nio/CharBuffer;	  0 1 " 	remainder
  3 4 5 	remaining ()I
  7 8 9 put ,(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
  ; < = flip ()Ljava/nio/ByteBuffer;
  ? @ A decode K(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
  C D E hasRemaining ()Z
  G H A 
decodeHead
  J K 5 limit
  M N 5 position
  P K 	 R S T U V java/nio/charset/CoderResult 	UNDERFLOW Ljava/nio/charset/CoderResult;
 X Y Z [ \ 7org/netbeans/api/queries/FileEncodingQuery$ProxyCharset 
access$300 K(Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;)Ljava/util/List; ^ _ ` a 5 java/util/List size ^ c d e get (I)Ljava/lang/Object; g java/nio/charset/Charset
 f i j k 
newDecoder #()Ljava/nio/charset/CharsetDecoder;	  m n o malformedInputAction $Ljava/nio/charset/CodingErrorAction;
  q r s onMalformedInput G(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;	  u v o unmappableCharAction
  x y s onUnmappableCharacter	  { | } replace Ljava/lang/String;
   � � replaceWith 5(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
 � M � java/nio/CharBuffer
  � � = asReadOnlyBuffer
  � � � flush 5(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
  � � � 
access$400 ()Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINEST Ljava/util/logging/Level; � decoder-selected
 � � � � � java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V � ,org/netbeans/modules/queries/UnknownEncoding	  � � * $assertionsDisabled � java/lang/AssertionError
 � �  � ()V
 X � � = 
access$500
  � � � 	implFlush
  � � k reset
 � � � � E java/lang/Class desiredAssertionStatus Code LineNumberTable LocalVariableTable this FLorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset$ProxyDecoder; defaultDecoder MethodParameters 
decodeLoop J(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult; tmp result I in out StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; view e .Lorg/netbeans/modules/queries/UnknownEncoding; outPos i 	implReset implOnMalformedInput '(Ljava/nio/charset/CodingErrorAction;)V action implOnUnmappableCharacter implReplaceWith (Ljava/lang/String;)V �(Lorg/netbeans/api/queries/FileEncodingQuery$ProxyCharset;Ljava/nio/charset/CharsetDecoder;Lorg/netbeans/api/queries/FileEncodingQuery$1;)V x0 x1 x2 .Lorg/netbeans/api/queries/FileEncodingQuery$1; <clinit> 
SourceFile FileEncodingQuery.java InnerClasses ProxyCharset ProxyDecoder � ,org/netbeans/api/queries/FileEncodingQuery$1       
  % &    ! "    1 "    n o    v o    | }    ) *    - .   � *       
     �   o     '*+� 	*+,� ,� � * � � *,� #*� '�    �       �  �  �  � ! � & � �       ' � �     ' � &  �   	  �   � �  �  �     �*,� +*� � \*� /� J*� /� 2+� 2`� N-*� /� 6W-+� 6W-� :W*� #-,� >:-� B� *-� /� *� /�*� #+,� >�*� � 2� *+,� F�*� � 2+� 2� 0+� I>++� L*� � 2`� OW*� +� 6W+� OW*+,� F�*� +� 6W� Q�    �   ^    �  �  �  � # � , � 2 � 7 � C � J � R � W � Z � e � o � w � � � � � � � � � � � � � � � �   >  # 7 � "  C  � V  � ( K �    � � �     � � "    � � .  �    � R  R� 
: �   	 �   �   �     �    H A  �  �    /*� � :W:6*� 	� W� ] � �**� 	� W� b � f� h� #*� l� *� #*� l� pW*� t� *� #*� t� wW*� z� *� #*� z� ~W,� �6*� � �:*� #,+� � � >:� B� -� *� #,� �W� �� ��*� #� �*� /*� �+� *� #+,� >:� *� #,� �:� �� ��*� #� �*� �:,� �� *� �����*� � �� � � �Y� ���  v � � � � � � �  �   � #   �  �  �  � 7 � > � J � Q � ] � d � p � v �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � , �   \ 	  | � "  �  � �  v � � �   � �   / � �    / � "   / � .   / � *  $ � V  �   u �  R;�     � R     ��      � R     ��     � R  �� �  �    �  �  �   � �  �   w     **� +*� � *+� F�*� #� �+� >W*� #+� ��    �        	  ! �       * � �     * � .  �     �    �   �     �    � �  �   X     *� +� **� +� �W*� #� �W�    �          �        � �   �     �     �    � �  �   k      *� � 
*� '� *+� l� *� #+� pW�    �          " �         � �       � o  �     �    �   �     �    � �  �   k      *� � 
*� '� *+� t� *� #+� wW�    �      & ' * , �         � �       � o  �     �    �   �     �    � �  �   k      *� � 
*� '� *+� z� *� #+� ~W�    �      0 1 4 6 �         � �       | }  �     �    |   �     �     �  �   O     *+,� �    �       � �   *     � �      �      � &     � �   � �  �   4      � �� � � ��    �       � �    @  �    � �     X  � 
  X �  �    