Êþº¾   4 «  !org/openide/loaders/XMLDataObject
      java/lang/Object <init> ()V	 
     (org/openide/loaders/XMLDataObject$DelDoc obj #Lorg/openide/loaders/XMLDataObject;	     cnstr Ljava/lang/reflect/Constructor;
      java/lang/reflect/Constructor newInstance '([Ljava/lang/Object;)Ljava/lang/Object;  org/w3c/dom/Document	 
    proxyDocument Lorg/w3c/dom/Document;   java/lang/Exception " java/lang/IllegalStateException
 ! $  % (Ljava/lang/Throwable;)V	 
 ' ( ) xmlDocument Ljava/lang/ref/Reference;
 + , - . / java/lang/ref/Reference get ()Ljava/lang/Object;
  1 2 3 
access$502 '(Lorg/openide/loaders/XMLDataObject;I)I
  5 6 7 parsePrimaryFile ()Lorg/w3c/dom/Document; 9 java/lang/ref/SoftReference
 8 ;  < (Ljava/lang/Object;)V > org/xml/sax/SAXException	  @ A B ERR Ljava/util/logging/Logger;	 D E F G H java/util/logging/Level WARNING Ljava/util/logging/Level;
 J K L M N java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V P java/io/IOException R brokenDocument
 T U V W X org/openide/xml/XMLUtil createDocument `(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document; Z document
  \ ] ^ firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
 ` a b c d java/lang/reflect/Method getName ()Ljava/lang/String; f 
getDoctype
 h i j k l java/lang/String equals (Ljava/lang/Object;)Z n org/w3c/dom/DocumentType p getPublicId
 
 r s t getDocumentImpl (Z)Lorg/w3c/dom/Document;  v f w ()Lorg/w3c/dom/DocumentType; m y p d
  { | } 
access$600 R(Lorg/openide/loaders/XMLDataObject;)Lorg/openide/loaders/XMLDataObjectInfoParser;
  y  +org/openide/loaders/XMLDataObjectInfoParser
 `    invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;  #java/lang/reflect/InvocationHandler 	Signature 1Ljava/lang/ref/Reference<Lorg/w3c/dom/Document;>; &(Lorg/openide/loaders/XMLDataObject;)V Code LineNumberTable LocalVariableTable ex Ljava/lang/Exception; this *Lorg/openide/loaders/XMLDataObject$DelDoc; StackMapTable MethodParameters d e Lorg/xml/sax/SAXException; Ljava/io/IOException; doc force Z  java/lang/Throwable getProxyDocument S(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object; doctype Lorg/w3c/dom/DocumentType; proxy Ljava/lang/Object; method Ljava/lang/reflect/Method; args [Ljava/lang/Object; 
Exceptions 
SourceFile XMLDataObject.java InnerClasses DelDoc 0 
           ( )                     £     ,*· *+µ 	*² ½ Y*S¶ À µ § M» !Y,· #¿±  	  !           	  ! " +       " 	      ,       ,        ÿ !  
   	         s t    Å     ¤*YMÂ*´ &Ç § *´ &¶ *À N-Æ -,Ã° ,Ã°*´ 	¸ 0W*´ 	¶ 4:*» 8Y· :µ &,Ã°:² ?² C¶ I§ :² ?² C¶ I*´ 	¸ 0WQ¸ S:*» 8Y· :µ &*´ 	Y¶ [,Ã°:,Ã¿  3 K N = 3 K _ O  !    " )    * M    N      ¡        V        "£ &¤ *§ 3© <ª I« N¬ P­ \° _® a¯ m² v³ µ ¸ º »    H  <     P     a                 ¤       ¤       - ü  I ü  c =P Oÿ /  
             7     /     *´ °          Å                    ü     d,¶ _e¶ g -Ç *´ À m°,¶ _o¶ g 8-Ç 4*· q:Æ ¹ u :Ç § 
¹ x °*´ 	¸ z¶ ~°,*· q-¶ °       & 	  É Ê Ë (Ì /Í 4Î =Ï NÑ YÔ    >  =     / *      d       d   ¡    d ¢ £    d ¤ ¥      ý -  mF ú  ú 
 ¦              ¢   ¤    §    ¨ ©   
  
  ª 