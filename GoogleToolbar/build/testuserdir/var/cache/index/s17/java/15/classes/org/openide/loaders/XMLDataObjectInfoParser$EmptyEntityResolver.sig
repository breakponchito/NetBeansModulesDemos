����   4 /
      java/lang/Object <init> ()V  org/xml/sax/InputSource 
 java/io/StringReader   
 	    (Ljava/lang/String;)V
     (Ljava/io/Reader;)V  StringReader
     setSystemId  ?org/openide/loaders/XMLDataObjectInfoParser$EmptyEntityResolver  org/xml/sax/EntityResolver Code LineNumberTable LocalVariableTable this ALorg/openide/loaders/XMLDataObjectInfoParser$EmptyEntityResolver; resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; publicId Ljava/lang/String; systemID ret Lorg/xml/sax/InputSource; MethodParameters 
SourceFile XMLDataObjectInfoParser.java InnerClasses - +org/openide/loaders/XMLDataObjectInfoParser EmptyEntityResolver                  /     *� �                         ! "     i     � Y� 	Y� � N-� -�                *             # $     % $    & '  (   	 #   %    )    * +   
   , . 
