����   4)
      org/openide/actions/HeapView update ()V
  	 
   javax/swing/JComponent <init>	     graph [J  java/text/MessageFormat  [{0,choice,0#{0,number,0.0}|999<{0,number,0}}/{1,choice,0#{1,number,0.0}|999<{1,number,0}}MB
     (Ljava/lang/String;)V	     format Ljava/text/MessageFormat;   	      heapSizeText Ljava/lang/String; " java/awt/AWTEvent       
  & ' ( enableEvents (J)V * (org/openide/actions/GarbageCollectAction , CTL_GC
 . / 0 1 2 org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
  4 5  setToolTipText
  7 8  updateUI : 
Label.font
 < = > ? @ javax/swing/UIManager getFont #(Ljava/lang/Object;)Ljava/awt/Font;
  B C D setFont (Ljava/awt/Font;)V
  F G H 	setOpaque (Z)V
  J K L prefs ()Ljava/util/prefs/Preferences; N showText
 P Q R S T java/util/prefs/Preferences 
putBoolean (Ljava/lang/String;Z)V
  V W  repaint
 P Y Z [ 
getBoolean (Ljava/lang/String;Z)Z
  B
  ^ _  updateTextWidth a java/awt/Dimension	  c d e maxTextWidth I
  g ? h ()Ljava/awt/Font;
  j k l getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
 n o p q r java/awt/FontMetrics 	getHeight ()I
 ` t  u (II)V
 w x y z { org/openide/util/NbPreferences 	forModule 0(Ljava/lang/Class;)Ljava/util/prefs/Preferences; } java/lang/ObjectD^33
 � � � � � java/lang/Float valueOf (F)Ljava/lang/Float;
  �  � &(Ljava/lang/Object;)Ljava/lang/String;
 n � � � stringWidth (Ljava/lang/String;)I
  � � � processMouseEvent (Ljava/awt/event/MouseEvent;)V
 � � � � � java/awt/event/MouseEvent 
isConsumed ()Z
 � � � � isPopupTrigger
 � � � r getX
 � � � r getY
  � � u 	showPopup
 � � � r getID
 � � � � � javax/swing/SwingUtilities isLeftMouseButton (Ljava/awt/event/MouseEvent;)Z
 � � � r getClickCount
 ) � � � get :(Ljava/lang/Class;)Lorg/openide/util/actions/SystemAction;
 ) � �  performAction � javax/swing/JPopupMenu
 � 	 � javax/swing/JCheckBoxMenuItem � LBL_ShowText
 � 
  � � � getShowText
 � � � H setSelected � org/openide/actions/HeapView$1
 � �  � !(Lorg/openide/actions/HeapView;)V
 � � � � addActionListener "(Ljava/awt/event/ActionListener;)V
 � � � � add 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
 � � � � show (Ljava/awt/Component;II)V
  � � � paintComponent (Ljava/awt/Graphics;)V
  � � r getWidth
  o
  � �  startTimerIfNecessary
 � � � � � java/awt/Graphics create ()Ljava/awt/Graphics; � java/awt/Graphics2D	 � � � � � java/awt/RenderingHints KEY_ANTIALIASING Ljava/awt/RenderingHints$Key;	 � � � � VALUE_ANTIALIAS_ON Ljava/lang/Object;
 � � � � setRenderingHint 2(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V	 � � � � KEY_STROKE_CONTROL	 � � � � VALUE_STROKE_PURE
 � � � � clipRect (IIII)V	   BACKGROUND_COLOR Ljava/awt/Color;
 � setColor (Ljava/awt/Color;)V
 �	 � fillRect	  CHART_COLOR
  paintSamples (Ljava/awt/Graphics2D;II)V
  	paintText
 �  dispose
   stopTimerIfNecessary
  getHeapSizeText ()Ljava/lang/String;
 � ! getFontRenderContext #()Ljava/awt/font/FontRenderContext;
#$%&' java/awt/Font createGlyphVector P(Ljava/awt/font/FontRenderContext;Ljava/lang/String;)Ljava/awt/font/GlyphVector;
 � j
*+,-. java/awt/font/GlyphVector 
getOutline ()Ljava/awt/Shape;01234 java/awt/Shape getBounds2D ()Ljava/awt/geom/Rectangle2D;
678 �9 java/awt/geom/Rectangle2D ()D@       
=>?@A java/lang/Math max (DD)D
 nCD r 	getAscent
 �FGH getTransform !()Ljava/awt/geom/AffineTransform;
 �JKL 	translate (DD)V	 NO OUTLINE_COLORQ java/awt/BasicStroke@   
PT U (FII)V
 �WXY 	setStroke (Ljava/awt/Stroke;)V
 �[\] draw (Ljava/awt/Shape;)V	 _` 
TEXT_COLOR
 �bc] fill
 �efg setTransform "(Ljava/awt/geom/AffineTransform;)V
 ij  removeNotify	 lmn AUTOMATIC_REFRESH Z	 pqr updateTimer Ljavax/swing/Timer;t javax/swing/Timerv org/openide/actions/HeapView$2
u �
sy z #(ILjava/awt/event/ActionListener;)V
s|} H 
setRepeats
s�  start
s��  stop	 ��� 	lastTotal J
���c� java/util/Arrays ([JJ)V
 �� � 	isShowing
����� java/lang/Runtime 
getRuntime ()Ljava/lang/Runtime;
���� totalMemory ()J
���� 
freeMemory	 �� e 
graphIndexA0      
��� �� java/lang/Double (D)Ljava/lang/Double;� java/awt/geom/Path2D$Double
� 	
����L java/awt/geom/Path2D moveTo@X�     
���L lineTo
���  	closePath� org.netbeans.log.startup
����� java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;� nb.heapview.chart
 <��� getColor $(Ljava/lang/Object;)Ljava/awt/Color;� java/awt/Color .��
�� � (I)V� nb.heapview.foreground	��� 	DARK_GRAY� nb.heapview.background ���� nb.heapview.highlight
��� r getRed
��� r getGreen
��� r getBlue
��  � TICK ConstantValue  � GRAPH_COUNT   d 	SHOW_TEXT Code LineNumberTable LocalVariableTable this Lorg/openide/actions/HeapView; f Ljava/awt/Font; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setShowText MethodParameters font heapViewPreferredSize ()Ljava/awt/Dimension; size Ljava/awt/Dimension; 	maxString e Ljava/awt/event/MouseEvent; StackMapTable x y popup Ljavax/swing/JPopupMenu; cbmi Ljavax/swing/JCheckBoxMenuItem; g2 Ljava/awt/Graphics2D; g Ljava/awt/Graphics; width height java/lang/Throwable w h text gv Ljava/awt/font/GlyphVector; fm Ljava/awt/FontMetrics; outline Ljava/awt/Shape; bounds Ljava/awt/geom/Rectangle2D; D oldTransform Ljava/awt/geom/AffineTransform; r Ljava/lang/Runtime; total used index i path Ljava/awt/geom/Path2D; 
access$000 x0 <clinit> c 
SourceFile HeapView.java InnerClasses& java/awt/RenderingHints$Key Key Double        mn   � e �   �    `   O      � e �   � �   �    M           � e   ��   qr    d e             �   |     6*� *d�� *� Y� � *� * #� %*)+� -� 3*� 6�   �   "    �  �  �  �  � & � 1 � 5 ��       6��    8  �   Q     9� ;L*+� A*� E�   �       �  �  �  ��       ��    �� �    �   � H �   K     *� IM� O*� U�   �       � 
 �  ��       ��      Nn �    N    � � �   5     *� IM� X�   �       ��       ��    C D �   F     
*+� \*� ]�   �       �  � 	 ��       
��     
�� �   �  �    �    �� �   c     � `Y*� b`**� f� i� m`� sL+�   �       �  �  �  �  ��       ��    ��   K L �   0     � v�   �       ��       ��    _  �   k     /*� � |Y~� SY~� S� �L***� f� i+� �`� b�   �       �  � . ��       /��    �     � � �   �     D*+� �+� �� +� �� *+� �+� �� �+� ��� +� �� +� �� )� �� )� ��   �   & 	   �  �  �  �   * 1 8 C�       D��     D�� �    #�   �  �    �    � u �   �     =� �Y� �N� �Y�� -� �:*� �� �� �Y*� Ŷ �-� �W-*� б   �         ! . 5 <�   4    =��     =� e    =� e   5��   %�� �   	�  �    � � �  \     �*+� �*� �=*� �>� x� t*� �+� �� �:� � �� �� �� �� �� �� ����
�*�*� �� *��� :��� *��  $ s {   { } {   �   Z      
! # $ % $' /( :) C+ K, T. \/ d1 k2 s5 x6 {5 �6 �7 �8 �:�   4  $ a     ���     �  
 � e   ~ e �    � s �G� 	�     �    �    �  {     �*� f:*�:+��":+�(:�):�/ :	�	�5g:o�<9
�:o�B�:oc:g9+�E:+
�I+�M�+�PYR�S�V+�Z+�^�+�a+�d�   �   F   @ A B C !D (E 1F CG ZH `I hJ oK L �M �N �O �P�   �    ���     �    � e    �	 e   ���   �
     �  ! x  ( q  1 h 	 C V� 
 Z ?�  ` 9 �       	    �   /     *� �   �      S�       ��   j  �   ;     	*�h*��   �      \ ] ^�       	��  �    �    �  �   �     4�k� �*�o� (*�sYܻuY*�w�x�o*�o�{*�o�~�   �      d e g h $n ,o 3q�       4��  �    +   �   r     '*�o� "*�o��*�o*	��*� 	��*� �   �      w x y z {  | &~�       '��  �    &    �   	    t*��� k��L+��A +��e7*� *��P* ��*Y��`��*��d� *��**� � |Y��o��SY ��o��S� �� *� U� *��   �   B   � � � � � #� (� 2� ;� @� R� b� h� l� o� s��   *   a   \�   T�    t��  �    � @�� .  �  $     l��Y��:���6d� ?*��`dp6��o�k9�*� /�*���ogk9		������������+�a�   �   2   � 	� � � '� 3� H� Q� W� `� e� k��   \ 	 ' * e  3 �  H 	� 	  C e    l��     l    l e    l e  	 c �    � �� B�          � �   /     *� �   �       >�       �      �       ����� � �k���K*� ��YǷ�K*�
˸�K*� ��K*�^и�K*� ��Yҷ�K*� �Ӹ�K*�  ��Y� ��ղ ��ز ��� ���K*�M�   �   R    @  g  h  i ( k , m 3 n 8 o < q @ s G t L u W w [ y b z g { t | z } � � � ��      p!  �    @� �, "   #$   "  �      % �'	u      ��( 	