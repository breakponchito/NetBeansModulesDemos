����   4
      java/lang/Object <init> ()V
  	 
   org/openide/xml/XMLUtil createXMLReader (ZZ)Lorg/xml/sax/XMLReader;	     saxes &[[Ljavax/xml/parsers/SAXParserFactory;
      "javax/xml/parsers/SAXParserFactory newInstance &()Ljavax/xml/parsers/SAXParserFactory;  +javax/xml/parsers/FactoryConfigurationError  java/lang/StringBuilder
    'Info about thread context classloader: 
     ! append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 # $ % & ' java/lang/Thread currentThread ()Ljava/lang/Thread;
 # ) * + getContextClassLoader ()Ljava/lang/ClassLoader;
  -   . -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  0 1 2 toString ()Ljava/lang/String;
 4 5 6 7 8 org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
  : ; < setValidating (Z)V
  > ? < setNamespaceAware
  A B C newSAXParser ()Ljavax/xml/parsers/SAXParser;
 E F G H I javax/xml/parsers/SAXParser getXMLReader ()Lorg/xml/sax/XMLReader; K .javax/xml/parsers/ParserConfigurationException M org/xml/sax/SAXException O 8Cannot create parser satisfying configuration parameters
 L Q  R *(Ljava/lang/String;Ljava/lang/Exception;)V
  T U V getDOMImplementation !()Lorg/w3c/dom/DOMImplementation; X "java/lang/IllegalArgumentException Z 1System ID cannot be null if public ID specified. 
 W \  ] (Ljava/lang/String;)V _ ` a b c org/w3c/dom/DOMImplementation createDocumentType R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType; _ e f g createDocument V(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
  i j k 
getFactory .(ZZ)Ljavax/xml/parsers/DocumentBuilderFactory;
 m n o p q (javax/xml/parsers/DocumentBuilderFactory newDocumentBuilder %()Ljavax/xml/parsers/DocumentBuilder;
 s T t !javax/xml/parsers/DocumentBuilder v org/w3c/dom/DOMException
 u x  y (SLjava/lang/String;)V { java/lang/RuntimeException
 z 0
 u ~  � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;	  � � � doms ,[[Ljavax/xml/parsers/DocumentBuilderFactory;
 m �  � ,()Ljavax/xml/parsers/DocumentBuilderFactory;
 m :
 m >
 s � � � setErrorHandler (Lorg/xml/sax/ErrorHandler;)V
 s � � � setEntityResolver (Lorg/xml/sax/EntityResolver;)V
 s � � � parse 1(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document; � java/lang/NullPointerException � KYou must set an encoding; use "UTF-8" unless you have a good reason not to!
 � \
  � � � 	normalize .(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document; � org/openide/xml/XMLUtil$1
 � 
 � � � � � java/security/AccessController doPrivileged 4(Ljava/security/PrivilegedAction;)Ljava/lang/Object; � java/lang/ClassLoader
 # � � � setContextClassLoader (Ljava/lang/ClassLoader;)V
 � � �  � &javax/xml/transform/TransformerFactory *()Ljavax/xml/transform/TransformerFactory; � 'javax/xml/transform/stream/StreamSource � java/io/StringReader �U<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:xalan='http://xml.apache.org/xslt' exclude-result-prefixes='xalan'><xsl:output method='xml' indent='yes' xalan:indent-amount='4'/><xsl:template match='@*|node()'><xsl:copy><xsl:apply-templates select='@*|node()'/></xsl:copy></xsl:template></xsl:stylesheet>
 � \
 � �  � (Ljava/io/Reader;)V
 � � � � newTransformer ?(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer; � � � � � org/w3c/dom/Document 
getDoctype ()Lorg/w3c/dom/DocumentType; � � � � 2 org/w3c/dom/DocumentType getPublicId � javax/xml/transform/OutputKeys � doctype-public
 � � � � � javax/xml/transform/Transformer setOutputProperty '(Ljava/lang/String;Ljava/lang/String;)V � � � 2 getSystemId � doctype-system � encoding � 'http://www.oracle.com/xml/is-standalone � yes � java/util/HashSet
 � 
  � � � collectCDATASections $(Lorg/w3c/dom/Node;Ljava/util/Set;)V � � � � � java/util/Set size ()I � � � � iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object; � java/lang/String
  �    (C)Ljava/lang/StringBuilder; cdata-section-elements !javax/xml/transform/dom/DOMSource
  (Lorg/w3c/dom/Node;)V	 'javax/xml/transform/stream/StreamResult
  (Ljava/io/OutputStream;)V
 � 	transform ;(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V java/lang/Exception java/io/IOException
  (Ljava/lang/Throwable;)V org/w3c/dom/CDATASection org/w3c/dom/Node getParentNode ()Lorg/w3c/dom/Node;!" 2 getNamespaceURI$ {& }() 2 getNodeName �+,- add (Ljava/lang/Object;)Z/01 getChildNodes ()Lorg/w3c/dom/NodeList;3456 � org/w3c/dom/NodeList 	getLength389: item (I)Lorg/w3c/dom/Node;
<=>?@ javax/xml/validation/Schema newValidator "()Ljavax/xml/validation/Validator;B org/openide/xml/XMLUtil$2
AD E ([Lorg/xml/sax/SAXException;)V
G �H javax/xml/validation/Validator
 JKL 
fixupAttrs ,(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
GNOP validate (Ljavax/xml/transform/Source;)V	 RST $assertionsDisabled ZV java/lang/AssertionError
UX Y (Ljava/lang/Object;)V[\]^_ org/w3c/dom/Element 	cloneNode (Z)Lorg/w3c/dom/Node;
 abc fixupAttrsSingle (Lorg/w3c/dom/Element;)Ve *[ghi getElementsByTagName *(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
 klc removeXmlBasen java/util/HashMap
m [qrs getAttributes ()Lorg/w3c/dom/NamedNodeMap;u4v org/w3c/dom/NamedNodeMapu8y org/w3c/dom/Attrx!x|} 2 getName xmlns
 ���- equalsx�� 2 getValue����� java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;���� entrySet ()Ljava/util/Set;� java/util/Map$Entry��� � getKey[�� ] removeAttribute��� �[��� setAttributeNS 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V� $http://www.w3.org/XML/1998/namespace� base[�� � removeAttributeNS� xml:base� java/io/CharConversionException� null
� \
 ��� checkAttributeCharacters (Ljava/lang/String;)Z
 ��� � length
 ���� charAt (I)C� &lt;� &amp;� &apos;� &quot;
 ��� checkContentCharacters� &gt;	 ��� DEC2HEX [C
 \� 
odd length
 �� � ([CII)V
����� java/lang/Integer parseInt (Ljava/lang/String;I)I� java/lang/NumberFormatException
��� 2 getLocalizedMessage� Invalid XML character &#
 �  � (I)Ljava/lang/StringBuilder;� ;.� :Cannot create parser satisfying configuration parameters: 
� � *(Ljava/lang/String;Ljava/lang/Throwable;)V �/ ���� getDocumentElement ()Lorg/w3c/dom/Element;[![�� 2 
getTagName �| ���� removeChild &(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
 s��� newDocument ()Lorg/w3c/dom/Document; ���� 
importNode '(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node; ���� appendChild� Could not import or append   of  getClass ()Ljava/lang/Class; � �  �g[/ org/w3c/dom/Text
 2 getNodeValue
 � 2 trim[�
 java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;[ 2 getLocalName ! java/util/List indexOf (Ljava/lang/Object;)I# new child element '% ' not specified in order 
 '() findSubElements '(Lorg/w3c/dom/Element;)Ljava/util/List; �, Existing child element '[./0 insertBefore 8(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;2 java/util/ArrayList
14 5 (I)V789 getNodeType ()S+< non-ws text encountered in > : @  unexpected non-element child of C *more than one element with same name found[EF� getOwnerDocument �HIJ createElementNS ;(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
 LMN translateXML >(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;\[�[ST � setAttribute
 VWX copyDocument ?(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/lang/String;)VZ "org/openide/xml/XMLUtil$ErrHandler
Y 
]^_` � java/lang/Class desiredAssertionStatus  � IDENTITY_XSLT_WITH_INDENT Ljava/lang/String; ConstantValue ORACLE_IS_STANDALONE Code LineNumberTable LocalVariableTable this Lorg/openide/xml/XMLUtil; 
Exceptions (Z)Lorg/xml/sax/XMLReader; MethodParameters err -Ljavax/xml/parsers/FactoryConfigurationError; ex 0Ljavax/xml/parsers/ParserConfigurationException; namespaceAware factory $Ljavax/xml/parsers/SAXParserFactory; StackMapTablex %[Ljavax/xml/parsers/SAXParserFactory; `(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document; 	rootQName namespaceURI doctypePublicID doctypeSystemID impl Lorg/w3c/dom/DOMImplementation; dtd Lorg/w3c/dom/DocumentType; e Ljava/lang/RuntimeException; *Ljavax/xml/parsers/DocumentBuilderFactory;� +[Ljavax/xml/parsers/DocumentBuilderFactory; i(Lorg/xml/sax/InputSource;ZZLorg/xml/sax/ErrorHandler;Lorg/xml/sax/EntityResolver;)Lorg/w3c/dom/Document; input Lorg/xml/sax/InputSource; errorHandler Lorg/xml/sax/ErrorHandler; entityResolver Lorg/xml/sax/EntityResolver; builder #Ljavax/xml/parsers/DocumentBuilder;� org/xml/sax/InputSource� org/xml/sax/ErrorHandler� org/xml/sax/EntityResolver write A(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V pub sys s cdataSections Ljava/lang/StringBuilder; tf (Ljavax/xml/transform/TransformerFactory; t !Ljavax/xml/transform/Transformer; dt cdataQNames Ljava/util/Set; source Ljavax/xml/transform/Source; result Ljavax/xml/transform/Result; Ljava/lang/Exception; doc Lorg/w3c/dom/Document; out Ljava/io/OutputStream; enc doc2 orig Ljava/lang/ClassLoader; LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>;� java/io/OutputStream� java/lang/Throwable uri parent Lorg/w3c/dom/Node; i I node children Lorg/w3c/dom/NodeList; 	Signature 8(Lorg/w3c/dom/Node;Ljava/util/Set<Ljava/lang/String;>;)V 5(Lorg/w3c/dom/Element;Ljavax/xml/validation/Schema;)V x Ljava/io/IOException; data Lorg/w3c/dom/Element; schema Ljavax/xml/validation/Schema; v  Ljavax/xml/validation/Validator; error [Lorg/xml/sax/SAXException;� root copy nl attr Lorg/w3c/dom/Attr; j entry Ljava/util/Map$Entry; replace Ljava/util/Map; attrs Lorg/w3c/dom/NamedNodeMap; ;Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>; 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; toAttributeValue &(Ljava/lang/String;)Ljava/lang/String; ch C val buf toElementContent toHex ([BII)Ljava/lang/String; b B [B start len fromHex ([CII)[B !Ljava/lang/NumberFormatException; g hex magic�� chars escape Lorg/w3c/dom/DOMException; n nl2 doctype appendChildElement @(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;[Ljava/lang/String;)V index2 el order [Ljava/lang/String; l Ljava/util/List; index elements $Ljava/util/List<Ljava/lang/String;>; 'Ljava/util/List<Lorg/w3c/dom/Element;>; text >(Lorg/w3c/dom/Element;)Ljava/util/List<Lorg/w3c/dom/Element;>; findElement P(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element; 	localName name 	namespace 	nodeCount findText &(Lorg/w3c/dom/Node;)Ljava/lang/String; Lorg/w3c/dom/Text; newNode from to m 
oldElement 
newElement newNamespace defaultErrorHandler ()Lorg/xml/sax/ErrorHandler; <clinit> 
SourceFile XMLUtil.java InnerClasses Entry 
ErrHandler 1      ��   
     
 � �   cd e    � fd e    �ST       g   3     *� �   h   
    X  Yi       jk   	  I g         � �   h       bl     L 	 m g   0     � �   h       li       OT  l     Ln   O   )   g  z     y� � � 2� � 2M,� L� M� #N-� Y� � � "� (� ,� /� 3W-�,� 9,� =� � � 2� � ,S,� @� D�N� LYN-� P�     #  e l m J h   >    ~    �   � # � $ � 1 � = � A � C � H � M � e � m � n �i   4  $ op  n qr    yOT     ysT   atu v   a Ka�    aHw�    w�     Ta�     aHw�     wG Jl     Ln   	O  s   	 fy g   �     6� S:,� -� � WYY� [�:-� *,-� ^ :+*� d �   h       �  �  �  �  �  � * �i   >    6zd     6{d    6|d    6}d   1~   �� v    �  _�  �l     un   z  {  |  }   
 U V g   �     1� hK*� l� r�L� uY	N� w�L� uY	+� |� w+� }� u�     J    z h       �  �  �  �  �  �i       qr   ��   +t�  v    �   m  JL zl     u * j k g   �     D� �� � 2� � 2M,� )� �M,� �,� �� �� � 2� � ,S,�   h       �  �  �   � % � * � B �i        DOT     DsT   ,t� v   X 	Kb�    bH��    ��   m b�    m bH��    m �n   	O  s   	 �� g       ?:� h:� l:� :� LYN� P�-� 	-� �� 
� �*� ��  
   J h   .   E F 
I L J K "N &O ,R 1S 8Vi   R   qr    ?��     ?OT    ?sT    ?��    ?��   <��  
 5t� v     �  ��� s m  J	l     Ln   �  O  s  �  �   	�� g       ;,� � �Y�� ��*� �N� "� (:� "� �Y� �� �� �� �� �:� �Y� �Y�� �� �� �:-� � :� 1� � :� �� �� � :		� �	� ��,� ��߶ Ч :� �Y� �:-� �� � � H� Y� :	� � :

� � � 
� � � �:	�  � �W���	� /� лY-�:	�Y+�
:
	
�� "� �� :�Y��:� "� ���  � � � W .! .-  !/-   h   � %  � � � � � .� 3� J� R� W� `� e� n� w� |� �� �� �� �� �� �� �� �� �� �� �� �� ������!�#�-�7�:�i   �  ` %�d  w �d 	 � �d  � <�� 	 3 ���  J ���  R ���  � r��  �� 	 	�� 
# 
��   ;��    ;��   ;�d  (��   �� �     � r�� v   ] � _ 	 �� � � � � � � �  � S W� * �  �� %� � '  �� � � � K�l    n   �  �  �   
 � � g  4     |*�� S*� M,� H,�  N-� 0+� Y� #� -� %� ,�' � � /�* W� +,�' �* W*�. M>,�2 � ,�7 +� ����   h   2   � � � � � � J� W� ^� j� u� {�i   >   >�d   I��  ` ��    |��     |��  ^ �� �       |�� v    � J �� � 3� n   	�  �  �   � 	O� g   �     I+�;M� LYSN,�AY-�C�F,�Y*�I��M� :�Q� �UY�W�-2� -2��   ) , h   * 
  � � � � )� ,� .� >� D� H�i   4  . ��    I��     I��   D��   ;�� v    � , [<G� 	l     Ln   	�  �   
KL g   �     :*�Z �[L+�`+d�f M>,�2 � ,�7 �[�`����+�   h           % 2 8i   *   ��    :��    /��   !�� v    � [3� n   �   
bc g  x     �*�j�mY�oL*�p M>,�t � D,�w �x:�z � (�{ ~��� +�{ �� �� W����+�� � � N-� � � <-� � ��:*�� � ��� *�� � ��� � ��� ����   h   6   	 
    + E Z ` � � � �i   >  + /��   K��  � +��    ���    ���   ��� �     � +��   ��� v    � �u� D� �  �� Al     un   �   
lc g   H     *���� *��� �   h        i       ��  n   �   	�� g  ?     �*� ��Y����*��� *�� Y� L=*��� Y*��><� +�� W� <&� +�� W� +'� +�� W� "� +�� W� 	+� �W����+� /�   h   Z   * + . / 2  4 *5 07 68 >: A; G< O> R? X@ `B cC iD qF tI z4 �Li   *  0 J��  " ^��    ��d     e�� v    	� 	 � � � l    �n   �   	�� g  >     �*� ��Y����*��� *�� Y� L=*��� e*��><� +�� W� H&� +�� W� 7>� +� &*d��]� *d��]� +¶ W� 	+� �W����+� /�   h   N   [ \ _ ` c  e *f 0h 6i >k Al Gm Oo Rp uq }s �v �e �yi   *  0 V��  " j��    ��d     q�� v    � 	 � -� � l    �n   �   	�� g   �     C� Y� N6� 0*`36-�� �~z4� �W-��~4� �W����-� /�   h      � � � � *� 8� >�i   >   ��   3��    C��     C��    C��   ;�� v    �  � 2n   �  �  �   	�� g  6     g*� �Y��ȿ*�>p� �Yɷȿl�:� 9� �Y*d��:ld�ΑT� :�Y�ַȿ������  < L O� h   :   � � � � � #� *� .� <� L� O� Q� ^� d�i   H  Q q�  < "�d    g��     g��    g��   U��  * =�� v   ' � � �� $ �� � �� l    n   �  �  �   
�� g  ,     �<=*��� �*��>]� w�     K      	   C   
   C      C   "   F   &   F   '   F   <   F� 0<� + � %��Y� Y� ٶ ��޶ � /������u� � �   h   2   � � � � � \� _� a� d� j� �� ��i   *   z��   ���    ��d    ��T v    � � W� '� @l    �n   �   
�� g  Y     �<=*��� �*��>]� ��     c      	   ;   
   ;      ;   &   ^   <   ^   >   >� P� � I� *d��]� � <� 0<� + � %��Y� Y� ٶ ��޶ � /������]� � �   h   B   � � � � � T� W� [� ^� t� w y | �	 �� �i   *   ���   ���    ��d    ��T v    � � O@� '� @l    �n   �   
 � � g  �    �L� hM,� lL� !N�Y� Y� � -� ,� /-��N*�� :6�2 � %�7 � ș �7 � �N����-� `+� r*�� �� *�� �� +� r*� � �� *� � � � *� � � � � ^ � d :�� �� W� 	+��:6�2 � b�7 :� Ț I�� �� W� 4:�Y� Y� �� � , � � � ,� /�⿄���� d� :6�2 � m�7 �[:�j�	 :6		�2 � <	�7 :

�
� #
�
� ���� 
� W�	��	��������     J � u h   � .        . 0  8! G" V$ c! i( m) r* }+ �, �- �. �/ �, �) �1 �3 �5 �6 �7 �9=:	<85>@EAQB`CnDsE|F�G�H�I�J�F�B�Ni   �   �r  ; .��  � �� 	 /��  � N��  � k�� � (�� 
 E�� 	n V�� | H�� T v��   ���   ���  �t�  0���  8���  � ��� v   l �   � s m  J�  �3'� � `�  �� � 3  � s m �3 �  u� 0� � � *[3>� � l    n   �   	�� g  �  
   �,�N-+� � 6� .� WY� Y� "� +� � $� -� ,� /� [�*�&::�* :� � � a� � �[:-� � 6		� /� WY� Y� +� � � $� -� ,� /� [�	� 
:� ���*+�- W�   h   B   c d g h Dk Jl Mn lo {q �r �t �u �v �x �z �{i   \ 	 { @�� 	 l O��    ���     ���    ���   ���   ���  J  �  M |/� �      ��  J   v   " � D� [ �� V[� � l     Wn   �  �  �   	() g  �     �*�	 L�1Y+�2 �3M>+�2 � �+�7 :�6 � ,�[�: W� ��6 � D�
� :���� *� WY� Y� ;� *� ,=� � � /� [�� 9�6 � � *� WY� Y� ?� *� ,=� � ,� /� [����N,�   h   :   � � � !� *� 5� D� O� [� f� �� �� �� ��i   >  [ 2d  * ���   ���    ���    ���   � � �      �  v    � 3� ,� H� &� l     Wn   �  �    	 g  x  	   �N*�	 :�2 66� u�7 �6 � ]�7 :�A :� �' � :+��� -,� ,�  ��� -� �[N� � WYB� [�����-�   h   >   � � 
� � � /� :� C� V� f� q� u� ~� �� ��i   \ 	 : O��  C Fd   y��    ���     �d    �	d   ���  
 ���   ~
� v   / �  [ � �[3  � ; �A �� 
� l     Wn   �    	   	 g   �     =*�. L=+�2 � ++�7 �6 � +�7 �
N-� ������   h      � � � #� .� 5� ;�i   *  .   	 2��    =��    6�� v    � 	3+� n   �   	MN g  �     �*�D +*� �G M*�	 N-�2 66� ?-�7 :�6 � �[+�K:� �O :,�P W����*�p :6�t � (�w :,�' �Q �R ����,�   h   B   � � � "� ,� 6� A� O� Y� b� h� p� � �� �� ��i   z  L �  6 ,��  Y 	�  % C��  � ��  s 1��    ��     �	d   ��   ���  " ���  p 6� v   0 � % [ �[3  � )� 	� � 
u� 0n   	  	   	WX g  *     �+�D N*�	 :�2 66� ��7 ::�6 � j�[:	-,	�� �G :	�p :
�[:6
�t � )
�w :�' �Q �R ����	,�U� �O :+�D �� :� +�P W���N�   h   ^       "	 -
 0 ; B R [ b q | � � � � � � � � �i   �  | ��  e 2��  B ]� 	 [ D� 
 b =�  - ���  0 ��   ���    ��     ��    �d   ���   ���   ��� v   O �  [[ � �3  � I [[ � �3[u[  � 1� 
� � n          	 g          �YY�[�   h      &   g   �      ��\� � �Q�Y0UY1UY2UY3UY4UY5UY6UY7UY8UY	9UY
aUYbUYcUYdUYeUYfU���a� �b� ��   h       L  S q o z �v    @       "  �      A      ��	Y  