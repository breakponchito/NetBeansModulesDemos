����   4�
      java/lang/Object <init> ()V
  	 
   java/util/Collections 	emptyList ()Ljava/util/List;	      ,org/openide/explorer/view/VisualizerChildren visNodes Ljava/util/List;	     snapshot	     parent *Lorg/openide/explorer/view/VisualizerNode;      java/util/List size ()I ! java/util/ArrayList
   #  $ (I)V  & ' ( add (Ljava/lang/Object;)Z
  * + , getVisNodes (Z)Ljava/util/List;	  . / 0 $assertionsDisabled Z 2 java/lang/AssertionError 4 java/lang/StringBuilder
 3  7 visnodes.size()=
 3 9 : ; append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 3 = : > (I)Ljava/lang/StringBuilder; @  snapshot.size()=
 3 B C D toString ()Ljava/lang/String;
 1 F  G (Ljava/lang/Object;)V  I J K get (I)Ljava/lang/Object; M (org/openide/explorer/view/VisualizerNode	 L O P Q indexOf I
  S T U 
getChildAt (I)Ljavax/swing/tree/TreeNode;	 L W X  EMPTY Z org/openide/nodes/Node \ java/lang/NullPointerException ^ 
snapshot: 
 3 ` : a -(Ljava/lang/Object;)Ljava/lang/StringBuilder; c  pos:  e 	 parent: 
 [ g  h (Ljava/lang/String;)V
 L j k l getVisualizer r(Lorg/openide/explorer/view/VisualizerChildren;Lorg/openide/nodes/Node;)Lorg/openide/explorer/view/VisualizerNode;  n o p set '(ILjava/lang/Object;)Ljava/lang/Object;
 L r s t notifyVisualizerChildrenChange 2(ZLorg/openide/explorer/view/VisualizerChildren;)V v .org/openide/explorer/view/VisualizerChildren$1
 u x  y 2(Lorg/openide/explorer/view/VisualizerChildren;Z)V
  { | } recomputeIndexes -(Lorg/openide/explorer/view/VisualizerNode;)V  EMPTY: 
 3 � : � (Z)Ljava/lang/StringBuilder; � , Lazy:   � � � getClass ()Ljava/lang/Class;
 � � � � D java/lang/Class getName � LazySnapshot
 � � � � � java/lang/String endsWith (Ljava/lang/String;)Z � 
Seeking for: 
 L � � D toId � 
with parent: 
 L � � � 	getParent ()Ljavax/swing/tree/TreeNode; � null � 
Seeking in :  � 

  � � � addVisNodesInfo (Ljava/lang/StringBuilder;)V �    �  =  �  = null
 3 � : � (C)Ljava/lang/StringBuilder; � 
Event: 
  � � 
Original event: 	 � � � � � )org/openide/explorer/view/VisualizerEvent originalEvent Lorg/openide/nodes/NodeEvent; � 
current vis. nodes: � 

Indexes: 
 � � � � getArray ()[I
 � � � C � java/lang/Integer (I)Ljava/lang/String; �  
 � B � org/openide/nodes/NodeEvent
 L � � � getChildren 0()Lorg/openide/explorer/view/VisualizerChildren;
 � � � �  /org/openide/explorer/view/VisualizerEvent$Added getSnapshot  � � � listIterator ()Ljava/util/ListIterator;
 � � � � � � � java/util/ListIterator next ()Ljava/lang/Object; � � ' G
 L � � � getListenerList ()[Ljava/lang/Object; � #org/openide/explorer/view/NodeModel � � � � added 4(Lorg/openide/explorer/view/VisualizerEvent$Added;)V
 � � � 1org/openide/explorer/view/VisualizerEvent$Removed
 � �  � � � isEmpty ()Z
  � � � dumpEventInfo ?(Lorg/openide/explorer/view/VisualizerEvent;)Ljava/lang/String;��� � %Indexes have to be descendant. Prev:   next:   at   K remove	 �	
 removed Ljava/util/LinkedList;
 & java/util/LinkedList �	 6(Lorg/openide/explorer/view/VisualizerEvent$Removed;)V
 � 3org/openide/explorer/view/VisualizerEvent$Reordered
 �  toArray (([Ljava/lang/Object;)[Ljava/lang/Object; +[Lorg/openide/explorer/view/VisualizerNode;	  LOG Ljava/util/logging/Logger;	 !"#$ java/util/logging/Level WARNING Ljava/util/logging/Level;& .Writing to this index for the second time: {0}
 �()* valueOf (I)Ljava/lang/Integer;
,-./0 java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V2 Length of indxs array: {0}4 Length of actual array: {0}6 Indices of reorder event:
,89 h warning; 	{0}= Who? java/lang/Exception
> 
,B/C C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)VE (java/lang/ArrayIndexOutOfBoundsExceptionG Length of actual array:  IJ  clear
LMNOP java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; RST addAll (Ljava/util/Collection;)Z �VWX 	reordered 8(Lorg/openide/explorer/view/VisualizerEvent$Reordered;)VZ  \ Parent: ^ [ `ab iterator ()Ljava/util/Iterator;defg � java/util/Iterator hasNextd �
 Lj �k 1(Z)Lorg/openide/explorer/view/VisualizerChildren;	 m Xn .Lorg/openide/explorer/view/VisualizerChildren;p  {r }t ]
