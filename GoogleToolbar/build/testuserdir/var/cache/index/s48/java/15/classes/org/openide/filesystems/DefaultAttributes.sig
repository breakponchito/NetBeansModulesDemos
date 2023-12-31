����   4X  )org/openide/filesystems/DefaultAttributes
      java/lang/Object <init> ()V	  
   info 1Lorg/openide/filesystems/AbstractFileSystem$Info;	     change 3Lorg/openide/filesystems/AbstractFileSystem$Change;	     list 1Lorg/openide/filesystems/AbstractFileSystem$List;	     ATTR_NAME_EXT_XML Ljava/lang/String;	     fileName
     �(Lorg/openide/filesystems/AbstractFileSystem$Info;Lorg/openide/filesystems/AbstractFileSystem$Change;Lorg/openide/filesystems/AbstractFileSystem$List;)V
   ! " # $ java/io/ObjectInputStream 
readFields &()Ljava/io/ObjectInputStream$GetField; 
 ' ( ) * + *org/openide/filesystems/AbstractFileSystem readImpl J(Ljava/lang/String;Ljava/io/ObjectInputStream$GetField;)Ljava/lang/Object;   / 1org/openide/filesystems/AbstractFileSystem$Change 1 /org/openide/filesystems/AbstractFileSystem$Info 3 /org/openide/filesystems/AbstractFileSystem$List 2 5 6 7 children '(Ljava/lang/String;)[Ljava/lang/String;
 9 : ; < = org/openide/util/BaseUtilities getOperatingSystem ()I ? 	_nbattrs.
 A B C D E java/lang/String equalsIgnoreCase (Ljava/lang/String;)Z G java/lang/StringBuilder
 F 
 F J K L append -(Ljava/lang/String;)Ljava/lang/StringBuilder; N /
 F P Q R toString ()Ljava/lang/String;
  T U V 
deleteFile (Ljava/lang/String;)V X java/io/IOException
  Z [ R getFileName
 A ] ^ _ equals (Ljava/lang/Object;)Z a filesystem.attributes . c d V delete f java/io/File h 	/.nbattrs
 e j  V
 e l m n exists ()Z	  p q r cache Ljava/util/Map;
  t u V copyVMSAttrFile w ~ . y z V 
createData | 
/_nbattrs. 0 ~  � inputStream )(Ljava/lang/String;)Ljava/io/InputStream; 0 � � � outputStream *(Ljava/lang/String;)Ljava/io/OutputStream;
 � � � � � java/io/InputStream read ([BII)I
 � � � � � java/io/OutputStream write ([BII)V
 � � �  close
 � �
  � � � split ((Ljava/lang/String;[Ljava/lang/String;)V � readOnlyAttrs 0 � � E readOnly	 � � � � � java/lang/Boolean TRUE Ljava/lang/Boolean;	 � � � � FALSE
  � � � 	loadTable E(Ljava/lang/String;)Lorg/openide/filesystems/DefaultAttributes$Table;
 � � � � � /org/openide/filesystems/DefaultAttributes$Table getAttr 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
 � � � � 
access$000 4(Lorg/openide/filesystems/DefaultAttributes$Table;)I
 � � � � setAttr 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
 � � � � � 'org/openide/filesystems/XMLMapAttr$Attr distinguishObject (Ljava/lang/Object;)I � SERIALVALUE
 � � � � isValid (Ljava/lang/String;)I
  P
 � � � � � "org/openide/filesystems/XMLMapAttr createAttribute >(ILjava/lang/String;)Lorg/openide/filesystems/XMLMapAttr$Attr;
  � � � 	saveTable F(Ljava/lang/String;Lorg/openide/filesystems/DefaultAttributes$Table;)V
 � � � � attrs +(Ljava/lang/String;)Ljava/util/Enumeration;
 � � � � remove &(Ljava/lang/Object;)Ljava/lang/Object; � java/util/Map � � � � entrySet ()Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � n java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; � java/util/Map$Entry	 � � � � �  org/openide/filesystems/FileUtil transientAttributes Ljava/util/Set; � � � � getKey � � � _ contains � � � 
 � � �  put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 $org/openide/filesystems/ExternalUtil 	exception (Ljava/lang/Exception;)V java/util/HashMap

  (I)V
 A lastIndexOf (I)I  
 A 	substring (II)Ljava/lang/String;
 A = length
 A (I)Ljava/lang/String;
 F K (C)Ljava/lang/StringBuilder; 0 ! E folder
 �#$ = size& java/io/PrintWriter( java/io/OutputStreamWriter* java/io/BufferedOutputStream
), - (Ljava/io/OutputStream;)V/ UTF8
'1 2 +(Ljava/io/OutputStream;Ljava/lang/String;)V
%4 5 (Ljava/io/Writer;)V
 �789 
writeToXML (Ljava/io/PrintWriter;)V
%;<  flush
% �
 W?@A getCause ()Ljava/lang/Throwable;
 WCDE 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;	GHIJK "org/openide/filesystems/FileSystem LOG Ljava/util/logging/Logger;	MNOPQ java/util/logging/Level INFO Ljava/util/logging/Level;S Cannot delete 
UVWXY java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V .[\] rename '(Ljava/lang/String;Ljava/lang/String;)V_ Cannot rename a  to 
 cde getCache ()Ljava/util/Map; �gh � getj java/lang/ref/SoftReference
ilh �
 no � load
 �qrs attach @(Ljava/lang/String;Lorg/openide/filesystems/DefaultAttributes;)V
iu v (Ljava/lang/Object;)V � � 0y$z (Ljava/lang/String;)J
 | �} Z(Ljava/io/InputStream;Ljava/lang/String;)Lorg/openide/filesystems/DefaultAttributes$Table; java/io/FileNotFoundException
 � 
 A�� E endsWith� java/io/PushbackInputStream
�� � (Ljava/io/InputStream;I)V
 ��� isSerialized  (Ljava/io/PushbackInputStream;)Z� java/io/BufferedInputStream
�� � (Ljava/io/InputStream;)V� 'org/openide/util/io/NbObjectInputStream
��
  �� � 
readObject
 ���� readFromXML (Ljava/io/InputStream;Z)V� java/lang/Exception� EXC_DefAttrReadErr
����� org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;� : 
 W j
��� copyAnnotation A(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
� �
���� unread ([B)V � � 0�� V lock 0�� V unlock� ;org.openide.filesystems.DefaultAttributes.ATTR_NAME_EXT_XML� .nbattrs
����� java/lang/System getProperty 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;� /org/openide/filesystems/AbstractFileSystem$Attr serialVersionUID J ConstantValue�}�?[�� 	ATTR_NAME� 
filesystem 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; ATTR_EXT� 
attributes ATTR_NAME_EXT READONLY_ATTRIBUTES 	PUBLIC_ID� *-//NetBeans//DTD DefaultAttributes 1.0//EN DTD_PATH� &org/openide/filesystems/attributes.dtd 	Signature sLjava/util/Map<Ljava/lang/String;Ljava/lang/ref/SoftReference<Lorg/openide/filesystems/DefaultAttributes$Table;>;>; Code LineNumberTable LocalVariableTable this +Lorg/openide/filesystems/DefaultAttributes; MethodParameters �(Lorg/openide/filesystems/AbstractFileSystem$Info;Lorg/openide/filesystems/AbstractFileSystem$Change;Lorg/openide/filesystems/AbstractFileSystem$List;Ljava/lang/String;)V (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; fields $Ljava/io/ObjectInputStream$GetField; o1 Ljava/lang/Object; o2 o3 
Exceptions�  java/lang/ClassNotFoundException fp Ljava/io/File; safeNbAttrsCopy i I f arr [Ljava/lang/String; lookUpIndex StackMapTable� buf [B readi is Ljava/io/InputStream; os Ljava/io/OutputStream;� java/lang/Throwable readAttribute t 1Lorg/openide/filesystems/DefaultAttributes$Table; name attrName writeAttribute version objType t2 prev value ?(Ljava/lang/String;)Ljava/util/Enumeration<Ljava/lang/String;>; renameAttributes pair Ljava/util/Map$Entry; v it Ljava/util/Iterator; e Ljava/io/IOException; oldName newName LocalVariableTypeTable +Ljava/util/Iterator<Ljava/util/Map$Entry;>; deleteAttributes u()Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/SoftReference<Lorg/openide/filesystems/DefaultAttributes$Table;>;>; ioe iex2 ex counter iex map fullName safeName pw Ljava/io/PrintWriter; ioexc m r Ljava/lang/ref/SoftReference; PLjava/lang/ref/SoftReference<Lorg/openide/filesystems/DefaultAttributes$Table;>; fis Ljava/io/FileNotFoundException; acceptNames Ljava/io/BufferedInputStream; o bis 	summaryEx Ljava/lang/Exception; 
folderName retTable pbStream Ljava/io/PushbackInputStream; Z serialPattern [I checkedArray unsignedConv< removeTable 
acceptName <clinit> 
SourceFile DefaultAttributes.java #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; 	unchecked InnerClasses Info Change ListM "java/io/ObjectInputStream$GetField GetField Table Attr EntryS 5org/openide/filesystems/DefaultAttributes$InnerParser InnerParserV 8org/openide/filesystems/DefaultAttributes$ElementHandler ElementHandler !   � 2  �� �   � �  �   ��    �    �   �  �   ��    �    �   �  �    `�    �    �        �  �    � �  �   � �  �   �                     � q r �   �     �   w     *� *+� 	*,� *-� *� � �   �       �  � 	 �  �  �  ��   *    ��                    �              � �   h     *+,-� *� �   �       �  �  ��   4    ��                          �                �� �   �     7+� M%,� &N,,� &:-,� &:*-� .� *� 0� 	*� 2� �   �   "    �  �  �  �  � $ � - � 6 ��   >    7��     7��   2��   +��   #��   �� �    � W�   �    6 7 �  �    |*� +� 4 M>,� �,�6� �� 8@ � A,2� ;+� 7,2>� @� ,*� FY� H+� IM� I,2� I� O� S� :,*� YS*� Y,2� \� � ,2� \� `,2� \� /*� � FY� H+� IM� I,2� I� O� b � :� A�6� �� 8@ � U,2� N+� J,2>� @� >� eY� FY� H+� Ig� I� O� i:� k� *� o*+� s� :,*� YS� FY� H*� Y� Iv� I� O:*� Y,2� \� (`,2� \� � ,2� \� ,2� \� ,S�� � 	���@,�  ; X [ W � � � W � W �   � $   �  �  �  �  �  �  � 0 � ; � X � [ � ] � d � � � � � � � � � � � � � � � � � � � � � � �12^	diqt �z�   R  � �� 1 C�   � ���   |��    |�   q��  o��  e$� �   @ � �� G   A�  W#d W� � TB W� J A� � �   �    u V �  �     �MN*� � FY� H+� IM� I*� Y� I� O� x *� 	� FY� H+� I{� I� O� } M*� 	� FY� H+� IM� I*� Y� I� O� � N �:, � �Y6� -� ����,� �M,� ,� �-� 4-� �� -:,� ,� �-� -� �� :,� ,� �-� -� ���   � � W  � �   � � �   � � �   �   f   ! " % '& D' h) o, - �0 �3 �6 �7 �: �; �4 �6 �7 �: �; �6 �7 �: �; �= �>�   >  o "��  | ��    ���     ��    ���   �  �   * 	� o � �� � J W	J� 	  � �     W�   �    � �  !     U� A:+� �,�� \� *� 	2� � � 	� �� � ��*Y:�*2� �Nç :��-2,� ��  4 @ C   C H C   �   "   T U X Y /\ 4_ =` Kk�   >  =     U��     U     U	   K 
   O�� �   > � + �B � �    A A �  �    A A ��  �   	  	   
 � �  �     �� A:+� �*Y:�*2� �:� �6ç :	�	�2,� �:-� �*Y:	�*2� �:

� ]
� �� S-� 2,� �� 3-� �Y6�� �� 2,-� �� 2,-� Ÿ ƶ �*2� �	ñ	ç :	����K   % (   ( - (   H � �   � � �   � � �   �   Z   z { � � � "� 0� <� B� C� H� R� c� g� u� v� �� �� �� �� �� ���   z  " �     | )�  R a 
 0 ��  0 �  < ��    ���     �     �	     ��   ��� �   � 
�  ��  	  A A  �    �    A A  � �  �  � 1  ��    A A � �   �  �    A A  � �   �  � E�    A A  �  �     W�     	     !� � �   n     � AM+,� �*,2� �N-,2� а   �      � � 
� ��   *    ��         ��    �     �    !] �  �     �� AN+-� �*-2� �:-2� �� �:� �,-� �� � � � :� � � +� � � �:� �� � � � � 
� � ���-2� �W*-2� ̧ N-��    % � W &  � W �   N   � � 
� �  � %� &� +� 9� C� O� a� h� k� v� � �� �� ���   \ 	 O    z��   l    _ r  9 F  �     ���     �     �       9 F �   * � &� � ��  �.�    A A  W�   	     ! V �   �     -� AM+,� �*,2� �N-,2� �� *,2-� ̧ M,��    $ ' W �   & 	  � � 
� � � $� '� (� ,��   4   ��     (     -��     -  �    $B W�      de �   T     *� o� *�Y�	� o*� o�   �      � � ��       ��  �    �    
 � � �   �     =*/�=� +S+*S�+*�S�*�� +S� +*�S�   �   * 
     	     + 4 <�        =      =��   6�� �    � �   	  �    � � �      �� FY� H+�� 	� � FY� H+� I/�� O� I*� Y� I� ON� FY� H-� Iv� I� O:*� 	-� � ,�"� �*� -� x � ,�"� 	*-� S�::�%Y�'Y�)Y*� 	� � �+.�0�3:,�6�:� �=� $*� S� :�>� �BW��6*-� S� $:�F�L� FY� HR� I-� I� O�T*� -�Z � ?:�F�L� FY� H^� I-� I`� I� I� O�T
� ������_::� �=� $*� S� :�>� �BW��6*-� S� $:�F�L� FY� HR� I-� I� O�T*� -�Z � ?:�F�L� FY� H^� I-� I`� I� I� O�T
� ������ �:	� �=� $*� S� :

�>� 
�BW
��6
*-� S� $:�F�L� FY� HR� I-� I� O�T*� -�Z � ?:�F�L� FY� H^� I-� I`� I� I� O�T

� ��
���	��  � � � W � � � W W  �Y Wntw W��� W��� W  �	  Y_	   # W>CF Wgsv W		   �  Z V   5" J$ W% ^' _+ l- s. x0 y4 |5 8 �9 �: �> �? �B �D �J �E �F �G �I �K �M �O �U �P �TWXYZF[M\PMVaY;[<_>d?iBnDtJwEyF�G�I�K�M�O�U�P�T�W�X�Y�Z�[�\ Ma	>?BD J#E%F-G5I8K;M>OCUFPHTgWsXvYxZ�[�\�M�a�b�   �  �   �    4!  � t"� [ # y  �   � 4! � t"� %  
H   x 4! > t"� 
  ���    �    �$  5�%   Jl&   |:'(  7) �   � )T F�    A �  F A� 7 A A� ?% WM W�  W� � G W N W5� B WM W�  W� � G W N W5� B�   M W�  W� � G W N W5� � �     W�   	  $    � � �   �     A*�b+�f �iM,� ,�k� �N-� -�*+�mN-+*�p*�b+�iY-�t�w W-�   �   & 	  j l m o p  u &v ,x ?z�   4   *    A��     A    3+,  &        3+- �    �  i�      o � �  �  	   �� AY� FY� H+�� 	� � FY� H+� I/�� O� I*� Y� I� OSY� FY� H+�� 	� � FY� H+� I/�� O� I`� I� OSM>,�� U*� 	,2�x 	�� >*� 	,2� } :,2�{:� �� :�:� �� :�:������ �Y���  � � � W � � �   � � � W � � �   � � �~ � � �~ �   R   � � D� q� y� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���   >  � &.�  � !/  s X��    ���     �   q b0� �   � �    A �� F�    A �� F A� #   A �� F�    A �� F A� �� 6   A� � �  W�    A� � � 	   A� �    W�    A� ~� �       �} �  �     �� �Y��MN6+`��� ��Y*��N-��6� 4-� 0��Y-��:��Y��:��:� �� 	� ��� %-� ��Y-��� ��Y*��:,��,�� ::� WY� FY� H���� I�� I+� I� O��:��W�� �Y���   X �� Y } �� �   b   � � 
� � �  � &� /� 9� D� K� S� Y� \� k� u� |� ~� �� �� �� �� �� ���   p  9  .1  D ��  K 2�  u 	31  � 4  � 55    ���     �6    �7  
 �89   ��: �    � & ��2G�
B�6�   	�  6   �� �   �     `�
Y �OY �OYOYOL+��M>*,,���W*,��6,�� *,3� ,3 `� ,3>+.� ������   �   .   � � � � (� -� 7� N� V� X� ^��   4  0 .��    `89    H;<   C=�   A>� �    � 0 �?  C
� �     W�   8    @ V �   D     *�b+�� W�   �   
   � ��       ��       �      A E �   O     *`��� *� ��� � �   �      ��          �    @�       [ R �   N     *� � 
*� � *� �   �      � � ��       ��  �      U V �   �     RM*� 	+�� *� 	+� � M,� �M*� +� b ,� ,� �*� 	+�� � N,� ,� �*� 	+�� -��   ' <   �   :   � � � �   ' + / 9 < A E O Q�        R��     R    P  �    � / �L� � �     W�      B  �   %      ����� �   �       r C   DE    F [ sGH   R 
 0 'I	 . 'J	 2 'K	L  N	 � O  � �P  � �Q	� 'P	R T U W