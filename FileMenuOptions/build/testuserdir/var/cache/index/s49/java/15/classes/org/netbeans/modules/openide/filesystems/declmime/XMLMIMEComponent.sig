����   4 �
      ?org/netbeans/modules/openide/filesystems/declmime/DefaultParser <init> ()V  Borg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent	  
   
parseState S  Horg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell
  	     template JLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;
     readExternal (Ljava/io/DataInput;)V
      java/lang/String isEmpty ()Z
     ! 
access$000 _(Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;Ljava/lang/String;)V # $ % & ' java/util/List iterator ()Ljava/util/Iterator; ) * + ,  java/util/Iterator hasNext ) . / 0 next ()Ljava/lang/Object;
  2 3 ! 
access$100
  5 6 ! 
access$200	  8 9 : local XLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$LocalSniffingParser;
 < = > ? @ Vorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$LocalSniffingParser 	getParser U()Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser;
 B C D E F Qorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser sniff p(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;
  H I J match M(Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;)Z
  L M N toString ()Ljava/lang/String; P xml-rule
  R S T equals (Ljava/lang/Object;)Z
  V W  error Y pi [ target ] ^ _ ` a org/xml/sax/Attributes getValue &(Ljava/lang/String;)Ljava/lang/String;
  c d ! 
access$300 f doctype h 	public-id j element l name n ns p id r attr t text
  v w x 
access$400 q(Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;Ljava/lang/String;Ljava/lang/String;)V
  z { | writeExternal (Ljava/io/DataOutput;)V
 <  INIT ConstantValue     IN_ROOT    
IN_DOCTYPE    
IN_ELEMENT    ROOT Ljava/lang/String; PI ELEMENT DOCTYPE 	PUBLIC_ID ID ATTR NAME VALUE NS TARGET Code LineNumberTable LocalVariableTable this DLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent; in Ljava/io/DataInput; 
Exceptions � java/io/IOException MethodParameters 5(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V s elemName elemNSs Ljava/util/List; dtds LocalVariableTypeTable $Ljava/util/List<Ljava/lang/String;>; StackMapTable 	Signature ](Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;)V acceptFileObject '(Lorg/openide/filesystems/FileObject;)Z fo $Lorg/openide/filesystems/FileObject; sniffer SLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser; print startElement Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V namespaceURI 	localName qName atts Lorg/xml/sax/Attributes; � org/xml/sax/SAXException 
endElement 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V out Ljava/io/DataOutput; <clinit> 
SourceFile XMLMIMEComponent.java InnerClasses Smell LocalSniffingParser SniffingParser 0                 9 :    ~       �  �       �  �       �  �       �  � �      O  � �      X  � �      i  � �      e  � �      g  � �      o  � �      q  � �      k  � �      s  � �      m  � �      Z 	     �   K     *� *� 	*� Y� � �    �       6  . 	 1  7 �        � �       �   a     *� *� 	*� Y� � *� +� �    �       9  . 	 1  :  ; �        � �      � �  �     � �    �     �  �  I     x*� *� 	*� Y� � +� � *� +� ,� " :� ( � � - � :*� � 1���-� " :� ( � � - � :*� � 4���    �   2    =  . 	 1  >  ? # A A B J C M D k E t F w G �   >  A 	 � �  k 	 � �    x � �     x � �    x � �    x � �  �       x � �    x � �  �   ' � #    # #  �  )� !�  )� ! �    �   �   �   �    �  � �  �   f     � 7� ;M,+� AN*� -� G�    �       P  Q  U �   *     � �      � �    � �   	 �   �    �    M N  �   2     *� � K�    �       Y �        � �    � �  �  �    �*� 	�     }              5   �  O-� Q� *� U*� 	�KX-� Q� #Z� \ :� *� U*� � b�"e-� Q� 'g� \ :� *� 	�*� � 4� �i-� Q� Yk� \ :� m� \ :� 1*� � 1� %*� � m� \ :� *� � 1*� 	� �*� U� �g-� Q� *� Uo� \ :� *� U*� � 4� bq-� Q� ,k� \ :� *� U*� s� \ � u� 0m-� Q� #m� \ :� *� U*� � 1� *� U�    �   � $   w $ z 1 { 6 | 9  B � V � b � k � v � { � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �" �+ �? �T �] �q �} �� � �   p  M  � �  v  � �  � K � �   � � 6  � � h  � �   � � �    � � �   � � �   � � �   � � �  �   ? $�  � �   � � 4 !� �  � �  � �  �  �     � �    �   �   �   �    � �  �   �     @*� 	�      ;         -      i-� Q� *� 	� e-� Q� *� 	�    �       �   � 1 � ? � �   *    @ � �     @ � �    @ � �    @ � �  �      �    �   �   �     { |  �   A     	*� +� y�    �   
    �  � �       	 � �     	 � �  �     � �    �    �   �   #      � <Y� }� 7�    �       4  �    � �       � 
 <  � 
 B  � 
