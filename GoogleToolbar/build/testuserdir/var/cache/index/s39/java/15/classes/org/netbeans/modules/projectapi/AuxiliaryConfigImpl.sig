����   4l
      3org/netbeans/modules/projectapi/AuxiliaryConfigImpl removeFallbackImpl ((Ljava/lang/String;Ljava/lang/String;Z)Z	   	 
 LOG Ljava/util/logging/Logger;	     project "Lorg/netbeans/api/project/Project;
      java/lang/Object <init> ()V	     $assertionsDisabled Z  java/lang/AssertionError
     org/netbeans/api/project/Project
    ! " # 'org/netbeans/api/project/ProjectManager mutex `(ZLorg/netbeans/api/project/Project;[Lorg/netbeans/api/project/Project;)Lorg/openide/util/Mutex; % 5org/netbeans/modules/projectapi/AuxiliaryConfigImpl$1
 $ '  ( ](Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;Ljava/lang/String;Ljava/lang/String;Z)V
 * + , - . org/openide/util/Mutex 
readAccess 3(Lorg/openide/util/Mutex$Action;)Ljava/lang/Object; 0 org/w3c/dom/Element 2 5org/netbeans/modules/projectapi/AuxiliaryConfigImpl$2
 1 4  5 N(Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;Lorg/w3c/dom/Element;Z)V
 * 7 8 . writeAccess
 : ; < = > (javax/xml/parsers/DocumentBuilderFactory newInstance ,()Ljavax/xml/parsers/DocumentBuilderFactory;
 : @ A B newDocumentBuilder %()Ljavax/xml/parsers/DocumentBuilder;
 D E F G H !javax/xml/parsers/DocumentBuilder newDocument ()Lorg/w3c/dom/Document; J K L M N org/w3c/dom/Document getImplementation !()Lorg/w3c/dom/DOMImplementation; P LS R 3.0 T U V W X org/w3c/dom/DOMImplementation 
getFeature 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Z "org/w3c/dom/ls/DOMImplementationLS \ java/lang/StringBuilder
 [  _ No DOM 3 LS supported in 
 [ a b c append -(Ljava/lang/String;)Ljava/lang/StringBuilder; J e f g getClass ()Ljava/lang/Class;
 i j k l m java/lang/Class getName ()Ljava/lang/String;
 [ o p m toString
  r  s (Ljava/lang/Object;)V J u v w 
importNode '(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node; J y z { appendChild &(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node; Y } ~  createLSSerializer ()Lorg/w3c/dom/ls/LSSerializer; � � � � � org/w3c/dom/ls/LSSerializer getDomConfig  ()Lorg/w3c/dom/DOMConfiguration; � xml-declaration
 � � � � � java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; � � � � � org/w3c/dom/DOMConfiguration setParameter '(Ljava/lang/String;Ljava/lang/Object;)V � � � � writeToString &(Lorg/w3c/dom/Node;)Ljava/lang/String;  � � � getProjectDirectory &()Lorg/openide/filesystems/FileObject; � .netbeans.xml
 � � � � � "org/openide/filesystems/FileObject getFileObject 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 � � � � getInputStream ()Ljava/io/InputStream; � org/xml/sax/InputSource
 � �  � (Ljava/io/InputStream;)V
 � � � � toURL ()Ljava/net/URL;
 � o � java/net/URL
 � � � � setSystemId (Ljava/lang/String;)V
 � � � � � org/openide/xml/XMLUtil parse i(Lorg/xml/sax/InputSource;ZZLorg/xml/sax/ErrorHandler;Lorg/xml/sax/EntityResolver;)Lorg/w3c/dom/Document;
 � � � �  java/io/InputStream close J � � � getDocumentElement ()Lorg/w3c/dom/Element;
 � � � � findElement P(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element; / � � { removeChild � * / � � � getElementsByTagName *(Ljava/lang/String;)Lorg/w3c/dom/NodeList; � � � � � org/w3c/dom/NodeList 	getLength ()I
 � � � � getOutputStream ()Ljava/io/OutputStream; � UTF-8
 � � � � write A(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V
 � � � java/io/OutputStream
 � � �  delete � org/xml/sax/SAXException	 � � � � � java/util/logging/Level INFO Ljava/util/logging/Level; � Cannot parse
 [ � b � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V	  � �  AUX_CONFIG_ATTR_BASE Ljava/lang/String; . #
 � getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 �
 � setAttribute java/io/IOException !Cannot remove configuration from 
 � � warning 5org/netbeans/modules/projectapi/AuxiliaryConfigImpl$3
 '
 � booleanValue ()Z
 i desiredAssertionStatus
 �  	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;" /org/netbeans/spi/project/AuxiliaryConfiguration AUX_CONFIG_FILENAME ConstantValue %(Lorg/netbeans/api/project/Project;)V Code LineNumberTable LocalVariableTable this 5Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl; proj MethodParameters getConfigurationFragment <(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element; elementName 	namespace shared StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; putConfigurationFragment (Lorg/w3c/dom/Element;Z)V fragment Lorg/w3c/dom/Element; 
Exceptions; "java/lang/IllegalArgumentException elementToString )(Lorg/w3c/dom/Element;)Ljava/lang/String; e doc Lorg/w3c/dom/Document; ls $Lorg/w3c/dom/ls/DOMImplementationLS; 
serializer Lorg/w3c/dom/ls/LSSerializer;F .javax/xml/parsers/ParserConfigurationException input Lorg/xml/sax/InputSource; os Ljava/io/OutputStream; is Ljava/io/InputStream; root toRemove x Lorg/xml/sax/SAXException; config $Lorg/openide/filesystems/FileObject; attrName Ljava/io/IOException; dirW java/lang/StringY java/lang/Throwable removeConfigurationFragment 
access$000 Y(Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;)Lorg/netbeans/api/project/Project; x0 
access$100 ()Ljava/util/logging/Logger; 
access$200 ](Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;Ljava/lang/String;Ljava/lang/String;Z)Z x1 x2 x3 <clinit> 
SourceFile AuxiliaryConfigImpl.java InnerClassesj org/openide/util/Mutex$Action Action !   !   	 
    �    #  $    �          
  % &   F     
*� *+� �   '       6  7 	 8(       
)*     
+  ,   +   -. &   �     3� � *� � � Y� �*� � � � $Y*+,� &� )� /�   '   
    <  =(   *    3)*     3/     30     31  2    ,   / 0 1 3    4   56 &   ]     *� � � � 1Y*+� 3� 6W�   '   
    y  �(        )*     78    1  9    :,   	7 1 3    4   <= &   �     y� 9� ?� CL+� I OQ� S � YM� � *,� &� Y� [Y� ]^� `+� d � h� `� n� q�++*� t � x W,� | N-� � �� �� � -+� � �   '       � 
 �  � J � Y � ` � q �(   *    y>8   
 o?@   \AB  ` CD 2    � J J Y9    E,   >      &  \    :*� � � :� ��� �:� �� �:� �Y� �:� �� �� �� �:� �� :	� �	�� � :+,� �:		� J	� � Wι � � � � (� �:

޸ �
� � :
� ��� � ��� $:� � � [Y� ]� `� �� n� �� =� [Y� ]� �� `� `,� `� `+� `� n:�� �	��  :� � [Y� ]� `� �� n��  $ G O   O Q O   � � �   � � �    � � �  � � '   � &   �  �  �  �  � $ � / � < � G � L � O � V � Y � b � k � p � z � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �8 �(   �  / GH  G ?@  � IJ 
 Y ^?@  $ �KL  b UM8  k LN8 	 � OP   �QR  S   OT   :)*    :/    :0    :1   /UR 2   � � O  VV � �  � X� 	  VV � � J �  � I  VV � � J � / / � X� 	�   VV � �  B ��  9B,   / 0 1  Z  &   i     !*� � � �Y*+,�� 6� ���   '       �(   *    !)*     !/     !0     !1  9    :,   / 0 1 3    4  [\ &   /     *� �   '       .(       ]*  ^_ &         � �   '       .`a &   P     *+,� �   '       .(   *    ]*     b     c     d   e  &   P      %�� � � � h�� !� h� ��   '       .  0  12    @ f   gh   "  $      i *k	 1            