����   4L	      "org/openide/loaders/DataLoaderPool DEFAULT $Lorg/openide/loaders/DataLoaderPool;
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;  .org/openide/loaders/DataLoaderPool$DefaultPool
     <init> ()V
    java/lang/Object	     preferredLoader  Lorg/openide/loaders/DataLoader;	     ! 	listeners %Ljavax/swing/event/EventListenerList; # #javax/swing/event/EventListenerList
 "  &  javax/swing/event/ChangeListener
 " ( ) * add -(Ljava/lang/Class;Ljava/util/EventListener;)V
 " , - * remove	  / 0 1 
cntchanges I	  3 4 5 loaderArray ![Lorg/openide/loaders/DataLoader;	  7 8 9 
allLoaders Ljava/util/List;	  ; < 9 prefLoaders
 " > ? @ getListenerList ()[Ljava/lang/Object; % B C D stateChanged "(Ljavax/swing/event/ChangeEvent;)V F %org/openide/loaders/OperationListener
 H I J K L org/openide/util/WeakListeners create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener; N 'org/openide/loaders/OperationEvent$Copy E P Q R operationCopy ,(Lorg/openide/loaders/OperationEvent$Copy;)V T 'org/openide/loaders/OperationEvent$Move E V W X operationMove ,(Lorg/openide/loaders/OperationEvent$Move;)V E Z [ \ operationDelete '(Lorg/openide/loaders/OperationEvent;)V ^ )org/openide/loaders/OperationEvent$Rename E ` a b operationRename .(Lorg/openide/loaders/OperationEvent$Rename;)V E d e R operationCreateShadow E g h R operationCreateFromTemplate E j k \ operationPostCreate
  m n o computeLoaders (Z)Ljava/util/Enumeration; q java/util/ArrayList
 p  t u v ) w java/util/List (Ljava/lang/Object;)Z
  y z { getSystemLoaders (()[Lorg/openide/loaders/MultiFileLoader;
 } ~  � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; t � � � addAll (Ljava/util/Collection;)Z
  � � � loaders ()Ljava/util/Enumeration; � � � � � java/util/Enumeration hasMoreElements ()Z � � � � nextElement ()Ljava/lang/Object; � org/openide/loaders/DataLoader
 p �  � (Ljava/util/Collection;)V
  � � { getDefaultLoaders
 � � � � � java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration;
 � � � � � "org/openide/filesystems/FileObject getMIMEType ()Ljava/lang/String; � ,org/openide/loaders/DataLoaderPool$1MimeEnum
 � �  � 9(Lorg/openide/loaders/DataLoaderPool;Ljava/lang/String;)V � content/unknown
 � � � � � org/openide/util/Enumerations concat G(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;
 � � � � getFileSystem &()Lorg/openide/filesystems/FileSystem;
 � � � � � "org/openide/filesystems/FileSystem 	isDefault
  � � � getFolderLoader '()Lorg/openide/loaders/MultiFileLoader;
 � � � � 	singleton +(Ljava/lang/Object;)Ljava/util/Enumeration; � 1org/openide/filesystems/FileStateInvalidException
 � � � � array ,([Ljava/lang/Object;)Ljava/util/Enumeration;
 p u
 p � � � size ()I
 p � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; 5
  � 8 �
 � � � � getRepresentationClass ()Ljava/lang/Class;
 � � � � � java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z � .org/openide/loaders/DataLoaderPool$1ProducerOf
 � �  � 8(Lorg/openide/loaders/DataLoaderPool;Ljava/lang/Class;)V
 � � � � filter Y(Ljava/util/Enumeration;Lorg/openide/util/Enumerations$Processor;)Ljava/util/Enumeration;	  � � � emptyDataLoaderRecognized >Lorg/openide/loaders/DataLoaderPool$EmptyDataLoaderRecognized;
  � � � findDataObject v(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataLoader$RecognizedFiles;)Lorg/openide/loaders/DataObject;
  � � � getPreferredLoader F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataLoader;
 � � � java/util/HashSet
 � 
  � 8 � =(Lorg/openide/filesystems/FileObject;)Ljava/util/Enumeration; � &org/openide/loaders/DataObject$Factory � � U(Lorg/openide/filesystems/FileObject;Ljava/util/Set;)Lorg/openide/loaders/DataObject;
 "org/openide/loaders/DataObjectPool handleFindDataObject }(Lorg/openide/loaders/DataObject$Factory;Lorg/openide/filesystems/FileObject;Ljava/util/Set;)Lorg/openide/loaders/DataObject;
 � java/util/Set isEmpty
 iterator ()Ljava/util/Iterator; � java/util/Iterator hasNext � next .org/openide/loaders/DataLoader$RecognizedFiles markRecognized '(Lorg/openide/filesystems/FileObject;)V
!"  clear$ org/openide/loaders/DataObject& NetBeansAttrAssignedLoader
 �()* setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V
 ,- � getClass
 �/0 � getName
234 5 org/openide/modules/Modules ()Lorg/openide/modules/Modules;
2789 ownerOf 3(Ljava/lang/Class;)Lorg/openide/modules/ModuleInfo;;  NetBeansAttrAssignedLoaderModule
=>?@ � org/openide/modules/ModuleInfo getCodeNameBase
 u
CDE getPOOL &()Lorg/openide/loaders/DataObjectPool;
GHI 
revalidate  (Ljava/util/Set;)Ljava/util/Set;	#KLM LOG Ljava/util/logging/Logger;	OPQRS java/util/logging/Level FINE Ljava/util/logging/Level;U 2It was not possible to invalidate data object: {0}
WXYZ[ java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 �]^_ getAttribute &(Ljava/lang/String;)Ljava/lang/Object;a java/lang/String
 cde 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection;gh java/util/Collection
`jk w equals
=mn � 	isEnabledp java/lang/ClassLoader
 �rst getClassLoader ()Ljava/lang/ClassLoader;
 �vwx forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
 �z{| 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class;
 �~� 	getLoader 3(Ljava/lang/Class;)Lorg/openide/loaders/DataLoader;� java/lang/Exception
W��� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	O��S WARNING
W�Z� C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V� org/openide/loaders/MimeFactory
�� � Z(Ljava/lang/Class;Ljava/lang/String;Ljava/awt/Image;Lorg/openide/filesystems/FileObject;)V
���� layer G(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MimeFactory;	 ��� systemLoaders &[Lorg/openide/loaders/MultiFileLoader;� #org/openide/loaders/MultiFileLoader� /org/openide/loaders/DataLoaderPool$ShadowLoader� 7org/openide/loaders/DataLoaderPool$InstanceLoaderSystem	 ��� defaultLoaders� /org/openide/loaders/DataLoaderPool$FolderLoader� (org/openide/loaders/XMLDataObject$Loader� 1org/openide/loaders/DataLoaderPool$InstanceLoader� 0org/openide/loaders/DataLoaderPool$DefaultLoader� <org/openide/loaders/DataLoaderPool$EmptyDataLoaderRecognized
�� � )(Lorg/openide/loaders/DataLoaderPool$1;)V� java/io/Serializable serialVersionUID J ConstantValue� ��W- 	Signature 2Ljava/util/List<Lorg/openide/loaders/DataLoader;>; &()Lorg/openide/loaders/DataLoaderPool; Code LineNumberTable StackMapTable LocalVariableTable this #(Lorg/openide/loaders/DataLoader;)V loader MethodParameters <()Ljava/util/Enumeration<+Lorg/openide/loaders/DataLoader;>; addChangeListener %(Ljavax/swing/event/ChangeListener;)V chl "Ljavax/swing/event/ChangeListener; removeChangeListener fireChangeEvent list [Ljava/lang/Object; l i che Ljavax/swing/event/ChangeEvent;� java/lang/Throwable� javax/swing/event/ChangeEvent� createWeakOperationListener b(Lorg/openide/loaders/OperationListener;Ljava/lang/Object;)Lorg/openide/loaders/OperationListener; 'Lorg/openide/loaders/OperationListener; s Ljava/lang/Object; addOperationListener *(Lorg/openide/loaders/OperationListener;)V removeOperationListener fireOperationEvent ((Lorg/openide/loaders/OperationEvent;I)V ev $Lorg/openide/loaders/OperationEvent; type� "org/openide/loaders/OperationEvent ;()Ljava/util/Enumeration<Lorg/openide/loaders/DataLoader;>; all pref oldcnt en Ljava/util/Enumeration; 
computeAll Z LocalVariableTypeTable :Ljava/util/Enumeration<+Lorg/openide/loaders/DataLoader;>; <(Z)Ljava/util/Enumeration<Lorg/openide/loaders/DataLoader;>; fo $Lorg/openide/filesystems/FileObject; mime Ljava/lang/String; mimeLoaders first ALjava/util/Enumeration<Lorg/openide/loaders/DataObject$Factory;>; 9Ljava/util/Enumeration<Lorg/openide/loaders/DataLoader;>; g(Lorg/openide/filesystems/FileObject;)Ljava/util/Enumeration<Lorg/openide/loaders/DataObject$Factory;>; #()[Lorg/openide/loaders/DataLoader; 
localArray Ljava/util/ArrayList; 7Ljava/util/ArrayList<Lorg/openide/loaders/DataLoader;>; firstProducerOf dl clazz Ljava/lang/Class; 4Ljava/lang/Class<+Lorg/openide/loaders/DataObject;>; V(Ljava/lang/Class<+Lorg/openide/loaders/DataObject;>;)Lorg/openide/loaders/DataLoader; producersOf *(Ljava/lang/Class;)Ljava/util/Enumeration; o(Ljava/lang/Class<+Lorg/openide/loaders/DataObject;>;)Ljava/util/Enumeration<Lorg/openide/loaders/DataLoader;>; F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; 
Exceptions java/io/IOException obj  Lorg/openide/loaders/DataObject; f (Lorg/openide/loaders/DataObject$Factory; r 0Lorg/openide/loaders/DataLoader$RecognizedFiles; 
recognized Ljava/util/Set; 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; BLjava/util/Enumeration<+Lorg/openide/loaders/DataObject$Factory;>; setPreferredLoader G(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataLoader;)V c module  Lorg/openide/modules/ModuleInfo; prev one modules Ljava/util/Iterator; ok load Ljava/lang/ClassLoader; ex Ljava/lang/Exception; 
modulename assignedLoaderName 7Ljava/util/Iterator<+Lorg/openide/modules/ModuleInfo;>; factory ](Ljava/lang/Class;Ljava/lang/String;Ljava/awt/Image;)Lorg/openide/loaders/DataObject$Factory; dataObjectClass mimeType image Ljava/awt/Image; Ljava/lang/Class<TT;>; �<T:Lorg/openide/loaders/DataObject;>(Ljava/lang/Class<TT;>;Ljava/lang/String;Ljava/awt/Image;)Lorg/openide/loaders/DataObject$Factory; N(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject$Factory;-  java/lang/ClassNotFoundException r<T:Lorg/openide/loaders/DataObject;>(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject$Factory; getDefaultFileLoader getShadowLoader getInstanceLoader <clinit> 
SourceFile DataLoaderPool.java InnerClasses DefaultPool Copy Move Rename MimeEnum 
ProducerOf= 'org/openide/util/Enumerations$Processor 	Processor EmptyDataLoaderRecognized RecognizedFiles Factory ShadowLoader InstanceLoaderSystem FolderLoaderF !org/openide/loaders/XMLDataObject Loader InstanceLoader DefaultLoaderK $org/openide/loaders/DataLoaderPool$1!   �  �� �   � 
��   
��   
     � 4 5   � 8 9 �   � � < 9 �   � � 0 1   �   !   �      � �    ) � �   Y      (� � !� � � � � � � Y� � � �   �       A  B  C  D $ G�    $    �   3     *� �   �   
    Y  Z�       �     � �   F     
*� *+� �   �       b  c 	 d�       
�      
�  �   �   � � �   � 1�� �   b     *� � *� "Y� $� *� %+� '�   �       t  u  v�       �      �� �    �   �   1�� �   W     *� � *� %+� +�   �       }  ~  ��       �      �� �    �   �   � D �  8     e*YN�*Y� .`� .*� 2*� 6*� :*� � -ñ*� � =M-ç 
:-��,�d>� #,2%� ,`2� %:+� A ����߱   & 4   ' 1 4   4 8 4   �   :    �  �  �  �  �  � ' � / � ; � D � L � V � ^ � d ��   >  / ��  V ��  @ $� 1    e�      e��  ; *�� �   % � '  L��   ��  � � �   �  	�� �   ?     E*+� G� E�   �       ��       ��     �� �   	�  �   1�� �   b     *� � *� "Y� $� *� E+� '�   �       �  �  ��       �      �� �    �   �   1�� �   W     *� � *� E+� +�   �       �  �  ��       �      �� �    �   �   �� �  �     �*Y:�*� � ñ*� � =Nç :��-�d6� �-2E� �-`2� E:�    �         *   8   F   Q   _   m   {+� M� O � N+� S� U � @+� Y � 5+� ]� _ � '+� M� c � +� M� f � +� i ����`�             #    �   ^    �  �  �  � & � 1 � : � E � p � { � ~ � � � � � � � � � � � � � � � � � � � � � � � � ��   H   ��  E ���  , �� 1    ��      ���    �� 1  & ��� �   4 �   M��   ��  � � C E
� � �   	�  �    8 � �   0     *� l�   �       ��       �   �   �  n o �  '     �*Y:�*� 6M*� :N*� .6ç :��,� �� pY� rM*� � ,*� � s W,� x� |� � W*� �:� � � ,� � � �� s W��� pY,� �N,� �� |� � W*Y:�*� .� *,� 6*-� :ç :��� ,� -� ��             � � �   � � �   �   V    �  � 
 �  �  � # � '  / 6 A N T ^ r	 {
 � � � � � ��   \ 	 
 � 9   � 9   � 1  T Z��    ��      ���  # �� 9  # �� 9  # �� 1 �   4  
 ��   ��  T Z��  # ���  # ��� �   B 
�        ��    t t  �  �� - E�� @g�   �  �   �  8 � �       Q+� �M� �Y*,� �N-� �Y*�� �� �N*� l:+� �� �� � �� ¸ �:� :-� �� ȸ �� ��  % < ? � �   :   3 4 5 7 %9 /: 1< 7: <A ?? AC DG JE MC�   4    Q�      Q��   L��   B��  % ,�� �      B��  % ,�� �    � <` � �B ��   �  �   �  �� �   �     J*� 2L+� +�� pY� rM*� �N-� � � ,-� � � �� �W���,� ͽ �L,+� �� �L*+� 2+�   �   .   R S 	T U V W !X 2Z :[ C\ H]�   *    J�     E� 5   7 ��   2�� �      7 ��   2�� �    �  ��  p � �� �   �     **� �M,� � � ,� � � �N-� �+� ܙ -�����   �      i j k l #n %p (q�   *   �     *�      *��   %�� �       *��   %�� �   
 �  ��   �  �      �   W     *� ֻ �Y*+� � �   �      ��       �      �� �       �� �   � �     � �   =     	*+� � �   �      ��       	�      	��     �   �    � � �  �  
   �+� �N-� -+,� �:� �,� � 	� � 
� �Y� �:*+� �:� � � v� � � �:� �� +�  :� +�:�	 � 4� :� � � � �:	,	� ����  � �����   �   V   � � 	� � � � /� 6� @� L� T� c  m w � � � � �	 � ��   p   	  ` 	  � 
� 	 L d�  m C	    ��      ���    �   ��   / �  6 �� �     / �  6 � �   0 �  �F
� 
 �� , �� 	#� �  �     �   	�     	 �  -     q*� �M,+� �+� *%�'� -+�+N*%-�.�'�1-�6:� *:�<�'� �Y� �N-*�A W�B-�F�	 � �J�NT*�V�   �   >     
    " # *$ 3% 8& D) L* T+ c, p.�   >   %�  3     q��     q�    l   L % �     L % �    �  �)� +
    �   	�  �   	 � � �  �     �*%�\�`L+� �*:�\�`M,� O� =�b�f N6-� � --� �=:�<,�i� �l� 	6� ����� �� o� �oN-� 	�qN+-�u��y�}�N�.����-���  j � �� �   f   5 6 8 9 = -> 0? 9@ DA PB XD [E ^H `K cL hN jR wS {T �W �X �W �Y �Z �]�   R  D   - =  0 :�  w   �    � �    ���    �!� �     - =" �   ? � 0  �``  � -=� � � o�   �`` �� �   �   	#$ �   \     ��Y*+,���   �      |�        %�     &�    '( �       %)  �   %  &  '  �   * #+ �   /     *���   �      ��       ��      ,�   �  �   . * z { �   Z      )��� "��Y��}��SY��}��S�����   �      � � � � %��    % * � { �   z      A��� :��Y��}��SY��}��SY��}��SY��}��S�����   �      � � � � '� 3� =��    = / � �         � �2�   �      �  � � �         � �2�   �      � 0 � �         � x2�   �      � 1 � �         � �2�   �      � 2  �   $      ��Y��� �   �      � 3   45   �   6  M�7  S�8  ]�9  �  :   �  ;  < �>	� ? 
 �@	 �#A	� B � C 
� D �EG � H 
� I J    