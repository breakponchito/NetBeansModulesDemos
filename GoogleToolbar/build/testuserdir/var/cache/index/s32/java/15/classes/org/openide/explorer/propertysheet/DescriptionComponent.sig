����   4�
      javax/swing/JComponent <init> ()V
  	 
   7org/openide/explorer/propertysheet/DescriptionComponent init
      javax/swing/BorderFactory createEmptyBorder !(IIII)Ljavax/swing/border/Border;
     	setBorder (Ljavax/swing/border/Border;)V  javax/swing/JEditorPane
  	     jep Ljavax/swing/JEditorPane;
      	setOpaque (Z)V
  " # $ getBackground ()Ljava/awt/Color;
  & ' ( setBackground (Ljava/awt/Color;)V
  * +   setEditable
  - . / getAccessibleContext )()Ljavax/accessibility/AccessibleContext; 1 ACS_Description
 3 4 5 6 7 org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 9 : ; < = %javax/accessibility/AccessibleContext setAccessibleName (Ljava/lang/String;)V ? ACSD_Description
 9 A B = setAccessibleDescription D "JEditorPane.honorDisplayProperties	 F G H I J java/lang/Boolean TRUE Ljava/lang/Boolean;
  L M N putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V P #javax/swing/text/html/HTMLEditorKit
 O 
 O S T U getStyleSheet $()Ljavax/swing/text/html/StyleSheet;
 W X Y Z [  javax/swing/text/html/StyleSheet getStyleSheets %()[Ljavax/swing/text/html/StyleSheet;
 W  ^ javax/swing/JLabel
 ] 
 ] a b c getFont ()Ljava/awt/Font; e java/lang/StringBuffer g body { font-size: 
 d i  =
 k l m n o java/awt/Font getSize ()I
 d q r s append (I)Ljava/lang/StringBuffer; u ; font-family: 
 d w r x ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 k z { | getName ()Ljava/lang/String; ~ ; }
 d � � | toString
 W � � = addRule
 W � � � addStyleSheet %(Ljavax/swing/text/html/StyleSheet;)V
 O � � � setStyleSheet
  � � � setFont (Ljava/awt/Font;)V
  � � � setEditorKit (Ljavax/swing/text/EditorKit;)V � javax/swing/JScrollPane
 � �  � (Ljava/awt/Component;)V	  � � � jsc Ljavax/swing/JScrollPane;
 � � � � setHorizontalScrollBarPolicy (I)V
 � � � � setVerticalScrollBarPolicy
  �  � ()Ljavax/swing/border/Border;
 � 
 � � � � 	getBorder
 � � �  setViewportBorder
 � 
 � &
 � � � � getViewport ()Ljavax/swing/JViewport;
 �  � javax/swing/JViewport	 � � � � � ,org/openide/explorer/propertysheet/PropUtils psNoHelpButton Z	 � � � � isAqua � javax/swing/JButton
 � 	  � � � btn Ljavax/swing/JButton;
 � � � � addActionListener "(Ljava/awt/event/ActionListener;)V � JButton.buttonType � help
 � L
 � 
 � � �   setContentAreaFilled � 9org/openide/resources/propertysheet/propertySheetHelp.png
 � � � � � org/openide/util/ImageUtilities 	loadImage %(Ljava/lang/String;Z)Ljava/awt/Image; � javax/swing/ImageIcon
 � �  � (Ljava/awt/Image;)V
 � �  � (Ljavax/swing/Icon;)V � javax/swing/JToolBar
 � 	  � � � toolbar Ljavax/swing/JToolBar;
 � � �   setRollover
 � � �   setFloatable � java/awt/BorderLayout
 � �  � (II)V
 � � � � 	setLayout (Ljava/awt/LayoutManager;)V
 � 
 � � �   setBorderPainted
 � �  add *(Ljava/awt/Component;)Ljava/awt/Component;
 �   setFocusable Label
 ] i	 	
 lbl Ljavax/swing/JLabel;
 k  (Ljava/lang/String;II)V
 ] �
  �
  addMouseListener !(Ljava/awt/event/MouseListener;)V
 �
 ]
 �
 �
  	getInsets ()Ljava/awt/Insets;
 ]  getPreferredSize ()Ljava/awt/Dimension;	"#$%& java/awt/Dimension height I
 () o getWidth	+,-.& java/awt/Insets right
 �
 �
23456 java/lang/Math max (II)I	"89& width	+;<& top
 �>?@ 	setBounds (IIII)V
 �>	+CD& left
 ]>
 GH o 	getHeight
 �>K  
 ]MN = setText
PQRST java/lang/String equals (Ljava/lang/Object;)Z
 M
 �WX   
