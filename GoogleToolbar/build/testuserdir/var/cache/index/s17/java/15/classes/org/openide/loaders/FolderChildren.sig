����   4�
      "org/openide/loaders/FolderChildren 
refreshKey (Ljava/lang/Object;)V	   	 
 filter  Lorg/openide/loaders/DataFilter;	     folder  Lorg/openide/loaders/FolderList;	     err Ljava/util/logging/Logger;	     
 org/openide/loaders/DataFilter ALL
     <init> C(Lorg/openide/loaders/DataFolder;Lorg/openide/loaders/DataFilter;)V
       org/openide/nodes/Children$Keys (Z)V	 " # $ % & org/openide/util/Task EMPTY Lorg/openide/util/Task;	  ( ) & refTask
 + , - . / org/openide/loaders/DataFolder getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 1 2 3 4 5 "org/openide/filesystems/FileObject isRoot ()Z 7 "org.openide.loaders.FolderChildren 9 java/lang/StringBuilder
 8 ;  < ()V > #org.openide.loaders.FolderChildren.
 8 @ A B append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 1 D E F getPath ()Ljava/lang/String;
 H I J K L java/lang/String replace (CC)Ljava/lang/String;
 8 N O F toString
 Q R S T U java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
 W X Y Z [ org/openide/loaders/FolderList find G(Lorg/openide/filesystems/FileObject;Z)Lorg/openide/loaders/FolderList;
 ] ^ _ ` a org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;	  c d e listener #Ljava/beans/PropertyChangeListener;
 W ,
 h i j k l  org/openide/filesystems/FileUtil weakFileChangeListener l(Lorg/openide/filesystems/FileChangeListener;Ljava/lang/Object;)Lorg/openide/filesystems/FileChangeListener;	  n o p 
fcListener ,Lorg/openide/filesystems/FileChangeListener;
  r s t setKeys (Ljava/util/Collection;)V	  v w x pairs Ljava/util/Collection;	 z { | } ~ java/util/logging/Level FINE Ljava/util/logging/Level; � Got a change {0}
 � � � � F java/beans/PropertyChangeEvent getPropertyName
 Q � � � log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	 � � � � � .org/openide/loaders/FolderChildren$RefreshMode SHALLOW 0Lorg/openide/loaders/FolderChildren$RefreshMode;
  � � � refreshChildren 3(Lorg/openide/loaders/FolderChildren$RefreshMode;)V
 � � � � � javax/swing/event/ChangeEvent 	getSource ()Ljava/lang/Object; � org/openide/loaders/DataObject
 � ,
 1 � � 5 isFolder
 1 � � / 	getParent	 � � � � DEEP � %org/openide/loaders/FolderChildren$1R
 � �  � '(Lorg/openide/loaders/FolderChildren;)V	 � � � � SHALLOW_IMMEDIATE
 " � � < waitFinished	 � � � � op
 � � � < run	 � � � & prevTask
 � � � � � 2org/netbeans/modules/openide/loaders/DataNodeUtils reqProcessor I(Lorg/openide/filesystems/FileObject;)Lorg/openide/util/RequestProcessor;
 � � � � � !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;	  � � � DELAYED_CREATION_ENABLED Z
 � � � � 5 java/awt/EventQueue isDispatchThread	 � � � � � &org/openide/loaders/FolderChildrenPair primaryFile $Lorg/openide/filesystems/FileObject; � .org/openide/loaders/FolderChildren$DelayedNode
 � �  � O(Lorg/openide/loaders/FolderChildren;Lorg/openide/loaders/FolderChildrenPair;)V
  � � � 
createNode B(Lorg/openide/loaders/FolderChildrenPair;)Lorg/openide/nodes/Node; � org/openide/nodes/Node
 � � � � � java/lang/System currentTimeMillis ()J
 � � Z � F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject;
 � � � 5 isValid
 � � � � � java/lang/Object equals (Ljava/lang/Object;)Z  � � � acceptDataObject #(Lorg/openide/loaders/DataObject;)Z
 � � � � getClonedNodeDelegate :(Lorg/openide/loaders/DataFilter;)Lorg/openide/nodes/Node;
 Q � � � 
isLoggable (Ljava/util/logging/Level;)Z � createNodes: {0} took: {1} ms
 java/lang/Long valueOf (J)Ljava/lang/Long;
 Q � A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
   returning: {0} /org/openide/loaders/DataObjectNotFoundException
 F java/lang/Class getName
 Q � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  < waitOptimalResult
  getNodes ()[Lorg/openide/nodes/Node;
  5 checkChildrenMutex
 �  � 5" Waiting for delayed node {0}	 z$% ~ WARNING' %Scheduling additional refresh for {0}) fallback
 �+,- scheduleRefresh (Ljava/lang/String;)V/ 'getNodes takes ages, turning on logging
 Q12- warning
 Q456 getLevel ()Ljava/util/logging/Level;
 Q89: setLevel (Ljava/util/logging/Level;)V
 <= F 
threadDump	 ?@ � $assertionsDisabledB java/lang/AssertionError
A ;E java/lang/IllegalStateExceptionG 2Too many repetitions in getNodes(true). Giving up.
DI -
KLM AN java/lang/StringBuffer ,(Ljava/lang/String;)Ljava/lang/StringBuffer;P Thread 
RS java/lang/Thread
KU AV (C)Ljava/lang/StringBuffer;XYZ[\ java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;^ [Ljava/lang/StackTraceElement;` 	at 
bcde F java/lang/StackTraceElement getClassName
bgh F getMethodName
bjk F getFileName
bmno getLineNumber ()I
Kq Ar (I)Ljava/lang/StringBuffer;t )
v Group 
xy java/lang/ThreadGroup{   
 H}~ concat &(Ljava/lang/String;)Ljava/lang/String;
