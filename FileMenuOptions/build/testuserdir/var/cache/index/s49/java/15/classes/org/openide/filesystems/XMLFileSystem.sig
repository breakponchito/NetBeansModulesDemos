����   4^	      %org/openide/filesystems/XMLFileSystem rootRef 2Lorg/openide/filesystems/XMLFileSystem$FileObjRef;
   	 
 getInputStream )(Ljava/lang/String;)Ljava/io/InputStream;
     getSize (Ljava/lang/String;)J
     isFolder (Ljava/lang/String;)Z
     lastModified $(Ljava/lang/String;)Ljava/util/Date;
      *org/openide/filesystems/AbstractFileSystem <init> ()V  java/net/URL	    ! " 	urlsToXml [Ljava/net/URL; $ *org/openide/filesystems/XMLFileSystem$Impl
 # &  ' *(Lorg/openide/filesystems/XMLFileSystem;)V	  ) * + list 1Lorg/openide/filesystems/AbstractFileSystem$List;	  - . / info 1Lorg/openide/filesystems/AbstractFileSystem$Info;	  1 2 3 change 3Lorg/openide/filesystems/AbstractFileSystem$Change;	  5 6 7 attr 1Lorg/openide/filesystems/AbstractFileSystem$Attr;
   : java/lang/NullPointerException < Null uri
 9 >  ? (Ljava/lang/String;)V
  >
  B C D 	setXmlUrl (Ljava/net/URL;)V F java/lang/Exception H org/xml/sax/SAXException
 E J K L 
