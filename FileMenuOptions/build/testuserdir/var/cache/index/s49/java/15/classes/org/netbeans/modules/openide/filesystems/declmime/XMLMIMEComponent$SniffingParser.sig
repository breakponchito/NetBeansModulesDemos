����   4
      ?org/netbeans/modules/openide/filesystems/declmime/DefaultParser <init> '(Lorg/openide/filesystems/FileObject;)V	  	 
   Qorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser lastFileObject $Lorg/openide/filesystems/FileObject;	     print JLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;
      java/lang/Object equals (Ljava/lang/Object;)Z
      "org/openide/filesystems/FileObject isValid ()Z
      getSize ()J " Horg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell
 ! $  % ()V	  ' ( ) errors I
  + ,  parse	  . / 0 state S
 2 3 4 5 6 org/openide/xml/XMLUtil createXMLReader (ZZ)Lorg/xml/sax/XMLReader; 8 -http://xml.org/sax/properties/lexical-handler : ; < = > org/xml/sax/XMLReader setProperty '(Ljava/lang/String;Ljava/lang/Object;)V @ org/xml/sax/SAXException B Borg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent
 D E F G H java/lang/Class getName ()Ljava/lang/String;
 J K L M N java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; P W-003
 R S T U V org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 J X Y Z fine (Ljava/lang/String;)V	 \ ] ^ _ ` java/util/logging/Level WARNING Ljava/util/logging/Level;
 J b c d log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V	  f g h STOP Lorg/xml/sax/SAXException;
 ? j U H
 l j m java/lang/Throwable
 o  p java/lang/String
 ! r s t 
access$100 _(Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;Ljava/lang/String;)V v  
 ! x y t 
access$000 { | } ~  org/xml/sax/Attributes 	getLength ()I { � � � getQName (I)Ljava/lang/String; { � � � getValue
 ! � � � 
access$400 q(Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell;Ljava/lang/String;Ljava/lang/String;)V
 ! � � t 
access$300
 ! � � t 
access$200
 � j � org/xml/sax/SAXParseException
 J � � Z warning � Invalid encoding
 o � � � contains (Ljava/lang/CharSequence;)Z	 \ � � ` FINE
 J � � � 
isLoggable (Ljava/util/logging/Level;)Z � java/lang/StringBuilder
 � $ � [while parsing 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;	  � �  fo
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � ] 
 � � � H getSystemId � :
 � � �  getLineNumber
 � � � � (I)Ljava/lang/StringBuilder;
 � � �  getColumnNumber � : 
 � � � H toString g
 ? �  Z � org/xml/sax/ext/LexicalHandler Code LineNumberTable LocalVariableTable this SLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$SniffingParser; sniff p(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent$Smell; StackMapTable MethodParameters ()Lorg/xml/sax/XMLReader; sex ex parser Lorg/xml/sax/XMLReader; isStopException (Ljava/lang/Throwable;)Z e Ljava/lang/Throwable; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; startElement Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V i namespaceURI Ljava/lang/String; 	localName qName atts Lorg/xml/sax/Attributes; 
Exceptions processingInstruction '(Ljava/lang/String;Ljava/lang/String;)V target data startDTD 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V root pID sID endDTD startEntity name 	endEntity 
startCDATA endCDATA comment ([CII)V ch [C start length error "(Lorg/xml/sax/SAXParseException;)V 	exception Lorg/xml/sax/SAXParseException; 
fatalError emgr Ljava/util/logging/Logger; <clinit> 
SourceFile XMLMIMEComponent.java InnerClasses SniffingParser Smell      �             g h    ( )       %  �   F     *� *� *� �    �       �  � 
 �  � �        � �    � �  �   �     S+� �+*� � � *� �+� � �+� 	�� �*� !Y� #� *� &*+� **� -� �*+� *� �    �   .      	 * 5 : ? G I N �       S � �     S �   �    
 �    �    5 �  �   �     =L� 1L+7*� 9 � MA� C� IAO� Q� W� MA� C� I� [,� a+�     ?  ' * ?  �   * 
        '" *  +! ;# �   *    � h  +  � h    = � �    ; � �  �    �    :  ?B ?  � �  �   B     � e� i+� k� n�    �      ( �        � �      � �  �    �   �     �    � �  �       Y+� *� +� qu,� n� M*� ,� ,� -� w6� z � "*� � � � � � ����ز e�    �   "   - . 0 1 '2 63 O2 U5 �   >  * + � )    Y � �     Y � �    Y � �    Y � �    Y � �  �   + 
K !�     o o o {  ! o� � * �     ? �    �   �   �   �    � �  �   K     	*� +� ��    �   
   9 : �        	 � �     	 � �    	 � �  �     ? �   	 �   �    � �  �   U     	*� ,� ��    �   
   ? @ �   *    	 � �     	 � �    	 � �    	 � �  �     ? �    �   �   �    � %  �   +      �    �      B �        � �    � Z  �   5      �    �      D �        � �      � �  �    �    � Z  �   5      �    �      F �        � �      � �  �    �    � %  �   +      �    �      H �        � �    � %  �   +      �    �      J �        � �    � �  �   I      �    �      L �   *     � �      � �     � )     � )  �    �   �   �      �   T     A� C� I+� �� �*� -� e�    �      P Q R �        � �       �     ? �        �   �     �+� ��� �� �A� C� IM,� �� �� M,� �Y� ��� �*� �� ��� �+� �� ��� �+� �� ��� �+� �� �ö �+� �� �� Ŷ W*Y� &Z`� &
� *� -� e��    �   & 	  V X ] ^  _ jc zd e �g �        � � �     �   n  �   
 � \ J �     ? �       %  �   %      � ?Yȷ ɳ e�    �       �    	
      A 
 ! A 
