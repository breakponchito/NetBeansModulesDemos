����   4R
      )org/openide/explorer/view/ListView$NbList doSearch $(Ljava/lang/String;)Ljava/util/List;	   	 
 	maxPrefix Ljava/lang/String;
     displaySearchField ()V	     searchTextField Ljavax/swing/JTextField;
      javax/swing/JList processKeyBinding 5(Ljavax/swing/KeyStroke;Ljava/awt/event/KeyEvent;IZ)Z
     getSelectedValues ()[Ljava/lang/Object;
      locationToIndex (Ljava/awt/Point;)I
  " # $ indexToLocation (I)Ljava/awt/Point;
  & ' ( getPreferredSize ()Ljava/awt/Dimension;
  * + , processEvent (Ljava/awt/AWTEvent;)V
  . /  repaintSelection
  1 2  validateTree
  4 5 6 paint (Ljava/awt/Graphics;)V
  8 9  removeSearchField	  ; < = this$0 $Lorg/openide/explorer/view/ListView;
  ? @  <init>	  B C D SEARCH_FIELD_PREFERRED_SIZE I	  F G D SEARCH_FIELD_SPACE I +org/openide/explorer/view/ListView$NbList$1
 H K @ L .(Lorg/openide/explorer/view/ListView$NbList;)V
 N & O javax/swing/JTextField	 Q R S T D java/awt/Dimension height	  V W D heightOfTextField	  Y Z [ searchpanel Ljavax/swing/JPanel;
  ] ^ _ getInputMap ()Ljavax/swing/InputMap; a 	control C
 c d e f g javax/swing/KeyStroke getKeyStroke +(Ljava/lang/String;)Ljavax/swing/KeyStroke; i none
 k l m n o javax/swing/InputMap put ,(Ljavax/swing/KeyStroke;Ljava/lang/Object;)V q 	control V s 	control X
  u v  setupSearch
  x y  	addNotify
 { | } ~  &org/openide/explorer/view/ViewTooltips register (Ljavax/swing/JComponent;)V
  � �  removeNotify
 { � �  
unregister
  � � � processFocusEvent (Ljava/awt/event/FocusEvent;)V � 8org/openide/explorer/view/ListView$NbList$GuardedActions
 � � @ � A(Lorg/openide/explorer/view/ListView$NbList;ILjava/lang/Object;)V	 � � � � ret Ljava/lang/Object;
 � � � � � java/lang/Integer valueOf (I)Ljava/lang/Integer; � java/awt/Point
 � � � � intValue ()I � [Ljava/lang/Object;	 � � � � � org/openide/nodes/Children MUTEX Lorg/openide/util/Mutex;
 � � � � � org/openide/util/Mutex isReadAccess ()Z
 � � � � isWriteAccess
  � � � getSelectedIndices ()[I
  � � � getCellBounds (II)Ljava/awt/Rectangle;	 � � � � D java/awt/Rectangle x	 � � � D y	 � � � D width	 � R
  � � � repaint (IIII)V � java/lang/String
 � � � � � java/awt/event/MouseEvent getPoint ()Ljava/awt/Point;
  	 � � � � � "org/openide/explorer/view/ListView model )Lorg/openide/explorer/view/NodeListModel;
 � � � � � 'org/openide/explorer/view/NodeListModel getElementAt (I)Ljava/lang/Object; � (org/openide/explorer/view/VisualizerNode
 � � � � getShortDescription ()Ljava/lang/String;
 � � � � getDisplayName
 � � � � equals (Ljava/lang/Object;)Z
  � � � 
getSupport /()Lorg/openide/explorer/view/AutoscrollSupport;
 � � � � � +org/openide/explorer/view/AutoscrollSupport 
autoscroll (Ljava/awt/Point;)V
 � � � � getAutoscrollInsets ()Ljava/awt/Insets;	  � � � support -Lorg/openide/explorer/view/AutoscrollSupport; � java/awt/Insets
 � � @ �
 � @ ((Ljava/awt/Component;Ljava/awt/Insets;)V	  accessibleContext 'Ljavax/accessibility/AccessibleContext; @org/openide/explorer/view/ListView$NbList$AccessibleExplorerList
 K java/awt/event/KeyListener
  getListeners -(Ljava/lang/Class;)[Ljava/util/EventListener; [Ljava/awt/event/KeyListener;
  removeKeyListener (Ljava/awt/event/KeyListener;)V +org/openide/explorer/view/ListView$NbList$2
 K
  addKeyListener =org/openide/explorer/view/ListView$NbList$SearchFieldListener
 K
 N
 N!"# addFocusListener !(Ljava/awt/event/FocusListener;)V
 N%&' getDocument ()Ljavax/swing/text/Document;)*+,- javax/swing/text/Document addDocumentListener '(Ljavax/swing/event/DocumentListener;)V/ java/util/ArrayList
. ?
 23 � getSelectedIndex
 567 getModel ()Ljavax/swing/ListModel;9:;< � javax/swing/ListModel getSize	>?@AB javax/swing/text/Position$Bias Forward  Ljavax/swing/text/Position$Bias;
 DEF getNextMatch 6(Ljava/lang/String;ILjavax/swing/text/Position$Bias;)I
 �H @I (I)VKLMN � java/util/List containsKPQ � add9 �
TUVW � java/lang/Object toString
 YZ[ findMaxPrefix 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 �]^_ regionMatches (ZILjava/lang/String;II)Z
 �abc 	substring (II)Ljava/lang/String;e javax/swing/JPanel
d ?h javax/swing/JLabelj "org/openide/explorer/view/TreeViewl LBL_QUICKSEARCH
nopqr org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
gt @u (Ljava/lang/String;)Vw java/awt/BorderLayout
vy @z (II)V
d|}~ 	setLayout (Ljava/awt/LayoutManager;)V� West
d�Q� )(Ljava/awt/Component;Ljava/lang/Object;)V� Center
g��� setLabelFor (Ljava/awt/Component;)V
����� javax/swing/BorderFactory createRaisedBevelBorder ()Ljavax/swing/border/Border;
d��� 	setBorder (Ljavax/swing/border/Border;)V
 N�� � isDisplayable
 ���� getViewport ()Ljavax/swing/JViewport;
���� � javax/swing/JViewport getScrollMode	 �� D originalScrollMode
���I setScrollMode
 ��  prepareSearchPanel
 �Q� *(Ljava/awt/Component;)Ljava/awt/Component;
 ��  
revalidate
 � � � +org/openide/explorer/view/ListView$NbList$3
� K
����� javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V
 ��  doLayout
d�
 ��� getVisibleRect ()Ljava/awt/Rectangle;
����� java/lang/Math min (II)I
d�� � 	getInsets	 ��� D top	 ��� D bottom
���� max
d�� � 	setBounds
 ��� remove
d��� 	getBounds
 � �� (Ljava/awt/Rectangle;)V
 ��  requestFocus� java/awt/dnd/Autoscroll serialVersionUID J ConstantValue��u'j�3 '(Lorg/openide/explorer/view/ListView;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/explorer/view/ListView$NbList; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; fe Ljava/awt/event/FocusEvent; g Ljava/awt/Graphics; index location Ljava/awt/Point; r Ljava/awt/Rectangle; i idx [I StackMapTable� getToolTipText /(Ljava/awt/event/MouseEvent;)Ljava/lang/String; event Ljava/awt/event/MouseEvent; getToolTipTextImpl v *Lorg/openide/explorer/view/VisualizerNode; tooltip displayName p row 	cursorLoc getAccessibleContext )()Ljavax/accessibility/AccessibleContext; keyListeners searchFieldListener ?Lorg/openide/explorer/view/ListView$NbList$SearchFieldListener; elementName prefix results Ljava/util/List; 
startIndex size LocalVariableTypeTable %Ljava/util/List<Ljava/lang/Integer;>; 	Signature 9(Ljava/lang/String;)Ljava/util/List<Ljava/lang/Integer;>; str1 str2 res lbl Ljavax/swing/JLabel; viewport Ljavax/swing/JViewport; doLayoutImpl visibleRect 
access$600 x0 
access$701 A(Lorg/openide/explorer/view/ListView$NbList;Ljava/awt/Graphics;)V x1 
access$801 
access$900 access$1001 A(Lorg/openide/explorer/view/ListView$NbList;Ljava/awt/AWTEvent;)V Ljava/awt/AWTEvent; access$1101 A(Lorg/openide/explorer/view/ListView$NbList;)Ljava/awt/Dimension; access$1201 >(Lorg/openide/explorer/view/ListView$NbList;I)Ljava/awt/Point; access$1301 >(Lorg/openide/explorer/view/ListView$NbList;Ljava/awt/Point;)I access$1401 @(Lorg/openide/explorer/view/ListView$NbList;)[Ljava/lang/Object; access$1501 `(Lorg/openide/explorer/view/ListView$NbList;Ljavax/swing/KeyStroke;Ljava/awt/event/KeyEvent;IZ)Z Ljavax/swing/KeyStroke; x2 Ljava/awt/event/KeyEvent; x3 x4 Z access$1600 E(Lorg/openide/explorer/view/ListView$NbList;)Ljavax/swing/JTextField; access$1700 access$1800 ?(Lorg/openide/explorer/view/ListView$NbList;)Ljava/lang/String; access$1802 Q(Lorg/openide/explorer/view/ListView$NbList;Ljava/lang/String;)Ljava/lang/String; access$1900 O(Lorg/openide/explorer/view/ListView$NbList;Ljava/lang/String;)Ljava/util/List; 
SourceFile ListView.java InnerClasses NbList GuardedActions AccessibleExplorerList SearchFieldListenerP javax/swing/text/Position Bias 0   � 
 �� �   �   � �     C D     G D    	 
         W D   � D    Z [   < =   (   @� �   �     c*+� :*� >* �� A*� E*� HY*� J� **� � M� P� U*� X*� \`� bh� j*� \p� bh� j*� \r� bh� j*� t�   �   2   6 7 	   !2 /4 4> B? P@ ^A bB�       c��     c < = �    <�  y  �   ;     	*� w*� z�   �      F G H�       	��  �    �    �  �   ;     	*� �*� ��   �      L M N�       	��  �    �    � � �   F     
*+� �*� -�   �      R S 	T�       
��     
�� �   �  �    �    5 6 �   D     � �Y*+� �W�   �   
   � ��       ��     �� �   �  �    �    2  �   :     � �Y*� �W�   �   
   � ��       ��  �    �    ' ( �   ;     � �Y*� �� �� Q�   �      ��       ��  �    �    # $ �   I     � �Y*� �� �� �� ��   �      ��       ��     � D �   �  �    �       �   I     � �Y*+� �� �� �� ��   �      ��       ��     �� �   �  �    �      �   <     � �Y*	� �� �� ��   �      ��       ��  �    �    /  �   �     Y� �� �� � �� �� >*� �L+�� �=+�� (*+.+.� �N*-� �-� �-� �-� ö Ą��ا � �Y*� �W�   �   .   � � � � � %� 0� D� J� M� X��   *  0 ��   +� D   3��    Y��  �    � 
 � � *
  �   F     � �Y*+� �� �� Ȱ   �      ��       ��      �     �    �    �   �     E+� B+� �M*,� �>� 3*� :� �� �� �:� �:� �:� � � ��   �   * 
  � � 	� � � #� *� 1� @� C��   H  #    *  
  1 	 
  	 :
�   4 D    E��     E �    � C�       � � �   A     	*� �+� �   �   
   � ��       	��     	� �       � � �   2     *� � ��   �      ��       ��     � � �   b 
    '*� �� *� �Y*� �Y

� �� � �*� ��   �      � � "��       '��  �    "  �   S     *�� *�Y*�	�*��   �      � � ��       ��  �    �    �    v  �   �     S*
��L=+�� *+2�����*�Y*���Y*�M*� ,�*� ,� *� �$,�( �   �   * 
        ,! 5" =# E$ R%�   *   � D    S��    H  5  �    � �     �  Q     ��.Y�0M*�1� � *�1>*�4�8 6� ,�p>*+�=�C>� O,� �Y�G�J � >,� ��O W*�4�R �S:*� � 	*� ***� �X� ����,�   �   >   ( + , $- +0 01 :3 P4 [6 j9 q: w= �@ �A �F�   >  j  
    ���     � 
   �   t D  $ i D       � �    � KC� � K �� �         Z[ �   �     "N6+,�\� +�`N����-�   �      J L M L  P�   4   � D    "��     " 
    " 
     
 �    �  �� �   	     �  �   �     _*� X� Z*�dY�f� X�gYik�m�sL*� X�vY�x�{*� X+��*� X*� ���+*� ��*� X�����   �   & 	  T U W #X 3Y >Z L[ T\ ^^�     # ;     _��  �    � ^    �   �     L*�4�8 � B*� ��� 8*� :��L*+����+��*��**� X��W*��*����Y*�����   �   * 
  d e f &g +j /k 8l <m @p Kx�      -!"    L��  �    � K �  �   :     � �Y*� �W�   �   
   | }�       ��  �    �   #  �   �     ~*��*� X� u*� X��� k*��L+� �*� Ehd*� A*� Ed��=*� U*� X�ȴ�`*� X�ȴ�`>*� X*� E+� �+� �`d��+� �*� E`+� ���*� Ed�Ա   �   * 
  � � � � 2� M� `� q� z� }��   *   c$�  2 K � D  M 0 T D    ~��  �    � }  9  �   ~     7*� X� 2*� X��� (**� X��*� :��*����**� X�ڶ�*��   �      � � � '� 2� 6��       7��  �    6% L �   /     *� 7�   �      �       &�  '( �   :     *+� 3�   �      �       &�     )� * L �   /     *� 0�   �      �       &�  + L �   /     *� -�   �      �       &�  ,- �   :     *+� )�   �      �       &�     ). /0 �   /     *� %�   �      �       &�  12 �   :     *� !�   �      �       &�     ) D 34 �   :     *+� �   �      �       &�     )� 56 �   /     *� �   �      �       &�  78 �   \     
*+,� �   �      �   4    
&�     
)9    
:;    
< D    
=> ?@ �   /     *� �   �      �       &�  A L �   /     *� �   �      �       &�  BC �   /     *� �   �      �       &�  DE �   ;     *+Z� �   �      �       &�     ) 
 FG �   :     *+� �   �      �       &�     ) 
  H   IJ   B   �K  H       � L  M        N >OQ �      