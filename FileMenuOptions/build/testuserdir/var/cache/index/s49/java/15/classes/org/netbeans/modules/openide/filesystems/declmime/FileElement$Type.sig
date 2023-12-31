����   4y
      Borg/netbeans/modules/openide/filesystems/declmime/FileElement$Type readExternal (Ljava/io/DataInput;)V
   	 
 writeExternal (Ljava/io/DataOutput;)V
     accept '(Lorg/openide/filesystems/FileObject;)Z	     exit Z	     names Ljava/util/List;	     exts [Ljava/lang/String;
       java/lang/Object <init> ()V	  " #  mimes	  % &  fatts	  ( )  patterns	  + , - magic [B
 / 0 1 2 3 6org/netbeans/modules/openide/filesystems/declmime/Util writeStrings *(Ljava/io/DataOutput;[Ljava/lang/String;)V	  5 6  vals 8 9 : ; < java/io/DataOutput writeBoolean (Z)V
 / > ? @ 
writeBytes (Ljava/io/DataOutput;[B)V	  B C - mask 8 E F G writeInt (I)V I J K L M java/util/List size ()I I O P Q iterator ()Ljava/util/Iterator; S T U V W java/util/Iterator hasNext ()Z S Y Z [ next ()Ljava/lang/Object; ] Norg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FilePattern
 \  ` Korg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FileName
 _ 
 / c d e readStrings ((Ljava/io/DataInput;)[Ljava/lang/String; g h i j W java/io/DataInput readBoolean
 / l m n 	readBytes (Ljava/io/DataInput;)[B g p q M readInt s java/util/ArrayList
 r u  G
 \ w  x Z(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;Ljava/io/DataInput;)V I z { | add (Ljava/lang/Object;)Z
 _ w  java/lang/StringBuffer
 ~  � fast-check(
 ~ � � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � exts: � ,  � mimes: � file-attributes: � =' � ',  � 	patterns:
 \ � � � toString ()Ljava/lang/String; � names:
 _ � � magic:
 � � � � � org/openide/xml/XMLUtil toHex ([BII)Ljava/lang/String; � mask:
 ~ � � � (C)Ljava/lang/StringBuffer;
 ~ �
 / � � � 	addString :([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
 � � � � � java/lang/String toLowerCase
 r 
 \ �  � [(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;Ljava/lang/String;IZ)V	  � � � lastAddedPattern PLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FilePattern;
 \ � � � setInner S(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FilePattern;)V
 _ �  � [(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;Ljava/lang/String;ZZ)V
 � � � � �  org/openide/filesystems/FileUtil getMIMEType &(Ljava/lang/String;)Ljava/lang/String;
 � � � � W "org/openide/filesystems/FileObject canRead
 � � � � W org/openide/util/BaseUtilities 	isWindows � java/io/FileNotFoundException
 � � � W isValid
 � � � � getName � ntuser
 � � � � contains (Ljava/lang/CharSequence;)Z
 � � � � getExt �  	 � � � �  Borg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl CASE_INSENSITIVE
 / � � � )([Ljava/lang/String;Ljava/lang/String;Z)Z
  �
 � � � � indexOf (I)I
 � � � � 	substring (II)Ljava/lang/String;
 � � � | equals
 � � � M length
 � � � � charAt (I)C
 � endsWith (Ljava/lang/String;)Z
 � getInputStream ()Ljava/io/InputStream;
	
 java/io/InputStream read ([B)I
	   close java/io/IOException
  handleIOException <(Lorg/openide/filesystems/FileObject;Ljava/io/IOException;)V
 � getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
  �
 \  match
 _ EMPTY_EXTENSION Ljava/lang/String; ConstantValue 	Signature bLjava/util/List<Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FilePattern;>; _Ljava/util/List<Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FileName;>; Code LineNumberTable LocalVariableTable this DLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type; StackMapTable p n MLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FileName; out Ljava/io/DataOutput; 
Exceptions MethodParameters i I in Ljava/io/DataInput; patternsSize 	namesSize pattern name buf Ljava/lang/StringBuffer; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; addExt (Ljava/lang/String;)V ext addMIME mime addAttr '(Ljava/lang/String;Ljava/lang/String;)V value 
addPattern (Ljava/lang/String;IZ)V range 
ignoreCase addInnerPattern inner addName (Ljava/lang/String;ZZ)V setMagic ([B[B)Z setExit 	extension Ljava/lang/SuppressWarnings; deprecation fo $Lorg/openide/filesystems/FileObject; ioe Ljava/io/IOException; s l openex header Ljava/io/InputStream; attr Ljava/lang/Object; matched -c java/lang/Throwable 
access$000 Y(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;)[Ljava/lang/String; x0 
access$100 V(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;)Ljava/util/List; 
access$200 G(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;)Z 
access$300 k(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;Lorg/openide/filesystems/FileObject;)Z x1 
access$400 [(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;Ljava/io/DataOutput;)V 
access$500 
SourceFile FileElement.java InnerClassesu =org/netbeans/modules/openide/filesystems/declmime/FileElement Type FilePattern FileName         ! "    �       #     &     6          , -    C -    )  #   $    #   % � � �         &   /     *� �   '       �(       )*    � W &   f     0*� � &*� !� *� $� *� '� *� � 
*� *� � �   '       �(       0)*  +    *@  	 
 &  w     �+*� � .+*� !� .+*� $� .+*� 4� .+*� � 7 +*� *� =+*� A� =*� '� +� D � 7+*� '� H � D *� '� N M,� R � ,� X � \N-+� ^���*� � +� D � 7+*� � H � D *� � N M,� R � ,� X � _N-+� a���   '   R    �  �  �  �   � * � 2 � : � A � K � Z � w � | �  � � � � � � � � � � � � �(   *  w , �  � -.    �)*     �/0 +    � K�  S� �  S� 1    2   /      &  k     �*+� b� *+� b� !*+� b� $*+� b� 4*+� f � *+� k� **+� k� A+� o =� /*� rY� t� '>� *� '� \Y*+� v� y W����+� o >� 1*� rY� t� 6� *� � _Y*+� }� y W����   '   R    �  �  �  �   � * � 2 � : � A � E � Q � X � k � q � x � | � � � � � � � � �(   >  S 34  � 34    �)*     �56  A j74  x 384 +    � S� � � 1    2   5    � � &  n    p<� ~Y� �M,�� �W*� � +,�� �W<*� �� ,*� 2� ��� �W����*� !� +,�� �W<*� !�� ,*� !2� ��� �W����*� $� 9,�� �W<*� $�� ',*� $2� ��� �*� 42� ��� �W����*� '� :,�� �W*� '� N N-� R �  -� X � \:,� �� ��� �W���*� � :,�� �W*� � N N-� R �  -� X � _:,� �� ��� �W���*� *� ,�� �*� **� *�� �� �W*� A� ,�� �*� A*� A�� �� �W,)� �W,� ��   '   � "  � � 
� � � � *� :� @� G� N� Y� i� o� v� }� �� �� �� �� �� �� �� �� �� ���%�(�/�F�M�d�k�(   4  � 9 �  :.   p)*   n34  
f;< +   " � ! ~,�  S� %�  S� %=    >   ?@ &   E     **� +� �� �   '   
   � �(       )*     A! 2   A   B@ &   H     **� !+� �� �� !�   '   
   � �(       )*     C! 2   C   DE &   _     **� $+� �� $**� 4,� �� 4�   '      � � �(        )*     :!    F! 2   	:  F   GH &   �     0*� '� *� rY� �� '*� \Y*+� �� �*� '*� �� y W�   '      � � � !� /�(   *    0)*     0F!    0I4    0J  +    2   F  I  J   KH &   {     � \Y*+� �:*� �� �*� ��   '      � � � �(   4    )*     F!    I4    J    L � 2   F  I  J   MN &   �     (*� � *� rY� �� *� � _Y*+� �� y W�   '      � � � '�(   *    ()*     (:!    ( �     (J  +    2   :   �  J   OP &   �     >+� �,� +�,�� �*+� *,� #*,� A>,�� *� *\3,3~�T�����   '   & 	  � � � � � !� )� 6� <�(   *  # 34    >)*     > , -    > C - +    � � 2   	 ,   C   Q   &   4     *� �   '   
   � �(       )*   
 � � &   /     *� °   '      �(       R!  2   R  =    S F[ sT 
 &   w     -*� ș (� ͙  +� ҙ *� ԙ *� ׶ �ڶ ܚ +��   '      � � *� ,(       -UV     -WX +    *1    2   	U  W      &  �  	  **� � +� �M,� �M*� ,� � � �*� !� �=+� � �N-� �-;� �6� -� �N-� �N*� !�d6� L-*� !2� �� =� 9*� !2� �� &*� !2� �+� -*� !2� � =� 	������ �*� *� �*� *��MN+�N-,�6� 6-� -�� :�-� -�� 5:� 0:+�6-� -�� :�:-� -�� :�6*� *�� /*� A� ,\3*� A3~�T*� *3,3� �����*� $� A*� $�d=� 5+*� $2�N-� -�*� 42� �� *� 42� �������*� '� E=*� '� N N-� R � -� X � \:+�� =� ���� �� M+,��*� � :=*� � N N-� R � -� X � _:+�� =� ���� �� 	 � � � � � � � � �	 � �   �    ��� '  f Y      
 ! # * , 4 : B O T b p r u" �# �$ � �' �, �- �1 �3 �4 �5 �6 �= �> �B �@ �6 �= �> �B �@ �C �8 �9 �:=>	B@:<=>B@ C#G0H7IFKTLVG\ScToUzV~W�Y�T�_�a�b�c�e�f�h�i�j�o�l�m�n�s�t�uvxy{"|&}(�(   �   A!  ] N34  , �   4 }Y!  B oZ4  � 4  � [X & 634  � �\ -  � �5] z !^_ k 634 � 9 � � 5`  � WX  :. � 5`    *)*    *UV +   � *�  �� �  �� � /� � � ,   �a	  B� BD� B�    �a	 b� 	   �a	   b  B�    �a	  � � � � - � � �  S!� � B�  S!� � 1    2   U  de &   /     *� �   '       �(       f*  gh &   /     *� �   '       �(       f*  ij &   /     *� �   '       �(       f*  kl &   :     *+� �   '       �(       f*     mV 1    no &   :     *+� �   '       �(       f*     m0 1    p x &   :     *+� �   '       �(       f*     m6 1     q   rs     tv  \ w   _ x  