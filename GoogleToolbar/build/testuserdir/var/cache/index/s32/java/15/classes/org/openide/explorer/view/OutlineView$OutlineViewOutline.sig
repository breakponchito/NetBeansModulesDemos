����   4?	      8org/openide/explorer/view/OutlineView$OutlineViewOutline 	rowWidths [I
   	 
 setPreferredTreeWidth (II)V	     nodesColumnDescription Ljava/lang/String;	     rowModel .Lorg/openide/explorer/view/PropertiesRowModel;	     manager &Lorg/openide/explorer/ExplorerManager;
     setExplorerManager )(Lorg/openide/explorer/ExplorerManager;)V
     createTableQuickSearchSupport g(Lorg/openide/explorer/view/QuickSearchTableFilter;)Lorg/openide/explorer/view/TableQuickSearchSupport;
    ! " setNodesColumnDescription (Ljava/lang/String;)V
  $ % & $createDefaultTableQuickSearchSupport 5()Lorg/openide/explorer/view/TableQuickSearchSupport;
 ( ) * + , "org/netbeans/swing/outline/Outline <init> ,(Lorg/netbeans/swing/outline/OutlineModel;)V	  . / 0 treeSortable Z	  2 3 4 treePositionX I	  6 7 0 defaultActionAllowed 9 Eorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings
 8 ; + < ()V	  > ? @ qss GLorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings; B %org/openide/explorer/view/OutlineView D CTL_ColumnsSelector
 F G H I J org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
  L M " setSelectVisibleColumnsLabel O javax/swing/JComponent
  Q R S getInputMap (I)Ljavax/swing/InputMap;
  U V W removeDefaultCutCopyPaste (Ljavax/swing/InputMap;)V
 Y Z [ \ ] org/openide/util/Utilities isMac ()Z _ java/awt/event/KeyEvent
 a b c d e javax/swing/KeyStroke getKeyStroke (IIZ)Ljavax/swing/KeyStroke;
 g h i j k javax/swing/InputMap get +(Ljavax/swing/KeyStroke;)Ljava/lang/Object; m invokeCustomEditor
 g o p q put ,(Ljavax/swing/KeyStroke;Ljava/lang/Object;)V s Qorg/openide/explorer/view/OutlineView$OutlineViewOutline$InvokeCustomEditorAction
 r u + v O(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Ljava/lang/Object;)V
  x y z getActionMap ()Ljavax/swing/ActionMap;
 | } ~ p  javax/swing/ActionMap )(Ljava/lang/Object;Ljavax/swing/Action;)V � 	control C
 a � d � +(Ljava/lang/String;)Ljavax/swing/KeyStroke;
  � � � putActionDelegate 0(Ljavax/swing/InputMap;Ljavax/swing/KeyStroke;)V � 	control V � none � 	control X � COPY � PASTE � CUT � java/awt/event/InputEvent
 a � d � (II)Ljavax/swing/KeyStroke; � java/lang/StringBuilder
 � ; � Outline Copy Action Delegate 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 a � � � toString ()Ljava/lang/String;
 � �
  � � � getCopyActionDelegate C(Ljavax/swing/InputMap;Ljavax/swing/KeyStroke;)Ljavax/swing/Action;
  � � ] 	isEnabled
 | � j � ((Ljava/lang/Object;)Ljavax/swing/Action; � Norg/openide/explorer/view/OutlineView$OutlineViewOutline$CopyToClipboardAction
 � � + � Q(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Ljavax/swing/Action;)V
 ( � � � setColumnModel '(Ljavax/swing/table/TableColumnModel;)V � +org/netbeans/swing/etable/ETableColumnModel
  � � � getAllColumns ?(Lorg/netbeans/swing/etable/ETableColumnModel;)Ljava/util/List; � � � � � "javax/swing/table/TableColumnModel 
getColumns ()Ljava/util/Enumeration;
 � � � � � java/util/Collections list .(Ljava/util/Enumeration;)Ljava/util/ArrayList; � � � � � java/util/List size ()I
  � � � getNodesColumnName
 � � � � � ,org/openide/explorer/view/PropertiesRowModel getProperties $()[Lorg/openide/nodes/Node$Property; � org/openide/nodes/Node$Property � � � � iterator ()Ljava/util/Iterator; � � � � ] java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; � javax/swing/table/TableColumn
 � � � � getHeaderValue
 � � � java/lang/Object
  � � � findProperty W([Lorg/openide/nodes/Node$Property;Ljava/lang/String;)Lorg/openide/nodes/Node$Property;
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z � 7org/openide/explorer/view/OutlineView$PrototypeProperty
 �  + '(Ljava/lang/String;Ljava/lang/String;)V
 � setProperties %([Lorg/openide/nodes/Node$Property;)V
 � � getDisplayName
 
 getOutlineModel +()Lorg/netbeans/swing/outline/OutlineModel; � 'org/netbeans/swing/outline/OutlineModel getColumnCount getColumnName (I)Ljava/lang/String; � java/lang/Class
 getDeclaredMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 !" java/lang/reflect/Method setAccessible (Z)V
$%& invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;( java/lang/Exception
*+,-. org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
 (012 readSettings +(Ljava/util/Properties;Ljava/lang/String;)V
 456 getColumnModel &()Ljavax/swing/table/TableColumnModel; � �9:; 	getColumn "(I)Ljavax/swing/table/TableColumn;= Qorg/openide/explorer/view/OutlineView$OutlineViewOutline$OutlineViewOutlineColumn
<?@A postReadSettings ,(Ljava/util/Properties;ILjava/lang/String;)VC 1org/openide/explorer/view/TableQuickSearchSupportE Vorg/openide/explorer/view/OutlineView$OutlineViewOutline$DefaultQuickSearchTableFilter
DG +H f(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Lorg/openide/explorer/view/OutlineView$1;)V
BJ +K �(Ljavax/swing/JTable;Lorg/openide/explorer/view/QuickSearchTableFilter;Lorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings;)V
<MN � getRawColumnName
< �
<QRS getShortDescription &(Ljava/lang/String;)Ljava/lang/String;U OutlineViewOutline_NameAndDesc
 FW IX [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;Z ColumnsSelectorHint\ javax/swing/AbstractButton
[^_ � getText
abcde org/openide/awt/Mnemonics setLocalizedText 1(Ljavax/swing/AbstractButton;Ljava/lang/String;)Vg (org/openide/explorer/view/VisualizerNode
ijklm $org/openide/explorer/view/Visualizer findNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node;
 �opq getValueFromProperty &(Ljava/lang/Object;)Ljava/lang/Object;
ft org/openide/nodes/Node
s
 (wxy convertValueToString &(Ljava/lang/Object;)Ljava/lang/String;	 {| 0 isHScrollingEnabled	 ~� 
hScrollBar Ljavax/swing/JScrollBar;	 ��� tmScrollingListener NLorg/openide/explorer/view/OutlineView$OutlineViewOutline$TMScrollingListener;� Lorg/openide/explorer/view/OutlineView$OutlineViewOutline$TMScrollingListener
�G�� � getRowCount��� addTableModelListener )(Ljavax/swing/event/TableModelListener;)V��� addTreeModelListener ((Ljavax/swing/event/TreeModelListener;)V��� removeTableModelListener��� removeTreeModelListener	 ��� 
changeTask (Lorg/openide/util/RequestProcessor$Task;� !javax/swing/event/TableModelEvent
 ��� getModel  ()Ljavax/swing/table/TableModel;
 �
�� +� $(Ljavax/swing/table/TableModel;III)V
 ��� tableChanged &(Ljavax/swing/event/TableModelEvent;)V
����� java/util/Arrays copyOf ([II)[I
����� &org/openide/util/RequestProcessor$Task schedule (I)V
 ��� getVisibleRect ()Ljava/awt/Rectangle;� java/awt/Point	���� 4 java/awt/Rectangle y
�� + 

 ��� 
rowAtPoint (Ljava/awt/Point;)I
���� ] javax/swing/JScrollBar 	isVisible	��� 4 height
���� getSize ()Ljava/awt/Dimension;	��� java/awt/Dimension
 ��� getIntercellSpacing	��� 4 width
 (��� getCellRenderer )(II)Ljavax/swing/table/TableCellRenderer;
 ��� convertColumnIndexToModel (I)I� Torg/openide/explorer/view/OutlineView$OutlineViewOutline$TranslatedTableCellRenderer
�� +� �(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Ljavax/swing/table/TableCellRenderer;)V
 ��� 
getValueAt (II)Ljava/lang/Object;
 ���� getValueType ()Ljava/lang/Class;� java/lang/Boolean	���� TYPE Ljava/lang/Class;
 ���� toggleBooleanProperty $(Lorg/openide/nodes/Node$Property;)V
 ��� getCellRect (IIZ)Ljava/awt/Rectangle;	� 4 x	��
  repaint (IIII)V	 java/awt/event/MouseEvent
 javax/swing/SwingUtilities isLeftMouseButton (Ljava/awt/event/MouseEvent;)Z
  checkAt  (IILjava/awt/event/MouseEvent;)Z
 � getClickCount
s getPreferredAction ()Ljavax/swing/Action;
  "org/openide/explorer/view/TreeView 
takeAction C(Ljavax/swing/Action;[Lorg/openide/nodes/Node;)Ljavax/swing/Action;" �# javax/swing/Action% java/awt/event/ActionEvent'  
)* � getModifiers
$, +- )(Ljava/lang/Object;ILjava/lang/String;I)V"/01 actionPerformed (Ljava/awt/event/ActionEvent;)V
34 � getName
6789: java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;< Action 
 �> �? -(Ljava/lang/Object;)Ljava/lang/StringBuilder;A 	 on node C  is disabled
6EF " info
HI 
 translatePoint
KL � getX	�NOP TRUE Ljava/lang/Boolean;R suppressCustomEditor
 �TUV getValue &(Ljava/lang/String;)Ljava/lang/Object;
� �Y 0org/openide/explorer/propertysheet/PropertyPanel
X[ +�
X]^_ getPropertyEditor ()Ljava/beans/PropertyEditor;abcd ] java/beans/PropertyEditor supportsCustomEditor
X xg :org/openide/explorer/view/OutlineView$OutlineViewOutline$1
fi +j Q(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Ljava/awt/Rectangle;)V
lmn invokeLater (Ljava/lang/Runnable;)V
 (pqr 
editCellAt (IILjava/util/EventObject;)Z
 tuv getEditorComponent ()Ljava/awt/Component;
xyz{ ] java/awt/Component isFocusable
x}~ ] requestFocusInWindow
����� java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
���� getSystemEventQueue ()Ljava/awt/EventQueue;
����� java/awt/EventQueue 	postEvent (Ljava/awt/AWTEvent;)V
 (��� processComponentKeyEvent (Ljava/awt/event/KeyEvent;)V
<� +� >(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;I)V COLUMNS_SELECTOR_HINT ConstantValue COPY_ACTION_DELEGATE Z(Lorg/netbeans/swing/outline/OutlineModel;Lorg/openide/explorer/view/PropertiesRowModel;)V Code LineNumberTable LocalVariableTable 	ctrlSpace Ljavax/swing/KeyStroke; invokeCustomEditorAction Ljavax/swing/Action; this :Lorg/openide/explorer/view/OutlineView$OutlineViewOutline; mdl )Lorg/netbeans/swing/outline/OutlineModel; ctrlSpaceActionBind Ljava/lang/Object; StackMapTable MethodParameters map Ljavax/swing/InputMap; ks binding action am Ljavax/swing/ActionMap; name origProperty !Lorg/openide/nodes/Node$Property; column Ljavax/swing/table/TableColumn; 	nodesName origProperties "[Lorg/openide/nodes/Node$Property; newProperties foundOrigProperties columnIndex columnModel $Ljavax/swing/table/TableColumnModel; columns Ljava/util/List; cc LocalVariableTypeTable 1Ljava/util/List<Ljavax/swing/table/TableColumn;>;� #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; property props displayName outlineModel getAllColumnsMethod Ljava/lang/reflect/Method; ex Ljava/lang/Exception; etcm -Lorg/netbeans/swing/etable/ETableColumnModel; 	Signature `(Lorg/netbeans/swing/etable/ETableColumnModel;)Ljava/util/List<Ljavax/swing/table/TableColumn;>; ovoc SLorg/openide/explorer/view/OutlineView$OutlineViewOutline$OutlineViewOutlineColumn; i p Ljava/util/Properties; propertyPrefix 
numColumns quickSearchTableFilter 2Lorg/openide/explorer/view/QuickSearchTableFilter; getRowModel 0()Lorg/openide/explorer/view/PropertiesRowModel; transformValue c dn desc b Ljavax/swing/AbstractButton; value setTreeHScrollingEnabled (ZLjavax/swing/JScrollBar;)V setTreeWidthChangeTask +(Lorg/openide/util/RequestProcessor$Task;)V getTreePositionX setTreePositionX row getTreePreferredWidth r visibleRect Ljava/awt/Rectangle; r1 r2 setDefaultActionAllowed isDefaultActionAllowed result %Ljavax/swing/table/TableCellRenderer;� #javax/swing/table/TableCellRenderer a node Lorg/openide/nodes/Node; 
clickCount act panel 2Lorg/openide/explorer/propertysheet/PropertyPanel; ed Ljava/beans/PropertyEditor; me Ljava/awt/event/MouseEvent; e Ljava/util/EventObject; o res isTreeColumn Ljava/lang/SuppressWarnings; 	unchecked Ljava/awt/event/KeyEvent; editorComponent Ljava/awt/Component; createColumn 
modelIndex isTreeSortable setTreeSortable description 
access$000 o(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;)Lorg/openide/explorer/view/TableQuickSearchSupport; x0 
access$700 O(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Ljava/lang/String;)V x1 
access$800 �(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Lorg/openide/explorer/view/QuickSearchTableFilter;)Lorg/openide/explorer/view/TableQuickSearchSupport; access$1000 c(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Lorg/openide/explorer/ExplorerManager;)V access$1700 b(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;)Lorg/openide/explorer/ExplorerManager; access$2100 j(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;)Lorg/openide/explorer/view/PropertiesRowModel; access$2200 N(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;)Ljava/lang/String; access$2400 ?(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;II)V x2 access$2500 >(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;)[I access$2502 @(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;[I)[I 
SourceFile OutlineView.java InnerClasses OutlineViewOutline QuickSearchSettings InvokeCustomEditorAction CopyToClipboardAction Property PrototypeProperty OutlineViewOutlineColumn DefaultQuickSearchTableFilter3 'org/openide/explorer/view/OutlineView$1 TMScrollingListener6 !org/openide/util/RequestProcessor Task TranslatedTableCellRenderer: Norg/openide/explorer/view/OutlineView$OutlineViewOutline$TextAddedTransferable TextAddedTransferable= Oorg/openide/explorer/view/OutlineView$OutlineViewOutline$OutlineTransferHandler OutlineTransferHandler    (         �  �   Y �  �    �  / 0   | 0   �   ��    3 4        ��    7 0              ? @   (  +� �  ]     �*+� '*� -*� 1*� 5*� 8Y� :� =*,� *AC� E� K**� P� T**� P� T� X�  � `N�   �� `N*� P-� f:� %*� P-l� n� rY*� t:*� wl� {�   �   J   � � 
� � � � $� /� 8� A� G� R� \� g� l� w� �� ���   H  O ��  � ��    ���     ���    �    \ 3��  g (�� �    � R   �  � 	 a� 1 ��   	�      V W �  
     �*+�� �� �+�� ��� n+�� ��� n*+�� �� �+�� ��� n+�� ��� n� X� )*+C� �� �+X� ��� n+V� ��� n� ,*+C �� �� �+X �� ��� n+V �� ��� n�   �   :   � 
� �  � *� 5� @� F� Q� ]� l� y� �� ���       ���     ��� �    � l(�   �    � � �   �     5� �Y� ��� �,� �� �� �N*+,� �:� *� w-� {+,-� n�   �      � � � $� .� 4��   4    5��     5��    5��   �    �� �    � 4 �"�   	�  �    � � �   �     >*� wN+� 6-� 2*� �� ++,� f:� � 	-� �:� � �Y*� ���   �      � � � � ,  1 <�   >   !��  , ��    >��     >��    >��   9�� �    � $ | �E"� �   	�  �    � � �  !     �*+� �*� � �M+� �� +� �� �M,� +� � � �M,� � >� �*� �:*� � �:d� �:66,� � :		� � � n	� � � �:

� �� �:*� �:� � `6� ���� � �� ����� � �Y� �� S���d� *� �� *� � ܶ�   �   ~          " , 3 7 = F N Q T  r! |" �# �$ �% �& �( �) �* �+ �, �- �/ �0 �2�   z  | R�   � H��  r \�� 
 = ��   F ���  N ���  Q �� 4  T �� 4    ���     ���   ���  3 �� 4 �      ��� �   �  �� / 
  � � ��� �  � 4   � � ��� � � � � �     � � ��� � � � � �    � � ��� � � � � ��    � � ��� � � � � � ��  	  � � ���  �    � �  
�   �  �    �    � � �   �     >+� ;+N-�66� +-2:� �� �,� �� ������   �   "   = > ? !@ )A 3B 6> <F�   *   ��    >��     >��    >�  �    � �(� �   	�  �    � � �   j     *�	L+� +� � +� ��   �      N O P R�       ��    �� �    �  
 � � �   �     &���L+�+*� �#� ΰL+�)�     ' �      W X Y Z  [ $\�       ��    ��    &��  �    _'�   �  �   � 12 �   �     9*+,�/*�3�7 >6� "*�3�8 �<:+,�>���ޱ   �      b c d e )f 2d 8h�   >  ) 	��   %� 4    9��     9��    9�    )� 4 �   
 � � $�   	�  �  �    �    % & �   @     �BY*�DY*�F*� =�I�   �      k�       ��      �   B     �BY*+*� =�I�   �      o�       ��     �� �   �      �   >     *+� �   �   
   q r�       ��        �        �� �   /     *� �   �      u�       ��   �q �  .     q+�<� 3+�<M,�LN-� ,�O� �N,�P:� -�AT-�V�Y+� �� AY� E�+�[� +�[M,,�]�`,�+�f� +�h�+�n�   �   J   z { | } ~ � $� )� +� 7� A� J� Q� V� ^� `� g� l��   >   +��   &�   $ �   V 
��    q��     q�� �    � < ��  �� �   �  �    �   xy �   r     $+�f� +�f�r�+�s� +�s�u�*+�v�   �      � � � � ��       $��     $�� �    �   �  �    �    �� �   �     z*�z*,�}� C*��� g*��Y*����**�	�� �
� *�	*���� *�	*���� � .*��� '*�	*���� *�	*���� *��*� �   �   :   � � 
� � � "� 1� >� N� U� b� o� t� y��        z��     z| 0    z� �    � N*�   	|      �� �   >     *+���   �   
   � ��       ��     �� �   �    � � �   /     *� 1�   �      ��       ��    �� �   q     $*� 1� �*� 1*��Y*��*�������   �      � � 	� � #��       $��     $ 3 4 �    	�    3    	 
 �   �     9*�z� 4*� �� **� `��� *� .� *� O*��d���   �      � � � � (� /� 8��        9��     9� 4    9� 4 �    �   	�  �    � � �  ]     �*��L*��Y+���¶�=� �*�}�ș +Y��*�}�д�`��*��Y+��+��`�¶�>� 
*��d>*� �� *� �d>66� *� .� *� .6����*�״�h`6�   �   F   � � � � � &� 9� O� Z� c� k� n� w� �� �� �� ���   >  q !� 4    ���    ���   �� 4  O T� 4  n 5� 4 �    � ��  � �   �" �   >     *� 5�   �   
   � ��       ��      7 0 �    7    � ] �   /     *� 5�   �      ��       ��   �� �   �     '*��N*�z� *��6� ��Y**-��N-�   �      � � � � � %��   4   � 4    '��     '� 4    '� 4    �� �    � %��   	�  �  �    �   qr �  �    �*��:� ܙ H� �:��� ���� +��*��:*� ����Ͷ�66*�� � 6� �� �-�� �-��
� �*-��� �-��6� ��h:		� |*� 5� u	��sY	S�:

� ]
�! � "
�$Y	�&-��(�+�. �A�2�5� �Y� �;� �
�=@� �	�=B� �� ��D-�� �*��:-�:		*� 1�G	�J6

� �`d� �
� �`� q� ܙ i� d� �:�MQ�S�W� L�XY�Z:�\:� 5�` � +�el� �:� �fY*�h�k�. �*-�o�   �   � *  �     - 2 ; S U	 X
 [ j � � � � � � � � � � � � �($/'8(>)H*O+/�0�1�3�5�6�8�9�C�E�K�   �  ; ��   >��  � _�� 
 � ~�� 	 � �� 4 � �� � >�� � 7�� � Z�� 8 ��� > ��  	O � 4 
  ���    �� 4   �� 4   �  ��  X� 0  [�0 0  j~ 0 �   ) � - � �� '� @� +� bs"� 0� ��   �  �    �    �   �[ s �� �   �     (*�sM,� ,�w� ,�|W���+��� *+���   �      P Q S T "V 'X�        (��     (   #	
 �   	 � "x�     �    �   ; �   >     
�<Y*���   �      \�       
��     
 4 �     �    �     ] �   /     *� -�   �      `�       ��    " �   >     *� -�   �   
   d e�       ��      / 0 �    /    ! " �   >     *+� �   �   
   h i�       ��       �      �   /     *� #�   �      ��       �   �   :     *+� �   �      ��       �        �   :     *+� �   �      ��       �     �  �   :     *+� �   �      ��       �        �   /     *� �   �      ��       �   �   /     *� �   �      ��       �   �   /     *� �   �      ��       �   ! �   E     *� �   �      ��        �      4    " 4 #$ �   /     *� �   �      ��       �  %& �   ;     *+Z� �   �      ��       �        '   ()   z   A*  8B+  r ,  � -  �s.	 � A/ < 0  D 1 2      � 4 �57 � 8 f      9 ; 
< > 