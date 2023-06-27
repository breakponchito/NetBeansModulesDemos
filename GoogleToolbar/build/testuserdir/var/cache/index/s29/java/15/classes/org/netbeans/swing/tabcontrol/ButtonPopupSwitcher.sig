����   4*  java/awt/AWTEvent	      1org/netbeans/swing/tabcontrol/ButtonPopupSwitcher 	displayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;
  
   hideCurrentPopup ()V
     <init> 1(Lorg/netbeans/swing/tabcontrol/TabDisplayer;II)V
     doSelect (Ljavax/swing/JComponent;)V	     currentSwitcher 3Lorg/netbeans/swing/tabcontrol/ButtonPopupSwitcher;
      java/lang/Object	      invokingComponent Ljava/awt/Component;��������	  $ % & invocationTime J	  ( ) * 
isDragging Z
  , - . createSwitcherItems i(Lorg/netbeans/swing/tabcontrol/TabDisplayer;)[Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable$Item;
 0 1 2 3 4 java/util/Arrays sort ([Ljava/lang/Object;)V 6 3org/netbeans/swing/tabcontrol/DocumentSwitcherTable
 5 8  9 e(Lorg/netbeans/swing/tabcontrol/TabDisplayer;[Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;I)V	  ; < = pTable 5Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable;	  ? @ A x I	  C D A y
 F G H I J java/awt/Component addMouseListener !(Ljava/awt/event/MouseListener;)V
 F L M N addMouseMotionListener '(Ljava/awt/event/MouseMotionListener;)V
 5 G
 5 L
 5 R S T getSelectionModel "()Ljavax/swing/ListSelectionModel; V W X Y Z javax/swing/ListSelectionModel addListSelectionListener ,(Ljavax/swing/event/ListSelectionListener;)V
 \ ] ^ _ ` *org/netbeans/swing/tabcontrol/TabDisplayer getModel .()Lorg/netbeans/swing/tabcontrol/TabDataModel; b c d e f *org/netbeans/swing/tabcontrol/TabDataModel addComplexListDataListener @(Lorg/netbeans/swing/tabcontrol/event/ComplexListDataListener;)V
 h i j k l java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;       H
 h p q r addAWTEventListener %(Ljava/awt/event/AWTEventListener;J)V t javax/swing/JPopupMenu
 s 	  w x y popup Ljavax/swing/JPopupMenu;
 s { | } setBorderPainted (Z)V
  � � � � javax/swing/BorderFactory createEmptyBorder ()Ljavax/swing/border/Border;
 s � � � 	setBorder (Ljavax/swing/border/Border;)V
 s � � � add *(Ljava/awt/Component;)Ljava/awt/Component;
 s � �  pack
 5 � � � getPreferredSize ()Ljava/awt/Dimension;
 � � � � � java/awt/Dimension getWidth ()D
 s � � � setLocation (II)V
 s � � � 
setInvoker (Ljava/awt/Component;)V
 s � � � addPopupMenuListener ((Ljavax/swing/event/PopupMenuListener;)V
 s � � } 
setVisible	  � � * shown
 � � � � � java/lang/System currentTimeMillis ()J
  � � � isShown ()Z
 5 � � J removeMouseListener
 5 � � N removeMouseMotionListener V � � Z removeListSelectionListener b � � f removeComplexListDataListener
 h � � � removeAWTEventListener $(Ljava/awt/event/AWTEventListener;)V
 F �
 F �
 s � � � removePopupMenuListener � 3org/netbeans/swing/tabcontrol/ButtonPopupSwitcher$1
 � �  � N(Lorg/netbeans/swing/tabcontrol/ButtonPopupSwitcher;Ljavax/swing/JPopupMenu;)V
 � � � � � javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V
 5 � � � getSelectedItem 6()Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;
 � � � � � org/openide/awt/StatusDisplayer 
getDefault #()Lorg/openide/awt/StatusDisplayer;
 � � � � � 2org/netbeans/swing/popupswitcher/SwitcherTableItem getDescription ()Ljava/lang/String;
 � � � � setStatusText (Ljava/lang/String;)V
 � � � �  java/awt/event/MouseEvent consume
  � � � changeSelection (Ljava/awt/event/MouseEvent;)V
 5 � � � onMouseEvent (Ljava/awt/event/MouseEvent;)Z b � � � size ()I
 � � � � 	getSource ()Ljava/lang/Object;      �
  � mouseClicked
 � getPoint ()Ljava/awt/Point;
 �	
 convertPoint J(Ljava/awt/Component;Ljava/awt/Point;Ljava/awt/Component;)Ljava/awt/Point;
 5 contains (Ljava/awt/Point;)Z
 �  activate
  � mouseDragged
 5  clearSelection
 5 
rowAtPoint (Ljava/awt/Point;)I
 5 columnAtPoint
 5  �! (IIZZ)V
  �$ java/awt/event/KeyEvent
 &' � getID
 ) �* (Ljava/awt/event/KeyEvent;)Z
# �- java/awt/event/WindowEvent
,&
01234 java/awt/KeyboardFocusManager getCurrentKeyboardFocusManager !()Ljava/awt/KeyboardFocusManager;
0678 getActiveWindow ()Ljava/awt/Window;
 :;  	hidePopup
#=> � 
getKeyCode
 5@A � getSelectedRow
 5CD � getSelectedColumn
 5FG � getColumnCount
 5IJ � getRowCount
 5L _M  ()Ljavax/swing/table/TableModel;OPQRS javax/swing/table/TableModel 
getValueAt (II)Ljava/lang/Object;U 8org/netbeans/swing/tabcontrol/DocumentSwitcherTable$Item
 5WXY 
isClosable =(Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable$Item;)Z
T[\] 
getTabData )()Lorg/netbeans/swing/tabcontrol/TabData; b_`a indexOf *(Lorg/netbeans/swing/tabcontrol/TabData;)Ic 3org/netbeans/swing/tabcontrol/ButtonPopupSwitcher$2
be f 6(Lorg/netbeans/swing/tabcontrol/ButtonPopupSwitcher;)Vh 2org/netbeans/swing/tabcontrol/event/TabActionEventj close
gl m ((Ljava/lang/Object;Ljava/lang/String;I)V
 \opq postActionEvent 7(Lorg/netbeans/swing/tabcontrol/event/TabActionEvent;)VOI
tuvwx java/lang/Math min (II)IOF
 5{|} setSwitcherItems 9([Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;I)V
 �  changed b��� getTabs ()Ljava/util/List;� �� java/util/List
 \� S� $()Ljavax/swing/SingleSelectionModel;���� �  javax/swing/SingleSelectionModel getSelectedIndex b��� getTab *(I)Lorg/netbeans/swing/tabcontrol/TabData;���� iterator ()Ljava/util/Iterator;���� � java/util/Iterator hasNext��� � next� %org/netbeans/swing/tabcontrol/TabData
���� getComponent ()Ljava/awt/Component;�  org/openide/windows/TopComponent
��� � getDisplayName
��� � getName
��� � getHtmlDisplayName
��� � getText� @org/netbeans/swing/tabcontrol/ButtonPopupSwitcher$ActivatableTab
�� � �(Lorg/netbeans/swing/tabcontrol/ButtonPopupSwitcher;Lorg/netbeans/swing/tabcontrol/TabData;Lorg/netbeans/swing/tabcontrol/ButtonPopupSwitcher$1;)V
T� � �(Lorg/netbeans/swing/popupswitcher/SwitcherTableItem$Activatable;Ljava/lang/String;Ljava/lang/String;Lorg/netbeans/swing/tabcontrol/TabData;Z)V� $javax/swing/event/MouseInputListener� java/awt/event/AWTEventListener� 'javax/swing/event/ListSelectionListener� ;org/netbeans/swing/tabcontrol/event/ComplexListDataListener� #javax/swing/event/PopupMenuListener AWT_EVENT_MASK ConstantValue 	showPopup I(Ljavax/swing/JComponent;Lorg/netbeans/swing/tabcontrol/TabDisplayer;II)V Code LineNumberTable LocalVariableTable owner Ljavax/swing/JComponent; switcher MethodParameters this items ;[Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable$Item; 	locationX 	locationY StackMapTable popupToHide valueChanged )(Ljavax/swing/event/ListSelectionEvent;)V e &Ljavax/swing/event/ListSelectionEvent; item 4Lorg/netbeans/swing/popupswitcher/SwitcherTableItem; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
mouseMoved Ljava/awt/event/MouseEvent; mousePressed tabCount mouseReleased time p Ljava/awt/Point;� java/awt/Point mouseEntered mouseExited row col onSwitcherTable eventDispatched (Ljava/awt/AWTEvent;)V we Ljava/awt/event/WindowEvent; event Ljava/awt/AWTEvent; evt 4Lorg/netbeans/swing/tabcontrol/event/TabActionEvent; tab 'Lorg/netbeans/swing/tabcontrol/TabData; tabIndex :Lorg/netbeans/swing/tabcontrol/DocumentSwitcherTable$Item; Ljava/awt/event/KeyEvent; key selRow selCol switched� indicesAdded =(Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent;)V :Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent; indicesRemoved indicesChanged intervalAdded $(Ljavax/swing/event/ListDataEvent;)V !Ljavax/swing/event/ListDataEvent; intervalRemoved contentsChanged popupMenuWillBecomeVisible %(Ljavax/swing/event/PopupMenuEvent;)V "Ljavax/swing/event/PopupMenuEvent; popupMenuWillBecomeInvisible popupMenuCanceled tabTC "Lorg/openide/windows/TopComponent; name Ljava/lang/String; htmlName tabs Ljava/util/List; i selIdx selectedTab LocalVariableTypeTable 9Ljava/util/List<Lorg/netbeans/swing/tabcontrol/TabData;>; java/lang/String 
access$000 x0 
access$200 a(Lorg/netbeans/swing/tabcontrol/ButtonPopupSwitcher;)Lorg/netbeans/swing/tabcontrol/TabDisplayer; 
SourceFile ButtonPopupSwitcher.java InnerClasses Item ActivatableTab( >org/netbeans/swing/popupswitcher/SwitcherTableItem$Activatable Activatable 0   �����  
 x y          % &   
 � *   
      < =    @ A    D A    ) *        � & �    m  	�� �   v     � Y+� :*� � �   �       c  d  e  f�   4    ��            @ A     D A   �  �   �      @   D      �   �     @*� *� * !� #*� '*+� *+� +:� /*� 5Y+� 7� :*� >*� B�   �   .    i  A 	 I  U  k  l ! m & o 5 p : q ? r�   4    @�      @      @ @ A    @ D A  ! �� �       @   D      �  T     �*+� *� *� E*� *� K*� :*� O*� :*� P*� :� Q*� U *� � [*� a � g* m� o� sY� u� v� v� z� v� ~� �� v*� :� �W� v� �*� >*� :� �� ��d=*� B`>� v� �� v*� � �� v*� �� v� �� �*� �� #�   �   Z    u  v  w  x  y % z 2 | ? ~ I � S � Z � c � n � t � � � � � � � � � � � � � � � � ��   *    ��      ���  � 3� A  � ,� A �   �   	 � � �         � ��   �       � ;  �   6      � �� 	� � 	�   �       �  �  ��     "   �       ~*� :*� �*� :*� �*� :� Q*� � *� � [*� � � g*� �*� � *� *� �*� *� �*� � v� -� v*� ǲ vL� �Y*+� ̸ ϲ v� �� v� �� �   �   J    �  �  �  � * � 1 � 8 � @ � H � M � S � Z � ^ � j � q � u � y � } ��     ^ � y    ~�   �    � M/ �� �   o     *� :� �M,� � �,� ߶ �   �       �  �  �  ��        �      ��   �� �    �  ��   �  �    �   � � �   \     +� �*+� �*� :+� �W*� '�   �       �  � 	 �  �  ��       �      �� �   �  �    �   � � �   �     &*� � [� � =*� :+� � � *� 	+� �   �       �  �  � ! � % ��        &�      &��   � A �    � !�   �  �    �   � � �   �     2+� �*� �  � �A *� #e ��� *� '� *+� *� '+� �   �       �  �  � # � ( � - � 1 ��       � &    2�      2�� �    (�   �  �    �    � �   �     I+�M+� �� F,*� :�M*� :,�� "*� :+� � *� :� �N-� *� 	-�*� '+� �   �   .    �  �  �   � + � 3 � 7 � ; � ? � D � H ��   *  3 ��    I�      I��   D�� �    � ?��   �  �    �   � � �   F     
*+�+� �   �       �  � 	 ��       
�      
�� �   �  �    �   � � �   H     *� :�+� �   �       �  �  ��       �      �� �   �  �    �    � �   S     *+� �*� :+� �W+� �   �         �       �      �� �   �  �    �    � � �   �     R+�M+� �*� +� �� F,*� :�M*� :,�� %*� :,�>*� :,�6*� :�� 
*� :��   �   * 
  	    ( 1 ; G J Q�   4  1 � A  ; � A    R�      R��   M�� �   
 � �,�   �   � � �   �     *+�M+� �� F� �+� �� F,*� :�M*� :,��   �         ! !"�        *�      *��   %�� �    � ��   �   �� �   �     m+�"*� �+�#� 0+�%�� U*+�#�(� � g*� �*� 	� <+�#�+� 2+�,� ++�,M,�.�           �   �/�5� �9�   �   :   ' ( 	* + , %- ,. 30 =3 D8 I9 `? i@ lD�      I #��    m�      m�� �    	)	� ",� �   �  �    �    �* �  ,  
  �+�<=*� :�?>*� :�B6� >� 66�     y      
  _   %   <   &   �   '   R   (   i      ����;*� :�Ed6�-�*� :�Ed�6��*� :�Hd��>*� :�Ed� �6� ��� ��*� :�Hd>� �*� :�Ed6� �*� :�K�N �T:� �*� :�V� ��Z:*� � [�^ 6� d*� � [� � � �bY*�d� ϻgY*� i�k:	*� 	�n*� :�K�r d�s>*� :�K�y d�s66�  *� :� �:� �*� 	� 6� *� :��   �   � 0  M N O P Q R !S $T 'U dW gX lY z] }^ �_ �c �d �e �f �g �h �m �n �o �p �q �r �x �yz{|#}3~>�P�Y�l����������������������   p P 4�� 	 v��  f� A  � ��� � ��   ��     ���  �� A  �� A  �� A  '�� * �   $ � � ?(&� \T�� E� �   �   �  �   �     Q� �� �**� � +L+�� *� 	�+� /*� :+*� B�z� v� �*� >*� :� �� ��d=*� B`>� v� ��   �   6   � � � � � � � � *� 0� A� H� P��   *    Q�     A��  A � A  H 	� A �   	 �    �   =     *�~�   �   
   � ��       �      � �   �  �    �    �   =     *�~�   �   
   � ��       �      � �   �  �    �    �   =     *�~�   �   
   � ��       �      � �   �  �    �    �   =     *�~�   �   
   � ��       �      � �   �  �    �   	 �   =     *�~�   �   
   � ��       �      � �   �  �    �   
 �   =     *�~�   �   
   � ��       �      � �   �  �    �    �   5      �   �      ��       �      � �   �  �    �    �   \     � v� 
� v*� �*� 	�   �      � � � ��       �      � �    �   �  �    �    �   \     � v� 
� v*� �*� 	�   �      � � � ��       �      � �    �   �  �    �    - . �  � 
    �+� [�� M,�� �TN6+���� 6� +� [�� � :,�� :�� � ��� ��:����� 3����:��:		� 
��:	��:

� 	:
� ��Y:
:	-��TY��Y*��	
� � ��S��z-�   �   N   � 
� � � "� 8� V� a� k� r� w� ~� �� �� �� �� �� �� ���   �  k #  r  	 �  
 � + 	 � - 
 V p��    ��      �    
 �   ���   � A  " � A  8 ��      
 � �   
� 5   \�   @�� 	��� =   \� ��� �  �    \� ���  � � 	� %   \� ���   � ����     \� ��� 	  � ����    \� �  �     f �   /     *� 	�   �       3�           ! �   /     *� �   �       3�           "   #$   * T 5%  �      b      � & ' �)	