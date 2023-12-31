����   4�
      "org/openide/filesystems/FileObject <init> ()V	  	 
   &org/openide/filesystems/AbstractFolder system $Lorg/openide/filesystems/FileSystem;	     parent $Lorg/openide/filesystems/FileObject;	     name Ljava/lang/String;	     	validFlag Z
      "org/openide/filesystems/FileSystem getRoot &()Lorg/openide/filesystems/FileObject;	    !  	validRoot
 # $ % & ' java/lang/String lastIndexOf (I)I
 # ) * + 	substring (II)Ljava/lang/String;
 # - . / length ()I 1  
 # 3 * 4 (I)Ljava/lang/String;
 # 6 7 8 endsWith (Ljava/lang/String;)Z
 # : ; < charAt (I)C
  > ? @ getFileSystem &()Lorg/openide/filesystems/FileSystem;
  B C D isValid ()Z F java/lang/StringBuilder
 E 
  I J K toString ()Ljava/lang/String;
 E M N O append -(Ljava/lang/String;)Ljava/lang/StringBuilder; Q 	 parent: 
 E S N T -(Ljava/lang/Object;)Ljava/lang/StringBuilder; V  validFlag: 
 E X N Y (Z)Ljava/lang/StringBuilder; [  validRoot:  ]  isValidRoot: 
 E I
  ` a  check	  c d e children [Ljava/lang/String; g java/util/ArrayList
 f 
  j k l getChild <(Ljava/lang/String;)Lorg/openide/filesystems/AbstractFolder;
 f n o p add (Ljava/lang/Object;)Z
 f r s t toArray (([Ljava/lang/Object;)[Ljava/lang/Object; v %[Lorg/openide/filesystems/FileObject; x y z { D java/util/Enumeration hasMoreElements x } ~  nextElement ()Ljava/lang/Object; � ..
 # � � p equals
  � �  	getParent
  � � � findRefIfExists 2(Ljava/util/Enumeration;)Ljava/lang/ref/Reference;
 � � � �  java/lang/ref/Reference get	  � � � map Ljava/util/Map; � � � � � java/util/Map &(Ljava/lang/Object;)Ljava/lang/Object;
  � k � =(Ljava/lang/String;Z)Lorg/openide/filesystems/AbstractFolder;
 � � � � / org/openide/util/BaseUtilities getOperatingSystem
 � � � � � java/lang/Character isLowerCase (C)Z
 # � � K toUpperCase
 # � � K toLowerCase
  � � l 
createFile
  � � � createReference C(Lorg/openide/filesystems/AbstractFolder;)Ljava/lang/ref/Reference; � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � java/lang/ref/WeakReference
 � �  � (Ljava/lang/Object;)V	  � � � EMPTY_ARRAY )[Lorg/openide/filesystems/AbstractFolder; � � � / size
 f �  � (I)V � � � � values ()Ljava/util/Collection; � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � D java/util/Iterator hasNext � � �  next �
  � � � subfiles +()[Lorg/openide/filesystems/AbstractFolder;
 � � � � � org/openide/util/Enumerations array ,([Ljava/lang/Object;)Ljava/util/Enumeration;
 � � � � 	singleton +(Ljava/lang/Object;)Ljava/util/Enumeration; � )org/openide/filesystems/AbstractFolder$1P
 � �  � +(Lorg/openide/filesystems/AbstractFolder;)V
 � � � � queue Y(Ljava/util/Enumeration;Lorg/openide/util/Enumerations$Processor;)Ljava/util/Enumeration;
  � �  waitRefreshed
  � � � getFileObjectImpl J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; � java/lang/StringBuffer
 � �
 � � N � ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 �  N (C)Ljava/lang/StringBuffer;
 � I
  D isInitialized
  D isFolder
 
 refresh )(Ljava/lang/String;Ljava/lang/String;ZZ)V	  	listeners &Lorg/openide/filesystems/ListenerList; $org/openide/filesystems/ListenerList
 
 n
 p remove
  ()Ljava/util/Enumeration;
  fireFileDeletedEvent =(Ljava/util/Enumeration;Lorg/openide/filesystems/FileEvent;)V
 !"#  !org/openide/filesystems/FileEvent getFile
% �& java/lang/Object
 () D 
isExpected
 + , L(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Z)V
 ./0 inheritPostNotify &(Lorg/openide/filesystems/FileEvent;)V
 230 fileDeleted0
 567 setPostNotify (Ljava/util/Collection;)V
 9: dispatchEvent
 <=> fileCreated0 '(Lorg/openide/filesystems/FileEvent;Z)V
 @A fireFileChangedEvent
 CDE getTime ()J
 G H M(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;ZJ)V
 JK0 fileChanged0
 MNO fireFileRenamedEvent C(Ljava/util/Enumeration;Lorg/openide/filesystems/FileRenameEvent;)V
Q!R 'org/openide/filesystems/FileRenameEvent
QTU K getName
QWX K getExt
Q(
Q[ \ p(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;Z)V
Q.
 _`a fileRenamed0 ,(Lorg/openide/filesystems/FileRenameEvent;)V
