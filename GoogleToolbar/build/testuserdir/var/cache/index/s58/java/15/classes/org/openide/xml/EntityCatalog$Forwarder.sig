����   4 u
      org/openide/xml/EntityCatalog <init> ()V	  	 
   'org/openide/xml/EntityCatalog$Forwarder result  Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
     lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;     ! " java/util/Collection iterator ()Ljava/util/Iterator; $ % & ' ( java/util/Iterator hasNext ()Z $ * + , next ()Ljava/lang/Object;
  . / 0 resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; 2 http
 4 5 6 7 8 java/lang/String 
startsWith (Ljava/lang/String;)Z
 : ; < = > java/lang/Class getName ()Ljava/lang/String;
 @ A B C D java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
 F G H I ( java/awt/EventQueue isDispatchThread	 K L M N O java/util/logging/Level WARNING Ljava/util/logging/Level;	 K Q R O FINE T No resolver found for {0}
 @ V W X log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V 	Signature ALorg/openide/util/Lookup$Result<Lorg/openide/xml/EntityCatalog;>; Code LineNumberTable LocalVariableTable this )Lorg/openide/xml/EntityCatalog$Forwarder; is Lorg/xml/sax/InputSource; res Lorg/openide/xml/EntityCatalog; publicID Ljava/lang/String; systemID StackMapTable 
Exceptions j java/io/IOException l org/xml/sax/SAXException MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile EntityCatalog.java InnerClasses 	Forwarder Result            Y    Z       [   3     *� �    \   
    V  W ]        ^ _    / 0  [        t*� � *� � � *� � �  N-� # � "-� ) � :+,� -:� ����,� ),1� 3�  � 9� ?� E� 	� J� � PS,� U�    \   2    [  \  _ 4 a = c B d E f H h U i ] k o i r n ]   4  =  ` a  4  b c    t ^ _     t d e    t f e  g   ( �  $$� ` @�    4 4  @ K h     i k m   	 d   f   n     o    p    q r       s 
   t	