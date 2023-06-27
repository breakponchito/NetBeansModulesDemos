����   4�
      .org/netbeans/swing/popupswitcher/SwitcherTable <init> 9([Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;I)V
  	 
   javax/swing/JTable ()V  7org/netbeans/swing/popupswitcher/SwitcherTable$NullIcon
     5(Lorg/netbeans/swing/popupswitcher/SwitcherTable$1;)V	     nullIcon Ljavax/swing/Icon;	     needCalcRowHeight Z
     init
      ! org/openide/util/Utilities getUsableScreenBounds ()Ljava/awt/Rectangle;	 # $ % & ' java/awt/Rectangle height I ) 3org/netbeans/swing/popupswitcher/SwitcherTableModel
  + , - getRowHeight ()I
 ( /  0 :([Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;II)V
  2 3 4 setModel !(Ljavax/swing/table/TableModel;)V
  6 7 8 getSelectionModel "()Ljavax/swing/ListSelectionModel; : ; < =  javax/swing/ListSelectionModel clearSelection : ? @ A setAnchorSelectionIndex (I)V : C D A setLeadSelectionIndex
  F G H setAutoscrolls (Z)V
 J K L M N 2org/netbeans/swing/popupswitcher/SwitcherTableItem getIcon ()Ljavax/swing/Icon; P Q R S - javax/swing/Icon getIconWidth	  U V  	showIcons X nb.popupswitcher.border
 Z [ \ ] ^ javax/swing/UIManager 	getBorder /(Ljava/lang/Object;)Ljavax/swing/border/Border;
  ` a b getForeground ()Ljava/awt/Color;
 d e f g h javax/swing/BorderFactory createLineBorder -(Ljava/awt/Color;)Ljavax/swing/border/Border;
  j k l 	setBorder (Ljavax/swing/border/Border;)V
  n o H setShowHorizontalLines
  q r s getOffscreenGraphics ()Ljava/awt/Graphics2D;
  u v w calcRowHeight (Ljava/awt/Graphics;)V	  y z { prefSize Ljava/awt/Dimension;
  } ~  updateUI
  � � � setFont (Ljava/awt/Font;)V
  � � � getSwitcherTableModel 7()Lorg/netbeans/swing/popupswitcher/SwitcherTableModel;
 ( � � � 
getValueAt (II)Ljava/lang/Object;
  � � - getSelectedRow
  � � - getSelectedColumn � � � � � #javax/swing/table/TableCellRenderer getTableCellRendererComponent @(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component; � javax/swing/JLabel
 � � � � � org/openide/awt/HtmlRenderer createRenderer )()Lorg/openide/awt/HtmlRenderer$Renderer; � %org/openide/awt/HtmlRenderer$Renderer � � � A setRenderStyle
 � `
 � � � � setForeground (Ljava/awt/Color;)V
 � � � b getBackground
 � � � � setBackground
 � � � � getFont ()Ljava/awt/Font;
 � �
 � � � H 	setOpaque
 � � � � setIcon (Ljavax/swing/Icon;)V
 J � � � isActive ()Z	  � �  TABNAMES_HTML
 J � � � getHtmlName ()Ljava/lang/String;
  � � � 	stripHtml &(Ljava/lang/String;)Ljava/lang/String;
 � � � � setText (Ljava/lang/String;)V	  � � � rendererBorder Ljavax/swing/border/Border;
 � j
 � � � A setIconTextGap � java/lang/StringBuilder
 � 	
 � � � � getText
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; �  ←
 � � � � toString
  � � � 	isWindows
  � � java/awt/Font
 � � � - getSize
 � � � � 
deriveFont (IF)Ljava/awt/Font;
 � � � java/awt/Component
 � � � � getName
 � �  � (Ljava/lang/String;II)V � <[^>]*> �  
  java/lang/String 
replaceAll 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; &nbsp;  
 
 replace D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
  � trim	  
foreground Ljava/awt/Color; nb.popupswitcher.foreground
 Z getColor $(Ljava/lang/Object;)Ljava/awt/Color; ComboBox.foreground
  `	  
background! nb.popupswitcher.background# ComboBox.background% java/awt/Color
$'( - getRGB
$*  A
  �	 -. selForeground0 $nb.popupswitcher.selectionForeground2 ComboBox.selectionForeground
 45 b getSelectionForeground	 78 selBackground: $nb.popupswitcher.selectionBackground< ComboBox.selectionBackground
 >? b getSelectionBackground
ABCDE java/awt/Graphics getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
GHIJ - java/awt/FontMetrics 	getHeight
LMNOP java/lang/Math max (II)I
 RS A setRowHeight	 UVW ctx Ljava/lang/ref/SoftReference;
YZ[\] java/lang/ref/SoftReference get ()Ljava/lang/Object;_ java/awt/image/BufferedImage
^a b (III)V
Yd e (Ljava/lang/Object;)V
^ghi getGraphics ()Ljava/awt/Graphics;k java/awt/Graphics2D
 mn - getColumnCount
 pq - getRowCount
 stu getCellRenderer )(II)Ljavax/swing/table/TableCellRenderer;
 wxy prepareRenderer =(Ljavax/swing/table/TableCellRenderer;II)Ljava/awt/Component;
 �{|} getPreferredSize ()Ljava/awt/Dimension;	��� ' java/awt/Dimension width
L��P min
 ��� getColumnModel &()Ljavax/swing/table/TableColumnModel;����� "javax/swing/table/TableColumnModel 	getColumn "(I)Ljavax/swing/table/TableColumn;
���� A javax/swing/table/TableColumn setPreferredWidth
� � (II)V
 ��� getModel  ()Ljavax/swing/table/TableModel;
  �
 �� w paint
 ��� changeSelection (IIZZ)V
 d��� createEmptyBorder !(IIII)Ljavax/swing/border/Border;� nb.tabnames.html� true
���� java/lang/System getProperty
����� java/lang/Boolean parseBoolean (Ljava/lang/String;)Z 	Signature =Ljava/lang/ref/SoftReference<Ljava/awt/image/BufferedImage;>; 8([Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;)V Code LineNumberTable LocalVariableTable this 0Lorg/netbeans/swing/popupswitcher/SwitcherTable; items 5[Lorg/netbeans/swing/popupswitcher/SwitcherTableItem; MethodParameters i 4Lorg/netbeans/swing/popupswitcher/SwitcherTableItem; y gap hasIcons StackMapTable� b� javax/swing/border/Border setSwitcherItems newItems #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; f Ljava/awt/Font; 	prototype Ljavax/swing/JLabel; renderer %Ljavax/swing/table/TableCellRenderer; row column item selected ren Ljava/awt/Component; lbl icon active htmlText Ljava/lang/String; res g Ljava/awt/Graphics; fm Ljava/awt/FontMetrics; 	rowHeight result Ljava/awt/image/BufferedImage; c j cols rows columnWidth getSelectedItem 6()Lorg/netbeans/swing/popupswitcher/SwitcherTableItem; rowIndex columnIndex toggle extend getLastValidRow 
lastColIdx <clinit> 
SourceFile SwitcherTable.java InnerClasses NullIcon� 0org/netbeans/swing/popupswitcher/SwitcherTable$1 Renderer !       � �              .   8    z {         V     �    
VW �   �   � �   ?     *+� �   �   
    O  P�       ��     �� �   �      �  �  
   �*� *� Y� � *� *� � 
� >� � "dd6*� (Y+*� *� .� 1*� 5� 9 *� 5� > *� 5� B *� E6+:�66� +2:		� I� 	� I� O � 	6� 	����*� T�   �   N    X  8  F  Y  [ $ \ 0 ] B ^ K _ U ` _ a d b g c � d � e � f � c � i � j�   H  � �� 	   ���     ���    �� '  $ �� '  0 x & '  g A�  �   , � "  �  @� N 	 ��  (� �   	�  �      �        %W� YL+� *� _� cL*+� i*� m*� p� t�   �       m  n  o  p  q  s $ t�       %��    � � �    � � �  �   �     /� 
� >� � "dd6*� (Y+*� *� .� 1*� x�   �       ~    � ) � . ��   4    /��     /��    /� '   $� '    & ' �    	@�   	�  �    ~  �   <     
*� *� |�   �       �  � 	 ��       
��  �    �    � � �   G     *� *+� �   �       �  � 
 ��       ��     �� �   �  �    �   xy �  >  
  �*� �� �� J:*� �� *� �� � � 6+*� � ::� �� G� �:� �� �:� �� � �� � � �� �� �� �� �� �:� � � �� ��� I:� � O � 	*� :� �6	� N� 	� � �� *� · Ƨ � ¶ �� ζ �*� T� � �� O d� �	� g� �� (� [� �Y� �� ٶ �� ܶ � ʧ <� � *� �*� � 놶 � � � �Y*� � �*� � � �� �� 	� ��   �   � (   �  �  �  � * � ; � > � F � M � U � ] � h � r � | � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	 � � �# �) �H �N �f �� �� �� ��   p  M =��   ���    ���   �� '   �� '  ���  *f�   ;U��  >R��  � ��   � ��  	�   ~ � ' J@� ? 	  � J � � �  � !�  P�  
  � J � � P  �K ��  
  � J � � P  � '/�   �  �  �  �    �    � � �   }     "+� �+��� �M,�	M,�M,�   �       �  �  �  �  �   ��        "��     "��   �� �    �   �    a b �   }     5*�� *��*�� *��*�� 
*�� *��   �       �  �  �  � " ��       5��  �    "C$�    �    � b �   �     O*�� 8* ��*�� *"��*�� *�$Y*��&�)�*�� 
*�� *�+�   �       �  �  �  � " � * � < ��       O��  �   	 "C$�    �   5 b �   }     5*�,� */��,*�,� *1��,*�,� 
*�,� *�3�   �          "�       5��  �    "C$�    �   ? b �   }     5*�6� *9��6*�6� *;��6*�6� 
*�6� *�=�   �          "�       5��  �    "C$�    �    v w �   �     $*� �M+,�@N-�F�K`6*� *�Q�   �          ! " ##�   4    $��     $��   ��   ��   � ' �   �   
 r s �   �     6K�T� �T�X�^K*� �^Y

�`K�YY*�c�T*�f�j�   �      , / 0 2 3 #4 .6�      4��  �   	 � ^ |} �  �     �*� x� �*�l<*�o=>6� =6� .*�r:*�v:�z�~`�K>���҄��� ���>6� *���� ������*�Yh*� *h��� x*� x�   �   N   @ A B E F G %H /I ;K =L FK JG PF VO ^Q gR vQ |U �W�   \ 	 / ��  ; ��   1� '   @� '  a � '   �� '   � '   }� '    ���  �   $ �     � � 0� � 
� � �    �    � � �   2     *��� (�   �      [�       ��   �� �   :     **� �*� ���� J�   �      _�       ��   � w �   [     *� � *+� t*+���   �      d e g h�       ��     �� �    �   �  �    �   �� �   _     	*���   �   
   n o�   4    	��     	� '    	� '    	�     	�  �   �  �  �  �  �    �   � - �   �     %*�ld<*�od=� *��� �������   �      x y z { y #~�       � '    %��    � ' �    � �  �  �   B      ��� �������� ��T�   �       5  6 
 � % �   ��      � 
�     � ��	