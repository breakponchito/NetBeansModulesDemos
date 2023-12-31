����   4 �
      "org/xml/sax/helpers/DefaultHandler <init> ()V	  	 
   Aorg/netbeans/modules/openide/loaders/FileEntityResolver$DTDParser publicId Ljava/lang/String;	     src $Lorg/openide/filesystems/FileObject;
      org/openide/xml/XMLUtil createXMLReader (ZZ)Lorg/xml/sax/XMLReader;      org/xml/sax/XMLReader setContentHandler (Lorg/xml/sax/ContentHandler;)V      setErrorHandler (Lorg/xml/sax/ErrorHandler;)V  " # $ setEntityResolver (Lorg/xml/sax/EntityResolver;)V & java/io/BufferedInputStream
 ( ) * + , "org/openide/filesystems/FileObject getInputStream ()Ljava/io/InputStream;
 % .  / (Ljava/io/InputStream;)V 1 org/xml/sax/InputSource
 0 . 4 &http://xml.org/sax/features/validation  6 7 8 
setFeature (Ljava/lang/String;Z)V : org/xml/sax/SAXException	 < = > ? @ 7org/netbeans/modules/openide/loaders/FileEntityResolver ERR Ljava/util/logging/Logger; B /XML parser does not support validation feature.
 D E F G H java/util/logging/Logger warning (Ljava/lang/String;)V J -http://xml.org/sax/properties/lexical-handler  L M N setProperty '(Ljava/lang/String;Ljava/lang/Object;)V P 4XML parser does not support lexical-handler feature.  R S T parse (Lorg/xml/sax/InputSource;)V
 V W X Y  java/io/InputStream close [ java/io/IOException	 ] ^ _ ` a java/util/logging/Level WARNING Ljava/util/logging/Level; c java/lang/StringBuilder
 b  f Closing stream for 
 b h i j append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 b l i m -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 b o p q toString ()Ljava/lang/String;
 D s t u log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V w Horg/netbeans/modules/openide/loaders/FileEntityResolver$StopSaxException	 ] y z a FINE | java/lang/Exception ~ *org.openide.util.lookup.AbstractLookup$ISE
 � � � � � java/lang/Object getClass ()Ljava/lang/Class;
 � � � � q java/lang/Class getName
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z � java/lang/IllegalStateException
 ( � � � getFileSystem &()Lorg/openide/filesystems/FileSystem;
 � � � � � "org/openide/filesystems/FileSystem 	isDefault ()Z
 ( � � q getPath � Windows2Local
 � � � � 
startsWith (Ljava/lang/String;)Z � Parsing  � : 
 { � � q 
getMessage
 Z �  H
 Z � � � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � 1org/openide/filesystems/FileStateInvalidException � java/io/StringReader �  
 � �
 0 �  � (Ljava/io/Reader;)V � StringReader
 0 � � H setSystemId
 < � � � 
access$000 L()Lorg/netbeans/modules/openide/loaders/FileEntityResolver$StopSaxException; � org/xml/sax/ext/LexicalHandler '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this CLorg/netbeans/modules/openide/loaders/FileEntityResolver$DTDParser; MethodParameters getPublicId sex Lorg/xml/sax/SAXException; reader Lorg/xml/sax/XMLReader; is Lorg/xml/sax/InputSource; exc Ljava/io/IOException; ex JLorg/netbeans/modules/openide/loaders/FileEntityResolver$StopSaxException; Ljava/lang/Exception; in Ljava/io/InputStream; StackMapTable � java/lang/Throwable resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; systemID ret #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; endDTD 
Exceptions startDTD 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V name systemId startEntity str 	endEntity comment ([CII)V values [C param I param2 
startCDATA endCDATA 
SourceFile FileEntityResolver.java InnerClasses 	DTDParser StopSaxException      �               �  �   O     *� *� *+� �    �      w t 	x y �        � �         �        � q  �   /     *� �    �      | �        � �    S   �  �    �L� M,*�  ,*�  ,*� ! � %Y*� � '� -L� 0Y+� 2N,3� 5 � :� ;A� C,I*� K � :� ;O� C,-� Q +� +� U�0M� ;� \� bY� de� g*� � k� n,� r�M� ;� x,� r+� +� U� �M� ;� \� bY� de� g*� � k� n,� r� �M},� � �� �� ,� ��*� � �� �� I*� � ��� �� :� ;� \� ZY� bY� d�� g*� � k�� g,� �� g� n� �,� �� r� N+� +� U� ZM� ;� \� bY� de� g*� � k� n,� r� 6:+� +� U� &:� ;� \� bY� de� g*� � k� n� r��  5 > A 9 K T W 9 h p s Z  h � v � � � Z  h � { �:= �>FI Z  hm   � �m   �>m  owz Zmom    �   � 3  � � � � � � ,� 5� >� A� C� K� T� W� Y� a� h� l� p� s� t� �� �� �� �� �� �� �� �� �� �� �� �� ���:�=�>�B�F�I�J�j�m�o�s�w�z�|����� �   z  C  � �  Y  � �   ` � �  5 3 � �  t   � �  �  � �  �   � �  � k � � J   � � | ! � �   � � �   � � �  �   p � A   V  0  9	K 9	� B Zc vB Zc {�  {� RB ��  B Zc �� 	   V    �  B Z"�    V    � �  �   i     � 0Y� �Y�� �� �N-�� �-�    �      � � � �   *     � �            �     � �  �   	    �   �     �    �   �   .     � ��    �      � �        � �   �     9  � �  �   R     *,� �    �   
   � � �   *     � �      �            �   �     9 �    �      �    � H  �   5      �    �      � �        � �      �   �     9 �    �    � H  �   5      �    �      � �        � �      �   �     9 �    �    � �  �   I      �    �      � �   *     � �      � �     � �     � �  �     9 �    �   �   �    �   �   +      �    �      � �        � �   �     9  �   �   +      �    �      � �        � �   �     9  �    � �      < � 
 v < � 
