����   4
      (org/openide/explorer/view/TableSheetCell 	getString &(Ljava/lang/String;)Ljava/lang/String;
  	 
   javax/swing/AbstractCellEditor <init> ()V  javax/swing/JTable
  	
     getTableHeader "()Ljavax/swing/table/JTableHeader;
      javax/swing/table/JTableHeader getDefaultRenderer '()Ljavax/swing/table/TableCellRenderer;	     headerRenderer %Ljavax/swing/table/TableCellRenderer;  java/util/WeakHashMap
  		  " # $ 
panelCache Ljava/util/Map;	  & ' ( renderer :Lorg/openide/explorer/view/SheetCell$FocusedPropertyPanel;	  * + , editor 2Lorg/openide/explorer/propertysheet/PropertyPanel;	  . / 0 
tableModel *Lorg/openide/explorer/view/NodeTableModel;
  2 3 4 setFlat (Z)V	 6 7 8 9 : java/awt/Color 	lightGray Ljava/awt/Color; < controlDkShadow
 > ? @ A B javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color;	 6 D E : black G controlLtHighlight	 6 I J : blue L Button.focus	 N O P Q R java/lang/Boolean TRUE Ljava/lang/Boolean;	 N T U R FALSE	  W X R flat Z org/openide/nodes/Node$Property	  \ ] ^ prop !Lorg/openide/nodes/Node$Property;
 ` a b c d (org/openide/explorer/view/NodeTableModel 
nodeForRow (I)Lorg/openide/nodes/Node;	  f g h node Lorg/openide/nodes/Node;
 j k l m n org/openide/nodes/Node addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 ` p q r addTableModelListener )(Ljavax/swing/event/TableModelListener;)V
  t u v 	getEditor m(Lorg/openide/nodes/Node$Property;Lorg/openide/nodes/Node;)Lorg/openide/explorer/propertysheet/PropertyPanel;
  x y z getSelectionBackground ()Ljava/awt/Color;
 | } ~  � 0org/openide/explorer/propertysheet/PropertyPanel setBackground (Ljava/awt/Color;)V
  � � z getSelectionForeground
 | � � � setForeground
 � � � � � javax/swing/BorderFactory createMatteBorder 6(IIIILjava/awt/Color;)Ljavax/swing/border/MatteBorder;
 | � � � 	setBorder (Ljavax/swing/border/Border;)V
 ` � �  fireTableDataChanged
  � �  detachEditor
  � � � stopCellEditing ()Z
  � �  cancelCellEditing
  �
 j � � n removePropertyChangeListener
 ` � � r removeTableModelListener
 � � � � � 2org/netbeans/modules/openide/explorer/TTVEnvBridge getInstance H(Ljava/lang/Object;)Lorg/netbeans/modules/openide/explorer/TTVEnvBridge;
 � � � � setCurrentBeans ([Ljava/lang/Object;)V � 8org/openide/explorer/view/SheetCell$FocusedPropertyPanel
 � �  � %(Lorg/openide/nodes/Node$Property;I)V � beanBridgeIdentifier
 � � � � putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
 � � � � setProperty $(Lorg/openide/nodes/Node$Property;)V X � � � � � #javax/swing/table/TableCellRenderer getTableCellRendererComponent @(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component; � javax/swing/JComponent
 ` � � � propertyForColumn $(I)Lorg/openide/nodes/Node$Property;
 Y � � � getShortDescription ()Ljava/lang/String;
  � � � getColumnName (I)Ljava/lang/String;
 � � � � setToolTipText (Ljava/lang/String;)V
  � � � getRenderer u(Lorg/openide/nodes/Node$Property;Lorg/openide/nodes/Node;)Lorg/openide/explorer/view/SheetCell$FocusedPropertyPanel;
 � � � 4 
setFocused
 Y � � � getValue ()Ljava/lang/Object;
 � � � � � java/lang/Object toString �  java/lang/IllegalAccessException
 � � � � � java/lang/Class getName
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � +java/lang/reflect/InvocationTargetException
 � getFont ()Ljava/awt/Font;
  createHtmlTooltip 5(Ljava/lang/String;Ljava/awt/Font;)Ljava/lang/String;
 � �
 �
 4 	setOpaque
 java/awt/KeyboardFocusManager getCurrentKeyboardFocusManager !()Ljava/awt/KeyboardFocusManager;
 getFocusOwner ()Ljava/awt/Component;
  isAncestorOf (Ljava/awt/Component;)Z java/awt/Container

  � 	isEditing
!"#$ z #org/openide/explorer/view/TreeTable getUnfocusedSelectedBackground
 � }
!'( z getUnfocusedSelectedForeground
 � �
 +, z getBackground
 ./ z getForeground	 123 	nullPanel 4Lorg/openide/explorer/view/TableSheetCell$NullPanel;5 2org/openide/explorer/view/TableSheetCell$NullPanel
47 8 (Lorg/openide/nodes/Node;)V
4

4;<8 setNode
4 }
 6?@ z darker
4 �
4 �
 | �
 | �
 | �
GHIJK org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;M nullO  
QRSTU java/lang/String indexOf (Ljava/lang/String;)IW ,Y ;[ /] >_ \
 ab makeDisplaybled java/util/StringTokenizer
cf g ((Ljava/lang/String;Ljava/lang/String;Z)Vi java/lang/StringBuffer
Qklm length ()I
ho p (I)Vr <html>
htuv append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
cxy � hasMoreTokens
c{| � 	nextToken~ <br>� MSG_ELLIPSIS
h �� </html>� javax/swing/JLabel
� 	
�?�������
Q��� toCharArray ()[C� 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;� \b� \f
 ��� processHtmlEntity (Ljava/lang/StringBuffer;C)Z
����� java/awt/Font 
canDisplay (C)Z
h�u� (C)Ljava/lang/StringBuffer;� \u
���� � java/lang/Integer toHexString� &gt;� &lt;� &amp;� $javax/swing/event/TableModelListener� !java/beans/PropertyChangeListener� !javax/swing/table/TableCellEditor -(Lorg/openide/explorer/view/NodeTableModel;)V Code LineNumberTable LocalVariableTable this *Lorg/openide/explorer/view/TableSheetCell; MethodParameters f Z buttonFocusColor StackMapTable getCellEditorValue getTableCellEditorComponent ?(Ljavax/swing/JTable;Ljava/lang/Object;ZII)Ljava/awt/Component; table Ljavax/swing/JTable; value Ljava/lang/Object; 
isSelected r I c 	propPanel shouldSelectCell (Ljava/util/EventObject;)Z ev Ljava/util/EventObject; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; isCellEditable e propertyChange #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; tableChanged &(Ljavax/swing/event/TableModelEvent;)V #Ljavax/swing/event/TableModelEvent; p n bridge 4Lorg/netbeans/modules/openide/explorer/TTVEnvBridge; tip Ljava/lang/String; comp Ljava/awt/Component; tooltipValue eaE "Ljava/lang/IllegalAccessException; itE -Ljava/lang/reflect/InvocationTargetException; 
focusOwner tableHasFocus tooltipText hasFocus row column property� java/awt/Component prefs updateUI key a font Ljava/awt/Font; token tk Ljava/util/StringTokenizer; sb Ljava/lang/StringBuffer; 	charCount 	lineCount j hex C i str buf chars [C 
access$000 x0 
SourceFile TableSheetCell.java InnerClasses #org/openide/explorer/view/SheetCell FocusedPropertyPanel Property 	NullPanel     ��� � 	  / 0    X R    g h    ] ^        23    # $    ' (    + ,     � �   �     5*� *� Y� � � � *� Y�  � !*� %*� )*+� -*� 1�   �   "    c  X  _   ` % a * d / e 4 f�       5��     5 / 0 �    /    3 4 �   �     J� 5M;� =� 	;� =M� CNF� =� 	F� =N� H:K� =� 
K� =:*� 	� M� � S� V�   �   .    m  o  p  s  u  v $ y ) { 1 | 8  I ��   4    J��     J��   F < :   4 G :  ) !� : �   2 �  6�  6�  6J �    6 6 6   N�   �   � � �   ,     �   �       ��       ��   �� �   �     X*,� Y� [**� -� _� e*� e*� i*� -*� o**� [*� e� s:+� w� {+� �� �+� w� �� ��   �   & 	   �  �  �  � % � 3 � < � E � U ��   H    X��     X��    X��    X��    X��    X��  3 %� , �   �  �  �  �  �   �� �   6     �   �       ��       ��     �� �   �  �    �   �� �   6     �   �       ��       ��     �� �   �  �    �   �� �   @     *� -� ��   �   
    �  ��       ��     �� �   �    � � �   K     *� [� *� �*� ��   �       �  �  ��       ��  �    �    �    �  �   O     *� [� *� �*� ��   �       �  �  �  ��       ��  �    �    �   �� �   =     *� ��   �   
    �  ��       ��     �� �   �    �  �   U     *� e*� �*� -*� �*� e*� [�   �       �  �  �  �  ��       ��    � � �   �     I*� �N-� jY,S� �*� %� *� �Y+	� �� %*� %�*� �*� %+� �*� %�� M� �*� %�   �   "    �  �  �  � & � 0 � 8 � D ��   *    I��     I� ^    I� h   D�� �    � 0 ��   	�  �    � � �  �    �� G*� +,� � :� ř (� *� -� Ƕ ˧ +� �:� �� ��,� Y:*� -� _:� �*� �:		� �:
� �:� 
� �:
� ,:� � � �� �� :� � � �� �	
	� ��	�	� p��:+�  +�� �� �+�� � 6+� +�� 6	� 
+� w� � �%	� 
+� �� �&�)� 	+�*�%	+�-�)	�*�0� *�4Y�6�0*�0�9� *�0�:� a��:	� &+	�  +	�� 	�� 	�+�� � 6
*�0
� 
+� w� � �=*�0+� ��>�A� *�0+�*�=*�0+�-�A*�0�B*�0�  t � � � t � � � �   � 9    
 " 6 = G J P [ ` j q t { �  �& �" �# �& �$ �% �( �) �+ �, �. �/ �1367 6#:%;4:7=:>C?LBOEVFcGnIwL{M�O�P�R�S�R�Y�Z�[�\�_�a�   �  = 
��   0��  { ��  � ��  � ��  � b��  � 8��  j �� ( 	 t ��� 
� S�� 	� $�� 
  ���    ���   ���   ���   ���   ���   ���  P�� ^  [�� h �   � � 6�DQ� � =    � Y j �Q  B �U �� C�@� M ��     � Y j �Q�  � 6P ��     � Y j �Q�  � 6� � � 3�@�     � Y j� 4�     � Y j� 4 6� �   �  �  �  �  �  �    u v �   �     Z>*� �:� jY,S� �*� )� 3*� |Y+�C� )*� )�� M�D*� )�*�D*� )+�E*� )�*� )+�E*� )�   �   .   e g 	m o p *r 6s @u Hw Mz U~�   4    Z��     Z� ^    Z� h   W��  	 Q�� �   	 � M ��   	�  �    �  �   @     *� Y� � � � �   �   
   � ��       ��   
   �   1     *�F�   �      ��       ��  �   �    �  U    *� L�M*N�P� 
