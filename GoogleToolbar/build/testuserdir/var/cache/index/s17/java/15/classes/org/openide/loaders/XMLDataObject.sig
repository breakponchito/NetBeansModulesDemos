����   4�
      !org/openide/loaders/XMLDataObject getIP /()Lorg/openide/loaders/XMLDataObjectInfoParser;	   	 
 status I
     findNode ()Lorg/openide/nodes/Node;
     notifyEx (Ljava/lang/Exception;)V
     removeSaveCookie #(Lorg/openide/cookies/SaveCookie;)V
     addSaveCookie	     editor "Lorg/openide/cookies/EditorCookie;
     ! <init> M(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiFileLoader;Z)V
 # $ %   & #org/openide/loaders/MultiDataObject L(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiFileLoader;)V
  ( ) * registerEditor ()V , #org/openide/loaders/XMLDataObject$1
 + .   / &(Lorg/openide/loaders/XMLDataObject;)V
  1 2 3 getCookieSet ()Lorg/openide/nodes/CookieSet; 5  org/openide/cookies/EditorCookie
 7 8 9 : ; org/openide/nodes/CookieSet add 9(Ljava/lang/Class;Lorg/openide/nodes/CookieSet$Factory;)V = org/openide/cookies/OpenCookie ? org/openide/cookies/CloseCookie A org/openide/cookies/PrintCookie C !org/openide/loaders/SaveAsCapable E #org/openide/loaders/XMLDataObject$2
 D .
 7 H I J assign '(Ljava/lang/Class;[Ljava/lang/Object;)V	  L M N emgrLock Ljava/lang/Object;	  P Q R 
infoParser -Lorg/openide/loaders/XMLDataObjectInfoParser; T +org/openide/loaders/XMLDataObjectInfoParser
 S . W )org/openide/loaders/XMLDataObject$XMLNode
 V Y   Z I(Lorg/openide/loaders/XMLDataObject;Lorg/openide/loaders/XMLDataObject;)V
 S \ ] ^ waitFinished ()Ljava/lang/String;
 # ` a * handleDelete
  c d e getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 g h i j k "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;
 m n o p q "org/openide/filesystems/FileSystem 	isDefault ()Z s "org/openide/cookies/InstanceCookie
  u v w 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;	 y z { | } org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx;  1org/openide/filesystems/FileStateInvalidException
 y �   � (Ljava/lang/Class;)V
 S � � � lookupCookie %(Ljava/lang/Class;)Ljava/lang/Object;	  � � � ERR Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z � java/lang/StringBuilder
 � �   * � 
