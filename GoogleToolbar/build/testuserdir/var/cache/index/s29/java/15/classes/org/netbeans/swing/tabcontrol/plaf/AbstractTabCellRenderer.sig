����   4%
      javax/swing/JLabel <init> ()V  +org/netbeans/swing/tabcontrol/plaf/TabState	 
     :org/netbeans/swing/tabcontrol/plaf/AbstractTabCellRenderer state I	 
    	showClose Z  java/awt/Rectangle
  	 
    scratch Ljava/awt/Rectangle;
 
    	setOpaque (Z)V
 
     setFocusable
 
 " # $ 	setBorder (Ljavax/swing/border/Border;)V	 
 & ' ( normalBorder /Lorg/netbeans/swing/tabcontrol/plaf/TabPainter;	 
 * + ( 
leftBorder	 
 - . ( rightBorder	 
 0 1 2 padding Ljava/awt/Dimension;
 
 4  5 �(Lorg/netbeans/swing/tabcontrol/plaf/TabPainter;Lorg/netbeans/swing/tabcontrol/plaf/TabPainter;Lorg/netbeans/swing/tabcontrol/plaf/TabPainter;Ljava/awt/Dimension;)V
 
 7 8 9 	setBounds (Ljava/awt/Rectangle;)V
 
 ; < = setState (I)V
 
 ? @ A 	getBorder ()Ljavax/swing/border/Border;
 
 C D E supportsCloseButton (Ljavax/swing/border/Border;)Z
 
 G H I isShowCloseButton ()Z K -org/netbeans/swing/tabcontrol/plaf/TabPainter J M N O getCloseButtonRectangle C(Ljavax/swing/JComponent;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V
 Q R S T U java/lang/Object getClass ()Ljava/lang/Class; W <org/netbeans/swing/tabcontrol/plaf/AquaEditorTabCellRenderer	  Y Z  x	  \ ]  y	  _ `  width	  b c  height
  e f g contains (Ljava/awt/Point;)Z i *org/netbeans/swing/tabcontrol/TabDisplayer k close
 
 m n o getTabShape )(ILjava/awt/Rectangle;)Ljava/awt/Polygon;
 q e r java/awt/Polygon t select v java/awt/event/MouseEvent
 
 x y z getCommandAtPoint 9(Ljava/awt/Point;ILjava/awt/Rectangle;)Ljava/lang/String;
 
 | } I 
isClipLeft
 
  � I isClipRight � closeAll � closeAllButThis
 
 � � I 	isPressed     �     � java/awt/Dimension
 � �  � (Ljava/awt/Dimension;)V
 
 � � � stateChanged (II)I � java/lang/IllegalStateException � java/lang/StringBuilder
 �  � SStateChanged may add, but not remove bits from the state bitmask.  Expected state: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  � � � stateToString (I)Ljava/lang/String; � 	 but got 
 � � � � toString ()Ljava/lang/String;
 � �  � (Ljava/lang/String;)V
 � � � � � %org/netbeans/swing/tabcontrol/TabData getText
 
 � � � setText
 � � � � getIcon ()Ljavax/swing/Icon;
 
 � � � setIcon (Ljavax/swing/Icon;)V
 
 � � I 
isSelected
 
 � � I isActive
 
 � � � getSelectedActivatedBackground ()Ljava/awt/Color;
 
 � � � getSelectedBackground � control
 � � � � � javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color;
 
 � � � getSelectedActivatedForeground
 
 � � � getSelectedForeground � textText
 
 � � I isArmed
 
 � � � setBackground (Ljava/awt/Color;)V
 
 � � � setForeground
 
 � � � getBackground
 � � � � � java/awt/Graphics setColor J � � � paintInterior *(Ljava/awt/Graphics;Ljava/awt/Component;)V
 
 � � � paintIconAndText (Ljava/awt/Graphics;)V
 
 � � � getFont ()Ljava/awt/Font;
 � � � � getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
 � � � �  java/awt/FontMetrics 	getHeight ()I
 
 	getInsets ()Ljava/awt/Insets;
 
 �		
  java/awt/Insets top	  bottom
 
  getCaptionYAdjustment
 � setFont (Ljava/awt/Font;)V
 
  getPixelsToAddToSelection
 
 �  javax/swing/Icon getIconWidth   getIconHeight
"#$% � java/lang/Math max	'(  left
 
*+  getIconYAdjustment-./ 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V
 
12  getIconTextGap
 
456 getCaptionYPosition (Ljava/awt/Graphics;)I
 
89  getWidth	;<  right
 
 �
 
?@A preTruncateString :(Ljava/lang/String;Ljava/awt/Graphics;I)Ljava/lang/String;C java/awt/Graphics2D
BEFG getClip ()Ljava/awt/Shape;
BIJK clipRect (IIII)VM java/lang/Integer���
 
PQ � getForegroundS org/openide/awt/HtmlRenderer
RUVW renderString M(Ljava/lang/String;Ljava/awt/Graphics;IIIILjava/awt/Font;Ljava/awt/Color;IZ)D
BYZ[ setClip (Ljava/awt/Shape;)V] ...
_`ab  java/lang/String length
 
def 	stripHTML &(Ljava/lang/String;)Ljava/lang/String;
 �h �i ()Ljava/awt/FontMetrics;
 �klm stringWidth (Ljava/lang/String;)I
_op � 	substringr <html>
_tuv 
startsWith (Ljava/lang/String;)Zx <HTML>
 
z{v isHTML} java/lang/StringBuffer
|  =
_��� toCharArray ()[C
|� �� (C)Ljava/lang/StringBuffer;
| � J��� getInteriorPolygon ((Ljava/awt/Component;)Ljava/awt/Polygon;
 q��� 	translate (II)V
 q� � ([I[II)V� controlHighlight	����� java/awt/Color GRAY Ljava/awt/Color;	���� WHITE
����� ,org/netbeans/swing/tabcontrol/plaf/ColorUtil adjustTowards 3(Ljava/awt/Color;ILjava/awt/Color;)Ljava/awt/Color;� 'TabRenderer.selectedActivatedBackground� 'TabRenderer.selectedActivatedForeground� TabRenderer.selectedForeground J� D� (Ljavax/swing/JComponent;)Z� 2org/netbeans/swing/tabcontrol/plaf/TabCellRenderer Code LineNumberTable LocalVariableTable this <Lorg/netbeans/swing/tabcontrol/plaf/AbstractTabCellRenderer; leftClip noClip 	rightClip MethodParameters F(Lorg/netbeans/swing/tabcontrol/plaf/TabPainter;Ljava/awt/Dimension;)V painter setShowCloseButton b cbp p Ljava/awt/Point; tabState bounds tabShape Ljava/awt/Polygon; StackMapTable <(Ljava/awt/Point;ILjava/awt/Rectangle;III)Ljava/lang/String; clipped mouseButton 	eventType 	modifiers result Ljava/lang/String; 
isLeftmost isRightmost isAttention isHighlight isNextTabSelected isNextTabArmed isPreviousTabSelected isBusy 
getPadding ()Ljava/awt/Dimension; old newState 
needChange getState getRendererComponent V(Lorg/netbeans/swing/tabcontrol/TabData;Ljava/awt/Rectangle;I)Ljavax/swing/JComponent; data 'Lorg/netbeans/swing/tabcontrol/TabData; oldState bg fg 
revalidate #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; repaint validate (J)V tm J (JIIII)V w h firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V s a Ljava/lang/Object; addHierarchyBoundsListener +(Ljava/awt/event/HierarchyBoundsListener;)V hbl (Ljava/awt/event/HierarchyBoundsListener; addHierarchyListener %(Ljava/awt/event/HierarchyListener;)V hl "Ljava/awt/event/HierarchyListener; addContainerListener %(Ljava/awt/event/ContainerListener;)V cl "Ljava/awt/event/ContainerListener; paintComponent g Ljava/awt/Graphics; txtY fm Ljava/awt/FontMetrics; txtH ins Ljava/awt/Insets; availH iconY iconX txtX g2d Ljava/awt/Graphics2D; clip Ljava/awt/Shape; centeringToAdd icon Ljavax/swing/Icon; txtW java/awt/Shape availPixels 	dotsWidth 
beginIndex test wasInTag i Ljava/lang/StringBuffer; c [C inTag pb base towards inCloseButton Ljavax/swing/border/Border; 
SourceFile AbstractTabCellRenderer.java! 
  �         + (     . (     ' (    1 2             2   5 �   �     ?*� *@� 	*� *� Y� � *� *� *,� !*,� %*+� )*-� ,*� /�   �   2    E  ; 
 S  \  F  G $ H ) I . J 3 K 8 L > M�   4    ?��     ?� (    ?� (    ?� (    ? 1 2 �   �  �  �   1    � �   K     	*+++,� 3�   �   
    P  Q�        	��     	� (    	 1 2 �   	�   1   �  �   >     *� �   �   
    U  V�       ��     �  �   �    H I �   /     *� �   �       Y�       ��    y z �  D     �*-� 6*� :**� >� B� m*� F� f*� >� J:**� -� L *� PV� 9*� Y� Xd� X*� Y� [d� [*� Y� ^`� ^*� Y� a`� a*� +� d� j�*-� l:+� p� s��   �   B    ^  _ 
 `  a % b 2 c ; e H f U g c h q j | k  n � o � p � r�   >  % Z� (    ���     ���    ��     ��   � �� �    � q J� �  q�   �  �  �    y� �  �  	   �:� �� 
j:� *+-� w:� �s� D*� {� 
*� ~� � 6� �� 	� � �� � �� Sj� L�� D*� F� =@~� �� ~� � �� ~�   ~� � s:��   �   J    v  w  x  { ! } & ~ -  B � h � k � � � � � � � � � � � � � � � � ��   \ 	 B )�     ���     ���    ��     ��     ��     ��     ��    ��� �    � _@� �  	�   �  �  �  �  �  �    � I �   L     *� �� *� 	~� � �   �       ��       ��  �    @  � I �   E     *� 	 ~� � �   �       ��       ��  �    @  � I �   E     *� 	~� � �   �       ��       ��  �    @  � I �   E     *� 	~� � �   �       ��       ��  �    @  � I �   D     *� 	~� � �   �       ��       ��  �    @  } I �   D     *� 	~� � �   �       ��       ��  �    @ � I �   F     *� 	 �~� � �   �       ��       ��  �    @ � I �   F     *� 	 ~� � �   �       ��       ��  �    @ � I �   Q     *� 	@ ~� *� 	�~� � �   �       ��       ��  �    @ � I �   E     *� 	�~� � �   �       ��       ��  �    @ � I �   F     *� 	 ~� � �   �       ��       ��  �    @ � I �   E     *� 	�~� � �   �       ��       ��  �    @ � I �   F     *� 	 ~� � �   �      �       ��  �    @ � I �   E     *� 	�~� � �   �      �       ��  �    @ �� �   6     � �Y*� /� ��   �      �       ��    < = �   �     h*� 	� � =� X*� 	>*� 	*� �6*� 	~� 5*� 	� �Y� �Y� ��� �� �� ��� �*� 	� �� �� �� ��*� 	�   �   2        $  /! 4" E# T$ a& g(�   4   P�   $ C�     h��     h     Z�  �    @� S� �       �  �   /     *� 	�   �      .�       ��   �� �   t     *,� 6*+� �� �*+� �� �*� :*�   �      < = > ? @�   *    ��     ��    �        �   �  �       � � �  k     �*� �� *� �� 
*� § *� Ƨ ɸ �N*� �� *� �� 
*� ѧ *� ԧ ׸ �:*� ٙ #*� �� *� {� 
*� ~� *� �N*� �:*� {� *� �**� )� !� *� ~� **� ,� !� **� %� !*-� �*� ��   �   R   L M N O "P )Q 0R >S EU aX fY l\ s] x^ �_ �` �b �e �f �g�   4    ���     ��     ��   " ���  E e�� �    D�� �D�� �
�   	�  �   �  �   +      �   �      n�       ��  �    �   �  �   +      �   �      t�       ��  �    �   �  �   +      �   �      z�       ��  �    �   �� �   5      �   �      ��       ��     �� �   �  �    �   �� �   ]      �   �      ��   >    ��     ��     Z      ]     �     �  �   �   Z   ]  �  �  �    �   �� �   I      �   �      ��   *    ��     ��    ��    �� �   �  �  �  �    �   �� �   5      �   �      ��       ��     �� �   �  �    �   �� �   5      �   �      ��       ��     �� �   �  �    �   �� �   5      �   �      ��       ��     �� �   �  �    �   � � �   s     &+*� � �*� >� J� *� >� J+*� � *+� �   �      � � �  � %��       &��     &�� �     �   �  �    �     �   ,     �   �      ��       ��   +  �   ,     �   �      ��       ��   56 �  	     X+*� � �M,� �>*�:*���`d6� �`lld`d6� �`6*�`6�   �   & 	  � 	� � � &� ,� C� L� U��   R  @ �     X��     X��  	 O    J    D  & 2   L �  �    � C  
 � �  � �   �    � � �  � 
   �+*� �+*� � �M,� �>*�:*���`d6*�� *�l� 6*�:*� {� j� e� � [� � Q�� d�!l``6	�&`6
	*�)`6	*+
	�, 
� `*�0`6� �&`6� � � �*+�36	*�7�:`d6
*� {� �*�=+
d�>:::+�B� ?+�B:�D:�&�*�7�&d�:d*��d�d�H+	NN*� �*�O�T�6
*�7�:d
d6+	
*� �*�O�T�6
� 
�X� F*� ~� � �Y� �*�=� �\� �� �:� 	*�=:+	
*� �*�O�T�6
�   �   � .  � � � � � .� 5� A� G� g� q� �� �� �� �� �� �� �� �� �  � � � � �		
EW\bq���������� ��"�   �  � 1  	 � '  
 �    � ���  � �	
  � � �� � ��   ���    ���  �   �   �  .�   �    A�   G�  ��  	 � �  
�   o � >  
 � �  @� u � 	 	 
 � �  � s  
 � �_B  � R"� _� �   �   @A �  `     �*�^� *�*�cK*�^� � �Y� �\� �*� �� ��+�gN-\�j6*�^d6*�n::-�j`� ��� � :*�n:��ܻ �Y� �\� �� �� ��   �   F   % & 
( ) * ,, 1- :. B/ J0 N1 [2 ^3 c4 f6 j7 u:�   R    ���     ���    �   1 Z   : Q   B I   J A�  N =�� �    
!� ! _ � �__  �   �  �     {v �   d     *q�s� *w�s� � <�   �      > ? @�       ��    �  �    @�   �   ef �  $     d*�y� ^�|Y*�^�~L*��M>6,�� <6� ,4<� >� ,4>� >� � +,4��W����+���*�   �   B   D E F G H $J 'K +L 4M 9P BQ DT NU WH ]X bZ�   >  ' 0    @    O�   J   H     d��  �   " �  _|  � 
� � � �   �    n o �       �*,� 6*� :*� >� J� $*� >� JN-*�� :,� X,� [���� qY�
Y,� XOY,� X,� ^`dOY,� X,� ^`dOY,� XO�
Y,� [OY,� [OY,� [,� a`dOY,� [,� a`dO���   �   "   f g 
h i j %k 2l 5o�   4    (  % ��    ���     ��     ��  �    5�   	�  �    � � �   �     'ɸ �L�� �M+� ��L,� ��M+,��N-�   �   "   { | ~  � � � %��   *    '��    !�    �  % �� �    � ��  � � �   1     �� ˰   �      ��       ��    � � �   1     �� ˰   �      ��       ��    � � �   1     �� ˰   �      ��       ��   ! I �   F     *� 	 ~� � �   �      ��       ��  �    @   �   ,     �   �      ��       ��    D E �   Y     +� J� +� J*�� ��   �      � � ��       ��     �" �    �   �   #   $