x��o activeGroupCount
x��� 	enumerate ([Ljava/lang/ThreadGroup;Z)I
 ��� appendGroup S(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/ThreadGroup;Ljava/util/Map;)V
x��o activeCount
x��� ([Ljava/lang/Thread;Z)I
 ��� appendThread N(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Thread;Ljava/util/Map;)V
R��� getAllStackTraces ()Ljava/util/Map;
R��� currentThread ()Ljava/lang/Thread;
R��� getThreadGroup ()Ljava/lang/ThreadGroup;
x� ��
K ;�  
K N����� java/util/Collection iterator ()Ljava/util/Iterator;���� 5 java/util/Iterator hasNext��� � next
 1�� F 
getNameExt
 H��� 
startsWith (Ljava/lang/String;)Z
 ���� getNodeDelegate ()Lorg/openide/nodes/Node;
 �
 H �
 ��� 	getNodeAt (I)Lorg/openide/nodes/Node;	 z�� ~ INFO� Can't find object for 
 8� A� -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 ��� 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node;
 Q��- fine
 �� 5 isInitialized
 W�� < waitProcessingFinished� )waitOptimalResult: waitProcessingFinished� 6getNodes(true) called while holding the Children.MUTEX
 ��o getNodesCount	����� org/openide/nodes/Children MUTEX Lorg/openide/util/Mutex;
���� 5 org/openide/util/Mutex isReadAccess
��� 5 isWriteAccess� addNotify begin
 W��� addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 1��� addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V� (org/openide/loaders/ChangeableDataFilter
 ]��  change X(Ljavax/swing/event/ChangeListener;Ljava/lang/Object;)Ljavax/swing/event/ChangeListener;	  changeListener "Ljavax/swing/event/ChangeListener;� addChangeListener %(Ljavax/swing/event/ChangeListener;)V
 addNotify end removeNotify begin
 1� removeFileChangeListener
 W� removePropertyChangeListener� removeChangeListener
 java/util/Collections 	emptyList ()Ljava/util/List;
  t 	applyKeys  removeNotify end
 1 N
 � N$ NetBeansAttrAssignedLoader
&' *org/openide/filesystems/FileAttributeEvent
)*+,- "org/openide/loaders/DataObjectPool checkAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V
&/0 / getFile
 �2 3 '(Lorg/openide/filesystems/FileObject;)V
 567 createNodes C(Lorg/openide/loaders/FolderChildrenPair;)[Lorg/openide/nodes/Node;
9: 5 desiredAssertionStatus< false> 2org.openide.loaders.FolderChildren.delayedCreation
 �@A getPropertyC !java/beans/PropertyChangeListenerE  javax/swing/event/ChangeListenerG *org/openide/filesystems/FileChangeListener #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value NonConstantLogger 	Signature @Ljava/util/Collection<Lorg/openide/loaders/FolderChildrenPair;>; #(Lorg/openide/loaders/DataFolder;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/loaders/FolderChildren; f  Lorg/openide/loaders/DataFolder; MethodParameters Ljava/lang/String; StackMapTable LeakingThisInConstructor 	getFilter "()Lorg/openide/loaders/DataFilter; LocalVariableTypeTable C(Ljava/util/Collection<Lorg/openide/loaders/FolderChildrenPair;>;)V #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; Ljava/lang/Override; stateChanged "(Ljavax/swing/event/ChangeEvent;)V dobj  Lorg/openide/loaders/DataObject; 	doRefresh folderFO e Ljavax/swing/event/ChangeEvent; source Ljava/lang/Object; fo 	operation 'Lorg/openide/loaders/FolderChildren$1R;p java/lang/Throwable ret Lorg/openide/nodes/Node; pair (Lorg/openide/loaders/FolderChildrenPair; delayCreationw [Lorg/openide/nodes/Node; pf took J obj 1Lorg/openide/loaders/DataObjectNotFoundException; time (Z)[Lorg/openide/nodes/Node; dn 0Lorg/openide/loaders/FolderChildren$DelayedNode; n thrw stop round I optimalResult arr previous limit Ljava/lang/StackTraceElement; sb Ljava/lang/StringBuffer; indent t Ljava/lang/Thread; data Ljava/util/Map; stack ALjava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>; �(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Thread;Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;)V inner Ljava/lang/ThreadGroup; tg groups chg [Ljava/lang/ThreadGroup; threads cht [Ljava/lang/Thread;�� �(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/ThreadGroup;Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;)V all root original 	candidate ex p name i tmp (Z)I 	addNotify chF *Lorg/openide/loaders/ChangeableDataFilter; removeNotify Ljava/util/List; :Ljava/util/List<Lorg/openide/loaders/FolderChildrenPair;>; fileAttributeChanged fe ,Lorg/openide/filesystems/FileAttributeEvent; fileChanged &(Lorg/openide/filesystems/FileEvent;)V #Lorg/openide/filesystems/FileEvent; fileDataCreated fileDeleted fileFolderCreated fileRenamed ,(Lorg/openide/filesystems/FileRenameEvent;)V )Lorg/openide/filesystems/FileRenameEvent; -(Ljava/lang/Object;)[Lorg/openide/nodes/Node; 
access$000 @(Lorg/openide/loaders/FolderChildren;)Ljava/util/logging/Logger; x0 
access$100 F(Lorg/openide/loaders/FolderChildren;)Lorg/openide/loaders/FolderList; 
access$200 F(Lorg/openide/loaders/FolderChildren;)Lorg/openide/loaders/DataFilter; 
access$300 9(Lorg/openide/loaders/FolderChildren;Ljava/lang/Object;)V x1 <clinit> �Lorg/openide/nodes/Children$Keys<Lorg/openide/loaders/FolderChildrenPair;>;Ljava/beans/PropertyChangeListener;Ljavax/swing/event/ChangeListener;Lorg/openide/filesystems/FileChangeListener; 
SourceFile FolderChildren.java InnerClasses Keys RefreshMode R� &org/openide/util/RequestProcessor$Task Task DelayedNode� -org/openide/loaders/FolderChildren$DelayedLkp 
DelayedLkp 0   BDF 
       	 
    d e    o p         H    I J[ sK B w x L   M B ) &    � �  @ �      N O   A     	*+� � �   P   
    N  OQ       	RS     	TU V   T      O  
     r*� *� !� '+� *� 0� 	6N� $� 8Y� :=� ?+� *� C/.� G� ?� MN*-� P� *+� *� V� *,� ***� � \� b***� � f� g� m�   P   .    W  A  Y  Z  \ = ^ E _ Q ` V a b b q cQ   4    �W    rRS     rTU    r 	 
  = 5 �W X    �    +   �   HV   	T   	  H    I J[ sY  Z[ O   /     *� �   P       gQ       RS     t O   Y     *+� q*+� u�   P       k  l 
 mQ       RS      w x \        wM V    w  L   ]  `^ O   T     *� � y+� �� �*� �� ��   P       s  t  uQ       RS     _` V   _ H    a   bc O  e     p+� �MN,� �� ,� �:� �N� ,� 1� ,� 1N-� 6*� � f:-� �� -� �� � 6� -� � 6� 6� 
*� �� ��   P   F    z  {  |  }  ~   $ � ) � - � 6 � = � P � ] � ` � c � h � o �Q   \ 	  de  M f �  6 'g �  ] f �    pRS     phi   kjk   il �  c f � X   5 �  � 1�    1@	@�    � � 1  � � V   h  H    a    � � O   �     U� �Y*� �M+� �� *� '� �,� �� �,� �� 2,+� �*YN�,*� '� �**� � f� �,� �� '-ç 
:-���  . J M   M Q M   P   .    � 	 �  �  �  � % � * � . � 6 � H � T �Q        URS     Um �  	 L �n X   ! � % �� '   � � � o� V   m   67 O   �     D� ƙ � ʙ +� ϶ �� � =� � �Y*+� �N� 	*+� �N-� � � �Y-S�   P       �  �  �  �   � - � 3 �Q   4  * qr    DRS     Dst   (u �  3 qr X    @� �  �GvV   s  H    a    � � O  �    ,� �B:+� �:� �M,� � 7,� �� � +*� � *� ,� � � ,*� � �:,� � :� �!e7*� � y� �� .*� � y�� �Y+SY� S�*� � y	� �� �:�� P� y�� �!e7*� � y� �� .*� � y�� �Y+SY� S�*� � y	� �� G:� �!e7	*� � y� �� .*� � y�� �Y+SY	� S�*� � y	� ���   N �  N �   � � �   � � �   P   v    �  �  �  �  �  �  � 2 � : � D � K � N U b ~ �	 � � � � � � �	 � � �&	)
Q   f 
  Ax �  U 8yz   }{e  � h|  � 8yz  � 8yz 	  ,RS    ,st  (}z  %qr X   D � :   � � � 1  � >�    �  � � QBo� @  o� V   s   ~ O  W    	N�66� *�*�M6,:�66		� ^	2:

� ՙ I
� �:�� <�� 4*� � y!� �6X� *� �#&� �(�*�	���� � o�� *� .�0*� �3N*� � y�7� =*� �;�0*� -�76�>� Y6� �AY�C�� �DYF�H����-� *� -�7,�   P   � "     
     3 ; B P _ b j y  � �% �& �( �) �* �+ �- �. �/ �0 �1 �2 �3 � �8 �9;Q   f 
 B ?�  3 N�r 
 � %� �   �� �  
 ���   	RS    	� �   ��w  � ~  �� X   @ � 
    z  �  
 v zv  � [� #� 1� � V   �  H    a   
�� O  7  	   �*+�JO�J,�Q�J
�TW-,�W �]:� `:�66� M2:*_�J�a�J.�T�f�J(�T�i�J:�T�l�ps�JW�����   P   "   ? @ $A )B CC aD �B �GQ   >  C =h�    ���     ��W    ���    ���  $ c�^ \       ��� X     � 5 K HRX]]  � PV   �  �  �  �  L   � 
�� O  �     �*+�Ju�J,�w�J
�TW+z�|L,��6�x:,��W:�66� 2:		� *+	-������,��6�R:,��W:�6	6

	� 
2:� *+-���
���   P   F   J K  M &N -O 5P OQ TR \P bV hW oX wY �Z �[ �Y �^Q   f 
 O �� 	 � ��    ���     ��W    ���    ���  & ��  - x��  h =��  o 6�� \       ��� X   F � A 	K HxX��  � �   K HxX���  � V   �  �  �  �  L   � 
= F O   �     0��K����L+��� +��L����KY��M,�+*��,���   P      a b c d g "h +iQ       ,��    %��  " �� \      ,��  X    � Xx �� O  �  	   ��� *�=*� uN-� �-�� :�� � ��� � �:� �:��+��� ]� ��:��+��� ���*��:� ��+��� �� &:*� �ƻ 8Y� :ɶ ?�˶ M����z*+�ΰ  F \ } _ y } P   R   o p 
r s t u 3v :w Fy Pz \{ _} f~ w z� }� � �� �� ��Q   \ 	 P *�r  f �r   !�|  : ix �  3 p�t    �RS     ��W   ���   �� x \      ��M X   $ 
� ��� A � 1 �� B"� V   �  H    a    < O   �     S�� 6*� Ҷ�*�֚ 
*� �� �*� ��*� '� �*� ܶӧ �� P�#�DY޷H��   P   & 	  � � � � � %� ,� 9� R�Q       SRS  X     �� O   R     � *�*��   P      � � �Q       RS     � � X    V   �  H    a    5 O   ;      ��� ��� � �   P      �X    @ � < O   �     Z*� ��*� *� b��*� � f*� m��*� ��� *� ��L**+���+*�� *� �� �*� 	�ӱ   P   * 
  � 