NM� c*V�P� 
VM� Q*X�P� 
XM� ?*Z�P� 
ZM� -*\�P� 
\M� *^�P� 
^M� 	*+�`��cY*,�eN�hY*�j`�n:q�sW66-�w� a-�z:+�`:�j`6�sW-�w� �P� -}�sW6�
� �F�sW��������sW���   �   � &  � � � 
� � � '� .� 9� @� K� R� ]� d� o� v� |� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �������   R  � U��   ��    ��  
��  � ���  � ���  � w��  � t�� �   1 � Q� ) Q�Qch  � 0Q� 0�   	�  �   
b �  �     �*� *�+� ��Y����L�hY*�j��k��nM*��N6-�� �-46�      O         9   (   3   O   D   6,��sW� r� o� l,��sW� a,��sW� V,��� M+� +��� ,��W� 5,��sW��:6�jd� ,0��W����,�sW���L,���   �   r   � � � � � )� .� 8� >� h� p� s� v� y� �� �� �� �� �� �� �� � � � � � �� ��   R  � ��  � #��  > ���  1 � �    ��     ���  ) ��  . � �   ) � h� 6


	� Q� � � �   	  �   
�� �   �     I�     D      &   9   <   .   >   #*��sW� *��sW� *��sW� ��   �   & 	   $ , / 7 : B E! G$�       I�     I�� �    $


�   	  �    �   /     *� �   �       A�       �      	
     �  Y j	4  
