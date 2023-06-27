����   4R
      &org/openide/util/lookup/AbstractLookup activeQueue  ()Ljava/lang/ref/ReferenceQueue;
   	 
 exitStorage 2()Lorg/openide/util/lookup/AbstractLookup$Storage;
    
 enterStorage
     compareArrays )([Ljava/lang/Object;[Ljava/lang/Object;)Z	     tree Ljava/lang/Object;
      org/openide/util/Lookup <init> ()V
      ! .org/openide/util/lookup/AbstractLookup$Content attach +(Lorg/openide/util/lookup/AbstractLookup;)V
  #  $ 3(Lorg/openide/util/lookup/AbstractLookup$Content;)V
  & '  
initialize ) .org/openide/util/lookup/AbstractLookup$Storage + java/lang/StringBuilder
 *  . AbstractLookup
 * 0 1 2 append -(Ljava/lang/String;)Ljava/lang/StringBuilder; 4  org/openide/util/Lookup$Template 6 java/lang/Object
 3 8  9 (Ljava/lang/Class;)V
  ; < = lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
 ? @ A B C org/openide/util/Lookup$Result allItems ()Ljava/util/Collection;
 * E 1 F -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 * H I J toString ()Ljava/lang/String;
 5 H	  M N  treeLock P )org/openide/util/lookup/DelegatingStorage
 O R S  checkForTreeModification
 5 U V  wait X java/lang/InterruptedException
 O Z  [ 3(Lorg/openide/util/lookup/AbstractLookup$Storage;)V ] java/lang/Integer _ $org/openide/util/lookup/ArrayStorage
 ^ a  b (Ljava/lang/Integer;)V
 ^ 
 O e f 
 exitDelegate
 5 h i  	notifyAll
  k l m addPairImpl O(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/util/concurrent/Executor;)V o java/util/HashSet
 n  ( r s t beginTransaction (I)Ljava/lang/Object; ( v w x add B(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/lang/Object;)Z	  z { | count I
 ~  � � � +org/openide/util/lookup/AbstractLookup$Pair setIndex 4(Lorg/openide/util/lookup/AbstractLookup$Storage;I)V � java/lang/IllegalStateException ( � � � remove B(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/lang/Object;)V ( � � � endTransaction $(Ljava/lang/Object;Ljava/util/Set;)V
  � � � notifyIn 5(Ljava/util/concurrent/Executor;Ljava/util/HashSet;)V
  � � m removePairImpl
  � � � setPairs 8(Ljava/util/Collection;Ljava/util/concurrent/Executor;)V
  � � � setPairsAndCollectListeners +(Ljava/util/Collection;)Ljava/util/HashSet; � 6org/openide/util/lookup/AbstractLookup$NotifyListeners
 � �  � (Ljava/util/Set;)V
 � � � � shallRun ()Z
 � � �  run � � � � � java/util/concurrent/Executor execute (Ljava/lang/Runnable;)V ( � < � *(Ljava/lang/Class;)Ljava/util/Enumeration; � java/util/TreeSet	 � � � � � (org/openide/util/lookup/ALPairComparator DEFAULT Ljava/util/Comparator;
 � �  � (Ljava/util/Comparator;)V � � � � � java/util/Enumeration hasMoreElements � � � � nextElement ()Ljava/lang/Object;
 � � w � (Ljava/lang/Object;)Z � java/util/LinkedHashSet
 � �  � (Ljava/util/Collection;)V
 n �  � (I)V � java/util/HashMap � � � � � java/util/Collection size ()I
 � � � � � � iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext � � � � next � +org/openide/util/lookup/AbstractLookup$Info
 � �  � (ILjava/lang/Object;)V
 � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; ( � � � 	retainAll $(Ljava/util/Map;Ljava/lang/Object;)V���
 � � � �  java/io/ObjectOutputStream defaultWriteObject
  � � � 
lookupItem B(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Item;
 � � �  � org/openide/util/Lookup$Item getInstance
  beforeLookup %(Lorg/openide/util/Lookup$Template;)V
 3 getType ()Ljava/lang/Class;
 
 findSmallest i(Ljava/util/Enumeration;Lorg/openide/util/Lookup$Template;Z)Lorg/openide/util/lookup/AbstractLookup$Pair; *org/openide/util/lookup/AbstractLookup$ISE java/util/ArrayList
 
 �
 java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration;
 'org/openide/util/lookup/InheritanceTree unsorted (Ljava/util/Enumeration;)Z�   
 !"# matches S(Lorg/openide/util/Lookup$Template;Lorg/openide/util/lookup/AbstractLookup$Pair;Z)Z
 ~%& � getIndex
 () beforeLookupResult (+, = 
findResult. (org/openide/util/lookup/AbstractLookup$R
- 1 8org/openide/util/lookup/AbstractLookup$ReferenceToResult
03 4 �(Lorg/openide/util/lookup/AbstractLookup$R;Lorg/openide/util/lookup/AbstractLookup;Lorg/openide/util/Lookup$Template;Lorg/openide/util/lookup/AbstractLookup$1;)V (678 registerReferenceToResult v(Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;
0:;< 
access$102 �(Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;
>? ! recoverA org/openide/util/LookupListenerC &org/openide/util/lookup/WaitableResult
BEF � collectFires � �@IJK resultChanged !(Lorg/openide/util/LookupEvent;)VM 1org/openide/util/lookup/AbstractLookup$CycleError
LO w �Q java/lang/StackOverflowError
PST J 
getMessage
LV W (Ljava/lang/String;)VY java/lang/RuntimeException
X[\  printStackTrace
 3^_ J getId
 ~^
bcde � java/lang/String equals
 3 �
 ~hi � 	creatorOf
 ~klm 
instanceOf (Ljava/lang/Class;)Z
 5c (pqr cleanUpResult ^(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;
tuvw  java/lang/Thread yield
 Oyz{ isSimple 3(Lorg/openide/util/lookup/AbstractLookup$Storage;)Z
} � �
 �
 �
����  +org/openide/util/lookup/implspi/ActiveQueue queue
���� J java/lang/Class getName
����� java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 ��� LOG Ljava/util/logging/Logger;
 5 � java/io/Serializable serialVersionUID J ConstantValue        Code LineNumberTable LocalVariableTable this (Lorg/openide/util/lookup/AbstractLookup; content 0Lorg/openide/util/lookup/AbstractLookup$Content; MethodParameters c(Lorg/openide/util/lookup/AbstractLookup$Content;Lorg/openide/util/lookup/AbstractLookup$Storage;)V storage 0Lorg/openide/util/lookup/AbstractLookup$Storage; LocalVariableTypeTable 3Lorg/openide/util/lookup/AbstractLookup$Storage<*>; 	Signature f(Lorg/openide/util/lookup/AbstractLookup$Content;Lorg/openide/util/lookup/AbstractLookup$Storage<*>;)V F(Lorg/openide/util/lookup/AbstractLookup$Content;Ljava/lang/Integer;)V 	trashhold Ljava/lang/Integer; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; del +Lorg/openide/util/lookup/DelegatingStorage;� java/lang/Throwable M<T:Ljava/lang/Object;>()Lorg/openide/util/lookup/AbstractLookup$Storage<TT;>; Ljava/lang/SuppressWarnings; value 	unchecked stor template "Lorg/openide/util/Lookup$Template; %Lorg/openide/util/Lookup$Template<*>; ((Lorg/openide/util/Lookup$Template<*>;)V addPair 0(Lorg/openide/util/lookup/AbstractLookup$Pair;)V pair -Lorg/openide/util/lookup/AbstractLookup$Pair; 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; 3(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;)V Ljava/util/concurrent/Executor; R(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;Ljava/util/concurrent/Executor;)V ex !Ljava/lang/IllegalStateException; toNotify Ljava/util/HashSet; t transaction ?Ljava/util/HashSet<Lorg/openide/util/lookup/AbstractLookup$R;>; ?Lorg/openide/util/lookup/AbstractLookup$Storage<TTransaction;>; TTransaction; r<Transaction:Ljava/lang/Object;>(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;Ljava/util/concurrent/Executor;)V 
removePair 
collection Ljava/util/Collection; FLjava/util/Collection<+Lorg/openide/util/lookup/AbstractLookup$Pair;>; I(Ljava/util/Collection<+Lorg/openide/util/lookup/AbstractLookup$Pair;>;)V 	listeners h(Ljava/util/Collection<+Lorg/openide/util/lookup/AbstractLookup$Pair;>;Ljava/util/concurrent/Executor;)V notify 8Lorg/openide/util/lookup/AbstractLookup$NotifyListeners; a(Ljava/util/concurrent/Executor;Ljava/util/HashSet<Lorg/openide/util/lookup/AbstractLookup$R;>;)V getPairsAsLHS ()Ljava/util/LinkedHashSet; item en Ljava/util/Enumeration; arr Ljava/util/TreeSet; ALorg/openide/util/lookup/AbstractLookup$Pair<Ljava/lang/Object;>; ZLjava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair<Ljava/lang/Object;>;>; ELjava/util/TreeSet<Lorg/openide/util/lookup/AbstractLookup$Pair<*>;>; M()Ljava/util/LinkedHashSet<Lorg/openide/util/lookup/AbstractLookup$Pair<*>;>; shouldBeThere Ljava/util/HashMap; it Ljava/util/Iterator; cLjava/util/HashMap<Lorg/openide/util/Lookup$Item<*>;Lorg/openide/util/lookup/AbstractLookup$Info;>; �<Transaction:Ljava/lang/Object;>(Ljava/util/Collection<+Lorg/openide/util/lookup/AbstractLookup$Pair;>;)Ljava/util/HashSet<Lorg/openide/util/lookup/AbstractLookup$R;>; writeObject (Ljava/io/ObjectOutputStream;)V oos Ljava/io/ObjectOutputStream; s 
Exceptions� java/io/IOException %(Ljava/lang/Class;)Ljava/lang/Object; clazz Ljava/lang/Class; Lorg/openide/util/Lookup$Item; Ljava/lang/Class<TT;>; #Lorg/openide/util/Lookup$Item<TT;>; 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; ,Lorg/openide/util/lookup/AbstractLookup$ISE; list Ljava/util/ArrayList; KLjava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; 'Lorg/openide/util/Lookup$Template<TT;>; ILjava/util/ArrayList<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; b<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Item<TT;>; 	deepCheck Z smallest res 2Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>; �<T:Ljava/lang/Object;>(Ljava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>;Lorg/openide/util/Lookup$Template<TT;>;Z)Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>; prev  Lorg/openide/util/Lookup$Result; r *Lorg/openide/util/lookup/AbstractLookup$R; newRef :Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult; toRun %Lorg/openide/util/Lookup$Result<TT;>; /Lorg/openide/util/lookup/AbstractLookup$R<TT;>; ?Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult<TT;>; d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; notifyListeners J([Ljava/lang/Object;Lorg/openide/util/LookupEvent;Ljava/util/Collection;)V wr (Lorg/openide/util/lookup/WaitableResult; err 3Lorg/openide/util/lookup/AbstractLookup$CycleError; cycle Ljava/lang/StackOverflowError; e Ljava/lang/RuntimeException; ll !Lorg/openide/util/LookupListener; i [Ljava/lang/Object; ev Lorg/openide/util/LookupEvent; evAndListeners +Lorg/openide/util/lookup/WaitableResult<*>; *Ljava/util/Collection<Ljava/lang/Object;>; ^([Ljava/lang/Object;Lorg/openide/util/LookupEvent;Ljava/util/Collection<Ljava/lang/Object;>;)V id Ljava/lang/String; instance Y(Lorg/openide/util/Lookup$Template<*>;Lorg/openide/util/lookup/AbstractLookup$Pair<*>;Z)Z a b %(Lorg/openide/util/Lookup$Template;)Z @<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Z +(Lorg/openide/util/lookup/AbstractLookup;)Z l modifyListenerList H(ZLorg/openide/util/LookupListener;Ljava/lang/Object;)Ljava/lang/Object; ref 4()Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>; 
access$200 <(Lorg/openide/util/lookup/AbstractLookup;)Ljava/lang/Object; x0 
access$300 x1 
access$400 Z(Lorg/openide/util/lookup/AbstractLookup;)Lorg/openide/util/lookup/AbstractLookup$Storage; 
access$500 
access$600 <clinit> 
SourceFile AbstractLookup.java InnerClasses Storage Content Template Result Pair NotifyListeners Info Item ISE R ReferenceToResultM (org/openide/util/lookup/AbstractLookup$1 
CycleErrorP 8org/openide/util/lookup/AbstractLookup$ReferenceIterator ReferenceIterator !   �  ��   �� �   �  N          { |   '   $ �   F     
*� +*� �   �       L  M 	 N�       
��     
�� �   �     � �   k     *+� "*,� *� %�   �       T  U 
 V  W�        ��     ��    �� �       �� �   	�  �  �   �   � �   Q     *+� "*,� �   �       ^  _ 
 `�        ��     ��    �� �   	�  �      �   3     *� �   �   
    d  e�       ��    I J �   m     2*� � (� &� *Y� ,-� /*� 3Y5� 7� :� >� D� G�*� K�   �       i 
 j - l�       2��  �    -�    �     
 �  P     �� LYL�*� � (� D*� � O� *� � OM,� Q� L� T� N+ç��*� OY*� � (� Y� *� � (+ð*� � \� *� ^Y*� � \� `� � *� ^Y� c� +ç 
:+��*� %��u  & , / W  2 �   5 P �   Q } �   � � �   �   B    u  v  w  y " } & � , � / � 0 � 5 � G � Q � [ � p � { � � ��     " ��    ���  �   $ 	 � .   5 O  W � 
D�� �   ��    � �[ s�  	 
 �   �     %� LYL�*� � O� dM*,� � L� g,+ðN+�-�          #     �       �  �  �  �  �   ��      ��    %��  �    �     5 �  '  �   +      �   �       ��       ��    �   G      �   �       ��       ��     �� �       �� �   �  �   �  ) �   G      �   �       ��       ��     �� �       �� �   �  �   � �� �   Q     *+� j�   �   
    �  ��       ��     �� �       �� �   �  �   � � m �   [     *+,� j�   �   
    �  ��        ��     ��     �� �       �� �   	�   �  �   �  l m �  �     �� nY� pN*� ::�� q :+� u � 3+*Y� yZ`� y� }� :+� � �-� � � � nY� p� � *� W� :*� W�*,-� ��  ) : = �  i q   q s q   �   J    �  �  �  �  � ) � : � = � ? � I � L � Y � i � n � q � x � { � � ��   H  ? ��    ���     ���    � ��   z��   t��   q�  �   *    ���   z��   t��   q�� �   & � =   ~ � n ( 5  �G�	�   	�   �  �   � �� �   Q     *+� ��   �   
    �  ��       ��     �� �       �� �   �  �   � � m �   [     *+,� ��   �   
    �  ��        ��     ��     �� �       �� �   	�   �  �   �  � m �  5     H� nY� pN*� ::� q :+� � -� � *� W� :*� W�*,-� ��   / 7   7 9 7   �   2    �  �  �    % / 4 7 > A G�   >    H��     H��    H ��   @��   :��   7�  �   *    H��   @��   :��   7�� �    � 7   ~ � n ( 5 �	�   	�   �  �   �  � � �   Q     *+� ��   �   
    �       ��     �� �       �� �   �  �   �  � � �   y     *+� �N*,-� ��   �        �   *    ��     ��     ��   �� �       ��   �� �   	�   �  �   �  � � �   �     #� �Y,� �N-� �� +� 
-� �� 
+-� � �   �       	   ! # "&�   *    #��     # ��    #��  	 �� �       #�� �   	 �  ��   	 �  � �   � �� �  6     S*� L+5� � M� �Y� �� �N,� � � ,� � � ~:-� �W��� �Y-� �:*� W�:*� W�   A I   I K I   �   2   , / 0 1 "2 -3 44 75 A7 F5 I7 P8�   4  - ��   ;��   0��    S��    N�� �   *  - ��   ;��   0��   N�� �    �  ( � ��    ( ��   �  � � �  �  	   �� nY� �M*� N:� �Y+� � h� �:*� y+� � :-+� � � q :� � � ;� � � ~:-� u � � �Y*Y� yZ`� y� � �W���-� � -,� � *� W� :*� W�,�   � �   � � �   �   N   ? 
A B F #H (J 0K >M HN TP aV }Y �] �` �v �w �v �w �y�   R  T )��  # p��  0 c��    ���     ���  
 ���   ���   ��  �   4  # p��    ���  
 ���   ���   ��� �   A � >   � n ( 5 � �  � " ~� �    � n ( 5 �	�   �  �   � �� �   �     #*� M,� q W+� �*� W� N*� W-��       �   "   ~ � � � � �  � "��        #��     #��   �� �    �    � ( ��    ��   �    <� �   �     *� 3Y+� 7� �M,� � ,� ��   �   
   � ��        ��     ��   �� �       ��   �� �    �  �C 5�   �  �   �  � � �  �     t*+�M*� N-+�� � :+�	:*� W�:�Y�M-� � :� � � ,� � � ~�W���*� W� :*� W�,�+�	�   ! )  ! `   ) X `   ` b `   �   F   � � � � � !� &� )� +� 3� <� F� X� ]� `� g� j��   H   ��  + -��  < ��    t��     t��   m��   h�� �   4   ��  < ��    t��   m��   h�� �   ) � )   3 ( �  �� G�	�   �  �    �    �   
 �  (     T*�� � >:*� � � 8*� � � ~:+� �  � ��$� �$>:����   �   2   � � � � '� 1� 8� ;� D� J� N� Q��   >  ' '��    T��     T��    T   D |   A� �   *  ' '�    T��     T��   A �    B�  ~� ' ~� �   �  �    �     < = �  �  	   v*+�'M*� N-+�* :� :*� W��-Y�/:�0Y*+�2:-�5 �9W:*� W�:M*� W� :*� W�,*�=���    W & O W   d   & O d   W \ d   d f d   �   Z   � � � � � � � #� &� /� =� K� O� T� W� Y� \� a� d� k� n� s��   R   B  / (	
  =   Y ��   l�   g��    v��     v�� �   4   B  / (	  =    g��    v�� �   * �   ( ?� 0   3 ( L�	�   �  �   �    �    �  �     �*�d>� �*2�@� � v*2�@:,� /�B� �B:,�D� ,+�G W,�G W� +�H � 3:,�N�:�LY�R�U:,�N�:�:�Z����z�   U XL  U cP  U |  U �X �   j    	    ! ) 0 6 9 A  M# U1 X% Z& `' c( e) s* y+ |, ~- �. �0 � �3�   p  0   Z 	  s 	  e   ~ ��  �    k   � |    ��     � !    �"� �     0 #    �"$ �   % � � #@BLJPXDX� � �   �     "  �   % "# �   �     ;*�]N-� -+�`�a� �*�f:� +�g� �� +*��j��   �   & 	  ] _ ` c e *f ,i 0j 9l�   4    ;��     ;��    ;   6&'   (  �       ;��     ;�� �    � b�  5�   �  �    �   ) 
   �   �     Q*� +� � �+� �*�+�� �=*�� -*2� +2� �+2� �*2+2�n� ������   �   B   w x z {  � � %� +� 1� 3� 9� ;� G� I� O��       0 |    Q*     Q+ �    
@ � � �   	*  +    q, �   �     ,*� M,+�o � � >*� W�s�:*� W�s�        !    �   "   � � � � � � &� )��        ,��     ,��   '�� �       ,��   '�� �    �  (@J��   �  �   - z. �   5     *� � (�x�   �      ��       /�  �   /   01 �       a� +,� +�,�@� �Y�N-,�W-M,�+�W,�,� �,+� �,�� ,�,�N-+�|W-�~� -�� � �-�   �   R   � � � 
� � � � !� *� ,� 0� 2� 7� 9� @� B� G� M� U� _��   4   ��  G ��    a w     a/    a2  �    

� �    w  /  2  �    � �[ s� 
   �         ���   �      ��   345 �   /     *� �   �       7�       6�  7  �   :     *+� �   �       7�       6     8 9: �   /     *� �   �       7�       6�  ;: �   /     *� �   �       7�       6�  <  �         � �   �       7 =  �   2      ������� 5Y��� L�   �   
    8  < >   ?@   r  ( A  B 	 3 C  ? D	 ~ E	 � F  � G  � H	 I - J 0 K L    L N 
O Q 