����   4�	      &org/openide/explorer/view/ViewTooltips KEY Ljava/lang/Object;
  	 
   java/awt/event/MouseAdapter <init> ()V	     refcount I	     inner Ljavax/swing/JComponent;	     row  javax/swing/Popup	     popups [Ljavax/swing/Popup;  .org/openide/explorer/view/ViewTooltips$ImgComp
  		  " # $ painter 0Lorg/openide/explorer/view/ViewTooltips$ImgComp;	  & ' ( hider .Lorg/openide/explorer/view/ViewTooltips$Hider;
 * + , - . javax/swing/JComponent getClientProperty &(Ljava/lang/Object;)Ljava/lang/Object;	  0 1 2 $assertionsDisabled Z 4 java/lang/AssertionError 6 java/lang/StringBuilder
 5 	 9 There already is 
 5 ; < = append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 5 ? < @ -(Ljava/lang/Object;)Ljava/lang/StringBuilder; B  for 
 5 D E F toString ()Ljava/lang/String;
 3 H  I (Ljava/lang/Object;)V
  	
 * L M N putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
  P Q R attachTo (Ljavax/swing/JComponent;)V
  T U V 
detachFrom (Ljavax/swing/JComponent;)I X The  Z " should no longer be needed, was: 
 5 \ < ] (I)Ljava/lang/StringBuilder;
  _ `  hide b javax/swing/JTree d javax/swing/JList
 3 	
 * g h i addMouseListener !(Ljava/awt/event/MouseListener;)V
 * k l m addMouseMotionListener '(Ljava/awt/event/MouseMotionListener;)V
 * o p m removeMouseMotionListener
 * r s i removeMouseListener
 u v w x y java/awt/event/MouseEvent getPoint ()Ljava/awt/Point;
 u { | } 	getSource ()Ljava/lang/Object;  javax/swing/JScrollPane
 � � � � � javax/swing/SwingUtilities getAncestorOfClass ;(Ljava/lang/Class;Ljava/awt/Component;)Ljava/awt/Container;
 � � � � convertPoint J(Ljava/awt/Component;Ljava/awt/Point;Ljava/awt/Component;)Ljava/awt/Point;
  � � � show ,(Ljavax/swing/JScrollPane;Ljava/awt/Point;)V
 ~ � � � getViewport ()Ljavax/swing/JViewport;
 � � � � � javax/swing/JViewport getView ()Ljava/awt/Component;
  � � � 	showJTree
  � � � 	showJList � Bad component type registered: 	 � � � �  java/awt/Point x	 � � �  y
 � � � � <(Ljava/awt/Component;IILjava/awt/Component;)Ljava/awt/Point;
 c � � � locationToIndex (Ljava/awt/Point;)I
 c � � � getCellBounds (II)Ljava/awt/Rectangle;
 c � � � getCellRenderer  ()Ljavax/swing/ListCellRenderer;
 c � � � getModel ()Ljavax/swing/ListModel; � � � � � javax/swing/ListModel getElementAt (I)Ljava/lang/Object; � � � � � javax/swing/ListCellRenderer getListCellRendererComponent >(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;
 � � � � � java/awt/Component getPreferredSize ()Ljava/awt/Dimension;	 � � � �  java/awt/Dimension width	 � � � java/awt/Rectangle
 � � � � contains (Ljava/awt/Point;)Z
  � � � setCompAndRow (Ljavax/swing/JComponent;I)Z
  � � � getShowingRect /(Ljavax/swing/JScrollPane;)Ljava/awt/Rectangle;
  � � � getRects ?(Ljava/awt/Rectangle;Ljava/awt/Rectangle;)[Ljava/awt/Rectangle;
  � �  ensureOldPopupsHidden
  � � � 	configure B(Ljava/lang/Object;Ljavax/swing/JScrollPane;Ljavax/swing/JList;I)Z
  � � � 
showPopups q([Ljava/awt/Rectangle;Ljava/awt/Rectangle;Ljava/awt/Rectangle;Ljavax/swing/JComponent;Ljavax/swing/JScrollPane;)V
 a � � � getClosestRowForLocation (II)I
 a � � � getClosestPathForLocation (II)Ljavax/swing/tree/TreePath;
 a � � � getPathBounds 1(Ljavax/swing/tree/TreePath;)Ljava/awt/Rectangle;
 � � �  } javax/swing/tree/TreePath getLastPathComponent
  � ](Ljava/lang/Object;Ljavax/swing/JScrollPane;Ljavax/swing/JTree;Ljavax/swing/tree/TreePath;I)Z
   clear
 	
 setHideComponent 4(Ljavax/swing/JComponent;Ljavax/swing/JScrollPane;)V
  _
 � 	getInsets ()Ljava/awt/Insets;
 ~ getViewportBorder ()Ljavax/swing/border/Border; javax/swing/border/Border getBorderInsets '(Ljava/awt/Component;)Ljava/awt/Insets; java/awt/Insets
  (IIII)V
 ~ ! 	getBorder
 ~#$% getViewportBorderBounds ()Ljava/awt/Rectangle;	 � �	 � �
 �)*+ 	translate (II)V	-.  left	01  right	 �34  height	67  top	9:  bottom
 �<= y getViewPosition
 �?@A convertRectangle R(Ljava/awt/Component;Ljava/awt/Rectangle;Ljava/awt/Component;)Ljava/awt/Rectangle;
 �C �D (Ljava/awt/Rectangle;)Z
 �
 GHI 
getPartial G(Ljava/awt/Rectangle;Z)Lorg/openide/explorer/view/ViewTooltips$ImgComp;
 �K +
 �MNO convertPointToScreen '(Ljava/awt/Point;Ljava/awt/Component;)V
 QRS getPopupFactory ()Ljavax/swing/PopupFactory;
UVWXY javax/swing/PopupFactory getPopup ?(Ljava/awt/Component;Ljava/awt/Component;II)Ljavax/swing/Popup;
 [ � 	 ]^_ popupFactory Ljavax/swing/PopupFactory;a ,org/openide/explorer/view/CustomPopupFactory
` 	
defgh ,org/openide/explorer/view/ViewTooltips$Hider 
access$000 I(Lorg/openide/explorer/view/ViewTooltips$Hider;Ljavax/swing/JComponent;)Z
djkl 
access$100 1(Lorg/openide/explorer/view/ViewTooltips$Hider;)V
dn 