vwxy � java/awt/EventQueue isDispatchThread
 1 
 �|} � desiredAssertionStatus
  
,��� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; 	Signature <Ljava/util/List<Lorg/openide/explorer/view/VisualizerNode;>; *Ljava/util/List<Lorg/openide/nodes/Node;>; Code LineNumberTable LocalVariableTable this =(Lorg/openide/explorer/view/VisualizerNode;Ljava/util/List;)V i LocalVariableTypeTable StackMapTable MethodParameters W(Lorg/openide/explorer/view/VisualizerNode;Ljava/util/List<Lorg/openide/nodes/Node;>;)V node visNode tn vn Lorg/openide/nodes/Node; pos getChildCount children (Z)Ljava/util/Enumeration; create F(Z)Ljava/util/Enumeration<Lorg/openide/explorer/view/VisualizerNode;>; getIndex (Ljavax/swing/tree/TreeNode;)I p1 Ljavax/swing/tree/TreeNode; dumpIndexes >(Lorg/openide/explorer/view/VisualizerNode;)Ljava/lang/String; sb Ljava/lang/StringBuilder; ev +Lorg/openide/explorer/view/VisualizerEvent; arr [I� 	listeners [Ljava/lang/Object; 1Lorg/openide/explorer/view/VisualizerEvent$Added; it Ljava/util/ListIterator; indxs current inIndxs p DLjava/util/ListIterator<Lorg/openide/explorer/view/VisualizerNode;>;� 3Lorg/openide/explorer/view/VisualizerEvent$Removed; idxs prev j old_i indxs_i e *Ljava/lang/ArrayIndexOutOfBoundsException; 5Lorg/openide/explorer/view/VisualizerEvent$Reordered; old s vch str Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; guardAccess ?(Z)Ljava/util/List<Lorg/openide/explorer/view/VisualizerNode;>; <clinit> 
SourceFile VisualizerChildren.java InnerClasses Added Removed 	Reordered 0       Xn              �   �    �   � / 0       �   R     *� *� � *� � *� �   �       1  2  3  4  5�       �n    � �   �     <*� *+� ,�  >*�  Y� "� 6� *� � % W����*,� �   �   & 	   :  ; 	 <  =  > % ? 0 > 6 A ; B�   4   � Q    <�n     <      <     ,  Q �       < � �    �    L   � �   	      �   �  | } �  �     �*� )M� -� F,�  *� �  � 4� 1Y� 3Y� 56� 8,�  � <?� 8*� �  � <� A� E�>,�  �  ,� H � L:� 	� N����+� 4+� N� ,>,�  �  *� R� L:� N+� ����ܱ   �   B    H  I @ J O L [ M g N l O r L x S � U � V � W � X � Y � U � ]�   H  g �   Q '� Q  � �   � '� Q    ��n     ��    ��  �      ��� �    � O �  � �  � �   �    T U �  8     �*� )M,�  � � V�,� H � LN-� h*� � H � Y:� 6� [Y� 3Y� 5]� 8*� � _b� 8� <d� 8*� � _� A� f�*� iN-� N,-� m W*� *� q-�   �   6    `  a  b  d  e # f 2 g 7 h j j q k v l  m � o�   4  2 V��    ��n     �� Q   ��    k�  �      ��� �    �  � U L Y� �   �   �  �   5     *� )�  �   �       s�       �n   �� �   >     
� uY*� w�   �       w�       
�n     
� 0 �   � �   � �� �   �     =+� LM,� N� )*� )N,� N-�  � -,� N� H ,� �� *,� z,� N�   �   "    �  �  �  � . � 0 � 3 � 8 ��   *   �     =�n     =��   8�  �      �� �    � . L � �   �  �� �  _     �� 3Y� 5M,~� 8+� V� � � ��� 8*� � � � ��� �� �W,�� 8+� �� 8W,�� 8+� �� L� +� �� L� �� �� 8W,�� 8*� � *� � �� �� 8�� 8W*,� �,� A�   �   .    �  �  � & � 7 � E � U � d � h � � � � ��        ��n     ��    ��� �   _ �    L 3  3�     L 3  3� G 3�    L 3  3 �Z 3�    L 3  3 ��   �    � � �   �     U*� )M>,�  � E,� H � L:+�� 8� <W� +�� 8� �� 8W� 
+�� 8W+
� �W�����   �   * 
   �  �  �  � ) � . � @ � G � N � T ��   4   0�    L� Q    U�n     U��   O�  �      O�� �    �  � 7 L� �   �    � � �       �� 3Y� 5M,�� 8+� �� �� 8W,�� 8+� �� �� �� 8W,�� 8W*,� �,�� 8W+� �N6-�� ,-.� Ƕ 8W,̶ 8W����,�� 8W,+� �� ζ 8W,� A�   �   :    �  �  � - � 4 � 9 � @ � E � O � [ � b � h � o � { ��   4  H  � Q    ��n     ���   x��  E ;�� �    � H 3�� �   �    � � �  �  	   �**� � ѥ �*+� յ *� )� � M+� �N66-�� &�-.� ,� � W���,� � ����*� z*� :� 7� �:�d6� 2� �+� � ������ �� L:��ʱ   �   Z    �  �  �  �  � $ � ' � * � 1 � = � G � N � T � Y � _ � d � k � w � � � � � � � � ��   \ 	 r � Q  k *��    ��n     ���   z��  $ u��  ' r� Q  * o� Q  _ :�  �      z�� �   . 	�    � ��  � 
 L� �� � �   �   	 �  �    0**� � ѥ �*+� � +� �M,�� �*� )N-� � � �� -� -�  ,,�d.� � 1Y*+� �� E��6,�d6� |-� � � � j� -� @,.� 7� 1Y� 3Y� 5�� 8� < � 8,.� <� 8� <� A� E�-,.� � L:+�� � � V�W�����*� z*� :� 7� �:�d6� 2� �+� ������ �� L:���-� � � *� *� q�   �   z    �  �  �  �  �  �  � % � . � / � Q � U � ` � i � l � � � �  � � � � � � � �	
&/�   f 
 � �   [ ~� Q  � � Q  � *��   0�n    0��  ��  %�   U �� Q  � L�  �     %�� �   l � ��  !� 	� B�    ��  L �    ��  L  L� � � 
 L� �� � �   �   WX �  j    �**� � ѥ �*+�� +�M*� )N--�  � L� �:�� L:,�66� �2:,.6		2� w��%	�'�+��1,��'�+��3��'�+�5�76
,�� ��:,
.�'�+�
����<�>Y�@�A�	S���f� S:��� 3Y� 5F� 8�� <� A�A�5�76,�� ��:,.�'�+����-�H -�K�Q W*� z*� :� 7� �:�d6		� 	2� �+�U �	����� �� L:��ʱ  ? � �D � � �D �   � +         3! ;" ?$ I& P' V) ^+ o, �- �. �0 �1 �0 �3 �5 �8 �$ �B �: �;<>?+>1A2C8DDEIGOITJ[KgLuK{N�O�P�   �  �  � Q 
 P ��   V �� Q 	 B �� Q   � Q  � N�� b � Q 	[ *��   ��n    ���  p��  j�   3V�  ;N�  ?J� Q O :�  �     j�� �   Q � 5  �   � [ L� � BD� .D� �  �  L� �� � �   �    C D �  �     �YL*� �  � 3Y� 5[� 8*� � _̶ 8� AL� 3Y� 5+� 8]� 8� AL*� )�_ M,�c � ^,�h � LN� 3Y� 5+� 8-� _� AL-� &-�i:�l� � 3Y� 5+� 8� _� AL� 3Y� 5+� 8̶ 8� AL���� 3Y� 5+� 8o� 8*� � _q� 8� AL� 3Y� 5+� 8s� 8� AL+�   �   >   T U V (X =Y [Z n[ r\ y] �^ �a �b �c �d �e�   *  y �n  [ N�     ��n    ��� �    � ( �� d� L L� �    �    + , �   b     � � -� �u� � 1Y�z�*� �   �      i j l�       �n     � 0 �    �   �  �   � �  �   Q      &�{� � � -� Y�~�l� ����   �       !  #  $�    @ �   ��   "  u       � ��  � ��  �� 