����   4]  ?org/netbeans/modules/openide/filesystems/declmime/DefaultParser  Borg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl	    	 
 Morg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$DescParser template @[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement;
     <init> '(Lorg/openide/filesystems/FileObject;)V	     
file_state S	     	component DLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent;	     componentDelimiter Ljava/lang/String;	     patternLevel I	    !  state # MIME-resolver
 % & ' ( ) java/lang/String equals (Ljava/lang/Object;)Z
  + , - error ()V / file 1 =org/netbeans/modules/openide/filesystems/declmime/FileElement
 0 3  -
 5 6 7 8 9 java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V ; ext = name ? @ A B C org/xml/sax/Attributes getValue &(Ljava/lang/String;)Ljava/lang/String;	 0 E F G 	fileCheck DLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;
 I J K L M Borg/netbeans/modules/openide/filesystems/declmime/FileElement$Type addExt (Ljava/lang/String;)V O magic Q hex S mask
 % U V W toCharArray ()[C
 Y Z [ \ ] org/openide/xml/XMLUtil fromHex ([CII)[B
 I _ ` a setMagic ([B[B)Z c java/io/IOException e mime
 I g h M addMIME j fattr l text
 I n o p addAttr '(Ljava/lang/String;Ljava/lang/String;)V r pattern t value v range
 x y z { | java/lang/Integer valueOf '(Ljava/lang/String;)Ljava/lang/Integer;
 x ~  � intValue ()I	  � � � $assertionsDisabled Z
  � � � 
access$900 ()Ljava/util/Set;	  � � � fo $Lorg/openide/filesystems/FileObject;
 � � � � � "org/openide/filesystems/FileObject getPath ()Ljava/lang/String; � � � � ) java/util/Set add � java/lang/AssertionError � java/lang/StringBuilder
 � 3 � MIME resolver 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; �  should not exceed 
 � � � � (I)Ljava/lang/StringBuilder; � % bytes limit for files content check.
 � � � � toString
 � �  � (Ljava/lang/Object;)V � Norg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FilePattern � 
ignorecase
 � � � { � java/lang/Boolean '(Ljava/lang/String;)Ljava/lang/Boolean;
 � � � � booleanValue ()Z	  � � � patternLevelSet Ljava/util/Set; � java/util/HashSet
 � 3
 x � { � (I)Ljava/lang/Integer; � 4Second pattern element on the same level not allowed
  � , M
 I � � � addInnerPattern (Ljava/lang/String;IZ)V
 I � � � 
addPattern � 	substring � Korg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FileName
 I � � � addName (Ljava/lang/String;ZZ)V � resolver
 I � � � isValid
 0 � � M setMIME � exit
 I � � - setExit � Unexpected element:   � xml-rule � Borg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent
 � 3
  � � � enterComponent Y(Ljava/lang/String;Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent;)V
 � � � � startElement Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
  � � � 
getLocator ()Lorg/xml/sax/Locator;
 � � � � setDocumentLocator (Lorg/xml/sax/Locator;)V	 0 �   rule
 � 
endElement 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
 � 
characters ([CII)V

 � java/lang/Class desiredAssertionStatus 	Signature $Ljava/util/Set<Ljava/lang/Integer;>; IN_ROOT ConstantValue    IN_FILE    IN_RESOLVER    IN_COMPONENT    
IN_PATTERN    IN_EXIT ROOT FILE MIME EXT RESOLVER FATTR NAME PATTERN VALUE RANGE IGNORE_CASE 	SUBSTRING MAGIC HEX MASK TEXT EXIT XML_RULE_COMPONENT Code LineNumberTable LocalVariableTable this OLorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$DescParser; MethodParameters n s 
mask_chars [C [B ioex Ljava/io/IOException; chars 
mask_bytes val 
ignoreCase ignoreCaseAttr substringAttr reason namespaceURI 	localName qName atts Lorg/xml/sax/Attributes; StackMapTable78 
ExceptionsL org/xml/sax/SAXException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; data offset len 
access$800 �(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$DescParser;)[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement; x0 <clinit> 
SourceFile MIMEResolverImpl.java InnerClasses 
DescParser Type FilePattern FileName         	 
                         � �                                               "       .       d       :        � !      i "      < #      q $      s %      u &      � '      � (      N )      P *      R +      k ,      � -      � � �        .   k     *+� *� *� *� *� *� �   /      G 8 
; > ? A H0       12      � � 3    �    � � .  #  
  �*� �     �          $   9   �  �  �"-� $� *� **� ��.-� $� *� **� � *� 0Y� 0Y� 2S� � 0*� �`� 0:*� *� �� 4� 0Y� 2S*� *� �C*� � *� *:-� $� (<� > :� *� **� 2� D� H�	N-� $� qP� > :� *� *R� > :� T::� � T:			�� X:�� X:	*� 2� D	� ^� *� *� 	:	*� *��d-� $� (<� > :� *� **� 2� D� f�di-� $� 5<� > :� *� *k� > :*� 2� D� m�)q-� $�s� > :� *� *u� > � w� }6� �� N�� F� �*� �� �� � � 4� �Y� �Y� ��� �*� �� �� ��� ��� ��� �� �� ��6�� > :� � �� �6*� � C*� �� *� �Y� õ �*� �*� � Ĺ � � 	*Ƕ �*� 2� D� ˧ *� 2� D� �*� *Y� `� �!<-� $� f<� > :� *� *ҹ > :6� � �� �66�� > :		� 	� �� �6*� 2� D� ֧ ��-� $� =*� 2� D� ܚ *� *d� > :� *� **� 2� �*� � r�-� $� *� 2� D� �*� � U� �Y� �� �-� �� �:*� ɧ 7�-� $� .*� �Y� �� �*� +,-� � *� +,-� � � @C b /  b X  m (q 5r :s =v J{ Q| f~ r �� �� �� �� �� �� �� �� �� �� �� �������)�<�@�C�E�I�U�i�z���������������4�7�B�G�Q�Y�`�k�~����������������������������
��&�)�2�A�E�Y�d�i�l�u��������������������0    r !4 
  � 5   67 	)  O8 	E 9: 	 � L S   E;7  B<8  � c5  ` 5  � =  � '5  � � v  7 �> � B {?  � �5  � D@  � A � � � /> �  $?  	� X5  P 5  � A    �12    �B    �C    �D    �EF G   � '(,�  %� �  %� + %HI!B b� � �  %� �  %� �  %� a�  %�    % % % ?  �  %�  %�  %�    % % % ?  �  %� $J    K3   B  C  D  E  M    N    � � .   t     "*,� *+� ,*� �� �*� 2,� �*� �   /        
   !0        "12     " =     "   3   	 =       .       �*� �      �            S   d.-� $� *� *� q-� $� Q*Y� dZ� � C*� �*� � 6�-� $� -*� � %*� +,-�*� -� $� *� *� � ��   /   >      ) . 3 <  J! O" W( `) h. r/ }0 �1 �50   *    �12     �B     �C     �D  G     #!J    K3   B  C  D  M    N    .   h     *� � *� +��   /   
   9 :0   *    12     O7    P     Q  G    J    K3   O  P  Q  M    N  RS .   /     *� �   /      60       T2   U - .   4      �	� � � ��   /      6G    @ V   WX   "   Y 
 I 0Z  � I[   � I\  