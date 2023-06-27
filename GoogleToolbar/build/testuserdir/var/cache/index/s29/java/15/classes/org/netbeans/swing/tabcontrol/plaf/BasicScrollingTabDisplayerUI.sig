����   4	      ?org/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI 	displayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;	   	 
 selectionModel "Ljavax/swing/SingleSelectionModel;
      6org/netbeans/swing/tabcontrol/plaf/BasicTabDisplayerUI <init> /(Lorg/netbeans/swing/tabcontrol/TabDisplayer;)V  java/awt/Rectangle
     ()V	     scratch Ljava/awt/Rectangle;  Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$Autoscroller
     �(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$1;)V	    ! " 
autoscroll NLorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$Autoscroller; $ java/lang/Integer���	  ' ( ) lastKnownModelSize I + java/awt/Insets
 * -  . (IIII)V
 0 1 2 3 4 *org/netbeans/swing/tabcontrol/TabDisplayer 	getBounds ()Ljava/awt/Rectangle;
  6 7 8 contains (Ljava/awt/Point;)Z
  : ;  stop	 = > ? @ ) java/awt/Point x
  B C D start (Z)V
 0 F G H getWidth ()I
  J K L getTabAreaInsets ()Ljava/awt/Insets;	 * N O ) right Q 8org/netbeans/swing/tabcontrol/plaf/DefaultTabLayoutModel
 0 S T U getModel .()Lorg/netbeans/swing/tabcontrol/TabDataModel;
 P W  X G(Lorg/netbeans/swing/tabcontrol/TabDataModel;Ljavax/swing/JComponent;)V Z :org/netbeans/swing/tabcontrol/plaf/ScrollingTabLayoutModel
 Y \  ] �(Lorg/netbeans/swing/tabcontrol/plaf/TabLayoutModel;Ljavax/swing/SingleSelectionModel;Lorg/netbeans/swing/tabcontrol/TabDataModel;)V _ Qorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$ScrollingTabState
 ^ a  b D(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;)V d Zorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$ScrollingHierarchyListener
 c a
  g h i scroll >()Lorg/netbeans/swing/tabcontrol/plaf/ScrollingTabLayoutModel;
  k l H getTabsAreaWidth
 Y n o p makeVisible (II)Z
  r s t getTabsVisibleArea (Ljava/awt/Rectangle;)V	  >	  w x ) y	  z { ) width	  } ~ ) height
 0 � � . repaint	  � � � btnMaximizeRestore 5Lorg/netbeans/swing/tabcontrol/plaf/TabControlButton; � � � � � *org/netbeans/swing/tabcontrol/TabDataModel getTab *(I)Lorg/netbeans/swing/tabcontrol/TabData;
 � � � � � %org/netbeans/swing/tabcontrol/TabData getComponent ()Ljava/awt/Component; �  org/openide/windows/TopComponent
 0 � � � getContainerWinsysInfo >()Lorg/netbeans/swing/tabcontrol/WinsysInfoForTabbedContainer;
 � � � � � :org/netbeans/swing/tabcontrol/WinsysInfoForTabbedContainer !isTopComponentMaximizationEnabled %(Lorg/openide/windows/TopComponent;)Z
 � � � � D 3org/netbeans/swing/tabcontrol/plaf/TabControlButton 
setEnabled	 * � � ) left
  � � � getControlButtons
 � � � � � java/awt/Component getPreferredSize ()Ljava/awt/Dimension;	 � z � java/awt/Dimension � � � H size
 Y � � � getLastVisibleTab (I)I
 Y � � � getFirstVisibleTab
  � �  install
  � �  installControlButtons	  � � � layoutModel 3Lorg/netbeans/swing/tabcontrol/plaf/TabLayoutModel;	  � � � defaultRenderer 4Lorg/netbeans/swing/tabcontrol/plaf/TabCellRenderer; � � � � H 2org/netbeans/swing/tabcontrol/plaf/TabCellRenderer getPixelsToAddToSelection
 Y � � � setPixelsToAddToSelection (I)V
  � �  	uninstall
 0 � � � 	setLayout (Ljava/awt/LayoutManager;)V
 0 � �  	removeAll � Horg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$WCLayout
 � 	  � � � controlButtons Ljavax/swing/JPanel; � javax/swing/JPanel
 � �  �
 � � � D 	setOpaque � GTK
 � � � � � javax/swing/UIManager getLookAndFeel ()Ljavax/swing/LookAndFeel;
 � � � � � javax/swing/LookAndFeel getID ()Ljava/lang/String;
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z
 Y  getBackwardAction ()Ljavax/swing/Action; control	
 javax/swing/Action putValue '(Ljava/lang/String;Ljava/lang/Object;)V
 :org/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory createScrollLeftButton x(Lorg/netbeans/swing/tabcontrol/TabDisplayer;Ljavax/swing/Action;Z)Lorg/netbeans/swing/tabcontrol/plaf/TabControlButton;	  � btnScrollLeft
 � add *(Ljava/awt/Component;)Ljava/awt/Component;
 � �	 � }
 � . 	setBounds
  H getScrollButtonPadding
 Y!" getForwardAction