� � #� -� 5� >� H� O� Y�Q     5 ��    ZRS  X    � HH    a   � < O   �     V*� ��*� � f*� m�*� *� b�*� ��� *� ��*�� *��L*+�*� �ӱ   P   * 
  � 
� � #� -� =� B� F� K� U�Q       VRS   F � \     F � X    � BH    a    O F O   P     *� � *� � f�!� *�"�   P      �Q       RS  X    C HH    a   �- O   u     (#+�%��� +�(*� �Y+�.�1� *� �� ��   P      � � �  � '�Q       (RS     (�� X    'V   �  H    a   �� O   5      �   P      �Q       RS     �� V   �  H    a   �� O   @     *� �� ��   P   
   � �Q       RS     �� V   �  H    a   �� O   @     *� �� ��   P   
   � �Q       RS     �� V   �  H    a   �� O   @     *� �� ��   P   
   � �Q       RS     �� V   �  H    a   �� O   @     *� �� ��   P   
   � �Q       RS     �� V   �  H    a  D6� O   3     	*+� ж4�   P       0Q       	RS  V   s H    a  �� O   /     *� �   P       0Q       �S  �� O   /     *� �   P       0Q       �S  �� O   /     *� �   P       0Q       �S  �� O   :     *+� �   P       0Q       �S     �k  � < O   ^      (�8� � �>;=�?��� � � Ʊ   P       0  D  E  D ' GX    @@ L   ��   ��   2  ��	 � �@ �  �  � ��  � � � � 