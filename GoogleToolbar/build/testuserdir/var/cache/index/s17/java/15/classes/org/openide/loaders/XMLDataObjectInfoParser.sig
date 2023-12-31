����   4
      "org/xml/sax/helpers/DefaultHandler <init> ()V  java/lang/ThreadLocal
  	      +org/openide/loaders/XMLDataObjectInfoParser QUERY Ljava/lang/ThreadLocal;  java/lang/ref/WeakReference
     (Ljava/lang/Object;)V	     xml Ljava/lang/ref/Reference;
     waitFinished ()Ljava/lang/String;   
    ! " get ()Ljava/lang/Object;	 $ % & ' ( !org/openide/loaders/XMLDataObject ERR Ljava/util/logging/Logger;	 * + , - . java/util/logging/Level FINE Ljava/util/logging/Level;
 0 1 2 3 4 java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z 6 java/lang/StringBuilder
 5  9 Cyclic deps on queried class: 
 5 ; < = append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 5 ? < @ -(Ljava/lang/Object;)Ljava/lang/StringBuilder; B  for 
  D E F getXml %()Lorg/openide/loaders/XMLDataObject;
 5 H I  toString
 0 K L M fine (Ljava/lang/String;)V O java/lang/Class
  Q R  set T Will do query for class: 	  V W X lookup Lorg/openide/util/Lookup; Z 
