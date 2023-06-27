����   4{
      7org/netbeans/modules/openide/loaders/FileEntityResolver 
findLookup [(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataObject;)Lorg/openide/util/Lookup;
   	 
 
findObject ](Ljava/lang/String;[Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject;	     STOP JLorg/netbeans/modules/openide/loaders/FileEntityResolver$StopSaxException;
      org/openide/xml/EntityCatalog <init> ()V
     convertPublicId &(Ljava/lang/String;)Ljava/lang/String;  java/lang/StringBuffer
     (I)V  /xml/entities
  ! " # append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
  % & ' toString ()Ljava/lang/String;
 ) * + , -  org/openide/filesystems/FileUtil getConfigFile 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; / org/xml/sax/InputSource
 1 2 3 4 5 "org/openide/filesystems/FileObject getInputStream ()Ljava/io/InputStream;
 . 7  8 (Ljava/io/InputStream;)V : hint.originalPublicID
 1 < = > getAttribute &(Ljava/lang/String;)Ljava/lang/Object; @ java/lang/String
 . B C D setPublicId (Ljava/lang/String;)V
 1 F G H toURL ()Ljava/net/URL;
 J % K java/net/URL
 . M N D setSystemId P !org/openide/loaders/XMLDataObject
 O R S T getDocument ()Lorg/w3c/dom/Document; V W X Y Z org/w3c/dom/Document 
getDoctype ()Lorg/w3c/dom/DocumentType; \ ] ^ _ ' org/w3c/dom/DocumentType getPublicId a java/io/IOException
 c d e f g org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V i org/xml/sax/SAXException k ;org/netbeans/modules/openide/loaders/FileEntityResolver$Lkp
 j m  n 5(Ljava/lang/String;Lorg/openide/loaders/DataObject;)V p &org/openide/loaders/InstanceDataObject
  r s t getEnvForIDO C(Lorg/openide/loaders/InstanceDataObject;)Lorg/openide/util/Lookup; v Aorg/netbeans/modules/openide/loaders/FileEntityResolver$DTDParser
 o x y z getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 u |  } '(Lorg/openide/filesystems/FileObject;)V
 u  �  parse
 u ] � "org/openide/cookies/InstanceCookie
 � � � � � org/openide/loaders/DataObject 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; � � � � instanceCreate ()Ljava/lang/Object; � (org/openide/loaders/Environment$Provider � � � � getEnvironment ;(Lorg/openide/loaders/DataObject;)Lorg/openide/util/Lookup; � +org/openide/loaders/XMLDataObject$Processor � &org/openide/loaders/XMLDataObject$Info
 � 
 � � � � � java/lang/Object getClass ()Ljava/lang/Class;
 � � � � addProcessorClass (Ljava/lang/Class;)V
  � � � createInfoLookup f(Lorg/openide/loaders/XMLDataObject;Lorg/openide/loaders/XMLDataObject$Info;)Lorg/openide/util/Lookup;	  � � � ERR Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level INFO Ljava/util/logging/Level; � java/lang/StringBuilder
 �  � no environment for 
 � � " � -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � " � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � %
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V �  java/lang/ClassNotFoundException	  � � � method Ljava/lang/reflect/Method; � � java/lang/Class
 � � � � getDeclaredMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 � � � � � java/lang/reflect/Method setAccessible (Z)V � java/lang/Exception
 � � � � invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � org/openide/util/Lookup
 ? � � � toCharArray ()[C
 ? �  � ([CII)V � /xml/lookups
  � � � length ()I � 	.instance
 ) � � z getConfigRoot
  � � � searchFolder ^(Lorg/openide/filesystems/FileObject;Ljava/lang/String;[Lorg/openide/filesystems/FileObject;)I
 ? � � � 	substring (I)Ljava/lang/String;
 1 � � - getFileObject
  � �  	setLength � .xml
 ? indexOf (II)I
 ? � (II)Ljava/lang/String;
 �	 ' getName
 � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Horg/netbeans/modules/openide/loaders/FileEntityResolver$StopSaxException
  ENTITY_PREFIX Ljava/lang/String; ConstantValue LOOKUP_PREFIX Code LineNumberTable LocalVariableTable this 9Lorg/netbeans/modules/openide/loaders/FileEntityResolver; resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; in Lorg/xml/sax/InputSource; 
myPublicID Ljava/lang/Object; url Ljava/net/URL; publicID systemID id sb Ljava/lang/StringBuffer; fo $Lorg/openide/filesystems/FileObject; StackMapTable 
Exceptions, java/io/FileNotFoundException MethodParameters domDTD Lorg/w3c/dom/DocumentType; ex Ljava/io/IOException; Lorg/xml/sax/SAXException; xml #Lorg/openide/loaders/XMLDataObject; obj  Lorg/openide/loaders/DataObject; ido (Lorg/openide/loaders/InstanceDataObject; parser CLorg/netbeans/modules/openide/loaders/FileEntityResolver$DTDParser; info (Lorg/openide/loaders/XMLDataObject$Info; inst cookie $Lorg/openide/cookies/InstanceCookie; "Ljava/lang/ClassNotFoundException; source #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation m Ljava/lang/Exception;I java/lang/Throwable ch C i I arr [C numberofslashes state writeO fallthrough last %[Lorg/openide/filesystems/FileObject; len 	toSearch1 indxV next nf resourceName pos 
access$000 L()Lorg/netbeans/modules/openide/loaders/FileEntityResolver$StopSaxException; 
access$100 x0 x1 
access$200 <clinit> 
SourceFile FileEntityResolver.java *Lorg/openide/util/lookup/ServiceProviders; )Lorg/openide/util/lookup/ServiceProvider; service *Lorg/openide/loaders/Environment$Provider; Lorg/openide/xml/EntityCatalog; InnerClasses StopSaxException Lkp 	DTDParserr org/openide/nodes/Node$Cookiet org/openide/nodes/Node Cookiew org/openide/loaders/Environment Provider 	Processor Info 1    �             �  � �   
 � �               3     *� �      
    N  O             U  	   t+� �+� N� Y ȷ :�  W-�  W� $� (:� @� .Y� 0� 6:9� ;:� ?� � ?� A� E:� I� L��      B    T  U  Y  [  \  ] & _ 0 ` 5 c C d L e T f ^ h e i o j r l   \ 	 C /  L &  e  !    t     t"    t#   i$   ]%&  0 D'( )   % � W   ? ? ?  1 . �  � *    + h-   	"  #    � �   ?     b+� O� L+� OMN,� Q� U :� � [ N� :� b�:� b�-� �-� N� jY-,� l�+� o� *+� o� q��   & ) `  & 2 h    N    t  u  w  y  z & � ) { + | 0 } 2 ~ 4  9 � ; � ? � A � F � P � W � ` �   H   ./  + 01  4 02   D34   B$    b     b56 )    � & O ?B `H h� -   5    s t    �     *� uY+� w� {M,� ~,� �N-� �-� N� jY-+� l�          �  �  �  �  �   �   *    *     *78   9:   $ )    �  u ?-   7   
     �     �+� �+�� �� �M,� T,� � N-� �� -� �*� � �*� O� �-� �� � �Y� �:-� �� �N-� �� *� O-� �� ��� BM� �� �� �Y� ��� �*� �� �,� �� !M� �� �� �Y� ��� �*� �� �,� ��   , h ` - 5 h ` 6 d h `  , � � - 5 � � 6 d � �    V    �  �  �  �  �  � " � - � 6 � = � F � O � R � Y � e � h � i � � � � � � � � �   H  F ;<   J=   U>?  i 01  � 0@    �56     �A6 )    � & � �� B `` �-   	5  A  B    C D[ sE 
 � �   5     `YM² �� .O�� �YOSY�S� �N-� �-� ŧ N-� b,ð,ç 
:,��� �� �Y*SY+S� �� ܰM,� b�   * - �  5 ;   6 8 ;   ; ? ;   B X Y �    :    �  �  � ! � & � * � - � . � 2 � 6 � B � Y � Z � ^ �   4  ! 	F �  . 0G  Z 0G    `54     `;< )   ! � -  O � �  �DH� V �-   	5  ;  B    C D[ sE 
     �     �*� �L=>66+�� �+46�     o             C   c+� �-� �I� �S� zO� � p>/� (>�� � `+�/U� N/� � D>A� 
Z� a� 
z� 0� 9� +�U� +�_U���A� ?Y+� �      b    �  �  � 	 �  �  �  � 8 � [ � ^ � ` g i q t }	 � � � � � � � � �   H   �JK   �LM    �"    �NO   �PM  	 �QM   �RM )   ' �   ?S  � (%	� � -   "  B    C D[ sT 
 	 
   2     q� Y ȷ M,�  W,*�  W,� �>,�  W,� $:� �+� �6� �+2� �� �:�  ,� �,��  W+2,� $� �� �:�      >   ( ) * + - $/ *0 51 ;3 =6 L8 Q: V; ]= n@   H    q$     qUV   f%&   TWM  * GX  5 <YM  L %'( )    � =  ?Z  ?  � 0 1-   	$  U   
 � �    �     F>+/� 6� 	,*S�� 	����*+�� �:� 	,*S�`>K���      >   J M N P Q T U  V #Y 0Z 5\ 9] ;a @b Cc   >   8[M  0 \(    F'(     F]    FUV   D^M )    � � �  1-   '  ]  U  _`          � �          Fa 
    :     *+� �          F       b     cV d     :     *+� �          F       b6     c6  e     2      ��
� ��Y�� �      
    J k f   gB    h D[ @i jck@i jclm   :  n 
 j o  u p 
qsu	 �vx	 � Oy	 � Oz 