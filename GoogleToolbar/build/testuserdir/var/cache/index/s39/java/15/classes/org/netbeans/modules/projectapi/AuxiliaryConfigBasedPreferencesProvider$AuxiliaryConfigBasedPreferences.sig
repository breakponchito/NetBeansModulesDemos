����   4�  Gorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider
      #java/util/prefs/AbstractPreferences getChild 9(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
  
   
removeNode ()V
     
nodeExists (Ljava/lang/String;)Z
     node 1(Ljava/lang/String;)Ljava/util/prefs/Preferences;
     childrenNames ()[Ljava/lang/String;
     keys
     clear
    ! " remove (Ljava/lang/String;)V
  $ % & get 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ( ) * put '(Ljava/lang/String;Ljava/lang/String;)V	 , - . / 0 gorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences this$0 ILorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;
  2 3 4 <init> :(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V	 , 6 7 8 path Ljava/lang/String;
  : ; < 
access$400 l(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;)Ljava/util/Map; > ? @ ) A java/util/Map 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  C D E 
access$500 l(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;)Ljava/util/Set; G H I ! J java/util/Set (Ljava/lang/Object;)Z
  L M N 
access$600 L(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)V G P Q J contains > S T J containsKey > V % W &(Ljava/lang/Object;)Ljava/lang/Object; Y java/lang/String
  [ \ ] 
access$700 ^(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;)Z
  _ ` a 
access$800 y(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)Lorg/netbeans/spi/project/AuxiliaryProperties;
  c d e 
access$900 �(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  g h i access$1000 L(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)Z k l m % n ,org/netbeans/spi/project/AuxiliaryProperties '(Ljava/lang/String;Z)Ljava/lang/String;
  p q r access$1100 s(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;Z)Lorg/w3c/dom/Element; t property
  v w x access$1200 Q(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element; z value | } ~  � org/w3c/dom/Element getAttribute &(Ljava/lang/String;)Ljava/lang/String; > � ! W G � � J add
  � � � access$1300 ^(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/lang/String;)V � java/util/LinkedHashSet
 � � 3 
 , � � � list *(Ljava/lang/String;)Ljava/util/Collection; � � � � � java/util/Collection addAll (Ljava/util/Collection;)Z �   k � � � listKeys (Z)Ljava/lang/Iterable; � � � � � java/lang/Iterable iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object;
 X � �  
startsWith
 X � � � length ()I
 X � � � 	substring (I)Ljava/lang/String;
 X � � � indexOf (I)I
  � � � access$1400 � � > � � � keySet ()Ljava/util/Set; � � � � 	removeAll � � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Ljava/lang/String;
 , � � � getChildrenNames ()Ljava/util/Collection; � java/lang/StringBuilder
 � �
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � /
 � � � � toString ()Ljava/lang/String; � P
  � � � access$1500 Z(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)Ljava/util/Set;
 , � 3 � �(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;Ljava/lang/String;)V
  � �  sync � 'java/lang/UnsupportedOperationException � Should never be called.
 � � 3 "
  � �  flush 
  � � � access$1600 G �
 X � � � lastIndexOf
 X � � J equals � H
 X  � (II)Ljava/lang/String;
 java/util/Collections 	emptyList ()Ljava/util/List;	 java/util/LinkedList
 � @http://www.netbeans.org/ns/auxiliary-configuration-preferences/1 | getElementsByTagNameNS <(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList; � org/w3c/dom/NodeList 	getLength item (I)Lorg/w3c/dom/Node; name � java/util/List
  !" access$1800 m(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider;)Lorg/netbeans/api/project/Project;$  org/netbeans/api/project/Project
&'()* 'org/netbeans/api/project/ProjectManager mutex `(ZLorg/netbeans/api/project/Project;[Lorg/netbeans/api/project/Project;)Lorg/openide/util/Mutex;, iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$1
+. 3/ �(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;Ljava/lang/String;Ljava/lang/String;)V
12345 org/openide/util/Mutex writeAccess 3(Lorg/openide/util/Mutex$Action;)Ljava/lang/Object;7 iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$2
6.
1:;5 
readAccess= iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$3
<? 3@ ~(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;Ljava/lang/String;)VB iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$4
AD 3E l(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;)V
1G4H <(Lorg/openide/util/Mutex$ExceptionAction;)Ljava/lang/Object;J org/openide/util/MutexException
ILMN getException ()Ljava/lang/Exception;P %java/util/prefs/BackingStoreExceptionR iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$5
QD
1U;HW iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$6
VDZ iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$7
Y?] java/util/prefs/Preferences_ iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$8
^?b java/lang/Boolean
ade � booleanValueg iorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$9
fDj jorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences$10
i? Code LineNumberTable LocalVariableTable this iLorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences; parent %Ljava/util/prefs/AbstractPreferences; MethodParameters putSpi key StackMapTablex java/lang/Objectz java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getSpi keyProp res p Lorg/w3c/dom/Element; 	removeSpi removeNodeSpi 
Exceptions keysSpi prefix result Ljava/util/Collection; LocalVariableTypeTable *Ljava/util/Collection<Ljava/lang/String;>; childrenNamesSpi childSpi nuePath syncSpi flushSpi slash I removed created 	Signature ,()Ljava/util/Collection<Ljava/lang/String;>; n Lorg/w3c/dom/Node; cntr elementName dom names Ljava/util/List; nl Lorg/w3c/dom/NodeList; $Ljava/util/List<Ljava/lang/String;>;� org/w3c/dom/DOMException >(Ljava/lang/String;)Ljava/util/Collection<Ljava/lang/String;>; def ex !Lorg/openide/util/MutexException; nodeName access$1701 x0 x1 x2 access$1901 �(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; access$2001 access$2101 access$2201 ~(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;)[Ljava/lang/String; access$2301 access$2401 �(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;Ljava/lang/String;)Ljava/util/prefs/Preferences; access$2501 ~(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;Ljava/lang/String;)Z access$2601 access$2701 �(Lorg/netbeans/modules/projectapi/AuxiliaryConfigBasedPreferencesProvider$AuxiliaryConfigBasedPreferences;Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences; 
SourceFile ,AuxiliaryConfigBasedPreferencesProvider.java InnerClasses AuxiliaryConfigBasedPreferences� org/openide/util/Mutex$Action Action� &org/openide/util/Mutex$ExceptionAction ExceptionAction   ,      7 8   / 0   "  3 � l   f     *+� +*,-� 1*� 5�   m      � � � �n   *    op     qr     8     7 8 s    /q     7   t * l   �     @*� +YN�*� +*� 5� 9+,� = W*� +*� 5� B+� F W*� +� K-ç 
:-���   5 8   8 < 8   m      � � � ,� 3� ?�n        @op     @u 8    @ z 8 v    � 8  , X Xw y� s   	u   z  {    |   } � l  �     �*� +YM�*� +*� 5� B+� O � ,ð*� +*� 5� 9+� R � *� +*� 5� 9+� U � X,ð*� +*� 5� Z� ,ð*� +� ^� 0*� +*� 5+� bN*� +� ^-*� +� f� j :� ,ð*� +*� 5� oN-� -+s� u� N-� ,ð-y� { ,ð:,��    �    I �   J [ �   \ � �   � � �   � � �   � � �   m   J   � � � � 3� J� X� \� f� s� �� �� �� �� �� �� �� ��n   4  s  ~ 8  � 
 8  � $��    �op     �u 8 v   ) � w*6�  |@ |� 
  , Xw ys   u  {    |   � " l   �     =*� +YM�*� +*� 5� 9+� � W*� +*� 5� B+� � W*� +� K,ç N,�-��   4 7   7 : 7   m      � � � +� 2� <�n       =op     =u 8 v    � 7  , Xw y� s   u  {    |   �  l   �     $*� +YL�*� +*� 5� �*� +� K+ç M+�,��        !    m      � � � � #�n       $op  v    �   ,w y� �    O{    |   �  l  �     �*� +YL» �Y� �M*� +*� 5� Z� ,*s� �� � W*� +� ^� w*� +*� 5�� bN*� +� ^*� +� f� � � � :� � � E� � � X:-� �� --� �� �:� �� .� �� ,� �� � W���,*� +*� 5� 9� � � � W,*� +*� 5� B� � W,� X� � � �+ð:+��   � �   � � �   m   B   � � � � *� 4� B� r� {� �� �� � � � � �	n   4  �  8  r 3u 8  B f� 8   ���    �op  �      ��� v   * � *w �� 1 X �� H� � 8  ,w y�    O{    |   �  l   y     *� +YL�*� �� X� � � �+ðM+�,�            m        n       op  v    �   ,w y�    O{    |   �  l   �     U*� +YM» �Y� �*� 5� �ٶ �+� ն �N*� �+� � � *� +� �-� � W� ,Y*� +*+-� �,ð:,��   M N   N R N   m        " / = Nn      " ,� 8    Uop     U 8 v    � =w X�   , Xw ys     {    |    �  l   6     *� +� �   m   
   ! "n       op  �    O{    |   �  l   4     
� �Y� �   m      &n       
op  �    O{    |    �  l   6     *� +� �   m   
   + ,n       op  �    O{    |   �  l   4     
� �Y� �   m      0n       
op  �    O{    |    � � l  X    C� �Y� �L*� +*� 5� Z� +*� �� � W*� +� �� � M,� � � 7,� � � XN-/� �6*� 5-� �� �� +-`� �� � W���*� +� ^� �*� +*� 5�� bM*� +� ^*� +� f� � � � N-� � � S-� � � X:,� �� <,� �� �:� �� ).� �� .� �� �:+� �� � W���*� +� � � M,� � � 7,� � � XN-/� �6*� 5-� �� �� +-`� �� � W���+�   m   ^   4 6 7 #: C; K= [> j@ mB wC �E �F �G �I �J �K �N �QRT/U>WAYn   \ 	 K ��  C '� 8  � . 8  � Bu 8  � r� 8  ��  '� 8   Cop   ;�� �     ;�� v   + 
� # ��  �9� � 0 X �� U� �  �9� �   �  � � l       _*� +*� 5� oM,� ���Y�
N,+� :6� � (� :-� |� { � W����-�   m   * 
  ] _ ` c d )f 8g Ci Wf ]ln   H  C ��  , 1��    _op     _� 8   R��   B��  ) 6�� �      B�� v    �  |� � 0�    �s   �  �   �  ) * l   `     *� +��#�%�+Y*+,�-�0W�   m   
   q �n        op     u 8     z 8 s   	u  z {    |    % & l   ^      *� +��#�%�6Y*+,�8�9� X�   m      �n         op      u 8     � 8 s   	u � {    |    ! " l   U     *� +��#�%�<Y*+�>�0W�   m   
   � �n       op     u 8 s   u {    |      l   �     (*� +��#�%�AY*�C�FW� L+�K�O��     I m      � � � � '�n      ��    (op  v    ^I�    O{    |      l   w     '*� +��#�%�QY*�S�T� ̰L+�K�O�     I m      � � �n      ��    'op  v    ^I�    O{    |      l   w     '*� +��#�%�VY*�X�T� ̰L+�K�O�     I m      � � �n      ��    'op  v    ^I�    O{    |      l   S     *� +��#�%�YY*+�[�9�\�   m      �n       op      7 8 s    7 {    |      l   �     +*� +��#�%�^Y*+�`�T�a�c�M,�K�O�    ! "I m      � "� #�n      # ��    +op     + 7 8 v    bI�    Os    7 {    |      l   �     (*� +��#�%�fY*�h�FW� L+�K�O��     I m      � � � � '�n      ��    (op  v    ^I�    O{    |      l   �     (*� +��#�%�iY*+�k�T� �M,�K�O�     I m      � �  �n        ��    (op     (� 8 v    _I�    Os   � {    |  �/ l   E     *+,� '�   m      �n        �p     � 8    � 8 �� l   E     *+,� #�   m      �n        �p     � 8    � 8 �@ l   :     *+� �   m      �n       �p     � 8 �E l   /     *� �   m      �n       �p  �    O�� l   /     *� �   m      �n       �p  �    O�� l   /     *� �   m      �n       �p  �    O�� l   :     *+� �   m      �n       �p     � 8 �� l   :     *+� �   m      �n       �p     � 8 �    O�E l   /     *� 	�   m      �n       �p  �    O�� l   :     *+� �   m      �n       �p     � 8 �    O �   ��   j  , � +      �1�	6      <      A      �1�	Q      V      Y      ^      f      i      