����   4�	      Borg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl readLimitReported Ljava/util/Set;	   	 
 ERR Ljava/util/logging/Logger;
      java/lang/Object <init> ()V
      "org/openide/filesystems/FileObject getSize ()J
     isUserDefined '(Lorg/openide/filesystems/FileObject;)Z
     create L(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/MIMEResolver;
    ! " forDescriptor M(Lorg/openide/filesystems/FileObject;Z)Lorg/openide/filesystems/MIMEResolver;	 $ % & ' ( java/util/logging/Level WARNING Ljava/util/logging/Level; * YIneffective registration of resolver {0} use @MIMEResolver.Registration! See bug #191777.
  , - . getPath ()Ljava/lang/String;
 0 1 2 3 4 java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	 $ 6 7 ( FINE
 0 9 : ; 
isLoggable (Ljava/util/logging/Level;)Z
  = > . asText
 0 @ A B fine (Ljava/lang/String;)V D java/io/IOException
 0 F 3 G C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V I Gorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl
 H K  L '(Lorg/openide/filesystems/FileObject;)V
 H N  O o(Lorg/openide/filesystems/FileObject;[BLorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$1;)V Q java/io/ByteArrayOutputStream
 P  T java/io/DataOutputStream
 S V  W (Ljava/io/OutputStream;)V
 H Y Z [ writeExternal (Ljava/io/DataOutput;)V
 S ] ^  close
 P ` a b toByteArray ()[B
 H d e f 
access$100 L(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;)V
 H h i j 
access$200 ^(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;)[Ljava/lang/String; l user-defined-mime-resolver
  n o p getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
  r s . getName
 u v w x y java/lang/String equals (Ljava/lang/Object;)Z { xml
  } ~  hasExt (Ljava/lang/String;)Z
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V � "java/lang/IllegalArgumentException
 � � � � �  org/openide/filesystems/FileUtil toFile 4(Lorg/openide/filesystems/FileObject;)Ljava/io/File;	 $ � � ( INFO � java/lang/StringBuilder
 �  � BUser-defined file association settings are corrupted. Delete file 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � , � java/io/File
 � � � . toString
 � � � � � java/util/Collections emptyMap ()Ljava/util/Map;
 H � � � 
access$300 L(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;)S � java/util/HashMap
 � 
 H � � � 
access$400 �(Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl;)[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement;
 � � � � . =org/netbeans/modules/openide/filesystems/declmime/FileElement getMimeType
 � � � � getExtensions ()[Ljava/lang/String; � java/util/HashSet
 � 
 u � � � length ()I � � � � y java/util/Set add � � � � � java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; � � � � addAll (Ljava/util/Collection;)Z � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � Services/MIMEResolver
 � � � � getConfigFile 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  � � � getChildren '()[Lorg/openide/filesystems/FileObject; � mimeToExtensions
 � � � � � org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V
  � � � getUserDefinedResolver &()Lorg/openide/filesystems/FileObject;
  � �  delete	 $ � � ( SEVERE � Cannot delete resolver 
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � � � � isEmpty ()Z � Dorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$1
 � �  � (Ljava/util/Map;)V
 � �  runAtomicAction (Ljava/lang/Runnable;)V java/util/TreeMap
 � reverseOrder ()Ljava/util/Comparator;
	 
 (Ljava/util/Comparator;)V position java/lang/Integer���
 valueOf (I)Ljava/lang/Integer;
 y containsKey
 � intValue
 �
 values ()Ljava/util/Collection;
 � !"#$% java/util/List iterator ()Ljava/util/Iterator;'()* � java/util/Iterator hasNext',-. next ()Ljava/lang/Object;	 �012 	fileCheck DLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;
4567 B Borg/netbeans/modules/openide/filesystems/declmime/FileElement$Type addExt
 �9: B setMIME
 <=> extensionElem c(Ljava/util/List;Ljava/lang/String;)Lorg/netbeans/modules/openide/filesystems/declmime/FileElement;
 H@ A �(Lorg/openide/filesystems/FileObject;[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement;[Ljava/lang/String;Lorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$1;)VC Borg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent
BE F 5(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V	 �HIJ rule DLorg/netbeans/modules/openide/filesystems/declmime/XMLMIMEComponent;! �M bytesO [B
 QRS 	forStream N(Lorg/openide/filesystems/FileObject;[B)Lorg/openide/filesystems/MIMEResolver;U mimeTypeW elementY ext.
 [\] 	readArray H(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Ljava/util/List;_ accept.a ns.c doctype.
 efg forXML �(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/openide/filesystems/MIMEResolver;
 ijk forExts n(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/List;)Lorg/openide/filesystems/MIMEResolver;m  
 �o  Bq java/util/ArrayList
p 
 �t �u (I)Ljava/lang/StringBuilder;! �
x ry java/lang/Class
 0{|} 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
��� � org/openide/util/BaseUtilities getOperatingSystem	 ��� CASE_INSENSITIVE Z 
READ_LIMIT I ConstantValue  � 	Signature #Ljava/util/Set<Ljava/lang/String;>; MIME_RESOLVERS_PATH Ljava/lang/String; USER_DEFINED_MIME_RESOLVER #USER_DEFINED_MIME_RESOLVER_POSITION   
 Code LineNumberTable LocalVariableTable this DLorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl; fo $Lorg/openide/filesystems/FileObject; StackMapTable 
Exceptions MethodParameters ex Ljava/io/IOException; warn def 
serialData toStream *(Lorg/openide/filesystems/MIMEResolver;)[B mime &Lorg/openide/filesystems/MIMEResolver; os Ljava/io/ByteArrayOutputStream; dos Ljava/io/DataOutputStream; isDeclarative )(Lorg/openide/filesystems/MIMEResolver;)Z resolver getMIMETypes ;(Lorg/openide/filesystems/MIMEResolver;)[Ljava/lang/String; mimeResolverFO getMIMEToExtensions 5(Lorg/openide/filesystems/FileObject;)Ljava/util/Map; impl ILorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$Impl; f Ljava/io/File; $Ljava/lang/IllegalArgumentException; 	extension 
extensions [Ljava/lang/String; extensionsSet previous fileElement ?Lorg/netbeans/modules/openide/filesystems/declmime/FileElement; result Ljava/util/Map; elements @[Lorg/netbeans/modules/openide/filesystems/declmime/FileElement; LocalVariableTypeTable FLjava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;�� l(Lorg/openide/filesystems/FileObject;)Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>; 
resolverFO 	resolvers %[Lorg/openide/filesystems/FileObject; resolversFolder� storeUserDefinedResolver (Ljava/util/Map;)Z e userDefinedResolverFO I(Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;)Z getOrderedResolvers Ljava/lang/Integer; orderedResolvers Ljava/util/TreeMap; LLjava/util/TreeMap<Ljava/lang/Integer;Lorg/openide/filesystems/FileObject;>; ?()Ljava/util/Collection<+Lorg/openide/filesystems/FileObject;>; ext exts Ljava/util/List; $Ljava/util/List<Ljava/lang/String;>; w(Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;)Lorg/netbeans/modules/openide/filesystems/declmime/FileElement; �(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;)Lorg/openide/filesystems/MIMEResolver; direct 
acceptExts elem 	namespace dtds (Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;)Lorg/openide/filesystems/MIMEResolver; accept nss arr prefix cnt \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>; 
access$500 ()Ljava/util/logging/Logger; 
access$900 ()Ljava/util/Set; <clinit> 
SourceFile MIMEResolverImpl.java InnerClasses Impl Type� Morg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$DescParser 
DescParser 1       	 
   ��   �� �   � 
   �   � �� �    � �� �    k �� �   �     �   /     *� �   �       0�       ��   	 !  �   V     *� 	�� *� � *� �*� �   �       B  C  E�       ��  �    �     C�   �    ! " �   �     H� >*� � 7� � #)*� +� /� � 5� 8� � *� <� ?� M� � 5,� E� HY*� J�  & 0 3 C �   "    H  I  J & L 0 O 3 M 4 N ? R�      4 ��    H��     H�� �    s C�   	�  �   RS �   ?     � HY*+� M�   �       V�       ��     �O �     C�   	�  �   �� �   p     "� PY� RL� SY+� UM*� H,� X,� \+� _�   �       Z  [  \  ]  ^�        "��    ��   �� �     C�   �   	�� �   /     *� H�   �       c�       ��  �   �   	�� �   =     *� H� c*� H� g�   �   
    h  i�       ��  �   �   	   �   ]     *k� m� *� qk� t� � �   �       q  r 
 s  q�       ��  �    @�   �   	�� �  �    /*z� |� *� 	�� f*� � HL� LM,� �L� BM*� � 8*� �N� � �� �Y� ��� �-� 
*� +� -� �� �� �,� EL� ,�+� � ��+� c� � HY*� JL+� �W� �Y� �M+� �N-� �-:�66� �2:� �:� q� �:	� �Y� �:
	� 5	:�66� "2:� �� 
� � W����,� � � �:� 
� � W,
� � W���u,�     C   ' � �   � (   ~  �  �  �  � " � $ � ' � ( � / � 4 � F � \ � _ � a � d � f � j � n � u � ~ � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � �' �- ��   �   ��   ��  $ ��  4 -��  a ��  ( >��  f ��  � ��  � g�� 	 � ^�  
 �   � sU�  � z��   /��   ~ ���  � ���  � ��� �      � ^�� 
 ��  � ��� �   � J CI �� )    � �  0 $ ��     � �  0 $ � u� �    H  � �  H�    H ���  � :   H ��� � u� ��  � �  �� 
   H ���  � �   �  �   � 	 � � �   �     8Ը �K*� /*� �L+M,�>6� ,2:k� m� ������   �   "    �  � 
 �  � # � - � 0 � 6 ��      # ��   '��   2��  �    �   ��  �      )�� �   �     X�*� � �L+� -+� � &M� � �� �Y� �� �+� �� � �,� E�*� � � �� �Y*� �� �+� � �     C �   2    �  � 
 �  �  �  �  � 6 � 8 � A � C � N�       "��    X ��   
 N�� �       X ��  �    �   �   C"
@�    � �   � 	� �  (     uԸ ֶ �K�Y��L*M,�>6� Q,2:� m�:� �:+�� :�d�:W���+�W����+��   �   .    	  ( 5 : B K a j p!�   *  5 5�  ( B��  	 l��    a�� �      a�� �   + �  ��  � % �  �  �   � 
=> �   �     6� �Y�M*�  N-�& � -�+ � u:,�/�3���,+�8,�   �      % & #' ,( /) 4*�   *  # 	��    6��     6U�   .�� �       6��  �    �  �'� �   	�  U  �   � 
jk �   ~      � �Y,+�;SN� HY*-� uY+S�?�   �   
   / 0�   *     ��      U�     ��   �� �        �� �     C�   �  U  �  �   � 
fg �  �  
   �� �Y�:,�  :�& � �+ � u:	�/	�3����BY�D�G+�8-�K � � HY*� �YS� uY+S�?�-+�;:� HY*� �YSYS� uY+S�?�   �   * 
  7 	8 '9 1: 4; F< L= U> p@ wA�   f 
 ' 
�� 	 w  ��    ���     �U�    ���    ���    ���    ���    ���  	 ��� �   *    ���    ���    ���    ��� �    �  �'� ";�     C�   �  U  �  �  �  �  �  �   � 	   �       �*L� m�NL+� 	*+�P�*T� m� uM*V� m� uN*X�Z:-� -*^�Z:*`�Z:*b�Z:*,-�d��K � *,�h�� �Y� �Y� �l� �*� � ��n�   �   :   G H I K  L +M 4N 8O AP JQ SR bU lV tX�   R  A !��  J ��  S ��    ���    ��O    pU�  + eW�  4 \�� �   *  A !��  J ��  S ��  4 \�� �    � N� L u u!�     C�   �   
\] �   �     >�pY�rM>*� �Y� �+� ���s� �� m� u:� � ,�v W���,�   �   "   \ ] 
_ (` -a 0c 9d <e�   4  ( ��    >��     >��   6��  
 4�� �      6�� �    � 
!� % u� �   	�  � �   ��� �         � �   �       0�� �         � �   �       0 �  �   R      '�w�z� �~@ � � ��� �Y� �� �   �       3  5  9�    @ �   ��   "  H �  �      4 �� � � 
