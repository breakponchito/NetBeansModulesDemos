����   42
      java/lang/Object <init> ()V  org/openide/util/WeakSet
  	      Borg/netbeans/modules/projectapi/SimpleFileOwnerQueryImplementation warnedAboutBrokenProjects Ljava/util/Set;  java/util/WeakHashMap
  	     projectCache Ljava/util/Map;
     uri2FileObject 4(Ljava/net/URI;)Lorg/openide/filesystems/FileObject;
     goUp (Ljava/net/URI;)Ljava/net/URI;
    ! " getOwner H(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/project/Project;	  $ % & 	cacheLock Ljava/lang/Object; ( ) * +  java/util/Map clear	  - . / cacheInvalid Z 1 java/util/ArrayList
 0 
  4 5  deserialize	  7 8 9 projectScanRoot Ljava/lang/String;
 ; < = > ? "org/openide/filesystems/FileObject getPath ()Ljava/lang/String;
 A B C D E java/lang/String 
startsWith (Ljava/lang/String;)Z
 ; G H I isFolder ()Z K java/net/URI ( M N O get &(Ljava/lang/Object;)Ljava/lang/Object; Q java/lang/ref/Reference
 P S N T ()Ljava/lang/Object; V  org/netbeans/api/project/Project X Y Z [ \ java/util/List iterator ()Ljava/util/Iterator; ^ _ ` a I java/util/Iterator hasNext ^ c d T next ( f g h put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; X j k l add (Ljava/lang/Object;)Z	  n o  forbiddenFolders q r s t l java/util/Set contains	  v w  externalOwners ( y z { keySet ()Ljava/util/Set;
  } ~  hasRoot F(Ljava/util/Set;Lorg/openide/filesystems/FileObject;Z[Ljava/net/URI;)Z	  � �  deserializedExternalOwners
 � � � � � 'org/netbeans/api/project/ProjectManager 
getDefault +()Lorg/netbeans/api/project/ProjectManager;
 � � � " findProject � java/io/IOException q j	  � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level; � Cannot load project.
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � java/lang/ref/WeakReference
 � �  � (Ljava/lang/Object;)V	  � � � UNOWNED_URI Ljava/net/URI;	 � � � � � 'org/netbeans/api/project/FileOwnerQuery UNOWNED "Lorg/netbeans/api/project/Project;
 ; � � I isValid
 ; � � � 	getParent &()Lorg/openide/filesystems/FileObject; q � � I isEmpty	  � � / externalRootsIncludeNonFolders
 ; � � � toURI ()Ljava/net/URI;	 � � � � FINEST � External Roots State: {0}	  � � � externalRootsState WLorg/netbeans/modules/projectapi/SimpleFileOwnerQueryImplementation$ExternalRootsState;
 � � � � @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	 � � � � � Dorg/netbeans/modules/projectapi/SimpleFileOwnerQueryImplementation$1 `$SwitchMap$org$netbeans$modules$projectapi$SimpleFileOwnerQueryImplementation$ExternalRootsState [I
 � � � � � Uorg/netbeans/modules/projectapi/SimpleFileOwnerQueryImplementation$ExternalRootsState ordinal ()I	 � � � � LOADING
  � �  wait � java/lang/InterruptedException	 � � � � INFO � java/lang/IllegalStateException �  Unknown external roots state: %s
 A � � � format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
 � �  � (Ljava/lang/String;)V
  � �  deserializeImpl � External Roots Deserialized
 � � � � .(Ljava/util/logging/Level;Ljava/lang/String;)V	  � � / $assertionsDisabled � java/lang/AssertionError
 � 	 � � � � LOADED
   	notifyAll
 org/openide/util/NbPreferences 	forModule 0(Ljava/lang/Class;)Ljava/util/prefs/Preferences; w
 java/util/prefs/Preferences node 1(Ljava/lang/String;)Ljava/util/prefs/Preferences;
 keys ()[Ljava/lang/String; java/net/URL
 N 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 �
 J �
  !org/openide/filesystems/URLMapper findFileObject 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject;" java/lang/Exception
$%  
removeNode' %java/util/prefs/BackingStoreException ()* { entrySet q Y- java/util/Map$Entry,/0 T getKey,23 T getValue
 J56 ? toString
8 g9 '(Ljava/lang/String;Ljava/lang/String;)V
;<  sync	 �>? � WARNING
 ABC markExternalOwnerTransient 3(Ljava/net/URI;Lorg/netbeans/api/project/Project;)V
 J <F /
 AHI E endsWith UKL � getProjectDirectory (NO O remove
 JQRS toURL ()Ljava/net/URL;U java/net/MalformedURLException
TWX  printStackTrace
 � �
 J[\ I 
isAbsolute
 J^_ ? getFragment
 Jab ? getQuery
 Ade l equals
 Agh � length
 Ajkl 	substring (II)Ljava/lang/String;
 Anop lastIndexOf (I)Ir java/net/URISyntaxException	 tu / WINDOWSw :y java/lang/StringBuilder
x | not a parent: 
x~� append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
x�� -(Ljava/lang/Object;)Ljava/lang/StringBuilder;�  of 
x5
���� I java/lang/Class desiredAssertionStatus
��� ? getName
 ���� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;� http:unowned
 J��� create "(Ljava/lang/String;)Ljava/net/URI;� java/util/HashSet
� � project.limitScanRoot
����� java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;� project.forbiddenFolders� versioning.forbiddenFolders�  
���� \;
 A��� split '(Ljava/lang/String;)[Ljava/lang/String;
����� java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; q��� addAll (Ljava/util/Collection;)Z q�O l
!�� ? 
getMessage� java/util/HashMap
� 
����� java/util/Collections synchronizedMap  (Ljava/util/Map;)Ljava/util/Map;	 ��� � NEW
���� I org/openide/util/BaseUtilities 	isWindows� 5org/netbeans/spi/project/FileOwnerQueryImplementation 	Signature #Ljava/util/Set<Ljava/lang/String;>; 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; rLjava/util/Map<Lorg/openide/filesystems/FileObject;Ljava/lang/ref/Reference<Lorg/netbeans/api/project/Project;>;>; -Ljava/util/Map<Ljava/net/URI;Ljava/net/URI;>; CLjava/util/Map<Ljava/net/URI;Lorg/openide/filesystems/FileObject;>; Code LineNumberTable LocalVariableTable this DLorg/netbeans/modules/projectapi/SimpleFileOwnerQueryImplementation; 2(Ljava/net/URI;)Lorg/netbeans/api/project/Project; fileURI test file $Lorg/openide/filesystems/FileObject; StackMapTable MethodParameters resetLastFoundReferences� java/lang/Throwable fldr p rp Ljava/lang/ref/Reference; e Ljava/io/IOException; Ljava/lang/ref/WeakReference; externalOwner externalOwnersURI folder furi [Ljava/net/URI; f folders Ljava/util/List; LocalVariableTypeTable =Ljava/lang/ref/Reference<Lorg/netbeans/api/project/Project;>; ALjava/lang/ref/WeakReference<Lorg/netbeans/api/project/Project;>; 6Ljava/util/List<Lorg/openide/filesystems/FileObject;>;� extRoots Ljava/util/Set<Ljava/net/URI;>; V(Ljava/util/Set<Ljava/net/URI;>;Lorg/openide/filesystems/FileObject;Z[Ljava/net/URI;)Z $RuntimeInvisibleParameterAnnotations -Lorg/netbeans/api/annotations/common/NonNull; ie  Ljava/lang/InterruptedException; needsToLoad u Ljava/net/URL; i name Ljava/util/prefs/Preferences; ex Ljava/lang/Exception; 'Ljava/util/prefs/BackingStoreException; [Ljava/lang/String; 	serialize uri ownerURI entry Ljava/util/Map$Entry; 3Ljava/util/Map$Entry<Ljava/net/URI;Ljava/net/URI;>; reset I(Lorg/openide/filesystems/FileObject;Lorg/netbeans/api/project/Project;)V root owner fo foUri url  Ljava/net/MalformedURLException; nue Ljava/net/URISyntaxException; pth path us idx I <clinit> 	forbidden files 
SourceFile 'SimpleFileOwnerQueryImplementation.java #org.netbeans.SourceLevelAnnotations )Lorg/openide/util/lookup/ServiceProvider; service 7Lorg/netbeans/spi/project/FileOwnerQueryImplementation; position   d InnerClasses ExternalRootsState Entry !   �   � �    � �    o  �   �  8 9      �   �    �   �  w  �   �  �  �   � 
 � /    % &   J . /   
 � �   u /   � /       �   Q     *� *� Y� 	� 
*� Y� � �   �       P  `  b  P�       ��    !� �   �      +M,� N,� M-� ,���-� �*-� �   �       T  W  X  Y  Z  [  ]�   *     ��      � �   � �   �� �    �  J�  ;�   �   �  �   �     � #YL�*� � ' � ,+ç M+�,��            �       h  i  j  k  l�       ��  �    �     ��   ! " �  
    �� 0Y� 2M� 3+�|� 6� +� :� 6� @� �f+� F>� J:�?� #Y:² ,� *� � ' � ,*� +� L � P:� G� R� U:� 8,� W :� ] �  � b � ;:	*� 	� e W���ðç :
�
�,+� i W� m+� :� p � �� u� x +� |� �� �� x +� |� �� �+� �:� !:*� 
+� � � � �� ��� ��� U� #Y:» �Y� �:,� W :� ] �  � b � ;:	*� 	� e W���ç :���� u� x +� |� �� u2� L � J:� o� �� � ��� :� W� �� O� �� �:� ,� #Y:�*� +� �Y� �� e Wç :���:� �� ��� ��� �� x +� |� m� �2� L � ;:� W� �� O� �� �:� ,� #Y:�*� +� �Y� �� e Wç :���:� �� ��� ��+� �L����  ; � �   � � �   � � �   � � � �%be  eje  ���  ���  ��� �Jad  did  4no � �   F   p  r  s  t " u % w * x 0 y 4 z ; { A | J } N  ] � b � l � q � � � � � � � � � � � � � � � � � � � � � � � � �
 � � � �% �0 �N �\ �_ �m �p �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �' �4 �> �C �J �^ �l �o �q �~ �� �� �� ��   �  � �� 	 l :� �  ] I��  � � �  � �� N �� 	0 /��  W� � � 1� � � �� � Y�� � q� � > 1� � q �� ' Y��  *[� /  0U��   ���    ���  ��� �      ] I�� 0 /��  ��� �   � �  X� (� � * P U ^� &� E�� � F ��   ��    ; X� U  �   � ^� &E�� � � 3 J� C 	  ; X� J ; U  �� �    ; X� J ;  �� � _   ; X� ; U  �� �    ; X� ;  �� � �   �   
 ~  �   �     &*� � � � � �� �-+� �S*-2� p �   �       �  �  �  ��   *    &�      &��    &� /    &�� �       &��  �    �   � � � � �   �                 5  �  S    ;YL² �� �Ĳ ƶ ʲ Ͳ ƶ �.�   G            $   D� ٳ �;� =� Ʋ ٦ 4� ܧ��M� �� �,� �� � � �Y�� Y� �S� � �+ç N+�-�� �� � �� �� �YL² �� � Ʋ ٥ � �Y� ��� �� �� +ç 
:+��� >:Y:² �� � Ʋ ٥ � �Y� ��� �� �� ç :���� 	 L Q T �   �   � � �   � � �   � � �   � � �   � � �   � �   � � �   �   �         8 > @ C	 L Q T U ` c f } � � � � �  �! �" �# �$ � �  �! �" �#$
&�     U   	 /  �   J � 8 
P �D�� � - O�� B��      �   P�� �     
 �  �  F     ~�	�
K*�L+�=>� 9+2:�Y*��:� JY�:� ��� e W���ȧ K� �� �*� ��	�
�#� K� �� �*� ��    Q T! ` n q& �   :   * +  , 0- ;. K+ Q2 T0 U1 `4 n7 q5 r6 }8�   >  0   ;  �    + 9   E�	   U 
   r 
  �   " �    � :    B!P&   �  &     n�	�
K� u�( �+ L+� ] � :+� b �,M,�. � JN,�1 � J:� �� *-�4�4�7���*�:� K� ��=*� ��    ^ a! �   2   < = -> 7? B@ JA WC ZD ^G aE bF mI�   4  7   �  B  �  - *   R�	   b 
  �     - * �    �  ^<� �    ! 	  �   m     � #YK�� ,� u� ' *ç L*�+��            �      M N 
O P Q�    �    ��  	B �   A     	*� �+�@�   �   
   U V�       	�     	 � �   	     	BC �  ~     �� �*�DE�G� � �� �+� M+�J M+� �� 	� �� ,� �N� #Y:�� ,� u*-� e W� �*�M Wç :��� #� #YM�� ,� u*�M W,ç 
:,���  = Y \   \ a \   m } �   � � �   �   >   Z [ \ $] 6^ =_ A` La Vb dc gd me qf {g �i�   *  $ @�  6 . �    � �     � � �   P 	T�    J U �  ;C J� &  J U ; J  �� �   J U  �� �   	     
   �   �     #*�PL� M,�V� �� � �Y*�Y��+��     T �      n s o 	p q r t�   *     	 �    # �     �    HT�  T�   J  �      
   �  �    t� �� *�Z� � �Y*�Y�� �� *�]� � �Y*�Y�� �� *�`� � �Y*�Y�*�DL+� +E�c� �*�4M,E�G� 3,,�fd�iM� �� +E�G� � �Y� ��++�fd�iL,/�m>� �� � � �Y+�Y�+/�m� ,`�iM� 
,�iM� JY,�:� :� �Y�Y��s� 4�D:�f� v�G� �f� E�G� �� �� �Z� � �Y�Y�� �� 9*�4�4� @� *� �Y�xY�z{�}����}*�����Y��  � � �q �   r   x y ,z B~ G U� W� \� f� r� �� �� �� �� �� �� �� �� �� �� �� �� ��	���5�q��   R  �  �  � 
�  � * 9   t �   G-  9  \! 9  � �"#  � � � �   / �  A� 2 A� Lq�  J�   A� ;�      $  �  �     ���� � � ������ ����� ���Y��KL���L�������M*,������� W*��� W� M� �� �,��,� �*� m+� 6��Y�øĳ u��Y�øĳ �� �� Y� � #� ,�ʳ Ƹͳs�  . ` c! �   ^    9  ;  < $ A , B . D 5 E E F V G ` J c H d I r K v L z � � � � � � � � � � � � � � � ���   *  E % 9  d �  , N&    . L 9 �     , N&�  �    @� U  q A ! '   ()    * +c,-I./     � 0@ �    , (1	