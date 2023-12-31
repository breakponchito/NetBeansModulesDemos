����   43
      "org/xml/sax/helpers/DefaultHandler <init> ()V	  	 
   -org/openide/filesystems/XMLFileSystem$Handler validate Z  java/util/Stack
  	     resElemStack Ljava/util/Stack;	     elementStack  java/lang/StringBuffer
  	     pcdata Ljava/lang/StringBuffer;	     ! dtdMap Ljava/util/Map;	  # $ % rootElem 4Lorg/openide/filesystems/XMLFileSystem$ResourceElem;
 ' ( ) * + java/lang/String hashCode ()I
  - . / push &(Ljava/lang/Object;)Ljava/lang/Object; 1 name 3 4 5 6 7 org/xml/sax/Attributes getValue &(Ljava/lang/String;)Ljava/lang/String;	  9 : ; FOLDER_CODE I = org/xml/sax/SAXException ? %org/openide/filesystems/XMLFileSystem A XML_MisssingAttr
 C D E F G org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 < I  J (Ljava/lang/String;)V L 2org/openide/filesystems/XMLFileSystem$ResourceElem N java/net/URL	  P Q R 
urlContext Ljava/net/URL;
 K T  U (Z[Ljava/net/URL;)V	  W X % topRE
 K Z [ \ addChild |(Ljava/lang/String;Lorg/openide/filesystems/XMLFileSystem$ResourceElem;)Lorg/openide/filesystems/XMLFileSystem$ResourceElem;	  ^ _ ; 	FILE_CODE
 ' a b c intern ()Ljava/lang/String;	  e f g uri Ljava/lang/String; 3 i j + 	getLength l url
  n o p 	setLength (I)V	  r s ; weight	  u v ; 	ATTR_CODE 3 x y z getQName (I)Ljava/lang/String; 3 | 6 z
 ~  � � � 'org/openide/filesystems/XMLMapAttr$Attr isValid (Ljava/lang/String;)I
 � � � � � "org/openide/filesystems/XMLMapAttr createAttributeAndDecode O(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/XMLMapAttr$Attr;
 K � � � getAttr '(Z)Lorg/openide/filesystems/XMLMapAttr;
 � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � 'org/openide/filesystems/MultiFileObject s
 ' � � � equals (Ljava/lang/Object;)Z � intvalue
 � � � � � java/lang/Integer parseInt � java/lang/NumberFormatException
  � � � peek ()Ljava/lang/Object;
 K � � � isFolder ()Z
  � � c toString
 ' � � c trim
 ' � � + length
 ' � � � getBytes ()[B
 K � � � 
setContent ([BLjava/lang/String;I)V
  � � � pop
 ' �  � ([CII)V
  � � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � � � � / java/util/Map get
 � � � � � java/lang/Object getClass ()Ljava/lang/Class;
 � � � � � java/lang/Class getClassLoader ()Ljava/lang/ClassLoader;
 � � � � � java/lang/ClassLoader getResource "(Ljava/lang/String;)Ljava/net/URL;
 M � � c toExternalForm � org/xml/sax/InputSource
 � I � java/io/ByteArrayInputStream
 � �  � ([B)V
 � �  � (Ljava/io/InputStream;)V
  � �  startDocument � <root>
  � �  endDocument � folder � file � attr 	Signature GLjava/util/Stack<Lorg/openide/filesystems/XMLFileSystem$ResourceElem;>; %Ljava/util/Stack<Ljava/lang/String;>; G(Ljava/util/Map;Lorg/openide/filesystems/XMLFileSystem$ResourceElem;Z)V Code LineNumberTable LocalVariableTable this /Lorg/openide/filesystems/XMLFileSystem$Handler; MethodParameters error "(Lorg/xml/sax/SAXParseException;)V 	exception Lorg/xml/sax/SAXParseException; 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; warning 
fatalError startElement Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V newRes )Lorg/openide/filesystems/XMLMapAttr$Attr; attrMap $Lorg/openide/filesystems/XMLMapAttr; retVal Ljava/lang/Object; key value i weightS len xmluri lname amap Lorg/xml/sax/Attributes; controlCode foName StackMapTable 
endElement 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V string" [B 
characters ch [C start resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; pid sid 	publicURL <clinit> 
SourceFile XMLFileSystem.java InnerClasses Handler ResourceElem Attr         : ;    _ ;    v ;    $ %             �    �      �    �   Q R      !    X %         s ;    f g       �  �   �     :*� *� *� Y� � *� Y� � *� Y� � *+� *,� "*� �    �   & 	  k a 	b c g *l /m 4n 9o �   *    : � �     :   !    : $ %    :            $        �   6     +�    �      t �        � �           <               �   6     +�    �      z �        � �           <             	  �   6     +�    �      � �        � �           <             
  �  _    �-� &6*� -� ,W0� 2 :� 8� H� � <Y>@� B� H�� KY� MY*� OS� S:**� V� Y� V*� *� V� ,W�� ]� y� � <Y>@� B� H�� `:*� d� h � *k� 2 � d� KY� MY*� OS� S:**� V� Y� V*� *� V� ,W*� � m*� q�� t� �� � <Y>@� B� H�� h 66� U� w :	� { :
	� }� 0	
� �:*� V� �:� �:� � �W�����0� 2 � �� !�� 2 :� *� �� q� :	�� ��� �  �   � -  � � � � "� '� 6� K� Z� f� g� o� t� �� �� �� �� �� �� �� �� �� �� �� �� ���
���*�3�<�F�Q�V�`�f�w������������� �   �  K  %  � ) % < $ � F  Q   A g 	* 6 g 
 Y ; �  g 
 � ;   � � �    � g   � g   � 1 g   �  � ;  } g    @ � 6 '0#=� � R� � , 	  ' ' ' 3 ' '  �� �       <         1             �  P     �*� � �� '� &� ]� A*� V� �� 7*� � �� �:*� V� �� � �� *� d*� q� �*� � m-� &6*� � �W� 8� � ]� *� � �W**� � �� K� V��    �   .   � � )� I� Q� W� _� o� w� �� �� �   >  ) (  g    � � �     � f g    � g    � 1 g  W 0 ;    ? � =   ' ' ' '  K�     ' ' ' '  K!� �      <     f     1         # �  �   �     2*� � �� '� &� ]� �*� V� �� �*� � 'Y+� �� �W�    �      � � � � � 1� �   *    2 � �     2$%    2& ;    2 � ;     
     <    $  &   �         '(  �   �     L*� +� � � 'N-� 4*� � *� ɶ �-� ն �N� �Y-� ఻ �Y� �Y�� � 氻 �Y,� �    �      � �    ( 1 C	 �   *    L � �     L) g    L* g   >+ g    	 � 1 '     <    	)  *          �   �   {     9*� �*� Y� � *� *� "� ,W**� "� V*� Y� � *� � ,W�    �          # . 8 �       9 � �       <        �   �   K     *� �*� � �W*� � �W�    �          �        � �       <       ,   �   9      � &� 8� &� ]�� &� t�    �      ] ^ _ -   ./      >0  K >1 
 ~ �2 