getMessage ()Ljava/lang/String;
 G >
 O P Q R S $org/openide/filesystems/ExternalUtil copyAnnotation A(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable; U Null url
  W C X (Ljava/net/URL;Z)V
  Z [  beginAtomicAction
  ] ^ _ 
setXmlUrls ([Ljava/net/URL;Z)V
  a b  finishAtomicAction
  d e ? setSystemName g Null URL list
 i j k l m java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; o p q r s java/util/Collection contains (Ljava/lang/Object;)Z u java/lang/StringBuilder
 t  x Null URL list member: 
 t z { | append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 t ~ {  -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 t � � L toString
  � � L getDisplayName
  � � � getRoot &()Lorg/openide/filesystems/FileObject; � &org/openide/filesystems/AbstractFolder � 2org/openide/filesystems/XMLFileSystem$ResourceElem
 � �  � (Z[Ljava/net/URL;)V
  � � � refreshChildrenInAtomicAction _(Lorg/openide/filesystems/AbstractFolder;Lorg/openide/filesystems/XMLFileSystem$ResourceElem;)V � -org/openide/filesystems/XMLFileSystem$Handler	  � � � DTD_MAP Ljava/util/Map;
 � �  � G(Ljava/util/Map;Lorg/openide/filesystems/XMLFileSystem$ResourceElem;Z)V � XML_
  � � L toExternalForm
 � � � � � java/lang/String replace (CC)Ljava/lang/String;
  � � ? _setSystemName �  java/beans/PropertyVetoException
 � � � � � org/openide/xml/XMLUtil createXMLReader (ZZ)Lorg/xml/sax/XMLReader; � � � � � org/xml/sax/XMLReader setEntityResolver (Lorg/xml/sax/EntityResolver;)V � � � � setContentHandler (Lorg/xml/sax/ContentHandler;)V � � � � setErrorHandler (Lorg/xml/sax/ErrorHandler;)V	 � � � � 
urlContext Ljava/net/URL; � � � ? parse
 � � " � � clone ()Ljava/lang/Object; � java/io/IOException
 i � � � '([Ljava/lang/Object;)Ljava/lang/String;
 � � � � � org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable; � : 
 E �
 � >
 � � � � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � "org/openide/filesystems/FileSystem � displayName
  � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  � � � findReference -(Ljava/lang/String;)Ljava/lang/ref/Reference; � 0org/openide/filesystems/XMLFileSystem$FileObjRef
 � �  � ()Z
 �  � java/io/FileNotFoundException � EXC_CanntRead
 � � � K � org/openide/util/NbBundle I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
 � >
 � � �  
access$000 T(Lorg/openide/filesystems/XMLFileSystem$FileObjRef;Ljava/lang/String;)Ljava/net/URL;
 � 
 �  java/util/Date
  (J)V
 �	
 length ()I XML_NotValidXMLFileSystem
 � K 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; XML:
 � L trim
 java/io/ObjectInputStream 
readFields &()Ljava/io/ObjectInputStream$GetField; !
 !" "java/io/ObjectInputStream$GetField get 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;$ uriId& missing uriId
 ( ^) ([Ljava/net/URL;)V
 � J
 �, - '(Lorg/openide/filesystems/FileObject;)V/ java/util/HashSet
 �123 existingSubFiles (Z)Ljava/util/Enumeration;
567 *8 java/util/Collections .(Ljava/util/Enumeration;)Ljava/util/ArrayList;
.: ; (Ljava/util/Collection;)V
 => � refreshChildren o@AB 	removeAll (Ljava/util/Collection;)Z oDEF iterator ()Ljava/util/Iterator;HIJK � java/util/Iterator hasNextHMN � nextP *org/openide/filesystems/AbstractFileObject	ORST 	validFlag ZV !org/openide/filesystems/FileEvent
U,
OYZ[ fileDeleted0 &(Lorg/openide/filesystems/FileEvent;)V
 �]^ � isRoot
 `ab initializeReference i(Lorg/openide/filesystems/XMLFileSystem$FileObjRef;Lorg/openide/filesystems/XMLFileSystem$ResourceElem;)I
 �def getChildren ()Ljava/util/List;hijk java/util/List sizehmno toArray (([Ljava/lang/Object;)[Ljava/lang/Object;
 �qrs getChild H(Ljava/lang/String;)Lorg/openide/filesystems/XMLFileSystem$ResourceElem;
 �uvw refresh <(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V
 �yz{ getFileObject 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 �}~ L getPath
 �� � ()Ljava/util/Date;
 � �
 ���[ fileChanged0� *org/openide/filesystems/FileAttributeEvent
�� � ](Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
 ���� fileAttributeChanged0 /(Lorg/openide/filesystems/FileAttributeEvent;)V
 ��� � isInitialized
 ���� 
initialize 7(Lorg/openide/filesystems/XMLFileSystem$ResourceElem;)V
 ���� getAttr '(Z)Lorg/openide/filesystems/XMLMapAttr;
 ���� attacheAttrs '(Lorg/openide/filesystems/XMLMapAttr;)Z
 ���� getUrlContext ()[Ljava/net/URL;
 ���) setUrlContext
 ���� 
getContent ()[B
 ���� 
access$100 F(Lorg/openide/filesystems/XMLFileSystem$FileObjRef;)Ljava/lang/Object;� [B
 i��� equals ([B[B)Z
 ���� 
access$102 X(Lorg/openide/filesystems/XMLFileSystem$FileObjRef;Ljava/lang/Object;)Ljava/lang/Object;
 ��� L getURI
 ��� s� java/util/HashMap
� � #-//NetBeans//DTD Filesystem 1.0//EN� &org/openide/filesystems/filesystem.dtd����� java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;� #-//NetBeans//DTD Filesystem 1.1//EN� )org/openide/filesystems/filesystem1_1.dtd� #-//NetBeans//DTD Filesystem 1.2//EN� )org/openide/filesystems/filesystem1_2.dtd serialVersionUID J ConstantValue f��� 	Signature 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; YLorg/openide/filesystems/XMLFileSystem$FileObjRef<+Lorg/openide/filesystems/FileObject;>; Code LineNumberTable LocalVariableTable this 'Lorg/openide/filesystems/XMLFileSystem; impl ,Lorg/openide/filesystems/XMLFileSystem$Impl; e Ljava/lang/Exception; uri Ljava/lang/String; StackMapTable 
Exceptions MethodParameters url 	getXmlUrl ()Ljava/net/URL; validate� java/lang/Object� java/lang/Throwable 
getXmlUrls urls s #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation rootElem 4Lorg/openide/filesystems/XMLFileSystem$ResourceElem; pvx "Ljava/beans/PropertyVetoException; systemId index I xp Lorg/xml/sax/XMLReader; iox Ljava/io/IOException; Ljava/util/Collection; oldDisplayName handler /Lorg/openide/filesystems/XMLFileSystem$Handler; act LocalVariableTypeTable &Ljava/util/Collection<Ljava/net/URL;>; isLastModifiedCacheEnabled Ljava/lang/Override; name ref Ljava/lang/ref/Reference; @Ljava/lang/ref/Reference<+Lorg/openide/filesystems/FileObject;>; java/lang/ref/Reference getURL "(Ljava/lang/String;)Ljava/net/URL; 
isReadOnly 
readObject (Ljava/io/ObjectInputStream;)V x ex ois Ljava/io/ObjectInputStream; fields $Ljava/io/ObjectInputStream$GetField;  java/lang/ClassNotFoundException 	addNotify removeNotify createReference ?(Lorg/openide/filesystems/FileObject;)Ljava/lang/ref/Reference; fo $Lorg/openide/filesystems/FileObject; TT; K<T:Lorg/openide/filesystems/FileObject;>(TT;)Ljava/lang/ref/Reference<TT;>; invalid ,Lorg/openide/filesystems/AbstractFileObject; it Ljava/util/Iterator; oldChildren newChildren (Lorg/openide/filesystems/AbstractFolder; resElem >Ljava/util/Iterator<Lorg/openide/filesystems/AbstractFolder;>; @Ljava/util/Collection<Lorg/openide/filesystems/AbstractFolder;>; i fo2 
currentRef diff nameList Ljava/util/List; names [Ljava/lang/String; children 5[Lorg/openide/filesystems/XMLFileSystem$ResourceElem; $Ljava/util/List<Ljava/lang/String;>;68 attrDiff 
access$200 K(Lorg/openide/filesystems/XMLFileSystem;Ljava/lang/String;)Ljava/util/Date; x0 x1 
access$300 <(Lorg/openide/filesystems/XMLFileSystem;Ljava/lang/String;)Z 
access$400 <(Lorg/openide/filesystems/XMLFileSystem;Ljava/lang/String;)J 
access$500 P(Lorg/openide/filesystems/XMLFileSystem;Ljava/lang/String;)Ljava/io/InputStream; 
access$600 [(Lorg/openide/filesystems/XMLFileSystem;)Lorg/openide/filesystems/XMLFileSystem$FileObjRef; <clinit> 
SourceFile XMLFileSystem.java InnerClasses 
FileObjRef ImplP /org/openide/filesystems/AbstractFileSystem$List ListS /org/openide/filesystems/AbstractFileSystem$Info InfoV 1org/openide/filesystems/AbstractFileSystem$Change ChangeY /org/openide/filesystems/AbstractFileSystem$Attr Attr ResourceElem Handler GetField 1      �� �   �  � � �   �  ! "   �   �   �     �   z     **� *� � � #Y*� %L*+� (*+� ,*+� 0*+� 4�   �   "    �  �  �  �  �  � $ � ) ��       *��    ��    ? �   �     6*� 8+� � 9Y;� =�*� Y+� @� A� M� GY,� I� M,� N� G��    ! E �   "    �  �  �  �  � ! � " � 5 ��      " ��    6��     6�� �    �    �  N E�     G�   �     D �   �     /*� 8+� � 9YT� =�*+� A� M� GY,� I� M,� N� G��     E �   "    �  �  �  �  �  �  � . ��       ��    /��     /� � �    �      G E�     G�   �   �� �   J     *� �� *� 2� �   �       ��       ��  �    @  ! C D �   ?     *+� V�   �   
    �  ��       ��     � � �     � ��   �    C X �   �     2*� Y*YN�*� Y+S� \-ç 
:-��*� `� :*� `��              ! (   ( * (   �   & 	   �  �  �  � ! � % � ( � . � 1 ��        2��     2� �    2�T �    �    � �� F��     � ��   	�  �   �� �   /     *� �   �      �       ��    ^) �   �     )*� Y*YM�*+� \,ç N,�-�*� `� :*� `��                   !    �   & 	         % (�       )��     )� " �    �    �� �� F��     � ��   �    � ? �   >     *+� c�   �   
    �       ��     �� �     ��   �  �    � �[ s� " ^ _ �  f    l+� � 9Yf� =�+� hN-� n � � 9Y� tY� vw� y-� }� �� =�*� �:+�� #*+� **� �� �� �Y+� �Y:� �:�� �Y� �� �Y+� �Y:� �:*� tY� v�� y+2� �/-� �� y� �� �� ::�:� �:� � � � � � 6		+�� &+	2:� �� �:

� � �	���*+� �� ʵ **� �� �� �:� H:+� и �W�:� �Y� tY� v� }ٶ y� ۶ y� �� �� �� ο::�*�*� �� �  | � � � � � �) E �W  YW   �   � )     " # $ 8( >* C+ H, _- b/ c2 |5 �9 �6 �7 �8 �; �> �? �@ �A �C �D �E �G �I �C �KLSTMN&O)P+QWS\T_VkW�   �  \ ��  � ��  � 	�� 
 � *�� 	 � `��  �  + ,��   l��    l� "   l�T  Y l  v ���  >.�  | �  � � �      Y l �   d � ) o� *  �� >   � o � � �  �� '  �� )�    � o � � �   �N Em��     � ��   	�  �     � �   ,     �   �      ^�       ��  �    	      �   �     *+� �M,� � ,� �� ��   �      g i j m�        ��     
�           �    � �   
    	 
 �   �     &*+� �M,� � ,� �+� � �Y�+� �� ��   �      x z { ~�        &��     &
�             �    � �     ��   
     �   �     &*+� �M,� � ,� �+� ��� �Y�+� �� ��   �      � � � ��        &��     &
�             �    � �     ��   
      �   �     *+� �M,� � ,� �+��	�   �      � � � ��        ��     
�           �    � �   
      �   �     *+� �M,� � ,� �+���Y	��   �      � � � ��        ��     
�           �    � �   
    � L �   �     I*� �� *� 2� *� 2� ��� ��� tY� v� y*� 2� ��� y� ��   �      �  � )��       I��  �       � �   ,     �   �      ��       ��    �       ]+�M,�� �N-� '� N-,#�� S-2� � �Y%� ܿ*-�'� :� �Y�*� �:� NW��  9 > A � �   :   � � � � � (� .� 9� >� A� C� Q� Y� \��   >  Q    C �    ]��     ]   X   L� " �    � 9 �G ��     ��        �   +      �   �      ��       ��  �    	     �   +      �   �      ��       ��  �    	     �   O     	� �Y+�+�   �      ��       	��     	!"        	!# �   !  �   $�    	    � � �  p     {*� Y�.Y+�0�4�9N*+,�<+�0�4:-�? W-�C :�G � .�L �O:�Q� �Q�UY�W�X���*� `� :*� `��    j q   q s q   �   B   � � � � $� -� ?� K� S� Y� g� j� n� q� w� z��   H  K %&  5 5'(   V)  $ F*    {��     {!+    {,�       5 5'-   V).  $ F*. �    � 5 o oH1� F��   	!  ,   > � �    
   �+�\� **� �Y+�+Z� ,�_W,�cN-�g � �:�� �:-�l W6�� ,2�pS����+�t6�� ~+2�x� �:*�|� �� �:*2�_6	�W��� *2�<� 3	~� �UY�W��� 	~� ��Y���������   �   ^   � �   * 2 ; F	 T Z d o } � � � � � � � � � ��   p  > /�  } g0+  � Y1   � L2� 	 g �/�    ���     �!+    �,�   �34  * �56  2 �78       �39 �   5 � #   � �h:;  � � � L � �� � �   	!  ,   ab �  C     �+��� 
+,���+,����>+,����6,��� 1+����� +����,����� � 6+,����W� (,��� !,��+����� � 6+,����W� � � � `�   �   6   ' ( ) + ,  . #/ *0 L1 X2 _3 t4 }7�   4   z<T  # o2T    ���     �1     �,� �   ) � 6@@
@G�     � � �   	1  ,  => �   :     *+� �   �       ��       ?�     @� AB �   :     *+� �   �       ��       ?�     @� CD �   :     *+� �   �       ��       ?�     @� EF �   :     *+� �   �       ��       ?�     @� �     �GH �   /     *� �   �       ��       ?�   I  �   `      8��Y��� �� ����� W� ��˹� W� ��Ϲ� W�   �       � 
 �  � ( � 7 � J   KL   J 	 � M 
 # N 	O Q	R T	U W	X Z	 � [ 
 � \ ]	