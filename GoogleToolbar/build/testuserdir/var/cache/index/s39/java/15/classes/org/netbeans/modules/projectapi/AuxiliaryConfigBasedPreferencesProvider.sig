����   4c	      Gorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider project "Lorg/netbeans/api/project/Project;	   	 
 removedNodes Ljava/util/Set;	    
 createdNodes
     decodeString &(Ljava/lang/String;)Ljava/lang/String;
     
removeNode (Ljava/lang/String;)V
     find Q(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;
     findRelative *(Ljava/lang/String;Z)Lorg/w3c/dom/Element;	     ! shared Z
  # $ % toPropertyName 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;	  ' ( ) ap .Lorg/netbeans/spi/project/AuxiliaryProperties;
  + , - isRemovedNode (Ljava/lang/String;)Z
  / 0 1 markModified ()V
  3 4 5 
getRemoved #(Ljava/lang/String;)Ljava/util/Set;
  7 8 9 getData #(Ljava/lang/String;)Ljava/util/Map;
  ; < 1 syncImpl
  > ? 1 	flushImpl	  A B C projects2PrivatePrefs Ljava/util/Map;	  E F C projects2SharedPrefs H I J K L java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; N java/lang/ref/Reference
 M P K Q ()Ljava/lang/Object;
 S T U V W %org/netbeans/api/project/ProjectUtils getAuxiliaryConfiguration U(Lorg/netbeans/api/project/Project;)Lorg/netbeans/spi/project/AuxiliaryConfiguration;	  Y Z ! $assertionsDisabled \ ] ^ _ `  org/netbeans/api/project/Project 	getLookup ()Lorg/openide/util/Lookup; b java/lang/AssertionError
 a d e f <init> (Ljava/lang/Object;)V h ,org/netbeans/spi/project/AuxiliaryProperties
 j k l m n org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object; p java/lang/ref/WeakReference
  r e s �(Lorg/netbeans/api/project/Project;Lorg/netbeans/spi/project/AuxiliaryConfiguration;Lorg/netbeans/spi/project/AuxiliaryProperties;Z)V
 o d H v w x put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 z { | } ~ 'org/netbeans/api/project/ProjectManager mutex `(ZLorg/netbeans/api/project/Project;[Lorg/netbeans/api/project/Project;)Lorg/openide/util/Mutex; � Iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$1
  � e � 7(Lorg/netbeans/api/project/Project;ZLjava/lang/Class;)V
 � � � � � org/openide/util/Mutex 
readAccess 3(Lorg/openide/util/Mutex$Action;)Ljava/lang/Object; � java/util/prefs/Preferences � java/lang/StringBuilder
 � � e 1
 � � � � � java/lang/String toCharArray ()[C � _.
 � � � � indexOf (I)I
 � � � � append (C)Ljava/lang/StringBuilder; � _
 � � � � -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � � java/lang/Integer toHexString (I)Ljava/lang/String;
 � � � � toString ()Ljava/lang/String;
 � � � � split '(Ljava/lang/String;)[Ljava/lang/String;
 � � � � parseInt (Ljava/lang/String;I)I
 � � � java/lang/Object � java/util/HashMap
 � �	  � � C module2Preferences	  � � � WORKER #Lorg/openide/util/RequestProcessor; � Iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$2
 � � e � L(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)V
 � � � � � !org/openide/util/RequestProcessor create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;	  � � � autoFlushTask (Lorg/openide/util/RequestProcessor$Task;	  � � C 	path2Data	  � � C path2Removed � java/util/HashSet
 � �	  � � � ac 1Lorg/netbeans/spi/project/AuxiliaryConfiguration;
  � � 1 loadConfigRoot � preferences � @http://www.netbeans.org/ns/auxiliary-configuration-preferences/1 � � � � � /org/netbeans/spi/project/AuxiliaryConfiguration getConfigurationFragment <(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;
 � � � � � org/openide/xml/XMLUtil createDocument `(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document; � � � � � org/w3c/dom/Document createElementNS ;(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;	  � � � 
configRoot Lorg/w3c/dom/Element; � Iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$3
 � �
 � � writeAccess	  ! modified	
 java/util/Set iterator ()Ljava/util/Iterator; java/util/Iterator hasNext ()Z Q next org/w3c/dom/Element getParentNode ()Lorg/w3c/dom/Node;  org/w3c/dom/Node removeChild &(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;"   g$%& listKeys (Z)Ljava/lang/Iterable;() java/lang/Iterable
 �+, - 
startsWith g. w/ ((Ljava/lang/String;Ljava/lang/String;Z)V H123 entrySet ()Ljava/util/Set;5 java/util/Map$Entry478 Q getValue4:; Q getKey= property? valueABC setAttribute '(Ljava/lang/String;Ljava/lang/String;)V �FGH putConfigurationFragment (Lorg/w3c/dom/Element;Z)V
 zJKL 
getDefault +()Lorg/netbeans/api/project/ProjectManager;
 zNOP saveProject %(Lorg/netbeans/api/project/Project;)VR java/io/IOException
TUVWX org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V HZ[ 1 clearZ^ Iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$4
] �
 ab 1 flush
defg &org/openide/util/RequestProcessor$Task cancel
dijk schedule (I)V
mnoKp org/openide/modules/Modules ()Lorg/openide/modules/Modules;
mrst ownerOf 3(Ljava/lang/Class;)Lorg/openide/modules/ModuleInfo;
vwxy � org/openide/modules/ModuleInfo getCodeNameBase
{|}~ � java/lang/Class getName� (^|\.)[^.]+$
 ��� % replaceFirst
 ���� replace (CC)Ljava/lang/String;� gorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences
�� e� �(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;Ljava/lang/String;)V� /
 a �� module� node H�� L remove��� (Ljava/lang/Object;)Z��� add��� contains��� getChildNodes ()Lorg/w3c/dom/NodeList;����� org/w3c/dom/NodeList 	getLength ()I���� item (I)Lorg/w3c/dom/Node;��� getNodeType ()S�� � getNamespaceURI
 ���� equals�� � getLocalName� name��  getAttribute��� getOwnerDocument ()Lorg/w3c/dom/Document;��  appendChild
 ��  encodeString
{�� desiredAssertionStatus� java/util/WeakHashMap
� �� .AuxiliaryConfigBasedPreferencesProvider worker
 �� e� (Ljava/lang/String;I)V 	Signature �Ljava/util/Map<Lorg/netbeans/api/project/Project;Ljava/lang/ref/Reference<Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;>;>; 	NAMESPACE Ljava/lang/String; ConstantValue EL_PREFERENCES 	EL_MODULE EL_PROPERTY EL_NODE 	ATTR_NAME 
ATTR_VALUE INVALID_KEY_CHARACTERS AUTOFLUSH_TIMEOUT I  � �Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/Reference<Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;>;>; XLjava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>; FLjava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>; #Ljava/util/Set<Ljava/lang/String;>; findProvider n(Lorg/netbeans/api/project/Project;Z)Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider; Code LineNumberTable LocalVariableTable p target provRef Ljava/lang/ref/Reference; prov ILorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider; LocalVariableTypeTable dLjava/lang/ref/Reference<Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;>; StackMapTable MethodParameters getPreferences S(Lorg/netbeans/api/project/Project;Ljava/lang/Class;Z)Ljava/util/prefs/Preferences; clazz Ljava/lang/Class; c C s result Ljava/lang/StringBuilder; [C cntr parts [Ljava/lang/String; this configRootLoc el key propName removedNode Ljava/util/Map$Entry; e removed ex Ljava/io/IOException; domModified ;Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>; ^Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>; LLjava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>; sync findCNBForClass %(Ljava/lang/Class;)Ljava/lang/String; absolutePath cls owner  Lorg/openide/modules/ModuleInfo; Ljava/lang/Class<*>; ((Ljava/lang/Class<*>;)Ljava/lang/String; $RuntimeInvisibleParameterAnnotations -Lorg/netbeans/api/annotations/common/NonNull; 
findModule 1(Ljava/lang/String;)Ljava/util/prefs/Preferences; 
moduleName prefRef pref iLorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences; �Ljava/lang/ref/Reference<Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;>; path createIfMissing sep data 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; I(Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; 7(Ljava/lang/String;)Ljava/util/Set<Ljava/lang/String;>; n Lorg/w3c/dom/Node; dom elementName nl Lorg/w3c/dom/NodeList; propertyName 
access$000 ()Ljava/util/Map; 
access$100 
access$200 x0 
access$300 
access$400 l(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;)Ljava/util/Map; x1 
access$500 l(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;)Ljava/util/Set; 
access$600 
access$700 ^(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;)Z 
access$800 y(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)Lorg/netbeans/spi/project/AuxiliaryProperties; 
access$900 �(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; x2 access$1000 L(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)Z access$1100 s(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;Z)Lorg/w3c/dom/Element; access$1200 x3 access$1300 ^(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;)V access$1400 access$1500 Z(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)Ljava/util/Set; access$1600 access$1800 m(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)Lorg/netbeans/api/project/Project; <clinit> 
SourceFile ,AuxiliaryConfigBasedPreferencesProvider.java InnerClasses[ org/openide/util/Mutex$Action Action Task Entry AuxiliaryConfigBasedPreferencesa Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$Down Down !  �    
 F C �   � 
 B C �   � �� �    � �� �    � �� �   � �� �   < �� �   � �� �   � �� �   > �� �    �  � �   �� �   �       � �    ( )      !    � C �   �  � �    !    � �    � C �   �  � C �   �  	 
 �   �   
 �   � Z !   ' (�� �  N 
    �� 	� D� � @M,*� G � MN-� -� O� � :� �*� R:� X� *� [ � � aY*� c�*� [ g� i� g:,*� oY� Y*� qY:� t� u W�   �   * 
   E  F  G * I / J 2 M 8 N P O ` Q  S�   H    ��      �   !   t� C   i��  * X��  8 J � �  ` " ( ) �      t��   i�� �     
B H�  H M@ � 	 �  ��   	�       	�� �   X     *� \� y� Y*+� �� �� ��   �       W�               ��       ! �     �     
�  �   �     W� �Y� �L*� �M,�>6� <,46�� �� +� �W� +�� �W+� �� �W+�� �W����+� ��   �   & 	   w  y  z * { 4 } ; ~ E  L y R ��       -��    W��    O�� �    �   � �   �  � � �   �   
   �   �     B� �Y� �L*�� �M>,�� )+,2� �W`,�� +,`2� ��� �W����+� ��   �   "    �  �  �  �  � ' � 7 � = ��   *   ,�    B��    :��   3 �    �  �%� �   �     e s �   �     g*� �*� �Y� �� �*� �� �Y*� ƶ ɵ �*� �Y� �� �*� �Y� �� �*� �Y� ۵ *� �Y� ۵ *+� *,� �*-� &*� *� �   �   6    �  �  � ! � , � 7 � B � M � R � W � \ � b � f ��   4    g�     g      g � �    g ( )    g   ! �       �   (        � 1 �   �     7*� �� �*� ���*� � � L+� ��� ��� � L*+� ��   �       �  �  �  �  � 1 � 6 ��       7�     � �   	 � (  b 1 �   G     *� � \� y� �Y*� �� W�   �   
    �  ��       �   " ? 1 �      �*�� �<*� � M,� � �,� � �N*� �� !*-� :� � � W<*� &� T*-!� ":*� &*� �# �' :� � ,� � �:�*� *� &*� �- ��Ч�p*� ӹ0 � M,� � �,� �4N*� &� b-�6 � H�0 � :� � @� �4:*� &*-�9 � ��9 � �� "�6 � �*� �- ���� q*-�9 � �� :� \-�6 � H�0 � :� � ;� �4:�9 � �<� :>�6 � ��@ ���<��*� ֹ0 � M,� � �,� �4N*� �� Z*-�9 � �� :� E-�6 �� :� � )� � �:<� :�D W���<*� &� I-�6 �� :� � /� � �:*� &*-�9 � �� "*� �- ��ͧ�B� *� �*� �*� �E �I*� �M� M,�S*� ӹY *� ֹY *� �\ *�� ���Q �   � 6   �  �  � 
 � ' � . � 6 � ; � J � L � S � ] � � � � � � � � � � � � � � � � �) �/ �? �D �o �� �� �����	�� 'Mjmpt�"�%�#�$�'�(�)�*�+�   �  6  �  � 	�  ] G
�  ' }�  � .? � � � o )? ? ^ �  � �  
� �  � � G � M � � � �    ��   
� ! �   *  � .? o )?  � � � � �   o � � 7 �� $ �/� � � � .4� F� )� A� � � � >4� /� � � 5� LQ   1 �   G     *� � \� y�]Y*�_� W�   �   
   . 4�       �   " < 1 �   ;     	*� �*�`�   �      7 8 9�       	�    0 1 �   N     *� ϶cW*� ���h*��   �      < = > ?�       �   	 �   �     +�l*�qM,� ,�uL� *�z!��L+.-���   �      C D E G "I�   *   �    +�   " 	�   # �       +  �    �  v�  { �v  �     �          ! ! �   � 
    E*� �+� G � MM,� ,� O��� N-� $*� �+� oY��Y*!+��YN� t� u W-�   �      M N P "Q CT�   *    E�     E"�   7#�   '$% �      7#& �    �  M@�� %��   "      �   �     [*� �� �+�� �N� X� -�� � aY���*� �-2�� :6-�� � -2�� :�����   �   & 	  X Y 	\ ^ $` 4b Cc Rb Xf�   >  7 !�    [�     ['�    [( !   J)  4 ' � �    	� � �  �   	'  (    8 9 �   �     (*� �+� G � HM,� *� �+� �Y� �YM� u W,�   �      j l m &p�        (�     ('�   * C �      *+ �    � & H�   '  �   ,  4 5 �   �     (*� �+� G �M,� *� �+� �Y� �YM� u W,�   �      t v w &z�        (�     ('�    
 �      � �    � &�   '  �   -    �   q     -*� �+�� W*� �+�� W*� +�� W*� +�� W�   �      ~  � !� ,��       -�     -'� �   '    , - �   ?     *� +�� �   �      ��       �     '� �   '   
   �  M     �*�� :6�� � V�� :�� � :��� ��� +,�� ��� +���� ��� 	������� �*�� �,� � :�+�@ *�� W�   �   6   � � � "� J� ^� d� j� n� p� �� �� ���   R  " B./   _�    �0 �     �	�    �1�    �( !   �23  �  � �    � �� X� �   0  	  1  (    $ % �   c     %� �Y� �+��/.��� �.� �,�Ƕ �� ��   �      ��        %�     %'�    %4� �   	'  4  56 �         � D�   �       ?76 �         � @�   �       ?8 � �   /     *� =�   �       ?�       9�  : � �   /     *� :�   �       ?�       9�  ;< �   :     *+� 6�   �       ?�       9�     =� >? �   :     *+� 2�   �       ?�       9�     =� @ � �   /     *� .�   �       ?�       9�  AB �   :     *+� *�   �       ?�       9�     =� CD �   /     *� &�   �       ?�       9�  EF �   E     *+,� "�   �       ?�        9�     =�    G� HI �   /     *� �   �       ?�       9�  JK �   E     *+� �   �       ?�        9�     =�    G ! L  �   P     *+,� �   �       ?�   *    9 �     =�    G�    M ! NO �   :     *+� �   �       ?�       9�     =� P  �   /     *� �   �       ?�       9�  QR �   /     *� �   �       ?�       9�  SR �   /     *� �   �       ?�       9�  TU �   /     *� �   �       ?�       9�   V 1 �   b      3�ʚ � � X��Y�ϳ D��Y�ϳ @� �Y��ҳ ��   �       ?  A  B $ ��    @ W   XY   J 	       Z �\	 �      d �]  �      4 H^	]      � _ ` b 