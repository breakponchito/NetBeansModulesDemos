Êþº¾   4 ª
      "org/xml/sax/helpers/DefaultHandler <init> ()V   	 
     5org/openide/filesystems/DefaultAttributes$InnerParser tagInProcess Ljava/lang/String;	 
    elmKeyService ;[Lorg/openide/filesystems/DefaultAttributes$ElementHandler;	 
    publicId	 
    	publicURL
 
    	getParser (Z)Lorg/xml/sax/XMLReader;     ! " org/xml/sax/XMLReader parse (Ljava/lang/String;)V $ org/xml/sax/InputSource
 # &  ' (Ljava/io/InputStream;)V  ) ! * (Lorg/xml/sax/InputSource;)V
 , - . /  org/openide/xml/XMLUtil createXMLReader  1 2 3 setEntityResolver (Lorg/xml/sax/EntityResolver;)V  5 6 7 setContentHandler (Lorg/xml/sax/ContentHandler;)V  9 : ; setErrorHandler (Lorg/xml/sax/ErrorHandler;)V
 = > ? @ A java/lang/String trim ()Ljava/lang/String;
 C D E F G 8org/openide/filesystems/DefaultAttributes$ElementHandler 
access$100 O(Lorg/openide/filesystems/DefaultAttributes$ElementHandler;Ljava/lang/String;)I
 C I J K startElement -(Ljava/lang/String;Lorg/xml/sax/Attributes;)V M org/xml/sax/SAXException O java/lang/StringBuilder
 N  R )org/openide/filesystems/DefaultAttributes T XML_UnknownElement
 V W X Y Z org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 N \ ] ^ append -(Ljava/lang/String;)Ljava/lang/StringBuilder; `  
 N b c A toString
 L e  "
 C g h " 
endElement
 C j k l 
characters ([CII)V
 = n o p equals (Ljava/lang/Object;)Z
 # e b(Ljava/lang/String;Ljava/lang/String;[Lorg/openide/filesystems/DefaultAttributes$ElementHandler;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/filesystems/DefaultAttributes$InnerParser; MethodParameters parseXML (Ljava/lang/String;Z)V uri validate Z parser Lorg/xml/sax/XMLReader; 
Exceptions  java/io/IOException  .javax/xml/parsers/ParserConfigurationException  +javax/xml/parsers/FactoryConfigurationError (Ljava/io/InputStream;Z)V is Ljava/io/InputStream; iSource Lorg/xml/sax/InputSource; error "(Lorg/xml/sax/SAXParseException;)V 	exception Lorg/xml/sax/SAXParseException; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; warning 
fatalError Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V i I lname name attrs Lorg/xml/sax/Attributes; StackMapTable 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V ch [C start length resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; pid sid 
SourceFile DefaultAttributes.java InnerClasses InnerParser ElementHandler   
                             r  s   v     *· *µ 	*-µ *+µ *,µ ±    t        
    u   *     v w                     x              y z  s   ^     *· N-+¹  ±    t      ! " # u   *     v w      {      | }    ~      
   L   x   	 {   |    y   s   w     » #Y+· %N*· :-¹ ( ±    t      - 	. / 0 u   4     v w            | }  	      	 ~      
   L   x   	    |       s   j     ¸ +M,*¹ 0 ,*¹ 4 ,*¹ 8 ,°    t      4 7 8 9 ; u         v w      | }    ~        L   x    |       s   6     +¿    t      A u        v w              L x                   s   6     +¿    t      G u        v w              L x                   s   6     +¿    t      M u        v w              L x                J   s   ã     _*-¶ <YNµ 	6*´ ¾¢ &*´ 2-¸ B *´ 2-¶ H±§ÿÖ» LY» NY· PQS¸ U¶ [_¶ [-¶ [¶ a· d¿    t      S 
U V &W 3Y 4U :] u   >   -      _ v w     _ {     _      _      _       
 ü &ú       L x    {                     h   s   Ï     Y6*´ ¾¢ **´ 2-¶ <¸ B *´ 2-¶ <¶ f±§ÿÒ» LY» NY· PQS¸ U¶ [_¶ [-¶ [¶ a· d¿    t      b c d -f .b 4j u   4   1      Y v w     Y {     Y      Y       
 ü *ú       L x    {                  k l  s   Õ     [6*´ ¾¢ )*´ 2*´ 	¸ B *´ 2+¶ i±§ÿÓ» LY» NY· PQS¸ U¶ [_¶ [*´ 	¶ [¶ a· d¿    t      p q r ,t -p 3x By u   4   0      [ v w     [      [      [        
 ü )ú       L x                       ¡ ¢  s   s     $+Æ +*´ ¶ m » #Y*´ · q°» #Y,· q°    t         u        $ v w     $ £     $ ¤             L x   	 £   ¤            ¥    ¦ §     
 Q ¨  C Q ©