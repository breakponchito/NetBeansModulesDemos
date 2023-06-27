����   4	  3org/netbeans/modules/projectapi/AuxiliaryConfigImpl	      5org/netbeans/modules/projectapi/AuxiliaryConfigImpl$1 this$0 5Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;	  
   val$elementName Ljava/lang/String;	     val$namespace	     
val$shared Z
      java/lang/Object <init> ()V
     
access$000 Y(Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;)Lorg/netbeans/api/project/Project;    ! " #  org/netbeans/api/project/Project 	getLookup ()Lorg/openide/util/Lookup;	  % &  $assertionsDisabled ( java/lang/AssertionError * java/lang/StringBuilder
 )   - . / getClass ()Ljava/lang/Class;
 1 2 3 4 5 java/lang/Class getName ()Ljava/lang/String;
 ) 7 8 9 append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ;  violates #185464
 ) = > 5 toString
 ' @  A (Ljava/lang/Object;)V C /org/netbeans/spi/project/AuxiliaryConfiguration
 E F G H I org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object; B K L M getConfigurationFragment <(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element; O P Q R 5 org/w3c/dom/Element getLocalName
 T U V W X java/lang/String equals (Ljava/lang/Object;)Z O Z [ 5 getNamespaceURI
  ] ^ _ 
access$100 ()Ljava/util/logging/Logger;	 a b c d e java/util/logging/Level INFO Ljava/util/logging/Level; B - h , produced wrong local name or namespace for  j # l  in 
 ) n 8 o -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 q r s t u java/util/logging/Logger log .(Ljava/util/logging/Level;Ljava/lang/String;)V  w x y getProjectDirectory &()Lorg/openide/filesystems/FileObject; { .netbeans.xml
 } ~  � � "org/openide/filesystems/FileObject getFileObject 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 } � � � getInputStream ()Ljava/io/InputStream; � org/xml/sax/InputSource
 � �  � (Ljava/io/InputStream;)V
 } � � � toURL ()Ljava/net/URL;
 � = � java/net/URL
 � � � � setSystemId (Ljava/lang/String;)V
 � � � � � org/openide/xml/XMLUtil parse i(Lorg/xml/sax/InputSource;ZZLorg/xml/sax/ErrorHandler;Lorg/xml/sax/EntityResolver;)Lorg/w3c/dom/Document; � � � � � org/w3c/dom/Document getDocumentElement ()Lorg/w3c/dom/Element;
 � � � � findElement P(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
 � � � �  java/io/InputStream close � java/lang/Exception � Cannot parse
 q � t � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V	  � �  AUX_CONFIG_ATTR_BASE � .
 } � � � getAttribute &(Ljava/lang/String;)Ljava/lang/Object; � java/io/StringReader
 � �  �
 � �  � (Ljava/io/Reader;)V � Value  �  of  �  on  � & has the wrong local name or namespace � org/xml/sax/SAXException � Cannot parse value  � : 
 � � � 5 
getMessage � java/io/IOException
  � � � run
 1 � � � desiredAssertionStatus ()Z � org/openide/util/Mutex$Action ](Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;Ljava/lang/String;Ljava/lang/String;Z)V Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl$1; MethodParameters 	Signature fragment Lorg/w3c/dom/Element; input Lorg/xml/sax/InputSource; root is Ljava/io/InputStream; x Ljava/lang/Exception; config $Lorg/openide/filesystems/FileObject; Lorg/xml/sax/SAXException; Ljava/io/IOException; attrName attr Ljava/lang/Object; Lorg/openide/util/Lookup; delegate 1Lorg/netbeans/spi/project/AuxiliaryConfiguration; dir StackMapTable � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/lang/Object; <clinit> HLjava/lang/Object;Lorg/openide/util/Mutex$Action<Lorg/w3c/dom/Element;>; 
SourceFile AuxiliaryConfigImpl.java EnclosingMethod InnerClasses org/openide/util/Mutex Action      �  &                        �  �   N     *+� *,� 	*-� *� *� �    �       = �        � �         �    �    �      � �  �  �  
  p*� � �  L� $� 0+� ,� 'Y� )Y� +*� � � , � 0� 6:� 6� <� ?�+B� D� BM,� �,*� 	*� *� � J N-� k*� 	-� N � S� *� -� Y � S� -�� \� `� )Y� +,� f � 0� 6g� 6*� � 6i� 6*� 	� 6k� 6*� � � m� <� p*� � � v N*� � �-z� |:� t� �:� �Y� �:� �� �� �� �� � :*� 	*� � �:� ��:	� �	�:� \� `� )Y� +�� 6� m� <� ��� )Y� +� �� 6�� 6*� � 6i� 6*� 	� 6� <:-� �:� T� ջ �Y� �Y� T� �� �� �� � :*� 	� N � S� *� � Y � S� �� \� `� )Y� +¶ 6� mĶ 6� 6ƶ 6-� mȶ 6� <� p� W:� \� `� )Y� +̶ 6� mĶ 6� 6ƶ 6-� mζ 6� ж 6� <� p� :� $� � 'Y� ?��  �,4  464   �1> �4>> ��� �� ���\ ��\ �  �   � (   @  A @ B J C N D a E e F � G � I � M � N � O � P � R � T  U V W, Y1 W4 Y; Z> [@ \_ _b `� a� b� d� e� f� g� i o k lY o\ m^ nn r �   �  a l � �   4 � �   � �  � I � � @  � �  � v � � � Z � �  = � � ^  � � � � �  � � � �   p � �   c H �  J& � �  �� � �  �   ~ � @ E� F B O� E� f   E B } } �  �� 	   E B } }  ��  �  T  O� 7   E B } T   �� A ��  �     �  A � �  �   /     *� հ    �       = �        � �   �     �       �   4      � ؚ � � $�    �       = �    @  �           K            �	