setEnabled	 Z[& 
fontHeight
]^_`a java/awt/Graphics getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
cGd java/awt/FontMetrics
 fgh paint (Ljava/awt/Graphics;)V
 
"k l (Ljava/awt/Dimension;)V	+no& bottom
2qr6 min
 tu  getMinimumSize
" �x )org/openide/explorer/propertysheet/PSheet
z{|}~ javax/swing/SwingUtilities getAncestorOfClass ;(Ljava/lang/Class;Ljava/awt/Component;)Ljava/awt/Container;
w��  helpRequested
 ��� 	findSheet -()Lorg/openide/explorer/propertysheet/PSheet;
w��� mousePressed (Ljava/awt/event/MouseEvent;)V	 ��� accessibleContext 'Ljavax/accessibility/AccessibleContext;� 9org/openide/explorer/propertysheet/DescriptionComponent$1
�� � <(Lorg/openide/explorer/propertysheet/DescriptionComponent;)V� java/awt/event/ActionListener� java/awt/event/MouseListener� javax/accessibility/Accessible Code LineNumberTable LocalVariableTable this 9Lorg/openide/explorer/propertysheet/DescriptionComponent; css "Ljavax/swing/text/html/StyleSheet; f Ljava/awt/Font; Ljava/awt/Image; htmlKit %Ljavax/swing/text/html/HTMLEditorKit; StackMapTable� java/awt/Component doLayout bttn Ljava/awt/Dimension; ins Ljava/awt/Insets; lbll #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setDescription '(Ljava/lang/String;Ljava/lang/String;)V title Ljava/lang/String; txt MethodParameters setHelpEnabled val g Ljava/awt/Graphics; d actionPerformed (Ljava/awt/event/ActionEvent;)V actionEvent Ljava/awt/event/ActionEvent; sheet +Lorg/openide/explorer/propertysheet/PSheet; mouseClicked e Ljava/awt/event/MouseEvent; mouseEntered mouseExited sh mouseReleased <clinit> 
SourceFile DescriptionComponent.java InnerClasses     ���  
[&        
    � �    � �    � �       �   ;     	*� *� �   �       ?  @  A�       	��      �  �    l*� � *� Y� � *� � *� *� !� %*� � )*� � *� � ,0� 2� 8*� � ,>� 2� @*� C� E� K� OY� QL+� R� V� N� WY� \M� ]Y� _� `N,� dYf� h-� j� pt� v-� y� v}� v� � �,+� R� �+,� �� *� � ]Y� _� `� �*� +� �*� �Y*� � �� �*� �� �*� �� �*� �� �� �*� �*� �� �� �*� �� �*� �*� !� �*� �� �� �� �� �� �� 4*� �Y� µ �*� �*� �*� ��Ͷ �*� �� �*� �� ѧ n�� �M*� �Y� �Y,� ޷ � �*� �*� �*� �Y� � �*� �� �*� �� �*� � �Y� � �*� � �� �*� �� �*� �*� ö �W*� ��*� ]Y��*�� kY*�� `� j��**� ��W**��W� �� *� �� 
*� ç *� �W*� *�*� �*�*�*�� �� *� �*�*� �� �*��   �   � <   D  F  G  H ) I 1 J 9 K J L [ M g O o P y Q � R � S � T � S � U � V � W � X � Z � b � c � d � e f g h) i4 k: l@ mK nS o^ pf qq sx u� v� x� y� z� {� |� }� ~� �� �� � � � �$ �: �B �J �R �X �` �k ��   4  � @��  � 5�� x d ��   l��   o��� �   + 	� � O� �� j� M �    O  �% �  �  s     �*�L*��M,�!>*�'+�*d6� �� i� �� *� ö/� 
*� �0:�!,�!�1>*�'+�*�7`d6� �� *� �+�:�7�=� *� �+�:�7�A*�+�B+�:�E*� �+�B*�'+�B+�*`d*�Fd�I�   �   :    �  �  �  �  � # � < � I � Z � ` � v � � � � � � ��   >  < M��    ���    ���   ���   �%&   �.& �   ! � 3  +"  F"� ;"� �    �   �� �   �     6+� JL,� JM*�+�L+,�O� *� J�U� *� ,�U�   �   & 	   �  �  �  �  �  �   � - � 5 ��        6��     6��    6�� �    �   	�  �   �   �   T     � �� *� ��V�   �       �  �  ��       ��     � � �    �   �   gh �   g     �Y� +*�� `�\�b�Y*+�e�   �       �  �  �  ��       ��     �� �    �   �  �    �     �   �     K�"Y*�i�jL�Y� -*�M+2+�!�Yh,�:`,�m``�1�1�!� ++�!@�p�!+�   �       �  �  �  � 9 � < � I ��       "��    K��    ?�� �   	 � <"�    �   u  �   h     �Y� *�s��"Y�Yh�Yh�vL+�   �       �  �  �  ��       ��    �� �    �    �   �� �   l     w*�y�wM,� ,��   �       �  �  �  ��        ��     ��   	�� �    � w�   �   �� �   5     w*�y�w�   �       ��       ��   �� �   5      �   �       ��       ��     �� �   �   �� �   5      �   �       ��       ��     �� �   �   �� �   5      �   �       ��       ��     �� �   �   �� �   g     *��M,� ,+���   �         	 �        ��     ��   
�� �    � w�   �   �� �   g     *��M,� ,+���   �        	 �        ��     ��   
�� �    � w�   �    . / �   x     5*��� +*��Y*����*��0� 2� 8*��>� 2� @*���   �         " 0!�       5��  �    0�    �   �  �         �Y�   �       7 �   ��   
 �      