$% createScrollRightButton	 '( � btnScrollRight
*+,-. java/lang/Math max (II)I
012 createDropDownButton d(Lorg/netbeans/swing/tabcontrol/TabDisplayer;Z)Lorg/netbeans/swing/tabcontrol/plaf/TabControlButton;	 45 � btnDropDown
 �7 �8 ()Z
:;2 createMaximizeRestoreButton
 �= > (II)V
 �@AB setMinimumSize (Ljava/awt/Dimension;)V
 �DEB setSize
 �GHB setPreferredSize
 �JKB setMaximumSizeM corg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$ScrollingDisplayerComponentListener
L a
 YPQ  clearCachedDataSTUV H  javax/swing/SingleSelectionModel getSelectedIndex
 YXY H getCachedFirstVisibleTab
 Y[\ H getCachedLastVisibleTab
 ^_ � makeTabVisible
 Yabc ensureAvailableSpaceUsed (Z)Z
 ef  modelChanged
 hij createLayout ()Ljava/awt/LayoutManager;
 0
mnop H java/awt/event/MouseWheelEvent getWheelRotation	 rst tabState -Lorg/netbeans/swing/tabcontrol/plaf/TabState;
vwxy  +org/netbeans/swing/tabcontrol/plaf/TabState clearTransientStates
 Y{| H 	getOffset
 Y~8 isLastTabClipped
 Y�� � 	setOffset
 0� � 
 ��� getOffscreenGraphics /(Ljavax/swing/JComponent;)Ljava/awt/Graphics2D;
����� javax/swing/JComponent getGraphicsConfiguration "()Ljava/awt/GraphicsConfiguration;
����� java/awt/GraphicsEnvironment getLocalGraphicsEnvironment  ()Ljava/awt/GraphicsEnvironment;
���� getDefaultScreenDevice ()Ljava/awt/GraphicsDevice;
����� java/awt/GraphicsDevice getDefaultConfiguration	 ��� cachedScratchGraphics QLorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$ScratchGraphics;
����� Oorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$ScratchGraphics isConfigurationCompatible #(Ljava/awt/GraphicsConfiguration;)Z
���� getGraphics ()Ljava/awt/Graphics2D;
�� � #(Ljava/awt/GraphicsConfiguration;)V
� F� java/awt/Container
 � F
 ��� H 	getHeight
  -
 0 � Code LineNumberTable LocalVariableTable this ALorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI; MethodParameters getAutoscrollInsets #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; (Ljava/awt/Point;)V location Ljava/awt/Point; StackMapTable createLayoutModel 5()Lorg/netbeans/swing/tabcontrol/plaf/TabLayoutModel; dtlm :Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabLayoutModel; createTabState /()Lorg/netbeans/swing/tabcontrol/plaf/TabState; createHierarchyListener $()Ljava/awt/event/HierarchyListener; tab td 'Lorg/netbeans/swing/tabcontrol/TabData; c Ljava/awt/Component; maximizeEnabled Z result ins Ljava/awt/Insets; buttonsPanel isGTK a Ljavax/swing/Action; prefDim Ljava/awt/Dimension; createComponentListener $()Ljava/awt/event/ComponentListener; index 	modelSize processMouseWheelEvent #(Ljava/awt/event/MouseWheelEvent;)V e  Ljava/awt/event/MouseWheelEvent; i offset 	component Ljavax/swing/JComponent; gc  Ljava/awt/GraphicsConfiguration; scratchGraphics� java/awt/GraphicsConfiguration getControlButtonsRectangle *(Ljava/awt/Container;)Ljava/awt/Rectangle; parent Ljava/awt/Container; getMinimumSize .(Ljavax/swing/JComponent;)Ljava/awt/Dimension; 
access$200 o(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;)Lorg/netbeans/swing/tabcontrol/TabDisplayer; x0 
access$300 
access$400 e(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;)Ljavax/swing/SingleSelectionModel; 
access$500 
access$600 
access$700 
access$800 
access$900 access$1000 <clinit> 
SourceFile !BasicScrollingTabDisplayerUI.java InnerClasses Autoscroller Aorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$1 ScrollingTabState ScrollingHierarchyListener WCLayout #ScrollingDisplayerComponentListener ScratchGraphics!     	       � �    �   ( �   5 �    � �    ! "    ( )   J��   #    �   h     $*+� *� Y� � *� Y*� � *%� &�   �       >  /  8  � # ?�       $��     $   �       � L �   8     � *Y� ,�   �       C�       ��  �    �    !� �   �     V*� � /+� 5� *� � 9�+� <� *� � A� .+� <*� � Ed*� I� Md� *� � A� 
*� � 9�   �   & 	   H  I  J  L  M * N C O N Q U S�       V��     V�� �    #�   �  �    �   �� �   k     '� PY*� � R*� � VL� YY+*� *� � R� [�   �       W  X  Z   [ & Z�       '��    �� �    �   �� �   3     	� ^Y*� `�   �       `�       	��  �    �   �� �   3     	� cY*� e�   �       e�       	��  �    �   _ � �       }� �*� f*� j� m� .**� � q*� *� � u*� � v*� � y*� � |� *� �� �*� � R� � M,� �N-� �� �*� � �-� �� �6*� �� ��   �   :    j  k  l  m  n ? q G r H s V t [ u b v c w s x | y�   4    }��     }� )  V '��  [ "��  s 
�� �    9�  � ��   �  �    �    l H �   _     *� � E<*� IM,� �,� M`d�   �         �  ��        ��    � )   ��   K L �   A     � *Y*� �� �� �`� ,�   �       ��       ��  �    �    � H �   X     *� � R� � � �*� f*� j� ��   �       �  �  ��       ��  �    �    �    � H �   X     *� � R� � � �*� f*� j� ��   �       �  �  ��       ��  �    �    �    �  �   Z     *� �*� �*� �� Y*� ƹ � � ϱ   �       �  �  �  �  �  ��       ��  �    �    �  �   J     *� �*� � �*� � ڱ   �       �  �  �  ��       ��  �    �   ij �   4     
� �Y*� ߰   �       ��       
��    � � �      �*� ��� �Y� �L+� �=>� �� � �6*� f� �:*� � **� ��+*��W*��:*�� ���� �`=�>*�`=*� f� :*� � **� �#�&+*�&�W*�&�:*�&� ���� �`=��)>**� �/�3+*�3�W�*�3�:*�3� ���� �`=��)>*� � �� W*� � ��6� J�**� �9� �+*� ��W*� ��:*� �� ���� �`=��)>� �Y�<:+�?+�C+�F+�I*+� �*� �   �   � .   �  �  �  �  �  � ' � 0 � > � M � V � _ � r � z � � � � � � � � � � � � � � � � � � � � � � � � � � � � �! �+ �: �C �F �S �\ �e �x �� �� �� �� �� �� �� �� ��   R  �� �  � { )  � ~ )  '���  0���  _S�� �  ��   ���  �   " ��   � �  � '       H �   ,     �   �       ��       ��   �� �   3     	�LY*�N�   �       ��       	��  �    �   f  �   �     \*� f�O*� �R <*� f�W� *� f�Z� **� �R �]*� � R� � =*� &� *� f�`W*� &*�d�   �   * 
     ' 4
 A I R W [�        \��    K� )  A � ) �   
 � 4� �    �    �  �   J     *� *�g� �*� *� ��kW�   �        �       ��    h i �   2     *� �� Y�   �      �       ��   �� �   �     a+�l=*�q�u*� f�z>� -*� � R� � d� *� f�}� (*� f`��W� � � *� fd��W� �*� ���   �   2   ' + , - *. 4/ B1 F2 J3 X6 Y= `>�   *    a��     a��   \� )   M� ) �   	 � B �   �  �    �   	�� �         ���   �      � 	�� �   �     B*� � *��L+� ������L��M,� ,+��� ,�����Y+��M,��,���   �   & 	  � � � � � +� 0� 9� =��        B��    5��   #�� �    C�� �� ��   �   �� �   a     *� �M� Y+��,��d,��,�����   �   
   � ��        ��     ��   �� �   �   �� �   H     � �Yd*� ����<�   �      ��       ��     �� �   �  �    �  �� �   /     *� �   �       .�       ��  �� �   /     *� �   �       .�       ��  �� �   /     *� �   �       .�       ��  �� �   /     *� �   �       .�       ��  �� �   /     *� �   �       .�       ��  �� �   /     *� �   �       .�       ��  �� �   /     *� �   �       .�       ��  �� �   /     *� �   �       .�       ��  �� �   /     *� �   �       .�       ��      �         ���   �      �       :         ^   c   � 	 L 
 �  