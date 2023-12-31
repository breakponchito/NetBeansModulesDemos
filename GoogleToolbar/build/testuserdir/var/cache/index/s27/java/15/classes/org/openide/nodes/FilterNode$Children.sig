����   4�
      org/openide/nodes/Children$Keys 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node;	  	 
   %org/openide/nodes/FilterNode$Children nodeL .Lorg/openide/nodes/FilterNode$ChildrenAdapter;
      org/openide/nodes/Node getChildren ()Lorg/openide/nodes/Children;
      org/openide/nodes/Children isLazy ()Z
     <init> (Lorg/openide/nodes/Node;Z)V
     (Z)V	  ! " # original Lorg/openide/nodes/Node;
  % & ' getEntrySupport "()Lorg/openide/nodes/EntrySupport;
 ) * + ,  org/openide/nodes/EntrySupport isInitialized . ;org/openide/nodes/FilterNode$Children$FilterChildrenSupport	  0 1 2 $assertionsDisabled Z
 4 5 6 7 8 java/lang/Thread 	holdsLock (Ljava/lang/Object;)Z : java/lang/AssertionError
 9 <  = ()V
  ? @ ' entrySupport - B C ' originalSupport
  E F G setEntrySupport #(Lorg/openide/nodes/EntrySupport;)V	  I J 2 lazySupport L 1org/openide/nodes/FilterNode$Children$LazySupport N "org/openide/nodes/EntrySupportLazy
 K P  Q j(Lorg/openide/nodes/FilterNode$Children;Lorg/openide/nodes/Children;Lorg/openide/nodes/EntrySupportLazy;)V S 4org/openide/nodes/FilterNode$Children$DefaultSupport U %org/openide/nodes/EntrySupportDefault
 R W  X m(Lorg/openide/nodes/FilterNode$Children;Lorg/openide/nodes/Children;Lorg/openide/nodes/EntrySupportDefault;)V
  Z [ G postInitializeEntrySupport	  ] ^ _ PR #Lorg/openide/util/Mutex$Privileged;
 a b c d = !org/openide/util/Mutex$Privileged enterWriteAccess	 f g h i j org/openide/nodes/FilterNode LOGGER Ljava/util/logging/Logger;	 l m n o p java/util/logging/Level FINER Ljava/util/logging/Level;
 r s t u v java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z x java/lang/StringBuilder
 w < { changeOriginal() 
 w } ~  append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 w � ~ � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 w � � � toString ()Ljava/lang/String;
 r � � � finer (Ljava/lang/String;)V �     old original children:  �     old original lazy support: 	  I
 w � ~ � (Z)Ljava/lang/StringBuilder; �     new original:  �     new original children:  �     new original lazy support:  �     Children adapter: 
  � � � removeNodeListener #(Lorg/openide/nodes/NodeListener;)V
  � � � changeSupport (Lorg/openide/nodes/Node;)V
  � � = addNotifyImpl
 a � � = exitWriteAccess
  ? � changeSupport()  �     newOriginal:  � $    entrySupport().isInitialized():  �     parent: 	  � � # parent
 ) � � � snapshot ()Ljava/util/List; � � � � � java/util/List size ()I
  � � � getSnapshotIdxs (Ljava/util/List;)[I �    firing node removal: 
 � � � � � java/util/Collections 	emptyList
  � � � fireSubNodesChangeIdx H(Z[ILorg/openide/nodes/Children$Entry;Ljava/util/List;Ljava/util/List;)V
 ) � � = notifySetEntries �     initializing new support
 r � � � log .(Ljava/util/logging/Level;Ljava/lang/String;)V
 ) � � � getNodesCount (Z)I
  �  � � ,org/openide/nodes/FilterNode$ChildrenAdapter
 � �  � *(Lorg/openide/nodes/FilterNode$Children;)V
  � � � addNodeListener
  � � � filterSupport ?()Lorg/openide/nodes/FilterNode$Children$FilterChildrenSupport; - � � = update
 � � � � emptySet ()Ljava/util/Set;
  � � � setKeys (Ljava/util/Collection;)V
  � � � 	cloneNode ()Lorg/openide/nodes/Node; - 
  � � � copyNode 2(Lorg/openide/nodes/Node;)Lorg/openide/nodes/Node;
  � �  add ([Lorg/openide/nodes/Node;)Z	  MUTEX Lorg/openide/util/Mutex;
	  org/openide/util/Mutex isWriteAccess (Should be called only under write access
 9  (Ljava/lang/Object;)V
   remove
   checkSupportChanged - filterChildrenAdded &(Lorg/openide/nodes/NodeMemberEvent;)V - filterChildrenRemoved - filterChildrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V -!"# callGetNodes (Z)[Lorg/openide/nodes/Node; -%& � callGetNodesCount -()* createEntryForKey <(Lorg/openide/nodes/Node;)Lorg/openide/nodes/Children$Entry;
 ,-  switchSupport
 /01 createNodes 3(Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node;
 (
4567  java/lang/Class desiredAssertionStatus9 java/lang/Cloneable Code LineNumberTable LocalVariableTable this 'Lorg/openide/nodes/FilterNode$Children; or MethodParameters lazy origSupport  Lorg/openide/nodes/EntrySupport; es support =Lorg/openide/nodes/FilterNode$Children$FilterChildrenSupport; origChildren Lorg/openide/nodes/Children; os osIsLazy StackMapTableM java/lang/ObjectO java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; changeOriginal wasAttached idxs [I Ljava/util/List; newOriginal LOG_ENABLED init changed LocalVariableTypeTable *Ljava/util/List<Lorg/openide/nodes/Node;>;U finalize clone ()Ljava/lang/Object; 	addNotify removeNotify node name Ljava/lang/String; key arr [Lorg/openide/nodes/Node; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; ev #Lorg/openide/nodes/NodeMemberEvent; $Lorg/openide/nodes/NodeReorderEvent; getNodes optimalResult toLazy -(Ljava/lang/Object;)[Lorg/openide/nodes/Node; 6(Ljava/lang/Object;)Lorg/openide/nodes/Children$Entry; 
access$201 S(Lorg/openide/nodes/FilterNode$Children;Ljava/lang/String;)Lorg/openide/nodes/Node; x0 x1 
access$300 W(Lorg/openide/nodes/FilterNode$Children;)Lorg/openide/nodes/FilterNode$ChildrenAdapter; 
access$401 <clinit> 	Signature PLorg/openide/nodes/Children$Keys<Lorg/openide/nodes/Node;>;Ljava/lang/Cloneable; 
SourceFile FilterNode.java InnerClasses Keys Children ChildrenAdapter FilterChildrenSupport LazySupport DefaultSupport 
Privileged�  org/openide/nodes/Children$Entry Entry !   8   " #        1 2      � :   E     *++� � � �   ;   
    <       =>     ? # @   ?      :   Q     *� *+�  �   ;        
<        =>     ? #    A 2 @   	?  A     @ ' :  ~    LYM�*� $� *� $� (� *� $� -L,ç N,�-�+� L� /� � 3� � 9Y� ;�*�  � � >MYN�*� $+� +� A ,� *� D-ç 
:-��YM�*� $� 
*� $,ð,ç 
:,��*�  � M,� >N,� 6Y:�*� $� *� $ð*� H*� H� � KY**-� M� O� � RY**-� T� V:*� D*� Y*� $ð:�� 
  " %   % ( %   T m p   p t p   | � �   � � �   � � �   � � �   � � �   � �   ;   r   ! " # %  ' *) .+ D, O- T. f0 k2 w5 |6 �7 �9 �< �= �> �@ �A �B �D �E �F �G �H �I<   H  O (BC  � DC   =>   EF  � hGH  � cIC  � ]J 2 K   P �   -LDN� � & )LDN� � LDN� � '   -  )L  L )UNP    Q   R � :  �    � \� `� e� k� q� Ͳ e� wY� yz� |*� �� �� �� e� wY� y�� |*�  � � �� �� �� e� wY� y�� |*�  � � �� �� �� �� e� wY� y�� |+� �� �� �� e� wY� y�� |+� � �� �� �� e� wY� y�� |+� � �� �� �� �� e� wY� y�� |*� � �� �� �*� � � =� *�  *� � �*� *+� �� *� �� \� �� N� \� �-��   
   ;   V   U W X +Y JZ l[ �\ �] �^ �a �d �e �f �ikl
opopq<      � !S 2   =>     " # K    � �
@� � HN@    "    � � :  �  
  G� e� k� q=*� �� (>6� j� e� wY� y�� |*� �� �� �� e� wY� y�� |+� �� �� �� e� wY� y�� |� �� �� �� e� wY� y�� |*� �� �� �� �� w*� �� p*� �� �:� � � ]� �:+� *+�  6Y:�*� Dç :��� � e� wY� yö |� �� �� �*� �� �� �� %+� *+�  Y:�*� Dç :	�	�� +� "*� �� �� � e� kѶ �*� �� �W�  � � �   � � �       ;   � !  t 
u v x y 2z K{ d| � �� �� �� �� �� �� �� �� �� �� �� �� �� �������'�.�2�=�F�<   H  � STU  � d �V   G=>    GW #  
=X 2  5Y 2  2Z 2 [     � d �\ K   Q � �� - �]�     �]L N� � �    L N� @   W   ^ = :   W     *� � *�  *� � �*� �   ;      � � � �<       =>  K    P    Q   _` :   6     � Y*�  � ۰   ;      �<       =>  P    Q   a = :   3     *� ��   ;   
   � �<       =>  P    Q    � = :   W     !*� �Y*� ߵ *�  *� � �*� � � �   ;      � � �  �<       !=>   b = :   b     *� � �*� � *�  *� � �*� �   ;      � � � � �<       =>  K    P    Q    � � :   9     +� ��   ;      �<       =>     c # @   c      :   ?     *� �+� � �   ;      �<       =>     de @   d  P    Q   01 :   A     � Y*+� �S�   ;      �<       =>     f # @   f    �  :   @     *�  � +� ��   ;      �<       =>     gh @   g  i    j    k  P    Q    � � :   2     *� �� -�   ;       <       =>     :   �     @*� �� -L*�  � � >M+� A ,� $� /� ��� � 9Y
��*� ���   ;          7	 <
 ><        @=>    8EF   -BC K    � 7 - )   :   @     *�  � +��   ;      <       =>     gh @   g  i    j    k  P    Q    :   \     *�� �*� �+� �   ;       ! # $<       =>     lm K    @   l    :   \     *�� �*� �+� �   ;      + - / 0<       =>     lm K    @   l    :   C     *� �+� �   ;   
   7 
8<       =>     ln @   l   o# :   ?     *� ��  �   ;      D<       =>     p 2 @   p  P    Q    � � :   ?     *� ��$ �   ;      I<       =>     p 2 @   p  P    Q    )* :   ?     *� �+�' �   ;      N<       =>     f # @   f  P    Q    -  :   �     ,� \� `*�  � � �+*�+� \� �� M� \� �,��     "   ;   "   T U V X Y "X )Y +Z<       ,=>     ,q 2 K    bN@   q  P    Q  D0r :   3     	*+� �.�   ;      <       	=>  @   f @)s :   3     	*+� �2�   ;      <       	=>  @   f P    Q  tu :   :     *+� �   ;      <       v>     we xy :   /     *� �   ;      <       v>  zu :   :     *+� �   ;      <       v>     we  { = :   4      f�3� � � /�   ;      K    @ |   }~   �   B   �	  f� 	 � f� 
 - � K �  R �  a� � �