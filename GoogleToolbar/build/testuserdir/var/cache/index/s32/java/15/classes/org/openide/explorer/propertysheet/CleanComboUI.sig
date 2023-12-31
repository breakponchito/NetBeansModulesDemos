����   4�
      /org/openide/explorer/propertysheet/CleanComboUI installComboDefaults (Ljavax/swing/JComponent;)V
   	 
 selectNextPossibleValue ()V
    
 selectPreviousPossibleValue	     comboBox Ljavax/swing/JComboBox;
     
 &javax/swing/plaf/basic/BasicComboBoxUI <init>	     button Ljavax/swing/JButton;	     popup #Ljavax/swing/plaf/basic/ComboPopup;   GTK
 " # $ % & javax/swing/UIManager getLookAndFeel ()Ljavax/swing/LookAndFeel;
 ( ) * + , javax/swing/LookAndFeel getID ()Ljava/lang/String;
 . / 0 1 2 java/lang/String equals (Ljava/lang/Object;)Z	  4 5 6 isGtk Z	  8 9 6 tableUI ; ComboBox.background = ComboBox.foreground ? ComboBox.font
 ( A B C installColorsAndFont Q(Ljavax/swing/JComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
 E F G H I javax/swing/BorderFactory createEmptyBorder !(IIII)Ljavax/swing/border/Border;
 K L M N O javax/swing/JComboBox 	setBorder (Ljavax/swing/border/Border;)V
 Q R S T U ,org/openide/explorer/propertysheet/PropUtils getShadowColor ()Ljava/awt/Color;
 E W X Y createLineBorder -(Ljava/awt/Color;)Ljavax/swing/border/Border;
 E [ \ ] createCompoundBorder [(Ljavax/swing/border/Border;Ljavax/swing/border/Border;)Ljavax/swing/border/CompoundBorder; _ ?org/openide/explorer/propertysheet/CleanComboUI$CleanComboPopup
 ^ a  b (Ljavax/swing/JComboBox;)V
  d e 
 installKeyboardActions g Aqua
 K i j k getInputMap ()Ljavax/swing/InputMap; m java/awt/event/KeyEvent
 o p q r s javax/swing/KeyStroke getKeyStroke (II)Ljavax/swing/KeyStroke; u enterPressed
 w x y z { javax/swing/InputMap put ,(Ljavax/swing/KeyStroke;Ljava/lang/Object;)V } 	showPopup
 K  � � getActionMap ()Ljavax/swing/ActionMap; � 1org/openide/explorer/propertysheet/CleanComboUI$1
 � �  � 4(Lorg/openide/explorer/propertysheet/CleanComboUI;)V
 � � � z � javax/swing/ActionMap )(Ljava/lang/Object;Ljavax/swing/Action;)V � 10.5 � 
os.version
 � � � � � java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
 . � � � 	compareTo (Ljava/lang/String;)I � 1org/openide/explorer/propertysheet/CleanComboUI$2
 � � � 1org/openide/explorer/propertysheet/CleanComboUI$3
 � � � selectPrevious � 
selectNext
 K � � � 	getEditor ()Ljavax/swing/ComboBoxEditor; � � � � � javax/swing/ComboBoxEditor getEditorComponent ()Ljava/awt/Component; � javax/swing/JComponent
 � i
 �  � ComboBox.icon
 " � � � getIcon &(Ljava/lang/Object;)Ljavax/swing/Icon; � =org/openide/explorer/propertysheet/CleanComboUI$AquaComboIcon
 � �  � 6(Lorg/openide/explorer/propertysheet/CleanComboUI$1;)V � (javax/swing/plaf/metal/MetalComboBoxIcon
 �  � javax/swing/JButton
 � �  � (Ljavax/swing/Icon;)V
 � � � � setFocusable (Z)V
 � � � � setContentAreaFilled
 � � � � setBorderPainted
 � L
  � � � 	getInsets ()Ljava/awt/Insets;	 � � � � � java/awt/Insets right I
  � � � paint .(Ljava/awt/Graphics;Ljavax/swing/JComponent;)V
 � � � � hasFocus ()Z
 � � � � U java/awt/Graphics getColor
 � � � � setColor (Ljava/awt/Color;)V
 � � � � getWidth ()I
 � � � � 	getHeight
 � � � � drawRect (IIII)V
  � � � createFocusListener  ()Ljava/awt/event/FocusListener;
 K � � � getRenderer  ()Ljavax/swing/ListCellRenderer;	  �  listBox Ljavax/swing/JList;
 K getSelectedItem ()Ljava/lang/Object;
 	 isPopupVisible (Ljavax/swing/JComboBox;)Z javax/swing/ListCellRenderer getListCellRendererComponent >(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;
 K getFont ()Ljava/awt/Font;
 java/awt/Component setFont (Ljava/awt/Font;)V
 K � 	isEnabled
 K U getForeground
 Q!" U getDisabledForeground
$% � setForeground
 K'( U getBackground
*+ � setBackground- javax/swing/JPanel/ javax/swing/JLabel
.123 getUI ()Ljavax/swing/plaf/LabelUI;5 Forg/openide/explorer/propertysheet/CleanComboUI$SolidBackgroundLabelUI
4 �
.89: setUI (Ljavax/swing/plaf/LabelUI;)V	 <=> currentValuePane Ljavax/swing/CellRendererPane;	@ABC � java/awt/Rectangle x	@EF � y	@HI � width	@KL � height
NOPQR javax/swing/CellRendererPane paintComponent C(Ljava/awt/Graphics;Ljava/awt/Component;Ljava/awt/Container;IIIIZ)V
 TUV rectangleForCurrentValue ()Ljava/awt/Rectangle;	 XYZ editor Ljava/awt/Component;\ Corg/openide/explorer/propertysheet/CleanComboUI$CleanComboBoxEditor
[ 
 "_ �` $(Ljava/lang/Object;)Ljava/awt/Color;b text
 �*e textText
 �$
 "hi #(Ljava/lang/Object;)Ljava/awt/Font;
 � Code LineNumberTable LocalVariableTable this 1Lorg/openide/explorer/propertysheet/CleanComboUI; MethodParameters installDefaults StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; createPopup %()Ljavax/swing/plaf/basic/ComboPopup; selectPrevAction Ljavax/swing/Action; selectNextAction Ljavax/swing/JComponent; createArrowButton ()Ljavax/swing/JButton; i Ljavax/swing/Icon;� javax/swing/Icon Ljava/awt/Insets; prev Ljava/awt/Color; g Ljava/awt/Graphics; c� java/awt/Color� java/lang/Throwable paintCurrentValue +(Ljava/awt/Graphics;Ljava/awt/Rectangle;Z)V bounds Ljava/awt/Rectangle; renderer Ljavax/swing/ListCellRenderer; shouldValidate origUI Ljavax/swing/plaf/LabelUI;� javax/swing/JList� java/lang/Object� javax/swing/plaf/LabelUI r createEditor jc f Ljava/awt/Font;� java/awt/Font 
access$000 J(Lorg/openide/explorer/propertysheet/CleanComboUI;)Ljavax/swing/JComboBox; x0 
access$100 
access$200 
access$300 
access$600 
SourceFile CleanComboUI.java InnerClasses CleanComboPopup AquaComboIcon SolidBackgroundLabelUI CleanComboBoxEditor              9 6         5 6      � k   k     #*� *� *� *� !� '� -� 3*� 7�   l       0  + 	 -  .  1 " 2m       #no     # 9 6 p    9   q 
 k   �     D*� :<>� @*� 7� *� � D� J� *� � P� V� D� Z� J*� � �   l   * 
   6  8  9 % ; ) = 3 A 6 < 9 ; < F C Gm       Dno  r    %s    t   uv k   B     *� ^Y*� � `� *� �   l   
    K  Mm       no  s    t    e 
 k  �     �*� cf� !� '� -� *� � h
� nt� v*� 7� )*� � h � n|� v*� � ~|� �Y*� �� �f� !� '� -� ���� �� �� �� �Y*� �L� �Y*� �M*� � h&� n�� v*� � h(� n�� v*� � ~�+� �*� � ~�,� �*� � �� � � �N-� �&� n�� v-� �(� n�� v-� ��+� �-� ��,� ��   l   R    R  U  V $ [ + \ = ] Q j c k l m u s ~ y � z � { � | � ~ �  � � � � � � � �m   *  u �wx  ~ �yx  � 2Yz    �no  r    $,� �s    t   {| k   �     ]�� �L+� %f� !� '� -� � �Y� �L� � �Y� �L*� �Y+� µ *� � �*� � �*� � �*� � �*� �   l   .    �  � 
 �  � $ � , � 8 � @ � H � P � X �m       ]no    W}~ r   	 � $s    t    � � k   M     *� �L+Y� �`� �+�   l       �  �  �m       no    }� s    t    � � k   �     E*+,� �,� ޙ :*� 7� 3+� �N+� P� �+,� �d,� �d� �+-� � :+-� ���   2 :   : < :   l   * 
   �  �  �  �   � 2 � 7 � : � A � D �m   *   +��    Eno     E��    E�z r    � :   � �� �� 	p   	�  �  s    t    � � k   /     *� ��   l       �m       no  s    t   �� k    	    �*� � �:*� �� � �*� �*� �� **� �� � �
 :*� ��*� �� *� �� � �#*� �&�)6�,� 6:�.� $*� 3� �.�0:�.�4Y�6�7*�;+*� ,�?,�D,�G,�J�M� �.�7�   l   J    	   @ L h! t# w% & �) �* �, �- �0 �3 �4 �6m   R    �no     ���    ���    � � 6  	 ���  @ ��Z  w g� 6  � Y�� r   � 	�  �     �@ ���     �@ ��� )   �@ �    �@ �� � +�.p   �  �   �  s    t   UV k   �     6*�SL*�W� ++Y�?`�?+Y�D`�D+Y�Gd�G+Y�Jd�J+�   l      : < = >  ? *@ 4Cm       6no    1�� r    � 4@s    t   � � k   2     �[Y�]�   l      Hm       no  s    t   
   k   �     D:�^L+� 
a�^L+� *+�c<�^L+� 
d�^L+� *+�f>�gM,� *,�j�   l   :   L N 
O R S V  X $Y +\ /] 4` :b >c Cem        D�z    >��  : 
�� r    � �� �p   �  �� k   /     *� �   l       *m       �o  �� k   /     *� �   l       *m       �o  � � k   /     *� �   l       *m       �o  � � k   /     *� �   l       *m       �o  �  k   /     *� �   l       *m       �z   �   ��   :  ^ � 
 �       �       �       � � 
4 � 
[ � 