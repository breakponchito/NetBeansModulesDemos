����   4�
      0org/openide/explorer/view/OutlineViewDropSupport performReorder 6(Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;II)V
   	 
 findDropedNodes L(Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node;
     log (Ljava/lang/String;)V	     LOGABLE Z
      java/lang/Object <init> ()V	     active	     upperNodeIdx I	  ! "  lowerNodeIdx	  $ %  	dropIndex ' +org/openide/explorer/view/DragDropUtilities	  ) *  pointAt	  , - . view 'Lorg/openide/explorer/view/OutlineView;	  0 1 2 table Ljavax/swing/JTable;	  4 5  dropTargetPopupAllowed 7 java/lang/StringBuilder
 6  : 
dragEnter 
 6 < = > append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 6 @ = A -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 6 C D E toString ()Ljava/lang/String;
  G H  checkStoredGlassPane
  J K L 
doDragOver %(Ljava/awt/dnd/DropTargetDragEvent;)V N 	dragOver 
 P Q R S T 'org/openide/explorer/view/DropGlassPane isOriginalPaneStored ()Z	  V W X dropPane )Lorg/openide/explorer/view/DropGlassPane;
 P Z [  putBackOriginal
 ] ^ _ ` a javax/swing/JTable getRootPane ()Ljavax/swing/JRootPane;
 c d e f g javax/swing/JRootPane getGlassPane ()Ljava/awt/Component;
 i j k l T java/awt/Component 	isVisible
 P n o p setOriginalPane 0(Ljavax/swing/JComponent;Ljava/awt/Component;Z)V
 P r s t 
getDefault C(Ljavax/swing/JComponent;)Lorg/openide/explorer/view/DropGlassPane;
 c v w x setGlassPane (Ljava/awt/Component;)V
 P z {  
revalidate
 P } ~  
setVisible (Z)V � dropPane was set
 � � � s � ,org/openide/explorer/view/ExplorerDnDManager 0()Lorg/openide/explorer/view/ExplorerDnDManager;
 � � �  setMaybeExternalDragAndDrop
 � � � � �  java/awt/dnd/DropTargetDragEvent getDropAction ()I
 � � � � getTransferable &()Ljava/awt/datatransfer/Transferable;
 � � � � � %org/openide/explorer/view/OutlineView getAllowedDropActions '(Ljava/awt/datatransfer/Transferable;)I
 � � � � getAdjustedDropAction (II)I
 � � � � getLocation ()Ljava/awt/Point;
 � � � � 
getOutline &()Lorg/netbeans/swing/outline/Outline;
 � � � � � "org/netbeans/swing/outline/Outline 
rowAtPoint (Ljava/awt/Point;)I
 � � � � columnAtPoint � doDragOver: p =  � 	, row == 
 6 � = � (I)Ljava/lang/StringBuilder; �  column == 	 � � � � manager &Lorg/openide/explorer/ExplorerManager;
 � � � � � $org/openide/explorer/ExplorerManager getRootContext ()Lorg/openide/nodes/Node;
  � � � canDrop @(Lorg/openide/nodes/Node;ILjava/awt/datatransfer/Transferable;)Z
 � � � � 
acceptDrag (I)V
 � � �  
rejectDrag
  � �  removeDropLine
  � � � getNodeForDrop *(Ljava/awt/Point;)Lorg/openide/nodes/Node; � doDragOver dropNode == 
 ] � � � getCellRect (IIZ)Ljava/awt/Rectangle; � nodeArea == 	 � � � �  java/awt/Point y	 � � � java/awt/Rectangle
 � � � T isRootVisible
 � � � � � org/openide/nodes/Node getParentNode � dropNode is parent 1	 � � �  height
 � � � � getLayoutCache (()Ljavax/swing/tree/AbstractLayoutCache;
 � � � � convertRowIndexToModel (I)I
 � � � � � $javax/swing/tree/AbstractLayoutCache getPathForRow (I)Ljavax/swing/tree/TreePath;  tp == 
 � 
isExpanded (Ljavax/swing/tree/TreePath;)Z tree path is not expanded dropNode is parent 2
 org/openide/nodes/Index
 � 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; indexCookie == 	 indexOf (Lorg/openide/nodes/Node;)I
 javax/swing/tree/TreePath getParentPath ()Ljavax/swing/tree/TreePath;
 � getRowForPath (Ljavax/swing/tree/TreePath;)I	  !" timer Ljavax/swing/Timer;
$%&' T javax/swing/Timer 	isRunning
 �)* T isLeaf
 ,-  removeTimer/ 2org/openide/explorer/view/OutlineViewDropSupport$1
.1 2 P(Lorg/openide/explorer/view/OutlineViewDropSupport;Ljavax/swing/tree/TreePath;)V
$4 5 #(ILjava/awt/event/ActionListener;)V
$78  
setRepeats
$:;  start
 P=>? setDropLine (Ljava/awt/geom/Line2D;)VA java/awt/geom/Line2D$Double
 ]CD � getWidth
@F G (DDDD)V
 IJ? convertBoundsAndSetDropLine
 �L M (IIII)V
 �OPQ createUnion 8(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;	 STU lastNodeArea Ljava/awt/Rectangle;
 �WXY equals (Ljava/lang/Object;)Z
 [\] repaint (Ljava/awt/Rectangle;)V
 �_`a getDraggedNodes ()[Lorg/openide/nodes/Node;
 cde 
canReorder 4(Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)Z	 �gh  x	 �jk  width
 �m\M
opqrs java/awt/geom/Line2D getX1 ()D
ouvs getX2
oxys getY1
o{|s getY2
~��� javax/swing/SwingUtilities convertPoint <(Ljava/awt/Component;IILjava/awt/Component;)Ljava/awt/Point;
o��� setLine 1(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)V� java/awt/event/ActionListener
$��� getListeners -(Ljava/lang/Class;)[Ljava/util/EventListener;�  [Ljava/awt/event/ActionListener;
$��� removeActionListener "(Ljava/awt/event/ActionListener;)V
$��  stop
 &��� checkNodeForAction (Lorg/openide/nodes/Node;I)Z
 ��  stopDragging
 ���� getNodeFromRow (I)Lorg/openide/nodes/Node;
 ��� � getNodeAllowedActions� java/awt/dnd/DnDConstants� canReorder returning false 1� canReorder returning false 2� canReorder returning false 3� canReorder returning false 4� canReorder returning false 5
 �W� canReorder returning false 6� canReorder returning true� performReorder indexCookie == 	�� � getNodesCount
����� java/util/Arrays sort ([I)V
 ��� containsNumber ([III)Z	��� reorder� java/lang/Exception
��� s� org/openide/ErrorManager ()Lorg/openide/ErrorManager;
���� notify (ILjava/lang/Throwable;)V
 ���� getChildren ()Lorg/openide/nodes/Children;
 ��� E getName
����� org/openide/nodes/Children 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node;� canDrop 
 ���� getDraggedTransferable '(Z)Ljava/awt/datatransfer/Transferable;� transferable == 
 &��� getDropType i(Lorg/openide/nodes/Node;Ljava/awt/datatransfer/Transferable;II)Lorg/openide/util/datatransfer/PasteType;� drop
� ��  java/awt/dnd/DropTargetDropEvent� drop dropNode == 
� �
� �
��� � 
acceptDrop
���  
rejectDrop
���  dropComplete@   � 'org/openide/util/datatransfer/PasteType
 & getPasteTypes h(Lorg/openide/nodes/Node;Ljava/awt/datatransfer/Transferable;)[Lorg/openide/util/datatransfer/PasteType; java/util/TreeSet 2org/openide/explorer/view/OutlineViewDropSupport$2
	 
 5(Lorg/openide/explorer/view/OutlineViewDropSupport;)V
  (Ljava/util/Comparator;)V
�� , 
 java/lang/System identityHashCode (Ljava/lang/Object;)I
Y add
 & createDropFinishPopup -(Ljava/util/TreeSet;)Ljavax/swing/JPopupMenu;	 �g
 !"# � java/lang/Math max
%&'() javax/swing/JPopupMenu show (Ljava/awt/Component;II)V+ 2org/openide/explorer/view/OutlineViewDropSupport$3
*- . h(Lorg/openide/explorer/view/OutlineViewDropSupport;Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;II)V
 &012 setPostDropRun (Ljava/lang/Runnable;)V
 &456 performPaste \(Lorg/openide/util/datatransfer/PasteType;Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node;
 �89: setDraggedNodes ([Lorg/openide/nodes/Node;)V
 �<=> 
expandNode (Lorg/openide/nodes/Node;)V@ 2org/openide/explorer/view/OutlineViewDropSupport$4
?B C N(Lorg/openide/explorer/view/OutlineViewDropSupport;[Lorg/openide/nodes/Node;)V
~EF2 invokeLater
HIJK T java/awt/GraphicsEnvironment 
isHeadless
 MNO getDropTarget ()Ljava/awt/dnd/DropTarget;
QRST  java/awt/dnd/DropTarget 	setActive	 VWX outerDropTarget Ljava/awt/dnd/DropTarget;
 �Z[\ getViewport ()Ljavax/swing/JViewport;
 �^ � �
Q` a :(Ljava/awt/Component;ILjava/awt/dnd/DropTargetListener;Z)V
~cd T isEventDispatchThread
 &fg  dropNotSuccesfull	 ijX 
dropTarget	 lmn err Lorg/openide/ErrorManager;
� 
q�r java/lang/Class
�tuv getInstance .(Ljava/lang/String;)Lorg/openide/ErrorManager;
�xyz 
isLoggable (I)Z| java/awt/dnd/DropTargetListener~ java/lang/Runnable FUSSY_POINTING ConstantValue    DELAY_TIME_FOR_EXPAND  � ?(Lorg/openide/explorer/view/OutlineView;Ljavax/swing/JTable;Z)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/explorer/view/OutlineViewDropSupport; MethodParameters setDropTargetPopupAllowed value isDropTargetPopupAllowed 	dragEnter dtde "Ljava/awt/dnd/DropTargetDragEvent; dragOver comp Ljava/awt/Component; StackMapTable tp Ljavax/swing/tree/TreePath; 	parentRow 
parentPath path cn Lorg/openide/nodes/Node; line Ljava/awt/geom/Line2D; lineArea 
dropAction allowedDropActions p Ljava/awt/Point; row column dropNode isParentNodeDrop nodeArea indexCookie Lorg/openide/nodes/Index; expanded r x1 x2 y1 y2 p1 p2 i l dropActionChanged nodes [Lorg/openide/nodes/Node;� dragExit !(Ljava/awt/dnd/DropTargetEvent;)V dte Ljava/awt/dnd/DropTargetEvent; folder 	dragNodes ic idx j perm [I indexes indexesLength k e Ljava/lang/Exception; lNode uNode� arr 	arrLength n 	dropNodes children Lorg/openide/nodes/Children; dndEventTransferable $Ljava/awt/datatransfer/Transferable; trans pt )Lorg/openide/util/datatransfer/PasteType;� "java/awt/datatransfer/Transferable %(Ljava/awt/dnd/DropTargetDropEvent;)V tempDropNode tmpUpper tmpLower tempDragNodes ptCut *[Lorg/openide/util/datatransfer/PasteType; ptCopy setPasteTypes Ljava/util/TreeSet; t 	diffNodes "Ljava/awt/dnd/DropTargetDropEvent; 
dropResult LocalVariableTypeTable >Ljava/util/TreeSet<Lorg/openide/util/datatransfer/PasteType;>;�� java/lang/Throwable activate run s Ljava/lang/String; 
access$000 
access$100 x0 
access$200 ~(Lorg/openide/explorer/view/OutlineViewDropSupport;Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node; 
access$300 x3 x4 <clinit> 
SourceFile OutlineViewDropSupport.java InnerClasses� org/openide/nodes/Node$Cookie Cookie Double 0   {}    �   � �  �   �         5     jX   WX    TU         "     %     !"     W X    *     - .    1 2   
mn   
       � �   �     -*� *� *� *�  *� #*� (*+� +*,� /*� 3�   �   * 
   V  : 	 D  E  F  M  W " X ' Y , Z�   *    -��     - - .    - 1 2    - 5  �    -   1   5   �  �   >     *� 3�   �   
    ]  ^�       ��     �  �   �   � T �   /     *� 3�   �       a�       ��   � L �   i     %� 6Y� 89� ;+� ?� B� *� F*� #*+� I�   �       f  g  i  k $ l�       %��     %�� �   �   � L �   i     %� 6Y� 8M� ;+� ?� B� *� F*� #*+� I�   �       p  t  v  x $ y�       %��     %�� �   �    H  �   �     [� O� 
*� U� P� O� � Y*� /� \� bL*� /++� h� m**� /� q� U*� /� \*� U� u*� U� y*� U� |�� �   �   .    }  ~  �  � ! � - � 8 � F � M � U � Z ��     ! 9��    [��  �    � C  K L �  Y 
   d� �� �+� �=*� ++� �� �>� �� �=+� �:*� +� �� �6*� +� �� �6� 6Y� 8�� ;� ?�� ;� ��� ;� �� B� :� 3*� #*� +� �� �:*+� ��  +� Ƨ +� �*� ͱ*� �:� � � 6Y� 8Զ ;� ?� B� � *� #+� �*� ͱ6*� /� �:	� 6Y� 8ڶ ;	� ?� B� 	� �*� (� �	� �`� 4� *� +� �� � �*� (� �� �� � �:6� �� �	� �	� �`d� p*� +� �� �*� +� �� �� �:
� � � 6Y� 8�� ;
� ?� B� *� +� �� �
�� &� *� (� �� � � �:6	��	:
� 6Y� 8� ;
� ?� B� 
� s*� (� )*
*� й �  **�  d� **�  � #� �*� (� )*
*� й � **� `�  **�  � #� d*
*� й � #� P� K*� +� �� �*� +� �� �� �:� *�:� *� +� �� ��6*d� #*� +� �� �*� +� �� �� �:*� +� �� ��6*�� *��#� D� ?�(� 7� 2:*�+*�$Y�.Y*�0�3�*��6*��9*� (� *� U�<� �*� (� P�@Y	� �*� /�B�	� ᇷE:*�H� �Y	� �d*� /�B
�K:	�N� �:	� _�@Y	� �	� �`�*� /�B�	� �	� �`��E:*�H� �Y	� �	� �`d*� /�B
�K:	�N� �:	*�R� *�R	�V� **�R�Z	*�R�V� *	�Z*	�R*�+*+� ��  +� Ƨ *� ��^�b� +� Ƨ +� ʱ   �  � j   �  �  �  � ! � ' � 5 � C � n � q � w � | � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �2 �7 �? �D �K �Q �f �t �| �� �� �� �� �� �� �� �� �� �� �� �� �� � � �  �+ �3 �D �N �Y �m �r �� �� �� �� �� �� �� �� �� � ����	)18?!J$R%p&v)�*�+�,�-�0�1�67;"<(=.>2B@DHGWI_KcN�   � � R�� 
� 	�  �  �� � -��  +�� p ,�� � �U � 2�� � �U   d��    d��  X�   L�   '=��  5/�   C!�   q���  ���   �t�U 	���� 
���� �~�  �   O � �   � � �  $� R �� L� 4� W	-� L� <� @� T� [�   �   \] �   Z     "*� ++�fd+� �d+�i
`+� �
`�l�   �   
   T !U�       "��     "�U �   �   J? �   �     Q+�n�=+�t�>+�w�6+�z�6*� /*� /� \�}:*� /*� /� \�}:+��*� U+�<�   �   & 	  [ \ ] ^ _ -` @a Hb Pc�   R    Q��     Q��   K�    E�    >�    7�   - $��  @ �� �   �  -  �   �     :*�� 5*������L=+�� *�+2������*���*��   �   "   g h j k 'j -n 4o 9q�       �    $��    :��  �    � �� �  � L �   �     T� ��^M,� �� �+� �*� ++� �� �� �>6,�� )*� ++� �� �~� ,2��� +� ʱ���ֱ   �   :   u v w x y x #| -} 2~ B H� L� M| S��   4  & -�     T��     T��   M��  # 1�  �    � �� !� �   �   �� �   Q     � �� �*� #*���   �      � � � ��       ��     �� �   �    �  �   `     *� U�<*�R� **�R�Z*�R�   �      � � � � ��       ��  �     �  �   U     *� �*�+� O� � Y�   �      � � � � ��       ��  �      � � �   W     *� +� �+� �=*� +���   �   
   � ��        ��     ��   	�  �   �   de �  S     �� ���~� �� �+� ,� ,�� �� �+	��	N-� �� �6,�� @,2� �� �,2� �� �� �,2� �+��� �� ������� �   �   ^   � � � �  � &� (� 3� 7� =� ?� I� P� V� X� b� h� j� x� ~� �� �� ���   4  B D�     ���     ���    ���  3 [�� �    	� 	� � �   	�  �      �  @    d+	��	:� 6Y� 8�� ;� ?� B� �/�� �
:,��
:66		,�� -,	2� 6

� 
�� �
O�	������ �� � �6	6

�� �
� K*
��� 
	�	O
� p6�  .� .	�	O���ߧ F
� )6� .� .	�	O����*
��� 
	�	O�
��c6

�� 
.
� �� � 	�
��ߧ :���α    �X� �UX� �   � )  � � $� )� 4� :� =� G� T� a� k� q� v� �� �� �� �� �� �� �� �� �� �� �� �� �  � � (�.9CLOUXZc�   �  T �  
 @ 1�  	 � $�   � #�   � ��  
1 $�  
 4!��  :��  =�   � ��  	 I�� Z 	��   d��    d��   d��   d�    d�  �   \ � @ 
  ��	��  *�  � %� 	� � � � � �    ��  B�
�   � �  �  �   �� �   �     6� +.� ������   �       	   #�   4   �     ��     ��    �     �  �   
 � � �   �  �  �    	 
 �   �     9+� ,�� �,�� �N+��:6,�� -,2�ֶ�S����-�   �   "   ' 	( + , . !/ 1. 72�   >   �     9��     9��    9��   (��   "�� �    	� ��� �   	�  �    � � �  �     �� � � 6Y� 8߶ ;+� ?� B� +� �*� +-� �~� �~� 2� ��^:� %6�� +2� ��� ����� �~� � ��:� � � 6Y� 8� ;� ?� B� � -:� �+*� #��:� � �   �   Z   9 : < != #A 0B 2G 8H @J EK PL _M aK gS zV �W �Y �Z �[ �\ �a �c�   R  H �   @ '��    ���     ���    ��     ���  z F��  � �� �   8 � �� L ��     ��  �� "�� �@�   �  �  �   �� �  j    �=� *��*+��� �N� � � 6Y� 8� ;-� ?� B� -� *� +� �� �N� *� (� -� �N� ��^:� �+��*� ++�� �� �6*-+��  /*-�b� *-*�  *� � +��� +��+���+����?��:��:� ���~� -� ��� :� ���~� -� ��� :�Y�Y*��:6		�� C� � ,� 6Y� 8	2�� ;� ;	2�� �� B� 	2�W�	���6		�� C� � ,� 6Y� 8	2�� ;� ;	2�� �� B� 	2�W�	����*� /+���d�+��� �d��$*-�b� )-:	*� 6
*�  6:�*Y*	
�,�/� �� �~� � ��:� 	+��:-*� #��:-�3:� �~� � �� � ��7*-�b�  *�  � *� � *-*�  *� � �� *� +-�;�?Y*�A�D+��� :+����   ��   ���  ���   �   G  j l m p q r 2v 6w Dx Ky P| X} \~ j} o� }� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �����>�I�O�Z�`������������������������������!�)�?�G�_�n�t�|������������   �  H�  	R H�  	� #�� 	� �  
� �  � ��  �3��  �-��  ���  ��� ! h�� ) `��  t��  X1��  o�    ���    ���  ��  �     ��� �   � � 2 �� N�� 1��� 6� � 6� � UM ��    � ��  �� �� $ 	 � �����  ��   	 � �����  �&�   �  G�	�   �   �  �   �     I*� � �*� �G� �*�L�P*�U� *�QY*� +�Y*� +�]*�_�U*�U�P�   �   * 
    	   	  % @ H�       I��     I   �    	*�       �  �   R     �b� *�D��e�   �        
  �       ��  �      NO �   _     $*�h� *�QY*� /*� +�]*�_�h*�h�   �        ! $�       $��  �     
   �   I     � � 
�k*�o�   �      4 5 7�       ��  �    �   �  � T �         � �   �       5�  �   /     *� �   �       5�       ��  �� �   E     *+,� �   �       5�        ��     ��    �� �. �   \     
*+,� �   �       5�   4    
��     
��    
��    
�     
�   �  �   =      ���p�s�k�k�w� �   �      , - , / �   ��   2 � ��	.      @o� 	      *      ?      