Q5
 def fireFileAttributeChangedEvent F(Ljava/util/Enumeration;Lorg/openide/filesystems/FileAttributeEvent;)V
h!i *org/openide/filesystems/FileAttributeEvent
hT
hlm  getOldValue
hop  getNewValue
h(
hs t �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
h.
 wxy fileAttributeChanged0 /(Lorg/openide/filesystems/FileAttributeEvent;)V
h5
 |}~ getFCLSupport &()Lorg/openide/filesystems/FCLSupport;
���� D "org/openide/filesystems/FCLSupport hasListeners
 ��� getRepository &()Lorg/openide/filesystems/Repository;
�|� "org/openide/filesystems/Repository
�
 �
 ��� empty
��� getAllListeners ()Ljava/util/List;
����� java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration;
���� emptyMap ()Ljava/util/Map;
 �� ((Ljava/lang/String;Ljava/lang/String;Z)V
�� e�  clone
 �� <(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V
����� java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V
 ��  beginAtomicAction
 ��� getNewChildren (([Ljava/lang/String;)[Ljava/lang/String;
 ��  finishAtomicAction� java/util/HashMap
� �� java/util/HashSet
� � �� �� n� java/util/Set
� �
 ��� dereferenceValues  (Ljava/util/Map;)Ljava/util/Map;
 �� D hasAtLeastOneListeners
 ��� filesCreated (Ljava/util/Set;Z)V
 ��� filesDeleted (Ljava/util/Map;Z)V
 �� D 
isReadOnly� 'org/openide/filesystems/MultiFileObject
� ���� addAll (Ljava/util/Collection;)Z ���� keySet ()Ljava/util/Set;
 ��� existingSubFiles (Z)Ljava/util/Enumeration;
 ��� refreshChildren 1(Ljava/util/Enumeration;Ljava/util/Collection;Z)V
 �� D isData
 �� K 
getNameExt ��� p contains
 �� (Z)V� �
 �=,
 ��� list ()[Ljava/lang/String;
 �� D isRoot
  � 
stripNulls
 java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 f	 7 �  � � � r
 � refreshFolder
  lastModified ()Ljava/util/Date;
C java/util/Date
   L(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;J)V .org/openide/filesystems/AbstractFolder$Replace
  '(Lorg/openide/filesystems/FileObject;)V
 !"# getChildren '()[Lorg/openide/filesystems/FileObject;
 %&' lock $()Lorg/openide/filesystems/FileLock;
 )*+ delete %(Lorg/openide/filesystems/FileLock;)V
-./0   org/openide/filesystems/FileLock releaseLock2 java/io/IOException4 EXC_CannotDelete
 67 K getPath
  >
 :; K getDisplayName
=>?@A org/openide/util/NbBundle 
getMessage [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
CDEFG $org/openide/filesystems/ExternalUtil annotate *(Ljava/lang/Throwable;Ljava/lang/String;)V
 IJ+ handleDelete
 � EXT_SEP C ConstantValue   . 	Signature fLjava/util/Map<Ljava/lang/String;Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>;>; TLorg/openide/filesystems/ListenerList<Lorg/openide/filesystems/FileChangeListener;>; ](Lorg/openide/filesystems/FileSystem;Lorg/openide/filesystems/FileObject;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/filesystems/AbstractFolder; fs StackMapTable MethodParameters i I #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; isHasExtOverride hasExtOverride ext ret isValidRoot f aList Ljava/util/ArrayList; LocalVariableTypeTable ;Ljava/util/ArrayList<Lorg/openide/filesystems/FileObject;>; find =(Ljava/util/Enumeration;)Lorg/openide/filesystems/FileObject; en Ljava/util/Enumeration; fo +Ljava/util/Enumeration<Ljava/lang/String;>;q java/lang/Throwable Q(Ljava/util/Enumeration<Ljava/lang/String;>;)Lorg/openide/filesystems/FileObject; findIfExists r Ljava/lang/ref/Reference; CLjava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>; tmpName p(Ljava/util/Enumeration<Ljava/lang/String;>;)Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>; 	onlyValid getChildrenArray m(Lorg/openide/filesystems/AbstractFolder;)Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>; ll rec D(Z)Ljava/util/Enumeration<Lorg/openide/filesystems/AbstractFolder;>; setAttribute ((Ljava/lang/String;Ljava/lang/Object;Z)V 
Exceptions attrName value fire getFileObject sb Ljava/lang/StringBuffer; expected addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V fcl ,Lorg/openide/filesystems/FileChangeListener; removeFileChangeListener ev #Lorg/openide/filesystems/FileEvent; 	fileevent src file fileChanged1 )Lorg/openide/filesystems/FileRenameEvent; filerenameevent ,Lorg/openide/filesystems/FileAttributeEvent; fileattributeevent fsHas repHas rep $Lorg/openide/filesystems/Repository; G()Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>; '(Ljava/lang/String;Ljava/lang/String;)V added removed nc reuseChildren prev registerChild (Ljava/lang/String;)V newChildren o child foRef 
removedRef initialCapacity newMap Ljava/util/HashMap; 
addedNames Ljava/util/Set; removedPairs 
nameFilter jLjava/util/HashMap<Ljava/lang/String;Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>;>; #Ljava/util/Set<Ljava/lang/String;>; KLjava/util/Map<Ljava/lang/String;Lorg/openide/filesystems/AbstractFolder;>; Ljava/util/Collection; BLjava/util/Enumeration<+Lorg/openide/filesystems/AbstractFolder;>; \(Ljava/util/Enumeration<+Lorg/openide/filesystems/AbstractFolder;>;Ljava/util/Collection;Z)V removedToFire O(Ljava/util/Map<Ljava/lang/String;Lorg/openide/filesystems/AbstractFolder;>;Z)V s addedToFire '(Ljava/util/Set<Ljava/lang/String;>;Z)V retVal �(Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>;>;)Ljava/util/Map<Ljava/lang/String;Lorg/openide/filesystems/AbstractFolder;>; Ljava/util/Iterator; childrenList (Ljava/util/Iterator<Ljava/lang/String;>; *Ljava/util/Collection<Ljava/lang/String;>; outputStreamClosed fireFileChanged writeReplace message iex Ljava/io/IOException; foLock "Lorg/openide/filesystems/FileLock; fos canWrite Ljava/lang/SuppressWarnings; deprecation <clinit> 
SourceFile AbstractFolder.java InnerClasses P� 'org/openide/util/Enumerations$Processor 	Processor Replace      
  � �   LM N   O                       !     d e    � � P   Q  P   R ;   S T   �     )*� *+� *,� *-� *� *,� 
+� � � �   U       Y  Z 	 [  \  ]  ^ ( _V   *    )WX     )Y     )      )   Z   1 � $     #  �       #   [   Y         U K T   g     *� .� "<� 
*� � *� � (�   U   
    f 
 iV       WX   
 \] Z   
 � H # X K T   s     **� .� "`<� *� � ,� 0� *� � 2�   U   
    s  vV       *WX    \] Z    � G # � K T   /     *� �   U       ~V       WX  ^    _   ` D T   ,     �   U       �V       WX  ^    _    a 8 T   �     E+� �*� � ,+� ,d� �*� +� 5=� �*� *� � ,+� ,dd� 9.� ��   U   * 
   �  �  �  �  � ! � % � ' � A � C �V        EWX     Eb   ! $c  Z   	 � [   b  ^    _    ? @ T   /     *� �   U       �V       WX   � D T   B     *� � � �   U       �V       WX  Z    @  C D T   �     =*� � **� � � � �*� =� *� � � <*� � � � �   U       �  �  � , �V       =WX   , d  Z    @ @� @  J K T   �     ]*� A� T� EY� G*� H� LP� L*� � RU� L*� � WZ� L*� � R\� L*� =� *� � � � W� ^�*� H�   U       �  � X �V       ]WX  Z    � P E�      E^    _    �  T   /     *� �   U       �V       WX   1"# T   �     O*� _*� b� � �*� b�<� fY� hM>� !**� b2� i:� 
,� mW����,� � q� u�   U   .    �  �  �  �  �  � % � 1 � 6 � = � C �V   4  1 e     #\]    OWX    9 �]   1fg h      1fi Z    �  f�  jk T   �     O*M,� J+� w � A,YN�,� _+� | � #:�� �� ,� �� M� 
,� iM-ç 
:-�����,�   @ C   C G C   U   * 
   �  �  �   " , 7 > MV   *  "  �     OWX     Olm   MnX h       Olo Z    �  � 4% #� Dp� [   l  P   r sk T   �     *+� �M,� � 
,� �� �   U   
    V        WX     lm   tu h       lo   tv Z    �  �F [   l  P   r  � � T       \*M,� W+� w � N,� �� �,YN�+� | � #:+� w � ,� iM� ,� �� � � �-ð-ç 
:-������   J P   K M P   P T P   U   .      ! # ( ) '+ 0, :. K0 Z4V   *  ' $w     \WX     \lm   ZnX h       \lo Z    �  � !% #� Dp� [   l  P   x  k l T   ;     *+� ��   U      <V       WX        [        k � T  �     �*� �+� � � �N-� D� �@ � 9+� 9� �� *� �+� �� � � �N� *� �+� �� � � �N-� ��-� �� :� ;*+� �:� (� A�  *� �+� *� �� � � W� 
� :�   U   F   @ B F G &H :J KM ON QQ SU \W aY h[ u\ �^ �_ �dV   4    �WX     �      �y    �tu  \ @nX h      �tv Z   D � : �� 4   # �   � #�     # �   � # �[   	   y   z� T   /     *� b�   U      kV       WX    � � T   =     	� �Y+� ��   U      tV       	WX     	nX [   n  P   { 0 � � T       j*� �� � ��� fY*� �� � `� �L*� �� � � � M,� � � ,,� � � �N-� ���-� �� :� 
+� mW���+� �� q� ڰ   U   .   z { ~ � @� D� G� P� U� \� _�V   *  P nX  @ tu    jWX    L|g h     @ tv   L|i Z    � ! f ��  �� �   D T   B     *� �� � �   U      �V       WX  Z    @ �� T   a     � *� ۸ ߰*� � �Y*� � �   U      � � �V       WX     }  Z    [   }  P   ~ � �    1[   �  �  �   � � T   P     *� =� �*+,� ��   U   
   � �V        WX           b  [   	   b  ^    _   " � � T   �     J*� _,� ,0� �� 	*+� i�� �Y+� ,`,� � ,� ,`� �N-+� �.� �,� �W*-�� i�   U      � � � � 2� A�V   *  2 ��    JWX     J      Jb  Z   3 �    # #   �    # #   [   	   b   � T   a     *�� *�� �*�	�   U      � � � �V       WX     �  Z    [   �   �� T   �     ,� �YM�*�� *�Y��,ç N,�-�*�+�W�             U      � � � � "� +�V       ,WX     ,�� Z    � %Dp� [   �   �� T   V     *�� *�+�W�   U      � � �V       WX     �� Z    [   �   30 T   �     Z**�+�+�*�$� H*� � A� Y*� +�+�'�*M,+�-*� � � *� � ,�1,�4� N,�4-��  / I Q   U   .   � 	� � /� 4� >� I  N Q  W YV      / *��    ZWX     Z�� Z    � I Gp� [   �   => T   �     ]**�+�8+�*�$� K*� � D� Y*� +�+�'�*N-+�-*� � � *� � -�;-�4� :-�4��  / J R   R T R   U   .    	  / 4 > J O R Y \V   *  / -��    ]WX     ]��    ]�  Z    � J Gp� 	[   	�  �   =, T   \     *� Y+,�*�;�   U   
    V   *    WX     �     �     �  [   �  �  �   K0 T   �     ^**�+�?+�*�$� L*� � E� Y*� +�+�'+�B�FM,+�-*� � � *� � ,�I,�4� N,�4-��  3 M U   U   .   # 	% & 3( 8) B* M- R. U- [. ]0V      3 *��    ^WX     ^�� Z    � M Gp� [   �   �0 T   B     
**�+�?�   U   
   4 	5V       
WX     
�� [   �   `a T   �     b**�+�L+�P*�$� P*� � I�QY*� +�P+�S+�V+�Y�ZM,+�]*� � � *� � ,�^,�b� N,�b-��  7 Q Y   U   6   9 	; < $= 0> 7A <B FC QF VG YF _G aIV      7 *��    bWX     b�� Z    � QQGp� [   �   xy T   �     f**�+�c+�g*�$� T*� � M�hY*� +�g+�j+�k+�n+�q�rM,+�u*� � � *� � ,�v,�z� N,�z-��  ; U ]   U   6   M 	O P $Q 0R ;U @V JW UZ Z[ ]Z c[ e]V      ; *��    fWX     f�� Z    � UhGp� [   �   � D T   �     @*� =�{�<=*� =��N-� -���=*�� *���� � � � �   U      b c d f g !jV   *    @WX    5�    3�    +�� Z    � !�@ � D T   Z     $*��� *� � � *� � ��� � �   U      pV       $WX  Z    @  T   Q     *�� ���*������   U      v w yV       WX  Z    P   �  a  T   x     -*� �� (*�	*� �� *��� �*� b� *� #� b�   U      � � � � � $� ,�V       -WX  Z    , � T   J     *+,���   U   
   � �V        WX     �     �  [   	�  �   � T   �     V*� b:� E,� A� <����:�6��� ,2� ����S� *+,��� *+,���   U   .   � � � � *� 6� <� ?� I� L� U�V   H  " \]   ,� e    VWX     V�     V�     V�    P� e Z    � "��� � [   �  �  �  ��   � l [        T   a     *+,���   U   
   � 
�V   4    WX     �     �     �     �  [   �  �  �  �    �� T  $     p*YM�*� �� *� _*� �+� �Y� �� � � �N-� *� �+-� � W� .*� b�`� #:*� b*� b���*� b�+S*� b,ç 
:,���   e h   h l h   U   2   � � � � %� )� 8� D� T� ]� c� o�V   *  D � e  % >�u    pWX     p   h     % >�v Z    � %� ( �� *Dp� [       � T       �*� =��*��:*Y:	�*� b� � 	�*� =���� �hl`� 6
��Y
��:��Y
��:� �*� �� *� �,� � � �� :6�� �2::*� �� Z*� ��� � �:� +� ,� ,� �� :+� ,� +� �� :� +� ,� ,� �� :�  +� �� �� W� �Y� �:��W���a*� �� **� ��ħ :*� �*� b	ç :	��� � *�ș *��� � ,� ,�� W*��� U+� Q,� M*� =�Ӛ C*�֚ <��Y��:	� 	�� W� 	�� �� W**��	��*� =��� :*� =����   #@   +=@  @E@     #�   +��  ���   U   � 4  � � � �  � #D *� +� ?� J� U� Z� t� � �  � � � � �
 � � � � � � �	�!."4#:$H&X(`+i,m-v0~3�4�7�9�:�=�>�A�D�E�D�E�FV   �  � ��   � ��u  w �\]  t ��u  ? ��] 
 J ���  U ��� . � � � 0�� 	 �� e H ��� H �� �   �WX    ��    ��    ��    ��    �� e h   R  � ��v  t ��v  J ���  U ��� . �� � 0�� 	H ��� H ��� Z   � � + 
  # #��  %  @� 3   # #��� %�  @ ��  �� A # �	�    # #��� %�  @ ��  
  # #��  % p�  	  # #��� �  � 4��    # #�  Ip[   �  �  �  �  �  �� T   �     4+� w � -+� | � :�� ,��� � 	���б   U      I 	J L M *N 0Q 3RV   4   �X    4WX     4 �m    4��    4�  h       4 �� Z     /[    � � �  P   � �� T   �     N+� � � � N-� � � ;-� � � :� *�Ț �ș � Y�*:�1��±   U      U  V &X 5Y CZ J\ M]V   4  C ��    *nX    NWX     N� �    N�  h       N�� Z    �  �� ( � � [   	� � P   � �� T   �     4+�� N-� � � &-� � � #:*� i:� **����ױ   U      ` a #c (d 0f 3gV   4  # nX   �     4WX     4��    4�  h       4�� Z    �  �(� [   	� � P   � �� T   �     L��Y+� � ��M+�� �� N-� � � *-� � � #:*� �:� ,� � W���,�   U      j k .l 7n <o Gq JsV   4  7 �X  .       LWX     L � �   >� � h       L �Q   >�� Z    �  � �,� [    � P   � �� T   �     (+� +� *��M*��� ,� � #M,� ,��M,�   U      w y z } !~ &�V        (WX     (� e   � e Z    C�� �[   �  
� T       W*L� fY+��M,� � N-� � � -� � � #:� 	-�
 ���,� +�� ,,� � #� ��L+�   U   * 
  � � � � )� .� 4� 7� B� U�V   4  ) �    " ��    W d e    U� e   I�� h      " ��   I�� Z    � � � �� [    d  � T   �     *�� *+,��   U      � � �V   >    WX     �     �     �     �     � e Z    [   �  �  �  �  �   �� T   ^     � *� Y***����I�   U      � � �V       WX     �  Z    [   �   �  T   3     	�Y*��   U      �V       	WX   *+ T  j  	   g*�� ]*� M>,�� P,2:�$:�(�,� /:3*�5�8�9�<:�B�:�,�����*+�H�    ' /1   ' Q   / S Q   U   N   � � � � �  � '� ,� /� 1� 7� B� G� N� Q� X� [� a� f�V   R  G 
�   1  ��   Bn     ;��   S\]   U� v    gWX     g&� Z   - �  u�    - u - 1ap� 	� �    1[   &   J+ �    1[   &   � D T   B     *�K� � �   U      �V       WX  Z    @^    � �[ s� �  T          � � ��   U       3 �   ��     �  �  � ��	 � 