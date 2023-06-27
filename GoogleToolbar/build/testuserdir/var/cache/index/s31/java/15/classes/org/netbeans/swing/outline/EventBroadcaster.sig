����   4(
      java/lang/Object <init> ()V	  	 
   +org/netbeans/swing/outline/EventBroadcaster logcount I	     inProgressEvent &Ljavax/swing/event/TreeExpansionEvent;	     pendingExpansionEvent #Ljavax/swing/event/TableModelEvent;	     inMultiEvent Z  java/util/ArrayList
  	     tableListeners Ljava/util/List;	  ! "  treeListeners
  $ % & setModel 3(Lorg/netbeans/swing/outline/DefaultOutlineModel;)V	  ( )  log + !javax/swing/event/TableModelEvent
  - . / tableModelEventToString 7(Ljavax/swing/event/TableModelEvent;)Ljava/lang/String;	 1 2 3 4 5 java/lang/System err Ljava/io/PrintStream; 7 java/lang/StringBuilder
 6  : EB-
 6 < = > append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 6 @ = A (I)Ljava/lang/StringBuilder; C   E : G java/lang/String
  I J K toString ()Ljava/lang/String;
 6 I
 N O P Q R java/io/PrintStream println (Ljava/lang/String;)V	  T U V model 0Lorg/netbeans/swing/outline/DefaultOutlineModel;
  X Y Z getModel 2()Lorg/netbeans/swing/outline/DefaultOutlineModel;
 \ ] ^ _ ` .org/netbeans/swing/outline/DefaultOutlineModel 	getLayout (()Ljavax/swing/tree/AbstractLayoutCache;
 \ b c d getTreePathSupport .()Lorg/netbeans/swing/outline/TreePathSupport;
 \ f g h getTreeModel ()Ljavax/swing/tree/TreeModel;
 \ j k l getTableModel  ()Ljavax/swing/table/TableModel; n o p q r java/util/List add (Ljava/lang/Object;)Z n t u r remove	  w x  $assertionsDisabled
 * z { | 	getSource ()Ljava/lang/Object; ~ java/lang/AssertionError
 }  � fireTableChange
  � ) � '(Ljava/lang/String;Ljava/lang/Object;)V � � � � � $javax/swing/event/TableModelListener tableChanged &(Ljavax/swing/event/TableModelEvent;)V
  � � � getTableModelListeners )()[Ljavax/swing/event/TableModelListener;
  � � � M(Ljavax/swing/event/TableModelEvent;[Ljavax/swing/event/TableModelListener;)V n � � � size ()I n � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � '[Ljavax/swing/event/TableModelListener;
 � z �  javax/swing/event/TreeModelEvent � #javax/swing/event/TreeModelListener � &[Ljavax/swing/event/TreeModelListener; � fireTreeChange-	  � � � types [Ljava/lang/String; � � � � treeNodesChanged %(Ljavax/swing/event/TreeModelEvent;)V � � � � treeNodesInserted � � � � treeNodesRemoved � � � � treeStructureChanged
 * � � � getType � >Table model should only fire updates, never structural changes
 } �  � (Ljava/lang/Object;)V
 � � � � � javax/swing/SwingUtilities isEventDispatchThread ()Z
  � � � translateEvent H(Ljavax/swing/event/TableModelEvent;)Ljavax/swing/event/TableModelEvent;
  � � � � -org/netbeans/swing/outline/EventBroadcaster$1
 � �  � S(Lorg/netbeans/swing/outline/EventBroadcaster;Ljavax/swing/event/TableModelEvent;)V
 � � � � invokeLater (Ljava/lang/Runnable;)V
  � � � F(Ljavax/swing/event/TreeModelEvent;)Ljavax/swing/event/TreeModelEvent;
  � � � fireTreeChange &(Ljavax/swing/event/TreeModelEvent;I)V
  � � � I(Ljavax/swing/event/TreeModelEvent;I)[Ljavax/swing/event/TableModelEvent;
  ]
 � � � $javax/swing/tree/AbstractLayoutCache
  � � � '([Ljavax/swing/event/TableModelEvent;)V
 � �
 � �
  b
 � � � *org/netbeans/swing/outline/TreePathSupport
 � � � � getTreePath ()Ljavax/swing/tree/TreePath;
 � � � � 
isExpanded (Ljavax/swing/tree/TreePath;)Z
  �
 � � �  clear
 * �  � !(Ljavax/swing/table/TableModel;)V � treeWillCollapse
  � � � L(Ljavax/swing/event/TreeExpansionEvent;Z)Ljavax/swing/event/TableModelEvent; � treeWillCollapse generated  treeWillExpand treeWillExpand generated treeCollapsed
	
 � $javax/swing/event/TreeExpansionEvent getPath
 � � 	isVisible
 � setExpandedState (Ljavax/swing/tree/TreePath;Z)V about to fire
 � getRowForPath (Ljavax/swing/tree/TreePath;)I
 *  %(Ljavax/swing/table/TableModel;IIII)V treeExpanded
   updateExpandedDescendants (Ljavax/swing/tree/TreePath;)V" treeExpansionVetoed
 �$%& getExpandedDescendants 9(Ljavax/swing/tree/TreePath;)[Ljavax/swing/tree/TreePath;
 *() � getFirstRow
 *+, � 
getLastRow
 *./ � 	getColumn
 �1
2 ()[Ljava/lang/Object;
 �456 getChildIndices ()[I
 �892 getChildren
 �; < =(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V> Unknown event type 
 @AB computeRowIndices &(Ljavax/swing/event/TreeModelEvent;)[I
 DEF isDiscontiguous ([I)Z
 HIJ getContiguousIndexBlocks ([IZ)[[IL discontiguous N  eventP  blocksR [I
 TUV createTableChangeEvent I(Ljavax/swing/event/TreeModelEvent;[I)Ljavax/swing/event/TableModelEvent;
 XYV createTableInsertionEvent
 [\V createTableDeletionEvent^ Unknown event type:  �a generated table eventsc java/lang/Integer
be f (I)Vh   Event 
  f
klmn | javax/swing/tree/TreePath getLastPathComponentpqrst javax/swing/tree/TreeModel getChildCount (Ljava/lang/Object;)IY
 *w x $(Ljavax/swing/table/TableModel;III)Vz createTableDeletionEvent 
 |}~ toArrayOfInteger ([I)[Ljava/lang/Integer;
����� java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 6� =� -(Ljava/lang/Object;)Ljava/lang/StringBuilder;� TableModelEvent: fromRow: �  toRow: 
���� sort ([I)V
 ��� inverseSort
 1��� 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V� [[I� TableModelEvent � insert � delete � update � Unknown type � from � header row 
 6� =� (C)Ljava/lang/StringBuilder;� to �  column � ALL_COLUMNS
k��� pathByAddingChild /(Ljava/lang/Object;)Ljavax/swing/tree/TreePath;
���� � java/lang/Class desiredAssertionStatus� nodesChanged� nodesInserted� nodesRemoved� structureChanged� 4org/netbeans/swing/outline/ExtTreeWillExpandListener� 'javax/swing/event/TreeExpansionListener NODES_CHANGED ConstantValue     NODES_INSERTED    NODES_REMOVED    STRUCTURE_CHANGED    	Signature 8Ljava/util/List<Ljavax/swing/event/TableModelListener;>; 7Ljava/util/List<Ljavax/swing/event/TreeModelListener;>; Code LineNumberTable LocalVariableTable this -Lorg/netbeans/swing/outline/EventBroadcaster; MethodParameters method Ljava/lang/String; o Ljava/lang/Object; StackMapTable areMoreEventsPending addTableModelListener )(Ljavax/swing/event/TableModelListener;)V l &Ljavax/swing/event/TableModelListener; addTreeModelListener ((Ljavax/swing/event/TreeModelListener;)V %Ljavax/swing/event/TreeModelListener; removeTableModelListener removeTreeModelListener i e 	listeners $[Ljavax/swing/event/TableModelEvent;�� java/lang/Throwable "Ljavax/swing/event/TreeModelEvent; type #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; events )(Ljavax/swing/event/TreeExpansionEvent;)V event 
Exceptions� $javax/swing/tree/ExpandVetoException path Ljavax/swing/tree/TreePath; row evt O(Ljavax/swing/event/TreeExpansionEvent;Ljavax/swing/tree/ExpandVetoException;)V 	exception &Ljavax/swing/tree/ExpandVetoException; descendants [Ljavax/swing/tree/TreePath;� nue blocks 	currBlock inClosedNode 
rowIndices discontiguous result expand firstRow paths count lastRow indices first last affectedRow lowest highest 
realInsert lastVal block newBlock reverseOrder 
startIndex LocalVariableTypeTable Ljava/util/List<[I>; ints [Ljava/lang/Integer; array sb Ljava/lang/StringBuilder; 	childPath index 	parentRow <clinit> 
SourceFile EventBroadcaster.java InnerClasses 0    � ���   )          U V                  �  �   � �  �   � �  �   � �  �   �  � �      �   �  "  �   � x    +   & �   �     4*� *� *� *� *� *� Y� � *� Y� �  *+� #�   �   & 	   ]  5 	 <  B  F  U # X . ^ 3 _�       4��     4 U V �    U    ) � �   �     \� '� X,� *� ,� *� ,M� 0� 6Y� 89� ;*Y� Z`� � ?B� ;+� ;D� ;,� F� 
,� F� ,� H� ;� L� M�   �   "    c  d  f  h @ i G j X h [ l�        \��     \��    \�� �   3 � 8   F   N 6�    F   N 6 F�   	�  �   � � �   /     *� �   �       z�       ��    Y Z �   /     *� S�   �       �       ��    % & �   >     *+� S�   �   
    �  ��       ��      U V �    U    _ ` �   2     *� W� [�   �       ��       ��    c d �   2     *� W� a�   �       ��       ��    g h �   2     *� W� e�   �       ��       ��    k l �   2     *� W� i�   �       ��       ��   !�� �   D     *� +� m W�   �   
    �  ��       ��     �� �   �   !�� �   D     *�  +� m W�   �   
    �  ��       ��     �� �   �   !�� �   D     *� +� s W�   �   
    �  ��       ��     �� �   �   !�� �   D     *�  +� s W�   �   
    �  ��       ��     �� �   �    � � �   �     =+� �� v� +� y*� W� � }Y� �*�+� �>,�� ,2+� � ����   �   "    �  �  �  � % � - � 6 � < ��   *  ' �     =��     =�     =� � �    � � �   	�  �     � � �   a     +� �*� *+*� �� ��   �       �  �  � 
 �  ��       ��     �  �    �   �    � � �       T+� +�� �*� �M*+�� � � >+�� +�d� *� *+2,� �����*� � :*� ��   A I   I K I   �   :    � 	 � 
 �  �  � & � . � 3 � ; � A � F � I � P � S ��   *    !�     T��     T��   E� � �   8 		 �   � �  �    � �  � � G�	�   �    � � �   �     +*YM�*� � � � �L*� +� � � �L,ç N,�-�+�   ! $   $ ' $   �       �  �  �  �  � ) ��       � �    +��   ) � � �     � $     ��    �   " � � �  �     �+� �� v� +� �*� W� � }Y� �*Y:�*�  � � � �N*�  -� � � �Nç :��*� 6Y� 8�� ;� �2� ;� L+� �6-�� i�   Q             *   7   D-2+� � � 8-2+� � � +-2+� � � -2+� � � � v� � }Y� ������  # A D   D I D   �   V    �  �  �   # 0 > L h r	 � � � � � � � � � � ��   >  0 � �  k m�     ���     ���    ��   L �� � �   7 � %   �   ��    � �  � $� �   	�  �    � � �   �     6� v� +� �� � }Y�� ��� �� **+� Ķ ȧ � �Y*+� ̸ ϱ   �      ) , - )/ 56�       6��     6�  �    �   � �    �    � � �   �     3� v� � �� � }Y� �**+� �� �*+� �M*� �+� �*,� �   �      E G I %J -K 2L�        3��     3��  % �� �    �   �  �    �    � � �   �     3� v� � �� � }Y� �**+� �� �*+� �M*� �+� �*,� �   �      [ ] _ %` -a 2b�        3��     3��  % �� �    �   �  �    �    � � �   �     3� v� � �� � }Y� �**+� �� �*+� �M*� �+� �*,� �   �      q s u %v -w 2x�        3��     3��  % �� �    �   �  �    �    � � �   �     Q� v� � �� � }Y� �*� �+� �**+� �� �*� �+� � � 	*+� �*� � �*� *Y*� W� �� ȱ   �   & 	   � � &� 4� 9� :� A� P��       Q��     Q�� �    %�   �  �    �    �� �   �     5� v� � �� � }Y� �*�+� �**+� �� *�*� � �*+� �   �      � � � %� /� 4��       5��     5�  �    �    ��   �  �    �   � �   �     7� v� � �� � }Y� �* +� �**+� �� **� � �*+� �   �      � � � &� 1� 6��       7��     7�  �    �    ��   �  �    �   � �  o     �� v� � �� � }Y� �*+� �+�  +�M,� *� �,�� *� �,�**� � �+� +�N*� �-�=� =� � *Y*� W� �N� � *Y*� W�N*� *Y-SY*� S� �*� *� �   �   N   � � �  � %� 4� =� H� L� Q� Z� ]� _� d� s� �� �� �� ���   R  % ��  Q 	��  Z �   p �     ���     ��   _ B�   � �  �    (� �  *�   �  �    �   � �  H     �� v� � �� � }Y� �*+� �+� *+��**� � �+� +�N*� �-�=� =� � *Y*� W� �N� � *Y*� W�N*� *Y-SY*� S� �*� *� �   �   F   � � �  � (� 3� 7� <� E� H� J� O� ^� n� �� �� � �   H  < 	��  E �   [ �     ���     ��   J B�   n �  �    � �  *�   �  �    �   "� �   �     /� v� � �� � }Y� �*!,� �+*� � *� *� �   �       	  $ ) .�        /��     /�     /�� �    �   	�  �  �    �     �   �     1*� �+�*� �+�#M,�� >,�� *� �,2�����   �   "    	 
 ! " # *" 0&�   *   �     1��     1��   �� �    �  � �   �    � � �   f      � *Y*� W+�'+�*+�-`+� ��M,�   �      0 	1 2�         ��      �      �   �    � � �   `     � �Y*� W+�0+�3+�7�:M,�   �      9 : ;�        ��     ��   � �   �    � � �  w 
   �+� �N*� �-� � � 6� o*� �-�6� Z�     4                � *Y� *Y*� W�S�� v� � }Y� 6Y� 8=� ;� ?� L� ��� *�*+�?:�C6� O� � �G:*� 6Y� 8K� ;� �2� ;M� ;� L� 6Y� 8�� ?O� ;� L� �� �QYS:�� *:6		�� {	2:
�     H             *   9	*+
�SS� C	*+
�WS� 4	*+
�ZS� %� v� � }Y� 6Y� 8]� ;� ?� L� ���	���*_+� �*`�bY��d� �� '� 26		�� '*� 6Y� 8g� ;	� ?� L	2� ��	����   �   � $  B F G H &L ,M HQ SR `Q aV �Z �] �^ �a �b �c �e �i �jlm(o4p7rCsFuRvUxwj}{�|�}�~��~���   �  & b�   � ;�  kR 
 � ��  	� ,�  	  ���    ���   ��   ���  �   �?R  �8   � ��  � �� �   k � k@� 2!� �    �kQ Q�     �kQ Q?� 