Lookup is  \ 	 for id: 
  ^ _ ` updateLookup b(Lorg/openide/loaders/XMLDataObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/util/Lookup; b Updating lookup:  d Wait lookup is over: 	  f g h parsedId Ljava/lang/String;	 j k l m X org/openide/util/Lookup EMPTY	  o p q result  Lorg/openide/util/Lookup$Result; s Querying the result:  u No result for lookup: 
 j w W x %(Ljava/lang/Class;)Ljava/lang/Object; z Returning value: 
  |  } &(Ljava/lang/String;)Ljava/lang/String;	   � � sharedParserImpl Lorg/xml/sax/XMLReader; � No sharedParserImpl, exiting
 $ � � � getPrimaryFile &()Lorg/openide/filesystems/FileObject; � Going to read parsedId for  � Has already been parsed: 
 � � � � � "org/openide/filesystems/FileObject toURL ()Ljava/net/URL;
 � � � � isValid ()Z � Invalid file object: 
 � � � �  java/io/InputStream close � java/io/IOException	 * � � . WARNING
 0 � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � parsedId set to NULL for 
 � � � � getInputStream ()Ljava/io/InputStream; � I/O exception while opening 
  � � � warning *(Ljava/lang/Throwable;Ljava/lang/String;)V
  � � � configureParser ;(Lorg/xml/sax/XMLReader;ZLorg/xml/sax/ext/LexicalHandler;)V � � � � � org/xml/sax/XMLReader setContentHandler (Lorg/xml/sax/ContentHandler;)V � � � � setErrorHandler (Lorg/xml/sax/ErrorHandler;)V � org/xml/sax/InputSource
 � � � �  java/net/URL toExternalForm
 � �  M
 � � � � setByteStream (Ljava/io/InputStream;)V � � � � parse (Lorg/xml/sax/InputSource;)V � Parse finished for  � netbeans.profile.memory
 � � � � � java/lang/Boolean 
getBoolean (Ljava/lang/String;)Z	 � � � � � -org/openide/loaders/XMLDataObject$NullHandler INSTANCE /Lorg/openide/loaders/XMLDataObject$NullHandler; � -http://xml.org/sax/properties/lexical-handler � � � � setProperty '(Ljava/lang/String;Ljava/lang/Object;)V � org/xml/sax/SAXException � java/lang/Exception � <org/openide/loaders/XMLDataObjectInfoParser$StopSaxException � Parsing successfully stopped: 	  � � � STOP >Lorg/openide/loaders/XMLDataObjectInfoParser$StopSaxException;
 � � �  
getMessage
 � �
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z � #Parsing stopped with STOP message:   Thread:
 java/lang/Thread currentThread ()Ljava/lang/Thread;
	  getName 8DocListener should not throw SAXException but STOP one.

 0 � M
 � getException ()Ljava/lang/Exception; java/io/FileNotFoundException	 * . INFO No update to ID:  New id:  No need to update lookup: 
 $  getRegisteredInfo <(Ljava/lang/String;)Lorg/openide/loaders/XMLDataObject$Info;
 $"#$ createInfoLookup f(Lorg/openide/loaders/XMLDataObject;Lorg/openide/loaders/XMLDataObject$Info;)Lorg/openide/util/Lookup;& Lookup from info: 
()*+, org/openide/loaders/Environment 
findForOne ;(Lorg/openide/loaders/DataObject;)Lorg/openide/util/Lookup;. Lookup from env: 0 Shared lookup updated: 2 org/openide/nodes/Node$Cookie
 j456 lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
89:;< org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
8>?< removeLookupListenerA Firing property change for C org/openide/loaders/DataObjectE cookie
 $GHI firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)VK Firing done for M &http://xml.org/sax/features/validation �OPQ 
setFeature (Ljava/lang/String;Z)VS 8Warning: XML parser does not support validation feature.U =Warning: XML parser does not support lexical-handler feature.W 
Parsed to 
 YZ  stop	 *\] . FINEST_ startEntity {0}
 0a �b @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)Vd endEntity {0}f 
startCDATA
 0h �i .(Ljava/util/logging/Level;Ljava/lang/String;)Vk endCDATAm comment len: {0}
opqrs java/lang/Integer valueOf (I)Ljava/lang/Integer;u characters len: {0}w endElement: {0}y endPrefix: {0}{ ignorableWhitespace: {0}} notationDecl: {0} processingInstruction: {0}� resolveEntity: {0}
 ��� resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;� skippedEntity: {0}� startDocument� startElement: {0}� startPrefixMapping: {0}� unparsedEntityDecl: {0}Z
���� � !org/openide/filesystems/FileEvent getFile
� �� java/lang/Object
 $��  clearDocument� cleared parsedId
 $��� getNodeDelegateOrNull ()Lorg/openide/nodes/Node;� )org/openide/loaders/XMLDataObject$XMLNode
���  update
�  � java/lang/ref/Reference
 � 
����� org/openide/xml/XMLUtil createXMLReader ()Lorg/xml/sax/XMLReader;� ?org/openide/loaders/XMLDataObjectInfoParser$EmptyEntityResolver
�  ���� setEntityResolver (Lorg/xml/sax/EntityResolver;)V� 2System does not contain JAXP 1.1 compliant parser!
����� org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 N
 0��� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
����� java/lang/System getProperties ()Ljava/util/Properties;� org.xml.sax.driver
���� } java/util/Properties getProperty ���� getClass ()Ljava/lang/Class;
���� put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;� java/lang/RuntimeException� *org/openide/filesystems/FileChangeListener� org/xml/sax/ext/LexicalHandler� org/openide/util/LookupListener NULL ConstantValue 	Signature >Ljava/lang/ref/Reference<Lorg/openide/loaders/XMLDataObject;>; -Ljava/lang/ThreadLocal<Ljava/lang/Class<*>;>; &(Lorg/openide/loaders/XMLDataObject;)V Code LineNumberTable LocalVariableTable this -Lorg/openide/loaders/XMLDataObjectInfoParser; #Lorg/openide/loaders/XMLDataObject; MethodParameters getPublicId id nu Ljava/lang/Object; StackMapTable lookupCookie l r ret clazz Ljava/lang/Class; previous LocalVariableTypeTable Ljava/lang/Class<*>;� java/lang/Throwable ((Ljava/lang/Class<*>;)Ljava/lang/Object; 
previousID ex Ljava/io/IOException; input Lorg/xml/sax/InputSource; stopped msg Ljava/lang/Exception; 	checkStop Lorg/xml/sax/SAXException; Ljava/io/FileNotFoundException; ignorePreviousId parser realXML myFileObject $Lorg/openide/filesystems/FileObject; newID url Ljava/net/URL; in Ljava/io/InputStream; 	newLookup prevRes info (Lorg/openide/loaders/XMLDataObject$Info; &org/openide/loaders/XMLDataObject$Info sex 
validation Z lex  Lorg/xml/sax/ext/LexicalHandler; (Ljava/lang/Throwable;)V Ljava/lang/Throwable; 
annotation startDTD 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V root pID sID 
Exceptions endDTD startEntity name 	endEntity comment ([CII)V ch [C start I length error "(Lorg/xml/sax/SAXParseException;)V p1 Lorg/xml/sax/SAXParseException; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
fatalError endDocument startElement S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/jar/Attributes;)V uri lName qName atts Ljava/util/jar/Attributes; 
characters 
endElement 	localName endPrefixMapping prefix ignorableWhitespace notationDecl publicId systemId processingInstruction '(Ljava/lang/String;Ljava/lang/String;)V target data skippedEntity Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V 
attributes Lorg/xml/sax/Attributes; startPrefixMapping unparsedEntityDecl K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V notationName fileFolderCreated &(Lorg/openide/filesystems/FileEvent;)V fe #Lorg/openide/filesystems/FileEvent; fileDataCreated fileCreated '(Lorg/openide/filesystems/FileObject;)V fo fileChanged prevId fileDeleted fileRenamed ,(Lorg/openide/filesystems/FileRenameEvent;)V )Lorg/openide/filesystems/FileRenameEvent; fileAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V ,Lorg/openide/filesystems/FileAttributeEvent; resultChanged !(Lorg/openide/util/LookupEvent;)V lookupEvent Lorg/openide/util/LookupEvent; n Lorg/openide/nodes/Node;p org/openide/nodes/Node <clinit> props Ljava/util/Properties; SAX2_KEY 
SourceFile XMLDataObjectInfoParser.java InnerClasses Result NullHandler StopSaxException Info Cookie XMLNode EmptyEntityResolver 0   ���   � �   
 � �   � h �        �   �  g h    W X    p q      �   � +   � �   \     *� *� Y� 	� 
*� Y+� � �   �       e  c  f  g�       ��      � �       �  �   n     *� LM+,� � +�   �       j  k  l�        ��    � h   �� �    �  ��@ � � x �  �    *� 
� +� 6� #� )� /� (� #� 5Y� 78� :+� >A� :*� C� >� G� J�*� 
� � NM*� 
+� P� #� )� /� (� #� 5Y� 7S� :+� >A� :*� C� >� G� J*� :*Y:�*� U� *� UN� Nç :��� #� )� /� &� #� 5Y� 7Y� :-� >[� :� :� G� J-� 4**� C� ]N� #� )� /� � #� 5Y� 7a� :-� >� G� J� #� )� /� #� #� 5Y� 7c� :-� >*� C� >� G� J-� � *� e� 
� iN� ��1*� n:� ,� #� )� /� H� #� 5Y� 7r� :� >� G� J� +� #� )� /� � #� 5Y� 7t� :*� U� >� G� J-+� v:� #� )� /� )� #� 5Y� 7y� :� >A� :*� C� >� G� J:*� 
,� P�:*� 
,� P�  � � �   � � �   I��  ���   �   � *   p  q  r < t > v I x Q y ] z � ~ �  � � � � � � � � � � � � � � � � � � � � � �< �@ �C �J �N �Q �T �Z �_ �k �� �� �� �� �� �� �� �� �� � ��   \ 	 � � X  � � X  � �� h  �L� X Z �� q � A��   ��    ��  I��� �      ��  I��� �   � <� C N�   ���    N N j ��  �    N N  �� ��    N N j �  .4+� � 38'� 8��    N N ��   � �   �    �   0     *� {�   �       ��       ��     } �  �    � ~� � #�� J�� ~M*� CN-� �-� �::� #� )� /� � #� 5Y� 7�� :-� >� G� J*Y:�*� e:ç :��� 7� #� )� /� (� #� 5Y� 7�� :*� e� :A� :-� >� G� J�::� �:*Y:	�� �� N� #� )� /� � #� 5Y� 7�� :� >� G� J:
� � �� :� #� �� �	�
�*� e� #� )� /� � #� 5Y� 7�� :-� >� G� J� �:� D:
*
� 5Y� 7�� :� >� G� �:� � �� :� #� �� �	��� ~Y:
�*,*� �,*� � ,*� � � �Y� · �:� �,� � 
ç :
��� #� )� /� � #� 5Y� 7Ѷ :-� >� G� JӸ ՙ 4,� ۹ � ,� ۹ � ,� ۹ � � :
,� �� � � :
M�:
*� e:� #� 5Y� 7�� :*� e� :A� :-� >� G� JӸ ՙ 4,� ۹ � ,� ۹ � ,� ۹ � � :
,� �� � � :
M��:
� � �
� �� �� 1*� e:� #� 5Y� 7�� :*� e� :A� :-� >� G� J� \� 5Y� 7�� :��� :� G:� #� 5Y� 7
� :� :� G�� #� �
� �
�:� � #� �� �Ӹ ՙ 4,� ۹ � ,� ۹ � ,� ۹ � � :
,� �� � � :
M� �:
� #�
� �Ӹ ՙ 4,� ۹ � ,� ۹ � ,� ۹ � � :
,� �� � � :
M� �:
� #�
� �Ӹ ՙ 4,� ۹ � ,� ۹ � ,� ۹ � � :
,� �� � � :
M� C:Ӹ ՙ 4,� ۹ � ,� ۹ � ,� ۹ � � :,� �� � � :M�� � �� 4:
� #� �
� �� #:� � �� :� #� �� ��	ç :	��+� >+� �� 5� #� )� /� &� #� 5Y� 7� :+� :A� :-� >� G� J�� #� )� /� '� #� 5Y� 7� :� :A� :-� >� G� J� *-� ]W� ' T ] `   ` e `   � � � �18; �[eh ����  ���   � �|�& �mx{ �}�� �|�� �EPS �U_b �|�i��� ���� �|�� ���� ���� �|�  &S  �+  iw  ��  (+ �-7: �  AKN � � �_  [_  |A_  akn �_a_   ��  y�  |��  ���   �  � �   �  �  �  �  �  �  � ! � ' � * � 6 � O � T � Z � h � m � y � � � � � � � � � � � � � � � � � � � � � � � �  � � � �1 �8 �; �= �W �[`ehjvy �| �� �� �� �� �� �� �� �� �� ����
	!#& �( �. �S[dmx
{	}����� �� �� �� �� �� � � � � �+3<EP
S	U_bdfi �k w���
�	������������
�	�����(
+	-7:<>AFKNP\_afknp|���� �"�#�%&(�   �  Z   h  �  j  = ? 
�  ( + � 
� ? h   � �	 
k 
 
�  
P  
p    ��     h  � �  ��  '�  *� h  h�  h  �j  �g �  � B�  � $� - � ��    � � $ � � � ��    � � $ � � �  5� ? � ���  �B �� *I �� ) � �B �� � >   � � $ � � � � ��� �� $g �L �D �� T �L �D �� @ �� Xg �L �Du �L �D �u �L �D�� )   � � $ � � � � ��    �  �L ��  
  � � $ � � � � ��  	B �P��    � � $ � � � � ��      �  B ��  
  � � $ � � � � ��  E�� ;/�       _ ` �  3  	  �+� *� U�*Y:�,� I,-� �� A*� U� :� #� )� /� &� #� 5Y� 7� :-� :A� :+� >� G� J*� Uðç :��-�:� >+�!:� #� )� /� j� #� 5Y� 7%� :� >A� :+� >� G� J� C+�':� #� )� /� '� #� 5Y� 7-� :� >A� :+� >� G� J� � i:*Y:�*� n:*� U� #� )� /� )� #� 5Y� 7/� :*� U� >A� :+� >� G� J**� U1�3� n*� n*�7� ^*�=� #� )� /� � #� 5Y� 7@� :+� >� G� J+D�F� #� )� /� � #� 5Y� 7J� :+� >� G� Jð:��   W ^   X [ ^   ^ c ^   ���  ���   �   � "  , - 	0 1 !2 -3 P5 X7 f: l; q< y= �> �A �B �C �E �F �I �J �K �L	M/O=PEQJRPS\TvVW�X�[�\�   R  y 3 X  � � q   ���    ��   �  h   �� h  � X  lG �   ^ 	� F�E�� � E � 5   $ � � j  	� B�8� F.�    $ � � j� ��        �    � � �   �     0+L�N � :� #R� J+�-� � � :� #T� J�    
  �  ! $ � �   & 	  a 
d b c f !i $g &h /j�   >   		  & 		    0��     0 �    0    0 �    M �
K �
�           �  �   ?     *+� ��   �   
   m n�       ��     ! �       � � �   N     � #�,+� ��   �   
   q r�        ��     !    " h �   	  "   #$ �   �     0*,� � ,� e� #� 5Y� 7V� :*� e� :� G� J*�X�   �      u v +w /x�   *    0��     0% h    0& h    0' h �    J �     � � �   �(     ��   %  &  '   )  �   3     *�X�   �   
   { |�       ��  (     � * M �   F     � #�[^+�`�   �   
    ��       ��     + h (     ��   +   , M �   F     � #�[c+�`�   �   
   � ��       ��     + h (     ��   +   f  �   ;     � #�[e�g�   �   
   � ��       ��  (     � k  �   ;     � #�[j�g�   �   
   � ��       ��  (     � -. �   ]     � #�[l�n�`�   �   
   � ��   *    ��     /0    12    32 (     ��   /  1  3   45 �   =     *�X�   �   
   � ��       ��     67 (     ��   6 8    9   :5 �   =     *�X�   �   
   � ��       ��     67 (     ��   6 8    9   ;  �   3     *�X�   �   
   � ��       ��  (     �8    9   <= �   [     *�X�   �   
   � ��   4    ��     > h    ? h    @ h    AB (     ��   >  ?  @  A   C. �   ]     � #�[t�n�`�   �   
   � ��   *    ��     /0    12    32 (     ��   /  1  3  8    9   D$ �   Z     � #�[v-�`�   �   
   � ��   *    ��     > h    E h    @ h (     ��   >  E  @  8    9   F M �   F     � #�[x+�`�   �   
   � ��       ��     G h (     ��   G  8    9   H. �   ]     � #�[z�n�`�   �   
   � ��   *    ��     /0    12    32 (     ��   /  1  3  8    9   I$ �   Z     � #�[|+�`�   �   
   � ��   *    ��     + h    J h    K h (     ��   +  J  K  8    9   LM �   P     � #�[~+�`�   �   
   � ��        ��     N h    O h (     ��   	N  O  8    9   �� �   V     � #�[�+�`*+,���   �   
   � ��        ��     J h    K h (     � ��   	J  K  8    9   P M �   F     � #�[�+�`�   �   
   � ��       ��     + h (     ��   +  8    9   �  �   ;     � #�[��g�   �   
   � ��       ��  (     �8    9   <Q �   l     � #�[�-�`*�X�   �      � � ��   4    ��     > h    E h    @ h    RS (     ��   >  E  @  R  8    9   TM �   P     � #�[�+�`�   �   
   � ��        ��     G h    > h (     ��   	G  >  8    9   UV �   d     � #�[�+�`�   �   
   � ��   4    ��     + h    J h    K h    W h (     ��   +  J  K  W  8    9   Z  �   >     � #�[��g� �   �   
   � ��       ��  (     � XY �   5      �   �      ��       ��     Z[ �   Z   \Y �   5      �   �      ��       ��     Z[ �   Z   ]^ �   5      �   �      ��       ��     _ �   _   `Y �   �     6*� CM,� �,� �+�����  ,��*� eN*� e� #�� J*-� {W�   �   * 
  � � 	� 
� � � !� &� /� 5��   *  ! a h    6��     6Z[   1� �   	 � 
 $*�   Z   bY �   5      �   �      �       ��     Z[ �   Z   cd �   5      �   �      �       ��     Ze �   Z   fg �   5      �   �      �       ��     Zh �   Z   ij �   �     '*� CM,� �,D�F,��N-��� 
-�����   �   "   
  	 
    &�   *    '��     'kl   "�   mn �    � 
 $� o�   k    E F �   5     *� ��� $�   �      �       ��   q  �       i� �Y��� �� ~��� ~� ~��Y���� � K*���W$����� �*� ���K�L*˶�� *˲ ~�� ����W� K�   # & � ? d g� �   >    ? 
 B  F  G # L & H ' I / K ? R C S G T Q U d Y g W h Z�      ' 	   C !rs   G t h �    f �$B�  u   vw   : 8 jx	 � $y  � z 
 ${ 1o|	� $} � ~ 
