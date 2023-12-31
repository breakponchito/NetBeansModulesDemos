����   4�
      /org/openide/explorer/view/TreeView$ExplorerTree repaintSelection ()V
  	 
   javax/swing/JTree processFocusEvent (Ljava/awt/event/FocusEvent;)V
     guardedDoLayout
     guardedValidateTree
     guardedPaint (Ljava/awt/Graphics;)V
     paint	     this$0 $Lorg/openide/explorer/view/TreeView;
     ! <init> (Ljavax/swing/tree/TreeModel;)V	  # $ % SEARCH_FIELD_SPACE I	  ' ( ) 
firstPaint Z + java/util/ArrayList
 * -   	  / 0 1 searchResults Ljava/util/List;	  3 4 ) 
registered	  6 7 % toggleClickCount
  9 : ; getInputMap ()Ljavax/swing/InputMap; = 	control C
 ? @ A B C javax/swing/KeyStroke getKeyStroke +(Ljava/lang/String;)Ljavax/swing/KeyStroke; E none
 G H I J K javax/swing/InputMap put ,(Ljavax/swing/KeyStroke;Ljava/lang/Object;)V M 	control V O 	control X Q COPY S PASTE U CUT
 W X Y Z [ org/openide/util/Utilities isMac ()Z ] java/awt/event/KeyEvent _ java/awt/event/InputEvent
 ? a B b (II)Ljavax/swing/KeyStroke;
  d e  setupSearch
 g h i j [ java/awt/GraphicsEnvironment 
isHeadless
  l m n setDragEnabled (Z)V
  p q  	addNotify
 s t u v w &org/openide/explorer/view/ViewTooltips register (Ljavax/swing/JComponent;)V
 y z { | w "org/openide/explorer/view/ViewUtil adjustBackground
  ~   removeNotify
 s � � w 
unregister
  � �  updateUI
 � � � � � javax/swing/BorderFactory createEmptyBorder ()Ljavax/swing/border/Border;
  � � � 	setBorder (Ljavax/swing/border/Border;)V
  � � � getTransferHandler ()Ljavax/swing/TransferHandler; � javax/swing/plaf/UIResource � 7org/openide/explorer/view/TreeView$DummyTransferHandler
 � �   � )(Lorg/openide/explorer/view/TreeView$1;)V
  � � � setTransferHandler  (Ljavax/swing/TransferHandler;)V
  � � � getFont ()Ljava/awt/Font;
 � � � � � java/awt/Graphics getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
 � � � � � java/awt/FontMetrics 	getHeight ()I
 � � � � � java/lang/Math max (II)I � nb.cellrenderer.fixedheight
 � � � � � java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
 � � � � � java/lang/Integer parseInt (Ljava/lang/String;)I � java/lang/Exception
  � � � getRowHeight
  � � � setRowHeight (I)V
  � �  
revalidate
  � �  repaint
  � � � getRowBounds (I)Ljava/awt/Rectangle;	 � � � � � "org/openide/explorer/view/TreeView LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level; � (No bounds for row {0} in three view: {1} � java/lang/Object
 � � � � valueOf (I)Ljava/lang/Integer;
 � � � � � java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V � java/awt/Rectangle
 � - � >org/openide/explorer/view/TreeView$ExplorerTree$GuardedActions
 � �   � G(Lorg/openide/explorer/view/TreeView$ExplorerTree;ILjava/lang/Object;)V
  � �  calcRowHeight
  � � � getBackground ()Ljava/awt/Color;
 �  setColor (Ljava/awt/Color;)V
  � getWidth
  �
 �	
 fillRect (IIII)V
  access$1301 G(Lorg/openide/explorer/view/TreeView$ExplorerTree;Ljava/awt/Graphics;)V java/lang/NullPointerException	 � � INFO Problems while painting
 � � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
   validateTree
   doLayout
  !" setFont (Ljava/awt/Font;)V
 �$%& access$1400 C(Lorg/openide/explorer/view/TreeView;)Lorg/openide/awt/QuickSearch;
()*+, org/openide/awt/QuickSearch processKeyEvent (Ljava/awt/event/KeyEvent;)V
 \./ [ 
isConsumed
 )
 234 getSelectionModel '()Ljavax/swing/tree/TreeSelectionModel;6789 � #javax/swing/tree/TreeSelectionModel getMinSelectionRow6;< � getMaxSelectionRow
  �	 �?@ % x	 �BC % y	 �EF % width	 �HI % height
 K �

 �MN � min
 �PQR access$1500 8(Lorg/openide/explorer/view/TreeView;)Ljava/lang/Object;
(TUV attach o(Ljavax/swing/JComponent;Ljava/lang/Object;Lorg/openide/awt/QuickSearch$Callback;)Lorg/openide/awt/QuickSearch;
 �XYZ access$1402 `(Lorg/openide/explorer/view/TreeView;Lorg/openide/awt/QuickSearch;)Lorg/openide/awt/QuickSearch;	 \]^ lastSearchText Ljava/lang/String;	 `a % currentSelectionIndexcdef  java/util/List clear	 hi^ 	maxPrefix
klmno java/lang/String toUpperCase ()Ljava/lang/String;
 qrs getSelectionPaths ()[Ljavax/swing/tree/TreePath;	 �uvw origSelectionPaths [Ljavax/swing/tree/TreePath;
kyz � length
 |}~ doSearch $(Ljava/lang/String;)Ljava/util/List;
 ��  displaySearchResult
 ��� getSelectionPath ()Ljavax/swing/tree/TreePath;
����� javax/swing/tree/TreePath getLastPathComponent ()Ljava/lang/Object;� javax/swing/tree/TreeNode
����� $org/openide/explorer/view/Visualizer findNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node;� org/openide/nodes/Node
 ���� performPreferredActionOnNodes ([Lorg/openide/nodes/Node;)V� java/util/HashSet
� -
 ��� getRowForPath (Ljavax/swing/tree/TreePath;)I
 �� � getRowCount
 ��� getNextSubstringMatch ](Ljava/lang/String;IZ)Lorg/openide/explorer/view/TreeView$ExplorerTree$SubstringSearchResult;	����� Eorg/openide/explorer/view/TreeView$ExplorerTree$SubstringSearchResult treePath Ljavax/swing/tree/TreePath;����� java/util/Set contains (Ljava/lang/Object;)Z	 ���� tree Ljavax/swing/JTree;
 �	��� % indexc��� add (ILjava/lang/Object;)Vc������ (org/openide/explorer/view/VisualizerNode
���o getDisplayName
(��� findMaxPrefix 9(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;� "java/lang/IllegalArgumentException� Substring is null
��  � (Ljava/lang/String;)V� java/lang/StringBuilder
� -� startingRow = 
���� append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
���� (I)Ljava/lang/StringBuilder;�  rowCount = 
���o toString
 ��� getPathForRow (I)Ljavax/swing/tree/TreePath;
 ��� isRowSelected (I)Z
 ��� 
isExpanded
 ��� convertValueToText +(Ljava/lang/Object;ZZZIZ)Ljava/lang/String;
k�� � indexOf
��  � P(Lorg/openide/explorer/view/TreeView$ExplorerTree;Ljavax/swing/tree/TreePath;I)Vc�� � sizec��� get (I)Ljava/lang/Object;
  setSelectionPath (Ljavax/swing/tree/TreePath;)V
  scrollPathToVisible
k	 [ isEmpty
  setSelectionPaths ([Ljavax/swing/tree/TreePath;)V
   clearSelection
  
getSupport /()Lorg/openide/explorer/view/AutoscrollSupport;
 +org/openide/explorer/view/AutoscrollSupport 
autoscroll (Ljava/awt/Point;)V
 getAutoscrollInsets ()Ljava/awt/Insets;	  !" support -Lorg/openide/explorer/view/AutoscrollSupport;$ java/awt/Insets
#&  

(  ) ((Ljava/awt/Component;Ljava/awt/Insets;)V
+,-./ java/awt/event/MouseEvent getPoint ()Ljava/awt/Point;	1?2 java/awt/Point	1B
 56 � getRowForLocation
�89o getShortDescription
k;<� equals> <org/openide/explorer/view/TreeView$ExplorerTree$ModelHandler
=@  A 4(Lorg/openide/explorer/view/TreeView$ExplorerTree;)V	 CDE accessibleContext 'Ljavax/accessibility/AccessibleContext;G Forg/openide/explorer/view/TreeView$ExplorerTree$AccessibleExplorerTree
F@J java/awt/dnd/AutoscrollL $org/openide/awt/QuickSearch$Callback 	Signature -Ljava/util/List<Ljavax/swing/tree/TreePath;>; C(Lorg/openide/explorer/view/TreeView;Ljavax/swing/tree/TreeModel;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/explorer/view/TreeView$ExplorerTree; model Ljavax/swing/tree/TreeModel; StackMapTableY javax/swing/tree/TreeModel MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; g Ljava/awt/Graphics; s row r Ljava/awt/Rectangle; Ljava/lang/SuppressWarnings; value ResultOfObjectAllocationIgnored ex  Ljava/lang/NullPointerException; f Ljava/awt/Font; fe Ljava/awt/event/FocusEvent; e Ljava/awt/event/KeyEvent; top bottom first last quickSearchUpdate 
searchText text showNextSelection forward prefix quickSearchConfirmed selectedTNode Ljavax/swing/tree/TreeNode; selectedNode Lorg/openide/nodes/Node; selectedTPath quickSearchCanceled elementName isPrefixMatch substringSearchResult GLorg/openide/explorer/view/TreeView$ExplorerTree$SubstringSearchResult; path results resSet Ljava/util/Set; startOfSubstringMatches 
startIndex LocalVariableTypeTable ,Ljava/util/Set<Ljavax/swing/tree/TreePath;>; A(Ljava/lang/String;)Ljava/util/List<Ljavax/swing/tree/TreePath;>; 	substring startingRow 	increment sz 	cursorLoc Ljava/awt/Point; getToolTipText /(Ljava/awt/event/MouseEvent;)Ljava/lang/String; v *Lorg/openide/explorer/view/VisualizerNode; tooltip displayName p selRow event Ljava/awt/event/MouseEvent; createTreeModelListener '()Ljavax/swing/event/TreeModelListener; getAccessibleContext )()Ljavax/accessibility/AccessibleContext; x0 x1 access$1600 access$1700 access$1800 access$1901 O(Lorg/openide/explorer/view/TreeView$ExplorerTree;Ljava/awt/event/FocusEvent;)V access$2000 
SourceFile TreeView.java InnerClasses ExplorerTree DummyTransferHandler� $org/openide/explorer/view/TreeView$1 GuardedActions Callback SubstringSearchResult ModelHandler AccessibleExplorerTree 0   IK 	  !"   i^     $ %    ( )    0 1 M   N a %   ]^    4 )       %    O P  ]     �*+� *,� *� "*� &*� *Y� ,� .*� 2*� 5*� 8<� >D� F*� 8L� >D� F*� 8N� >D� F*� 8P� >D� F*� 8R� >D� F*� 8T� >D� F� V� 0*� 8C� `D� F*� 8X� `D� F*� 8V� `D� F*� c� f� *� k�   Q   V   � � 
� � � � $� )� 7� E� S� a� o� }� �� �� �� �� �� �� ��R       �ST     �UV W    � �   �X  Z   	 U    q  P   `     *� o*� 2� *� r*� 2*� x�   Q      � � � � � �R       ST  W    [    \      P   X     *� }*� 2� *� �*� 2�   Q      � � � � �R       ST  W    [    \    �  P   e     "*� �*� �� �*� �� �� *� �Y� �� ��   Q      � � � � !�R       "ST  W    ![    \    �  P   �     @+*� �� �� �`� �=�� �N-� -� �=� :*� �� *� ȧ *� �*� ϱ   " % � Q   .       " %	 ' / 7 ; ?R   *    @ST     @]^   -I %   '_^ W    � %   �k  �Z   ]    � � P   �     .*� �M,� %� ֲ ��� �Y� �SY*S� � �Y� �,�   Q        
 $ ,R        .ST     .` %   (ab W    � , �Z   `  [    \      P   D     � �Y*+� �W�   Q   
   ' (R       ST     ]^ Z   ] [    \  c d[ se   P   :     � �Y*� �W�   Q   
   - .R       ST  [    \  c d[ se   P   :     � �Y*� �W�   Q   
   3 4R       ST  [    \  c d[ se    P   �     ?*� &� $*� &*+� �+*� �� �+*�*���*+�� M� ֲ,��  ( - 0 Q   .   7 8 9 = > '@ (D -I 0E 1H >JR      1 fg    ?ST     ?]^ W    (GZ   ]      P   3     *��   Q   
   M NR       ST      P   3     *��   Q   
   Q RR       ST   !" P   \     +*� �� *� &*+��   Q      V W X ZR       ST     hi W    Z   h  [    \      P   D     � �Y*+� �W�   Q   
   _ `R       ST     jk Z   j  [    \  c d[ se +, P   a     *� �#+�'+�-� *+�0�   Q      d e f hR       ST     lm W    Z   l  [    \      P  �     �*�1�5 <*�1�: =� �� )*�=N-� *� ϱ*-�>-�A-�D-�G�J� w*�=N*�=:-� � *� ϱ� �Y� �:-�>�>�L�>-�A�A*��D�A�G`-�Ad�G*�>�A�D�G�J�   Q   Z   k 
l n o p $q (r ,s -u Av Dw Jx Qy Zz ^{ _} h~ y �� �� �� ��R   H  $ ab  J nnb  Q gob  h Pab    �ST   
 �p %   �q % W    � - �� �  � �� X  e  P   F     *� *� *� �O*�S�WW�   Q   
   � �R       ST   r� P   �     Z*+�[*�_*� .�b *�g+�jM*� *�p�t*� �t� *� �t�� *� �t,�x� **,�{� .*��   Q   2   � � 
� � � � (� =� E� L� U� Y�R        ZST     Zs^   =t^ W   	 � EkZ   s  [    \   u n P   n      � *Y�_`�_� *Y�_d�_*��   Q      � � � � �R        ST      v ) W    	Z   v  [    \   � � P   9     *�g�   Q      �R       ST     w^ Z   w  [    \   x  P   �     8*��L+� +����M,��N��Y-S��*� �t*� .�b *�[�   Q   & 	  � � 	� � � !� )� 2� 7�R   *   yz   {|    8ST    3}� W    � !�[    \   ~  P   M     *� �t*� .�b *�[�   Q      � � � �R       ST  [    \   }~ P  *     � *Y� ,M��Y��N6*� �t� **� �t2��� �� 6*��6� ,�p6*+��:� ��� :� -�� � t*� ����66	��� ,��� � 6	,�� W-�� W	� +���ö�:
*�g� 	*
�g**�g
�ȵg���a,�   Q   j   � � � � 4� :� ?� A� H� R� b� r� �� �� �� �� �� �� �� �� �� �� �� �� �� ��R   p  � ^ 
 � ]� ) 	 R ���  b ~��    �ST     �w^   �� 1   ���   �� %  4 �� %  : �� % �      ��N   ��� W   1 
� 1c�@� � �@�� :�� 'k� � Z   w  M   � �� P  �  
   �*��6+� ��Yηп� 	� *��Y��Y��ֶ���߶��ܶ�п+�jL� � 66*��:*��*��*����:�j+��6		� ��Y*	���``p6����   Q   N   	 
 
   F K V Y a d p w | � � �  �! �"R   f 
 a E��  | *t^  � � % 	   �ST     ��^    �� %    �v )   � � %  V X� %  Y U` % W    � 	&@� � ?�kZ   �  �  v   �  P       ~*� .�� <� ?*�_� *d�_� *�_� *�_*� .*�_�� ��M*,� *,�� 6*�[�� (*� �t� **� �t�
**� �t2�� *��   Q   >   & 
( ) * + ', ,/ =0 B1 G2 J3 ^4 i5 y7 }:R      = 
��    ~ST   
 t� % W   
 � .  P   A     	*�+��   Q   
   ? @R       	ST     	�� Z   �  [    \    P   2     *���   Q      HR       ST  [    \     P   b 
    '*�� *�Y*�#Y

�%�'�*��   Q      M N "QR       'ST  W    " �� P   �     N+� K+�*M*,�0,�3�4>� 4*��:����:�7:��:� �:� ��   Q   .   V W 	X Z [ "\ ,] 3^ :` Ia LfR   R  " *��  ,  ��  3 �^  : �^  	 C��   6� %    NST     N�� W    � LZ   �  [    \   �� P   3     	�=Y*�?�   Q      kR       	ST  [    \   �� P   S     *�B� *�FY*�H�B*�B�   Q      p q tR       ST  W    [    \   P   :     *+� �   Q      �R       �T     �^ � P   :     *+� �   Q      �R       �T     �^ �A P   /     *� �   Q      �R       �T  �A P   /     *� �   Q      �R       �T  �� P   :     *+� �   Q      �R       �T     �k �A P   /     *� �   Q      �R       �T   �   ��   B   ��  � �� 
�       � � K(�	� � = � F � 