Query for 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  for 
 � � � ^ toString
 � � � � fine (Ljava/lang/String;)V � Gives a cake 
  � � � ofCookie [(Lorg/openide/cookies/InstanceCookie;Ljava/lang/Class;)Lorg/openide/cookies/InstanceCookie; � After ofCookie: 
 # u � getCookie returns  � org/openide/nodes/Node$Cookie	  � � � $assertionsDisabled Z
 � � � � � java/lang/Class 
isInstance (Ljava/lang/Object;)Z � java/lang/AssertionError � Cannot return  �  from 
 � �   � (Ljava/lang/Object;)V
 � � � � cast &(Ljava/lang/Object;)Ljava/lang/Object;
 � � � � � java/lang/Object getClass ()Ljava/lang/Class;
  � �  getNodeDelegateOrNull
  � �  createNodeDelegate
  � � � setNodeDelegate (Lorg/openide/nodes/Node;)V
 � � � � � org/openide/nodes/Node 	getLookup ()Lorg/openide/util/Lookup;
 # � � %org/openide/cookies/InstanceCookie$Of � 'org/openide/loaders/XMLDataObject$ICDel
 � � � � isAssignableFrom (Ljava/lang/Class;)Z
 � �   � J(Lorg/openide/loaders/XMLDataObject;Lorg/openide/cookies/InstanceCookie;)V � *Cannot resolve following class in xmlinfo.
 � � � � � org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 � � � � printStackTrace (Ljava/lang/Throwable;)V  2org/openide/loaders/XMLDataObject$XMLEditorSupport
 � .
 7 : "(Lorg/openide/nodes/Node$Cookie;)V
 7 remove	 getDocument for 	  doc *Lorg/openide/loaders/XMLDataObject$DelDoc; (org/openide/loaders/XMLDataObject$DelDoc
 .
 getProxyDocument ()Lorg/w3c/dom/Document; clearDocument for  document
  firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
 #  notifyFileChanged &(Lorg/openide/filesystems/FileEvent;)V
 S"#  fileChanged% parsePrimaryFile for 
 g'() toURL ()Ljava/net/URL;
+,-. ^ java/net/URL toExternalForm0 org/xml/sax/InputSource
/2   �	 456 errorHandler 0Lorg/openide/loaders/XMLDataObject$ErrorPrinter;
 89: getSystemResolver ()Lorg/xml/sax/EntityResolver;
<=>?@ org/openide/xml/XMLUtil parse i(Lorg/xml/sax/InputSource;ZZLorg/xml/sax/ErrorHandler;Lorg/xml/sax/EntityResolver;)Lorg/w3c/dom/Document;B java/io/IOException
 gDEF getInputStream ()Ljava/io/InputStream;
/H  I (Ljava/io/InputStream;)V
KLMN * java/io/InputStream close
 P?Q A(Ljava/net/URL;Lorg/xml/sax/ErrorHandler;Z)Lorg/w3c/dom/Document;
 STU getChainingEntityResolver .()Lorg/openide/loaders/XMLEntityResolverChain;
 WXY createParser (Z)Lorg/xml/sax/Parser;[ $org/xml/sax/helpers/XMLReaderAdapter
<]^_ createXMLReader (Z)Lorg/xml/sax/XMLReader;
Za  b (Lorg/xml/sax/XMLReader;)Vdefgh org/xml/sax/Parser setEntityResolver (Lorg/xml/sax/EntityResolver;)Vj org/xml/sax/SAXExceptionl �Can not create a SAX parser!
Check javax.xml.parsers.SAXParserFactory property features and the parser library presence on classpath.
nopqr (javax/xml/parsers/DocumentBuilderFactory newInstance ,()Ljavax/xml/parsers/DocumentBuilderFactory;
ntuv setValidating (Z)V
nxyv setNamespaceAware{ +javax/xml/parsers/FactoryConfigurationError} �Can not create a factory!
Check javax.xml.parsers.DocumentBuilderFactory  property and the factory library presence on classpath.
n�� newDocumentBuilder %()Ljavax/xml/parsers/DocumentBuilder;� .javax/xml/parsers/ParserConfigurationException� Configuration exception.
i2
i��� 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;� �Can not create a DOM builder!
Check javax.xml.parsers.DocumentBuilderFactory property and the builder library presence on classpath.
���� !javax/xml/parsers/DocumentBuilder newDocument� java/io/ByteArrayOutputStream
� �� UTF-8
<��� write A(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V
�� �� &(Ljava/lang/String;)Ljava/lang/String;
���� � java/io/Writer
���� � org/openide/util/Lookup 
getDefault� 3org/netbeans/modules/openide/loaders/RuntimeCatalog
��� � lookup
���� registerCatalogEntry '(Ljava/lang/String;Ljava/lang/String;)V
���� >(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
����� *org/openide/loaders/XMLEntityResolverChain addEntityResolver (Lorg/xml/sax/EntityResolver;)Z
���� removeEntityResolver :(Lorg/xml/sax/EntityResolver;)Lorg/xml/sax/EntityResolver;	 ��� chainingEntityResolver ,Lorg/openide/loaders/XMLEntityResolverChain;
� �
����� org/openide/xml/EntityCatalog !()Lorg/openide/xml/EntityCatalog;	 ��� infos Ljava/util/HashMap;
��� � java/util/HashMap
���� put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
��� � get� &org/openide/loaders/XMLDataObject$Info
���� clone ()Ljava/lang/Object;� )org/openide/loaders/XMLDataObject$InfoLkp
��  � N(Lorg/openide/loaders/XMLDataObject;Lorg/openide/loaders/XMLDataObject$Info;)V� /org/openide/loaders/XMLDataObject$PlainDataNode
� .
 ��� q desiredAssertionStatus� .org/openide/loaders/XMLDataObject$ErrorPrinter
� �
� �
 � �
 ��� ^ getName
 ���� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
 ���� getClassLoader ()Ljava/lang/ClassLoader;� org/w3c/dom/Document� org/w3c/dom/DocumentType
����  java/lang/reflect/Proxy getProxyClass <(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class; #java/lang/reflect/InvocationHandler
 � getConstructor 3([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;	 	
 cnstr Ljava/lang/reflect/Constructor; java/lang/NoSuchMethodException java/lang/IllegalStateException
   � serialVersionUID J ConstantValuey�&���	� XMLINFO_DTD_PUBLIC_ID_FORTE Ljava/lang/String; "-//Forte for Java//DTD xmlinfo//EN 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; XMLINFO_DTD_PUBLIC_ID  -//NetBeans IDE//DTD xmlinfo//EN MIME" text/xml 
STATUS_NOT     	STATUS_OK    STATUS_WARNING    STATUS_ERROR    PROP_DOCUMENT 	PROP_INFO. info 	Signature OLjava/util/HashMap<Ljava/lang/String;Lorg/openide/loaders/XMLDataObject$Info;>; "Ljava/lang/reflect/Constructor<*>; Code LineNumberTable LocalVariableTable this #Lorg/openide/loaders/XMLDataObject; fo $Lorg/openide/filesystems/FileObject; loader %Lorg/openide/loaders/MultiFileLoader; 
Exceptions= -org/openide/loaders/DataObjectExistsException MethodParameters StackMapTableA #org/openide/loaders/MultiFileLoader factory %Lorg/openide/nodes/CookieSet$Factory; cookies Lorg/openide/nodes/CookieSet;G java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; updateIconBase res 
getHelpCtx ()Lorg/openide/util/HelpCtx; cls Ljava/lang/Class; cake LocalVariableTypeTable Ljava/lang/Class<TT;>; ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; n Lorg/openide/nodes/Node; d )Lorg/openide/loaders/XMLDataObject$ICDel; ic $Lorg/openide/cookies/InstanceCookie; Ljava/lang/Class<*>; ^(Lorg/openide/cookies/InstanceCookie;Ljava/lang/Class<*>;)Lorg/openide/cookies/InstanceCookie; e Ljava/lang/Exception; createEditorCookie $()Lorg/openide/cookies/EditorCookie; save  Lorg/openide/cookies/SaveCookie; getDocument clearDocument fe #Lorg/openide/filesystems/FileEvent; 	getStatus ()I getInfo *()Lorg/openide/loaders/XMLDataObject$Info; setInfo +(Lorg/openide/loaders/XMLDataObject$Info;)V ii (Lorg/openide/loaders/XMLDataObject$Info; parsePrimaryFile is Ljava/io/InputStream; Ljava/io/IOException; loct java/lang/String &(Ljava/net/URL;)Lorg/w3c/dom/Document; url Ljava/net/URL; '(Ljava/net/URL;Z)Lorg/w3c/dom/Document; validate @(Ljava/net/URL;Lorg/xml/sax/ErrorHandler;)Lorg/w3c/dom/Document; eh Lorg/xml/sax/ErrorHandler; ()Lorg/xml/sax/Parser; parser Lorg/xml/sax/Parser; ex Lorg/xml/sax/SAXException; createDocument *Ljavax/xml/parsers/DocumentBuilderFactory; err -Ljavax/xml/parsers/FactoryConfigurationError; builder #Ljavax/xml/parsers/DocumentBuilder; sex 0Ljavax/xml/parsers/ParserConfigurationException; )(Lorg/w3c/dom/Document;Ljava/io/Writer;)V Lorg/w3c/dom/Document; writer Ljava/io/Writer; baos Ljava/io/ByteArrayOutputStream; out Ljava/io/OutputStream; enc createInputSource )(Ljava/net/URL;)Lorg/xml/sax/InputSource; publicId uri resourceName Ljava/lang/ClassLoader; resolver Lorg/xml/sax/EntityResolver; registerInfo =(Ljava/lang/String;Lorg/openide/loaders/XMLDataObject$Info;)V getRegisteredInfo <(Ljava/lang/String;)Lorg/openide/loaders/XMLDataObject$Info; ret createInfoLookup f(Lorg/openide/loaders/XMLDataObject;Lorg/openide/loaders/XMLDataObject$Info;)Lorg/openide/util/Lookup; obj 
access$000 G(Lorg/openide/loaders/XMLDataObject;)Lorg/openide/cookies/EditorCookie; x0 
access$002 i(Lorg/openide/loaders/XMLDataObject;Lorg/openide/cookies/EditorCookie;)Lorg/openide/cookies/EditorCookie; x1 
access$100 F(Lorg/openide/loaders/XMLDataObject;Lorg/openide/cookies/SaveCookie;)V 
access$200 
access$300 ;(Lorg/openide/loaders/XMLDataObject;Ljava/lang/Exception;)V 
access$400 =(Lorg/openide/loaders/XMLDataObject;)Lorg/openide/nodes/Node; 
access$502 '(Lorg/openide/loaders/XMLDataObject;I)I 
access$600 R(Lorg/openide/loaders/XMLDataObject;)Lorg/openide/loaders/XMLDataObjectInfoParser; <clinit> proxy !Ljava/lang/NoSuchMethodException; 
SourceFile XMLDataObject.java InnerClasses� #org/openide/nodes/CookieSet$Factory Factory XMLNode Cookie Of ICDel XMLEditorSupport DelDoc ErrorPrinter Info InfoLkp PlainDataNode� +org/openide/loaders/XMLDataObject$Processor 	Processor� (org/openide/loaders/XMLDataObject$Loader Loader� -org/openide/loaders/XMLDataObject$NullHandler NullHandler !  #                                            ! # 
    $ % 
    & ' 
    ( ) 
    * +     ,    -           
56   
��            
�� /   0 
 M N       	 
                  Q R    � �   	
 /   1 � �   3    & 2   J     *+,� �   3   
    �  �4        56     78    9: ;    <>   	7  9      ! 2   �     *+,� "*� *� � *� '�   3       �  �  �  �  �  �4   *    56     78    9:     ) � ?    �    g@  ;    <>   7  9   )    ) * 2   �     @� +Y*� -L*� 0M,4+� 6,<+� 6,>+� 6,@+� 6,B� BY� DY*� FS� G�   3   "    � 	 �  �  �  � # � * � ? �4        @56   	 7BC   2DE     2   �     (� KYL�*� O� *� SY*� U� O+ç M+�,�*� O�        !    3       �  �  �  � # �4       (56  ?    �  �DF�   �  2   4     
� VY**� X�   3       �4       
56  H    I   J � 2   5      �   3      4       56     K >   K              a * 2   ?     *� � [W*� _�   3        4       56  ;    A LM 2   |     (*� b� f� l� *r� t� � x�� L� yY� ��      ~ 3            4       (56  ?    B ~   v w 2  �    )*� � [W*� +� �M� �� �� �� G� �� �Y� ��� �+� ��� �*� �� �� �� �� �Y� ��� �,� ��� �*� �� �� �,� r� *,� r+� �M� �� �� �� %� �� �Y� ��� �,� ��� �*� �� �� �,� 	*+� �M� �� �� �� %� �� �Y� ��� �,� ��� �*� �� �� �,� �� K� �� <,� 8+,� �� 0� �Y� �Y� �ƶ �,� ��� �+� �ȶ �*� �� �� ʿ+,� �� ���   3   F   . 0 2 3 ?4 a7 h8 r; ~< �? �@ �C �D �F �GH'J4       )56    )NO  P N Q      )NR ?    � a �-	-� E>   N  /   SH    I    � � 2        &*� �� *� �L+� **� �YL� �+� �*� �   3      O 	P Q R T !V4      TU    &56  ?    �  �� H    I    � � 2   �      +� � +�,� � +�� �Y*+� �N-�   3      b c 	d i k l4   *   VW     56      XY     NO Q        NZ ?    	
>   	X  N  /   [    2   H     +� �W+� ��   3      q s t4       56     \] >   \   ^_ 2   3     	� �Y*��   3      }4       	56                2   A     	*� 0+��   3   
   � �4       	56     	`a >   `      2   A     	*� 0+��   3   
   � �4       	56     	`a >   `   b 2   �     M� �� �� �� � �� �Y� �� �*� �� �� �*YL�*�
M,� �Y*�M*,�
,�+ðN+�-�  * G H   H K H   3   "   � &� *� /� 3� <� A� H�4     / V    M56  ?    &�  ��    � F;    Ai c * 2   t     5� �� �� �� � �� �Y� �� �*� �� �� �*�
*��   3      � &� +� 4�4       556  ?    &    2   J     *+�*� +�!�   3      � � �4       56     de >   d  H    I   fg 2   /     *� �   3      �4       56   hi 2   ,     �   3       4       56             1jk 2   5      �   3      4       56     lm ;    A>   l             n 2  &     s� �� �� �� � �� �Y� �$� �*� �� �� �*� b�&�*L�/Y+�1�3�7�;�M*� b�CN�/Y-�G�3�7�;:-�J�:-�J�  1 D EA N c j   j l j   3   * 
   & 1 E F N c g j p4   *  N %op  F -\q    s56   1 Br ?   ) &�   s A� $  sAK F;    Ai 	?u 2   3     	*�3�O�   3      .4       	vw  ;    Ai>   v             	?x 2   =     	*�3�O�   3      <4       	vw     	y � ;    Ai>   	v  y             	?z 2   ;     *+�O�   3      J4       vw     {| ;    Ai>   	v  {             	?Q 2   S     �/Y*�*�1+�R�;�   3      ^4        vw     {|    y � ;    Ai>   v  {  y             	X} 2         �V�   3      m           	XY 2   �     &�ZY�\�`L+�R�c +�L+k� �W+� ��     i 3      ~  � � �  � $�4       ~   ��    &y �  ?    Wi>   y             	� 2  N     L�mL+�s+�w� M,|� �W,� ��+�~K� M�iY���N-,��W-�� �W-�*���K�     z   % (�    Ii   H Ii 3   J   � � 	� � � � � �  � %� (� )� 4� :� B� D� I� J�4   R   B�   ��  % ��   4 ��  ) ��  D ��     )B�  J ��  ?   ( Qz�  nG��  �n  �    i           	�� 2   f     ��Y��M*,���+,������   3      � � � �4        �     ��   �� ;    A>   	  �             	�� 2   I     *+,���   3   
   � �4        �     ��    � ;    A>     �  �             	�� 2   6     �/Y*�*�1�   3      �4       vw  ;    A>   v             	�� 2   J     �������*+���   3   
   �  4       �     � >   	�  �             	�� 2   U     �������*+,���   3   
    4        �     �    9� >   �  �  9             	�� 2   2     �R*���   3      04       ��  >   �             	�� 2   2     �R*���   3      ?4       ��  >   �             *TU 2   K      ��� ��Y�������7��W���   3      G H I L?               
9: 2         �°   3      R 	�� 2   �     )��YM�+� ��*��W� ��*+��W,ç N,�-��     #   # & #   3      a b 
c e g (h4       )�     ).m ?    �  �DF� >   	�  .             	�� 2   �     (��YL²�*����M,� � 
,����+ðN+�-�   " #   # & #   3      t u v #w4      �m    (�  ?    �  ��F��  s � F>   �             �� 2   >     
��Y*+�ް   3      �4       
�6     
.m >   	�  .      2   j     *� � �� �L+� ��Y*��+�   3        " # %4       56    TU ?    �  ��� 2   /     *� �   3       A4       �6  �� 2   ;     *+Z� �   3       A4       �6     �  �� 2   :     *+� �   3       A4       �6     �a �� 2   :     *+� �   3       A4       �6     �a �� 2   :     *+� �   3       A4       �6     �] �� 2   /     *� �   3       A4       �6  �� 2   ;     *Z� �   3       A4       �6     � 
 �� 2   /     *� �   3       A4       �6   � * 2       z�� � � ���Y��3��Y��ǻ �Y�� K��� ���� �Y�SY�S��K*� �YS���Y�W� K�Y*���  9 l o 3   2    A  f  o $ q . � 9 R� c� l� o� p� y�4     R �O   p 	��  Q     R �Z  ?    @� a	 �   ��   �  +      � 7�	 D       V �  � ��	 � r�	 � � 
 � � 
 � � � � � � � � � � �	� � � � 