pqrst java/lang/Class desiredAssertionStatus ()Zv java/lang/Object
u 	y "java/awt/event/MouseMotionListener Code LineNumberTable LocalVariableTable this (Lorg/openide/explorer/view/ViewTooltips; register comp vtt StackMapTable MethodParameters 
unregister inst zero 
mouseMoved (Ljava/awt/event/MouseEvent;)V e Ljava/awt/event/MouseEvent; p Ljava/awt/Point; jsp Ljavax/swing/JScrollPane; mouseDragged mouseEntered #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; mouseExited view pt visible Ljava/awt/Rectangle; rects [Ljava/awt/Rectangle; list Ljavax/swing/JList; bds ren Ljavax/swing/ListCellRenderer; rendererSize Ljava/awt/Dimension;� tree Ljavax/swing/JTree; path Ljavax/swing/tree/TreePath; 
rowChanged compChanged i ins2 Ljava/awt/Insets; pane ins1 Ljavax/swing/border/Border; ins3 r result a b vis sect part pos shown parent 
access$200 <clinit> 
SourceFile ViewTooltips.java InnerClasses ImgComp Hider 0   x 	                           # $   
^_    ' (   1 2       z   r     ,*� *� *� *� *� � *� Y�  � !*� %�   {   "    X  N 	 P  R  T  V &| + Y|       ,}~   ( R z   �     O*� � )� L� /� ++� '� 3Y� 5Y� 78� :+� >A� :*� >� C� G�*� � Y� JYL� K+*� O�   {       a  b 9 c I d N e|       O�     D�~ �    � 9 �   �   (� R z   �     Q*� � )� L+� �+*� S=� /� +� '� 3Y� 5Y� 7W� :+� >Y� :� [� C� G�+� ^*� � K�   {   "    m  n  o  q  r D s H t P u|        Q�     F�~   ;�  �    �  � 3�   �    Q R z   ~     1� /� +� a� +� c� � 3Y� e�+*� f+*� j*Y� `� �   {       y  z ! { & | 0 }|       1}~     1�  �    �   �    U V z   {     2� /� +� a� +� c� � 3Y� e�+*� n+*� q*Y� dZ� �   {       �  � ! � & �|       2}~     2�  �    �   �   �� z   �     -+� tM+� z� *N~-� �� ~:� -,� �M*,� ��   {   "    �  �  �  �  �  � % � , �|   4    -}~     -��   (��    �    �� �    � , � * ~�   �   �� z   =     *� ^�   {   
    �  �|       }~     �� �   �   �� z   =     *� ^�   {   
    �  �|       }~     �� �   �  �    �   �� z   =     *� ^�   {   
    �  �|       }~     �� �   �  �    �     � � z   �     T+� �� �� a� *+,� �� @+� �� �� c� *+,� �� *� /� $� 3Y� 5Y� 7�� :+� �� �� >� C� G��   {       �  �  � # � , � S �|        T}~     T��    T�� �    &�   	�  �    � � z  �     �+� �� �� cN+,� �,� �-� �:-� �6� *� ^�-� �:-� �:--� �� � � � � �:� ͵ �� � ՚ *� ^�*-� ٙ G*+� �:		� �:

�� -*� �*� !-� �� � +-� �W*
	-+� � *� ^�   {   n    �  �  � " � ( � , � - � 7 � = � A � O � T � Y � c � r � v � w � � � � � � � � � � � � � � � � � � � � �|   p  � =�� 	 � 4�� 
   �}~     ���    ���   ���   ���  " �    7 ���  = ���  Y m�� �   % � - c �� D � � �� I ��� �   	�  �    � � z  �  
   �+� �� �� aN+,� �,� �-� �:-� �� �� �6-� �� �� �:-� �:� � ՚ *� ^�*-� ٙ C*+� �:� �:		�� )*� �*� !� �+-�W*	-+� � *� ^�   {   R    �  �  � * � 5 � : � B � Q � U � V � ` � g � p � v � z � � � � � � � � � � �|   f 
 g 9��  p 0�� 	   �}~     ���    ���   ���   ���  * w    : g��  B _�� �   , � Q   ~ � a � � �  � E ��� �   	�  �    � � z   �     6*� � � >+*� � � 6*+� *� � � � �   {       �  �  � " � ' |   4    6}~     6      6     (� 2   � 2 �    @� @� @�   	         `  z   n     #*� �*� !� 
*� !�*�*� *� �   {       	 
    "|       #}~  �      �  z   �     +<*� �� "*� 2� *� 2�*� S���۱   {          $ *|      (�     +}~  �   
 � !�   � � z  �     �+� ��M+�N-� -+� :� �Y�:�Y�:+�� +�+� :+�":�&t�'t�(Y� �,�,,�/`d� �Y� ��,�/`d� �Y�2,�5,�8`d�2Y�2�5�8`d�2Y�&�,d�&Y�&�,d�&+� ��;:� �� ��(+� �+�>:�   {   R      " # % *' 7( >) J, P- a. t/ �0 �1 �2 �3 �4 �5 �6 �7|   \ 	  ��    �}~     ���   ���   � �  * ���  7 ���  P ���  � �� �    � � � �   �    � � z  � 
   +*�B� � �M� *�&+�&� s*�&*� �`+�&+� �`� ^� �Y*�&*�'+�&*�&d*�2�EN� �Y+�&+� �`*�'*�&*� �`+�&+� �`d*�2�E:� �Y-SYSM� �*�&+�&� *� �Y� �Y*�&*�'+�&*�&d*�2�ESM� S*�&*� �`+�&+� �`� 9� �Y� �Y+�&+� �`*�'*�&*� �`+�&+� �`d*�2�ESM� � �M,�   {   2   B C E 0F MG zH �I �J �M �NRU|   \ 	  ��  M ;��  z ��  � ��  � ��  ��   ��    ��  �� �    � z1� J� ��   	� �   � � z       �66+�� �+2:,�&t,�'t�(*� !,�&+2�&`-�&� � �F:	� �Y,�&+2�&`,�'+2�'`�J:

�L� c� 
Y� �d� �
� �� +*� �P	
� �
� ��TS*� 2�Z6���S� *�� 	*��   {   J   \ ] ^ _ "` Ea fb mc ue �g �i �k �l �] �o �p �r �t|   p   ���  E k� $ 	 f J�� 
  ��     �}~     ���    ���    ���    ��     ���   �� 2 �   a � � 8 	 � � � * ~ �   ��   	 � � � * ~ �   �� ?  �� /� �   �  �  �  �  �   
RS z   9      �\� �`Y�b�\�\�   {   
   x y�     	
 z   �     ;*� %� *� %+�c� �*� %� 
*� %�i+� *�dY+,�m� %� *� %�   {   & 	  � � � � � !� %� 5� :�|        ;}~     ;�     ;�� �    �   	�  �  � } z         � �   {       J �  z   B      �o� � � /�uY�w� �   {   
    J  K�    @ �   ��      � d � 