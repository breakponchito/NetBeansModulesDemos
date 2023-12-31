����   4[
      'org/openide/filesystems/XMLMapAttr$Attr transformMe ()V
   	 
 <init> (Ljava/lang/Object;)V
     methodValue `(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openide/filesystems/XMLMapAttr$Attr$MethodAndParams;	     value Ljava/lang/String;	     keyIndex I
   	  (ILjava/lang/String;)V
   	  '(Ljava/lang/String;Ljava/lang/String;)V
     	  java/lang/Object	  " # $ obj Ljava/lang/Object;
 & ' ( ) * java/lang/String intern ()Ljava/lang/String;
  , - . isValid (Ljava/lang/String;)I	  0 1 2 ALLOWED_ATTR_KEYS [Ljava/lang/String; 4 &org/openide/util/io/NbMarshalledObject
 3 6 7 8 get ()Ljava/lang/Object; : java/io/IOException
 < = > ? @ $org/openide/filesystems/ExternalUtil 	exception (Ljava/lang/Exception;)V B  java/lang/ClassNotFoundException
  D E F unMarshallObjectRecursively &(Ljava/lang/Object;)Ljava/lang/Object;
  H I J distinguishObject (Ljava/lang/Object;)I L SERIALVALUE
  N O * toString
  Q R  putEntry
  T U V encodeValue &(Ljava/lang/Object;)Ljava/lang/String; X java/lang/Byte Z 	BYTEVALUE \ java/lang/Short ^ 
SHORTVALUE ` java/lang/Integer b INTVALUE d java/lang/Long f 	LONGVALUE h java/lang/Float j 
FLOATVALUE l java/lang/Double n DOUBLEVALUE p java/lang/Boolean r 	BOOLVALUE t java/lang/Character v 	CHARVALUE x STRINGVALUE z java/net/URL | URLVALUE
 ~  � � � org/openide/xml/XMLUtil toAttributeValue &(Ljava/lang/String;)Ljava/lang/String; � java/lang/Exception � java/lang/StringBuffer
 & � � � length ()I
 � � 	 � (I)V
 & � � � charAt (I)C
 s � � � isISOControl (C)Z
  � � � isEncodedChar (ILjava/lang/String;)Z
  � � � 
encodeChar (C)Ljava/lang/String;
 � � � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 � � � � (C)Ljava/lang/StringBuffer;
 � N
 _ � O � (II)Ljava/lang/String; � java/lang/StringBuilder
 �  � \u
 � � � � -(Ljava/lang/String;)Ljava/lang/StringBuilder; � 0000
 & � � � 	substring
 & � � � concat
 � N
 _ � � � parseInt (Ljava/lang/String;I)I � java/lang/NumberFormatException
 s � � � digit (CI)I
  � � � 	getObject '([Ljava/lang/Object;)Ljava/lang/Object;
  � � � getAttrTypes ()[Ljava/lang/String; � serialvalue
  � - � �  
  � � V getValue � 4org/openide/filesystems/XMLMapAttr$ModifiedAttribute
 � � � 8
  � � *
  � � � encode
  � � * getKey
 � � � � revert 9(Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object;
 � � � � � java/io/PrintWriter print (Ljava/lang/String;)V � <!--  � --
 & � � . indexOf
 & � � � replace (CC)Ljava/lang/String; �  -->
 � � � � println
  � � � getClass ()Ljava/lang/Class;
  7org/openide/filesystems/XMLMapAttr$Attr$MethodAndParams 	getMethod ()Ljava/lang/reflect/Method;
	 � java/lang/reflect/Method getReturnType
 � org/openide/util/BaseUtilities 	translate
 < 	findClass %(Ljava/lang/String;)Ljava/lang/Class;
 * java/lang/Class getName
 9 
 < copyAnnotation A(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable; java/io/ByteArrayInputStream
  	! ([BII)V# 'org/openide/util/io/NbObjectInputStream
"% 	& (Ljava/io/InputStream;)V
()*+ 8 java/io/ObjectInputStream 
readObject- java/io/ByteArrayOutputStream
, 0 java/io/ObjectOutputStream
/2 	3 (Ljava/io/OutputStream;)V
/56 
 writeObject
/89  close
,;<= toByteArray ()[B? 0
 _ABC toHexString (I)Ljava/lang/String;
 WEFG valueOf $(Ljava/lang/String;)Ljava/lang/Byte;
 [IFJ %(Ljava/lang/String;)Ljava/lang/Short;
 _L 	 �
 cL
 gOFP %(Ljava/lang/String;)Ljava/lang/Float;
 kRFS &(Ljava/lang/String;)Ljava/lang/Double;
 oUFV '(Ljava/lang/String;)Ljava/lang/Boolean;
 &XY * trim
 s[ 	\ (C)V
 ^_ 8 invoke
 abc decodeValue &(Ljava/lang/String;)Ljava/lang/Object;
 yL
fghij ?org/netbeans/modules/openide/filesystems/RecognizeInstanceFiles createInstance %(Ljava/lang/Class;)Ljava/lang/Object;l #
 &nop split ((Ljava/lang/String;I)[Ljava/lang/String;
rstuv org/openide/util/NbBundle 	getBundle .(Ljava/lang/String;)Ljava/util/ResourceBundle;
xyz �c java/util/ResourceBundle| value = 
 <~� annotate *(Ljava/lang/Throwable;Ljava/lang/String;)V� java/lang/LinkageError
 AL
 <��  java/lang/InstantiationException
�L
 &��� lastIndexOf (I)I
 &� �C� "org/openide/filesystems/FileObject� [Ljava/lang/Class;� java/util/Map
��� getDeclaredMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;� java/lang/NoSuchMethodException	 ��� $assertionsDisabled Z� java/lang/AssertionError
� 
 ��� 	wrapToMap 5(Lorg/openide/filesystems/FileObject;)Ljava/util/Map;
 � 	� 0(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
����� java/util/Collections emptyMap ()Ljava/util/Map;� *org/openide/filesystems/XMLMapAttr$FileMap
�� 	� M(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/XMLMapAttr$1;)V
 &��� equalsIgnoreCase (Ljava/lang/String;)Z
 &��� equals (Ljava/lang/Object;)Z
 &�� � hashCode� "org/openide/filesystems/XMLMapAttr
��� desiredAssertionStatus ()Z� 	bytevalue� 
shortvalue� intvalue� 	longvalue� 
floatvalue� doublevalue� 	boolvalue� 	charvalue� stringvalue� methodvalue� urlvalue� newvalue� bundlevalue Code LineNumberTable LocalVariableTable this )Lorg/openide/filesystems/XMLMapAttr$Attr; MethodParameters index StackMapTable key e Ljava/io/IOException; "Ljava/lang/ClassNotFoundException; mo o newValue iox objType unObj i inStr outStr Ljava/lang/StringBuffer; ch C encChar decode decChar !Ljava/lang/NumberFormatException; c currentPosition objs [Ljava/lang/Object; 
Exceptions keyArray 2 ioe getValueForPrint 	modifAttr getKeyForPrint keyIdx getAttrNameForPrint retVal attrName maybeAddSerValueComment *(Ljava/io/PrintWriter;Ljava/lang/String;)V modifObj s pw Ljava/io/PrintWriter; indent getType &([Ljava/lang/Object;)Ljava/lang/Class; ex Ljava/lang/Exception; params 	Signature )([Ljava/lang/Object;)Ljava/lang/Class<*>; getClassName tempI ois Ljava/io/ObjectInputStream; ret bytes [B count bis Ljava/io/ByteArrayInputStream; oos Ljava/io/ObjectOutputStream; bos Ljava/io/ByteArrayOutputStream; bArray strBuff cls Ljava/lang/Class; arr exc Ljava/lang/LinkageError; m Ljava/lang/reflect/Method; x !Ljava/lang/NoSuchMethodException; j values 
paramTypes 
methodName fo $Lorg/openide/filesystems/FileObject; 
paramArray [[Ljava/lang/Class; sepIdx�9 strArray 
trimmedKey other #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; M(Ljava/lang/String;Ljava/lang/String;Lorg/openide/filesystems/XMLMapAttr$1;)V x0 x1 x2 &Lorg/openide/filesystems/XMLMapAttr$1; <(ILjava/lang/String;Lorg/openide/filesystems/XMLMapAttr$1;)V 
access$200 ,(Lorg/openide/filesystems/XMLMapAttr$Attr;)I 
access$300 =(Lorg/openide/filesystems/XMLMapAttr$Attr;)Ljava/lang/String; 
access$400 �(Lorg/openide/filesystems/XMLMapAttr$Attr;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openide/filesystems/XMLMapAttr$Attr$MethodAndParams; ;(Ljava/lang/Object;Lorg/openide/filesystems/XMLMapAttr$1;)V 
access$600 ,(Lorg/openide/filesystems/XMLMapAttr$Attr;)V <clinit> 
SourceFile XMLMapAttr.java InnerClasses Attr MethodAndParams ModifiedAttribute FileMapZ $org/openide/filesystems/XMLMapAttr$1 0       1 2              # $  ��   '  	 
 �   F     
*� *+� !�   �      � � 	��       
��     
 # $ �    #    	  �   �     *� *� *,� 
,� %� � �   �      � � 	� ��        ��     �        �   ' �    &  �     &   &�   	�       	  �   _     *� *+� +� *,� %� �   �      � � � ��        ��     �        �   	�       � � �         � /�   �      �  R  �   W     *+� +� *,� %� �   �      � � ��        ��     �        �   	�       E F �   �     ,*L+� 3� +� 3� 5L���M,� ;*�M,� ;*�+� *� +�  	   9 	   A �   .   � � 	� � � � � � �  � "��   *   ��   ��    ,� $    *� $ �    �  Q 9F A@ �   �      �       R*� !� �*� !� CM,� @,� GY<K� +� *� !*� /2,� M� P� ,� SN� :�*� !*� /2-� P�  7 < ? 9 �   :     
   " ' 7 < ? A B G Q�   >  < �   A ��  B �    7�     R��    B� $ �   " � . G 9�  &�         I J �       �*� W� 	Y� +�*� [� 	]� +�*� _� 	a� +�*� c� 	e� +�*� g� 	i� +�*� k� 	m� +�*� o� 	q� +�*� s� 	u� +�*� &� 	w� +�*� y� 	{� +�K� +�   �   V   # $ ' ( + !, '/ .0 43 ;4 A7 H8 N; U< [? b@ hC oD uG |H �K�       �� $  �    
�   �    � � �   �     Z*� }K� L� �Y*� �h� �L=*� �� 6*� �� �� *� �� +*� �� �� �W� +*� �� �W����+� ��      � �   .   P R Q 	T V "W 5X BZ E] OV U`�       ;�     Z�     B�� �    H � �  �	� �   �    � � �   f     .� �L� �Y� ��� ���� �+� �d� �+� �� �� ��   �   
   d f�       .��    '�  �   �   � � �       [� �Y*� �� �L=*� �� 9*� �� !*``� �N+-� ��� �W�� +*� �� �W���ŧ 
M,� ;*�+� ��   L O � �   :   j m n o *p 6q 9r <s Fm Lz Ov Pw Ty V|�   4  * �    >�   P ��    [�     O�� �    �  �-	� B ��   �  
 � � �  "     d`+� �� � =� Q+� �\� +`� �u� � ~=`>� +`� #+� �6� �� � ~=�����   �   & 	  � � � #� 2� B� I� \� b��   4  I ��  6 ,�     d�      d�    T �� �   F @�   & �    & � � "  & �    & � �   	� �   7 � �   :     *+� İ   �      ��       ��     �� �     ��   �    � * �   w      � �L*� !� ̰*� �� а+*� 2�   �      � � � � � ��        ��      2 �   	 � 
  � * �   `      *� !� *� !� �W*� � 
*� � а   �      � � ��        ��  �    A &  � V �   Y     	*� S�Lа      9 �      � � ��      �    	 # $  �    E 9�    #    * �   �     K*� !� 3L*� !� ՙ *� !� ն �� L+� +� ٸ ۧ 
*� ٸ ۰*� � *� � ۧ а   �      � � 	� � !� 7��     	 .�    K��  �    � ! F &�  A &  * �   �     7*� !� ՙ +*� !� ն �� LK� +=+� +� ٸ G=� �N-2�*� ް   �   "   � 
� � � "� *� .� 2��   *   �      .   2    7��  �    � * �   � �   u     "*� !� ՙ +*� !� �M,2� &� ۰+� ۰   �      � 
� � ��       
�    "��     "	  �    �   	   
 �       s*� !� nN*� !� ՙ !*� !� ն �� � �N-� GK� +� �+,� �+� �-� 
-� M� 
*� !� M:�� �� -_� �:+� �+�� ��   �   :   � � 	� � $� 0� 1� 6� <� P� [� f l r�   4  	 i $  P "     s��     s    s  �    � 1 F &�  &� �   	      �  �     �*� !� *� !� ��*� �   �          E   H   K   N   Q   T   W   Z   ]   e   u   w   z   �W�[�_�c�g�k�o�s�*� � ��**� +� � ����y�*� �
��&�� M,� ;�     � �  Z � � [ ] � � ^ ` � � a c � � d f � � g i � � j l � � m o � � p w � � x � � � � � � � � � � � � � � � � � � � �   V   	 
  X [ ^ a d g j m p x  �" �$ �& �( �, �* �+ �-�      �     ���     �� �    � H
B ��          * �   �     ?*� !� 9L*� !� ՙ *� !� ն �� � �L+� +� ��� *� !� ����   �      2 3 	4 5 $7 =9�     	 4 $    ?��  �    � $ I &�   bc �  �     �*� 
*� �� �*� �l�L>6*� �� B*`� �� �=� 	Ą � +��T� :� 9Y��� 9������Y+�:�"Y�$:�':�:� 9Y��� 9�  $ H K � o � � � �   N   C D G I K $M 4O :P @S HV KT MU ]K cY o\ z] �_ �` �a�   p  4    M ��  ]     H�   z 
  �  $  � �    �      �   ~   o ' ! �   k �   &"   � $  &"  � 
  &"   ��   &"  �   &"   �    &"   ��     9�        U V �  r     ��,Y�.L�/Y+�1M,*�4,�7� M� 9Y�,�� 9�+�:M� �Y,�h� �N6,�� ?,3� ,3� ->� �W-,3� ,3 `� ,3�@� �W����-� ��     � �   >   p s t u x v w -z 2{ >} H~ X `� ~} ���   H   	#$   �  A C�     �  $    �%&  2 W'  > K(� �   = �   ,  �� " �R ��   ," �  �� �     9�        � � �  +    P*� !� *� !�*� �Y=�1�   �          E   M   U   a   m   u   }   �   �   �   �   �   �   �*� �D�*� �H�� _Y*� �K�� cY*� �M�*� �N�*� �Q�*� �T�*� �W� �� � e� sY*� � ��Z�*� �**� +� �]�*� �`�� yY*� �d�*� �
�N-�e�*� k�m:2�q2�w�� 5N-� �Y� �{� �*� � �� ��}-�N� AY*� ��-��� ����Y*� ���   c � d k � l w � x � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  c0� d k0� l w0� x �0� � �0� � �0� � �0� � �0� � �0� � �0� � �0� � �0� � �0� �0� �   v   � � � � \� d� l� x� �� �� �� �� �� �� �� �� �� �� �� �� �� ����.�0�1�D��   H  � )*   + 2  , 1 �-   P��    P�  >�  �    � OB �]��     ��         �  ]    ~+.��>�l+`��:+� ��:::6,�� 9� ,2��� ,2��:� ,2� &� ,2� &:������Y�Y�SY&SSY�Y&SY�SSY�Y�SSY�Y&SSY�SY�Y�SY&SSY�Y�SS::		�6
6
� �	2:��:� :� t�� :6�� U2�� S� :2&� S� &��� 2�� ��Y�����S����� Y������k��Y+���  � � �� �   z   � � � �  � #� &� 0� ?� H� W� `� f� �� �� �� �� �� �����& 0:S]�co�u
�   �  ) =�   � ./  � 01 	 Z2   � q./  i3�  � �4�  `5    U)*  #R67  &O	   � �89   ~��    ~     ~�  w:  �   � � ) 	  &; &� &  � � v   &; &� &<<  �    &; &� &<<� �� � 
;	� � �    &;  �     ��   	      �� �   K     *� 	��� ��Y*���   �      �       67  �    
H��   6    - � �   �     (� �L*� !� 	K� +�*� +�� 
*� � �*� �   �          ! # �       (��    $  2 �   
 �   - . �   �     -<� �N*�W:=-�� -2��� <� 	�����   �   & 	  ( * + - .  / "1 %- +5�   4    -�     +�    �    '= 2   !>  �    �   & &  �   �   �� �   �     '+� � !+� M,� *� � �,� *� ����   �      : ; = > A %C�       ?�    '��     ' # $ �    �  � �    #  @    A   � � �   >     �*� `*� ��`x�   �      H�       ��  @    A    	B �   O     *+,� �   �      ��   *    ��     C     D     EF   	G �   O     *,� �   �      ��   *    ��     C     D     EF HI �   /     *� �   �      ��       C�  JK �   /     *� �   �      ��       C�  LM �   E     *+,� �   �      ��        C�     D     E� �     �  	N �   D     *+� �   �      ��        ��     C $    DF OP �   /     *� �   �      ��       C�   Q  �   �      u���� � ��� &Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY�SY�SY�S� /�   �   
   � ��    @ R   ST   *  �U   V 
 ��W ��X Y    