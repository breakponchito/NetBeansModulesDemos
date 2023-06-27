����   4!  3org/netbeans/modules/projectapi/AuxiliaryConfigImpl	      5org/netbeans/modules/projectapi/AuxiliaryConfigImpl$2 this$0 5Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;	  
   val$fragment Lorg/w3c/dom/Element;	     
val$shared Z
      java/lang/Object <init> ()V      org/w3c/dom/Element getLocalName ()Ljava/lang/String;     getNamespaceURI ! "java/lang/IllegalArgumentException
   
  $ % & 
access$000 Y(Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;)Lorg/netbeans/api/project/Project; ( ) * + ,  org/netbeans/api/project/Project 	getLookup ()Lorg/openide/util/Lookup; . /org/netbeans/spi/project/AuxiliaryConfiguration
 0 1 2 3 4 org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object; - 6 7 8 putConfigurationFragment (Lorg/w3c/dom/Element;Z)V
  : ; < 
access$200 ](Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;Ljava/lang/String;Ljava/lang/String;Z)Z ( > ? @ getProjectDirectory &()Lorg/openide/filesystems/FileObject; B .netbeans.xml
 D E F G H "org/openide/filesystems/FileObject getFileObject 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 D J K L getInputStream ()Ljava/io/InputStream; N org/xml/sax/InputSource
 M P  Q (Ljava/io/InputStream;)V
 D S T U toURL ()Ljava/net/URL;
 W X Y Z  java/net/URL toString
 M \ ] ^ setSystemId (Ljava/lang/String;)V
 ` a b c d org/openide/xml/XMLUtil parse i(Lorg/xml/sax/InputSource;ZZLorg/xml/sax/ErrorHandler;Lorg/xml/sax/EntityResolver;)Lorg/w3c/dom/Document;
 f g h i  java/io/InputStream close
 D k l H 
createData n auxiliary-configuration p 4http://www.netbeans.org/ns/auxiliary-configuration/1
 ` r s t createDocument `(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document; v w x y z org/w3c/dom/Document getDocumentElement ()Lorg/w3c/dom/Element;
 ` | } ~ findElement P(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;  � � � removeChild &(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;  � � � getChildNodes ()Lorg/w3c/dom/NodeList; � � � � � org/w3c/dom/NodeList 	getLength ()I � � � � item (I)Lorg/w3c/dom/Node; � � � � � org/w3c/dom/Node getNodeType ()S � � �  getNodeName
 � � � � � java/lang/String 	compareTo (Ljava/lang/String;)I �   � � � getOwnerDocument ()Lorg/w3c/dom/Document; v � � � 
importNode '(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;  � � � insertBefore 8(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
 D � � � getOutputStream ()Ljava/io/OutputStream; � UTF-8
 ` � � � write A(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V
 � g � java/io/OutputStream � java/lang/StringBuilder
 � 	  � � � AUX_CONFIG_ATTR_BASE Ljava/lang/String;
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � . � #
 � X
  � � � elementToString )(Lorg/w3c/dom/Element;)Ljava/lang/String;
 D � � � setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V � java/lang/Exception
  � � � 
access$100 ()Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level; � Cannot save configuration to 
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � � � run ()Ljava/lang/Void; � org/openide/util/Mutex$Action N(Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;Lorg/w3c/dom/Element;Z)V Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl$2; MethodParameters 	Signature input Lorg/xml/sax/InputSource; doc Lorg/w3c/dom/Document; is Ljava/io/InputStream; node Lorg/w3c/dom/Node; 
comparison I i config $Lorg/openide/filesystems/FileObject; root oldFragment ref list Lorg/w3c/dom/NodeList; os Ljava/io/OutputStream; attrName x Ljava/lang/Exception; elementName 	namespace delegate 1Lorg/netbeans/spi/project/AuxiliaryConfiguration; dir StackMapTable java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/lang/Object; CLjava/lang/Object;Lorg/openide/util/Mutex$Action<Ljava/lang/Void;>; 
SourceFile AuxiliaryConfigImpl.java EnclosingMethod InnerClasses org/openide/util/Mutex Action      �                  �  �   H     *+� *,� 	*� *� �    �       y �        � �         �    �   �      � �  �  �    �*� 	�  L*� 	�  M,� �  Y� "�*� � #� ' -� /� -N-� !-*� 	*� � 5 *� +,*� � 9W�*� � #� = :*� �*A� C:� B� I:� MY� O:� R� V� [� _:� e� :	� e	�� A� j:mo� q:� u :+,� {:� �  W:	� � :
6
� � � M
� � :� � � � .� � +� �6� � � ,� �6� 
:	� 	����� � *� 	� � 	� � W� �:�� �� �� :� ��� 5� �Y� �� �� �Ŷ �,� �Ƕ �+� �� �:*� 	� ʶ Χ $:� Բ ػ �Y� �޶ �� � �� ��  � � �   � � �  u~�  ���   e�� �  �   � 7   | 
 }  ~     � 5 � 9 � G � U � W � e � l � u � z � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 � � �" �/ �4 �A �F �J �M �S �n �u �~ �� �� �� �� �� �� �� �� �� �� � �   �  �  � �  �  � �  � 5 � �  �  � �  9 � � /  �   � V   � � � �  u  � �   � �   � � � 	 � � 
u 	
 �  � �    � � �   
� �  � �  5�  e�    � �   � �� 6 -� T   � � - D  D f � 	   � � - D v D  �    � � - D  D  �    � � - D v D  �    �  � �� $ �� � � � 2   � � - D v D   � � � � 	   � � - D  1B �       A �  �   /     *� �    �       y �        � �          �           6            � 	