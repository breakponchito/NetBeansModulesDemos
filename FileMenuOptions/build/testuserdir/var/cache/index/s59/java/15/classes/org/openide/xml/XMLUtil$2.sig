����   4 +	      org/openide/xml/XMLUtil$2 	val$error [Lorg/xml/sax/SAXException;
  	 
   java/lang/Object <init> ()V  org/xml/sax/ErrorHandler ([Lorg/xml/sax/SAXException;)V Code LineNumberTable LocalVariableTable this Lorg/openide/xml/XMLUtil$2; MethodParameters 	Signature warning "(Lorg/xml/sax/SAXParseException;)V x Lorg/xml/sax/SAXParseException; 
Exceptions  org/xml/sax/SAXException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; error 
fatalError 
SourceFile XMLUtil.java EnclosingMethod & org/openide/xml/XMLUtil ( ) validate 5(Lorg/w3c/dom/Element;Ljavax/xml/validation/Schema;)V InnerClasses                     4     
*+� *� �          �        
                      5      �          �                                                @     *� +S�       
   � �                                         !      @     *� +S�       
   � �                                         "    # $    % ' *   
        