�� 
�� *Q� !� � !� +�   	�  �    � � �  �  	   �+�N*� �-�`6� �*� �-�#:*�i-�j�o 6� �6�� *�i2�j�o `6����`d6� *Y*� W� � �:�   �   B   � � � � � #� 2� 7� 9� D� Z� `� i� v� ~� ���   f 
 < $�     ���     ��     �    ���   v	   # d
�  2 U   i    �   �   ^ � k�  � � #�   k   i i \�    k   i i \�   	�     UV �   �     F+� �:*� ��6,� � ,.6,� � 	,,�d.6� *Y*� W�N-�   �      � � �  � 2� D��   R    F��     F��    FR  D     @��   5�     &   2   �    �  kB� E�   	�     YV �  �  	   ~*u+� �+� �:*� ��6*� �� �6� E,�� ,.6� *Y*� W�N� 6,.6,,�d.6� *Y*� W�N� � *Y*� W�vN-�   �   >   � � � � $� )� /� 4� F� I� N� V� h� k� |��   z  4    F    N    V    h      ~��     ~��    ~R  |     p��   e�   $ Z  �   1 � I   �Q k  !�    �Q *k  �   	�     \V �       w*� 6Y� 8y� ;,�{���� L+� �+� �:*� ��6� ,.6,,�d.6*��bY�d� �*��bY�d� �� *Y*� W�N-�   �   * 
  � � %� 0� 6 ; C
 S c u�   R    w��     w��    wR  u    % R��  0 G�   ; <	   C 4  �   
 � 6 k�   	�     EF �   �     2*� 	*�� �*��*.<=*�� *.`� �������   �   * 
   
     %  '" * 0%�       �     2R      �    
� 	� �      IJ �  �     �*�� �QY�
S�*�� �QY*S�� 
*��� *��� Y� M>6*�� ^*d.6� *.d� � � *.`� � 6� "d�
:*���,� m W>����*�d�
:*���,� m W,�Q� � ���   �   ^   3 4 6 7 ; #< *> .A 6B 8E BG JH aI sK xN �O �P �Q �E �V �W �X �Z�   \ 	 � R  J M   s $   ; b�     �R     �   6 �   8 �   � "R      6 � �    
�  n� !@� %� �   	    
}~ �   �     #*��bL=*�� +�bY*.�dS����+�   �      ` a b a !d�       �     #R     �    � � �      
�� �   �     /<*�� *\.hO����*��<*�� *\.hO����   �   "   l m l o p !q (p .s�       �    �     /R  �    � � � � �      
 . / �  �     � 6Y� 8L+�� ;W*� ��      =����      '   2   +�� ;W� (+�� ;W� +�� ;W� +�� ;*� �� ?W+�� ;W*�'�         ����   +�� ;W� +*�'� ?W+ ��W+�� ;W+*�*� ?W+�� ;W*�-�         ����   +�� ;W� +*�-� ?W+� L�   �   b   v w x 0y 8z ;{ C| F} N~ Q `� h� �� �� �� �� �� �� �� �� �� �� �� ���       ��     �  �    � 0 6



0
�   �   AB �  q     i*� �+� �>+�7� U+�7��
M6+�7�� =+� �+�72��:*� ��6,� +�3.``� O����� M,�   �   6   � � � � (� )� 8� C� K� Y� \� e� g��   R  8 $!�  C "    D�    JR    i��     i��  g R   ]#  �   b � Q� :   �Qk Q�    �Qk Q� �    �   �    �Q  �   �   $  �   _      4��� � � v� '� FY�SY�SY�SY�S� ��   �       /  2  P�    @ %   &'   
  �      