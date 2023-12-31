����   4K
      (org/openide/explorer/view/NodeTableModel columnForProperty (Ljava/lang/String;)I
   	 
 
rowForNode (Lorg/openide/nodes/Node;)I
      $javax/swing/table/AbstractTableModel <init> ()V  4org/openide/explorer/view/NodeTableModel$ArrayColumn	     allPropertyColumns 7[Lorg/openide/explorer/view/NodeTableModel$ArrayColumn;	     propertyColumns [I  org/openide/nodes/Node	      nodeRows [Lorg/openide/nodes/Node;	  " # $ 
sortColumn I	  & ' ( existsComparableColumn Z	  * + , treeColumnProperty !Lorg/openide/nodes/Node$Property; . *org/openide/explorer/view/NodeTableModel$1
 - 0  1 -(Lorg/openide/explorer/view/NodeTableModel;)V	  3 4 5 pcl #Ljava/beans/PropertyChangeListener;	  7 8 ( $assertionsDisabled : java/lang/AssertionError
 9 
 = > ? @ A java/awt/EventQueue isDispatchThread ()Z C java/lang/IllegalStateException E 1Must be called in AWT to assure data consistency.
 B G  H (Ljava/lang/String;)V
 J K L M N org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
  P Q R removePropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  T U R addPropertyChangeListener
  W X  fireTableDataChanged Z TreeColumnTTV
 \ ] ^ _ ` org/openide/nodes/Node$Property getValue &(Ljava/lang/String;)Ljava/lang/Object; b java/lang/Boolean
 a d e A booleanValue g java/util/TreeMap
 f 
  
  k l m setProperty $(Lorg/openide/nodes/Node$Property;)V
  o p q 	isVisible $(Lorg/openide/nodes/Node$Property;)Z s OrderNumberTTV u java/lang/Integer
 t w x y doubleValue ()D
 { | } ~  java/lang/Double valueOf (D)Ljava/lang/Double;
 t � ~ � (I)Ljava/lang/Integer; � � � � � java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;?�������
  � � � setVisibleIndex (I)V � SortingColumnTTV	 a � � � FALSE Ljava/lang/Boolean;
 \ � � � setValue '(Ljava/lang/String;Ljava/lang/Object;)V � ComparableColumnTTV � � � � values ()Ljava/util/Collection; � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � A java/util/Iterator hasNext � � � � next ()Ljava/lang/Object;
 t � � � intValue ()I
  � �  fireTableStructureChanged
  � � � getVisibleIndex
  � � � getProperty #()Lorg/openide/nodes/Node$Property; � DescendingOrderTTV
  � � � getWidth
  � � � setWidth
  � � � isComparableColumnEx (I)Z	 a � � � TRUE
  � � � isSortingColumnEx
  � � � (I)I
  � � � getPropertySets '()[Lorg/openide/nodes/Node$PropertySet;
 � � � � � "org/openide/nodes/Node$PropertySet getProperties $()[Lorg/openide/nodes/Node$Property;
 \ � � � equals (Ljava/lang/Object;)Z
  � � � propertyForColumnEx $(I)Lorg/openide/nodes/Node$Property;
  �
 \ � � � getName ()Ljava/lang/String;
 � � � java/lang/String � InvisibleInTreeTableView
  � � � getPropertyFor \(Lorg/openide/nodes/Node;Lorg/openide/nodes/Node$Property;)Lorg/openide/nodes/Node$Property;
  � � � 
getValueAt (II)Ljava/lang/Object;
  � � � getColumnNameEx (I)Ljava/lang/String;
 \ � � � getDisplayName � javax/swing/JPanel
 �   java/awt/GridBagLayout
 � 
 � 	setLayout (Ljava/awt/LayoutManager;)V
 �	 getAccessibleContext )()Ljavax/accessibility/AccessibleContext; ACSN_ColumnDialog
 org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 H %javax/accessibility/AccessibleContext setAccessibleName ACSD_ColumnDialog
 H setAccessibleDescription java/util/ArrayList
  �! java/awt/GridBagConstraints
  	 $% $ 	gridwidth	 '( $ anchor* java/awt/Insets
), - (IIII)V	 /01 insets Ljava/awt/Insets;	 34 $ fill	 678 weightx D: javax/swing/JLabel< LBL_ColumnDialogDesc
9 G
 �?@A add )(Ljava/awt/Component;Ljava/lang/Object;)VC javax/swing/JCheckBoxE java/lang/StringBuilder
D 
DHIJ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;L : 
DNO � toString
BQ R (Ljava/lang/String;Z)V
BTUV 
setEnabled (Z)V
 XYZ getDisplayNameWithMnemonic 5(Lorg/openide/nodes/Node$Property;)Ljava/lang/String;
 \\] � getShortDescription
 f �
 f`ab keySet ()Ljava/util/Set;d �e java/util/Set
 fghi get &(Ljava/lang/Object;)Ljava/lang/Object;
klmno org/openide/awt/Mnemonics setLocalizedText 1(Ljavax/swing/AbstractButton;Ljava/lang/String;)V
 qrs makeAccessibleCheckBox ;(Ljavax/swing/JCheckBox;Lorg/openide/nodes/Node$Property;)V
u@ �w LBL_ColumnDialogTitle
 �yz � length|  - ~ org/openide/DialogDescriptor	}��� 	OK_OPTION Ljava/lang/Object;
}� � u(Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;ILorg/openide/util/HelpCtx;Ljava/awt/event/ActionListener;)V
����� org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;
���� createDialog 1(Lorg/openide/DialogDescriptor;)Ljava/awt/Dialog;
����V java/awt/Dialog 
setVisible
}� _ �
� �� java/lang/Object
�� � size
�h� (I)Ljava/lang/Object;
B�� A 
isSelected
 ��� %(Lorg/openide/nodes/Node$Property;Z)V
 �� � computeVisiblePorperties�  ColumnDisplayNameWithMnemonicTTV
�N
B� ColumnMnemonicCharTTV
 ���� charAt (I)C
B��� setMnemonic (C)V
���� A java/lang/Class desiredAssertionStatus ATTR_INVISIBLE Ljava/lang/String; ConstantValue ATTR_COMPARABLE_COLUMN ATTR_SORTING_COLUMN ATTR_DESCENDING_ORDER ATTR_ORDER_NUMBER ATTR_TREE_COLUMN ATTR_MNEMONIC_CHAR ATTR_DISPLAY_NAME_WITH_MNEMONIC Code LineNumberTable LocalVariableTable this *Lorg/openide/explorer/view/NodeTableModel; setNodes ([Lorg/openide/nodes/Node;)V i nodes asserts StackMapTable MethodParameters setProperties %([Lorg/openide/nodes/Node$Property;)V o props "[Lorg/openide/nodes/Node$Property; treePosition visibleCount sort Ljava/util/Map; ia j it Ljava/util/Iterator; LocalVariableTypeTable 6Ljava/util/Map<Ljava/lang/Double;Ljava/lang/Integer;>;� vi p visCount )Ljava/util/Iterator<Ljava/lang/Integer;>; getVisibleColumnWidth column getArrayColumnWidth setVisibleColumnWidth (II)V width setArrayColumnWidth 
arrayIndex getArrayIndex visibleIndex isComparableColumn isVisibleColumnEx setSortingColumnEx translateVisibleColumnIndex index getVisibleSortingColumn getSortingColumn isSortOrderDescending setSortOrderDescending 
descending node Lorg/openide/nodes/Node; prop propSets %[Lorg/openide/nodes/Node$PropertySet;� 
nodeForRow (I)Lorg/openide/nodes/Node; row propertyForColumn getColumnCountEx propName visible getRowCount getColumnCount pc ac 6Lorg/openide/explorer/view/NodeTableModel$ArrayColumn; isCellEditable (II)Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getColumnClass (I)Ljava/lang/Class; getColumnName selectVisibleColumns 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z boxtext b Ljavax/swing/JCheckBox; num nv viewName treeColumnName treeColumnDesc changed panel Ljavax/swing/JPanel; boxes Ljava/util/ArrayList; 	oldvalues [Z sortpointer gridBagConstraints Ljava/awt/GridBagConstraints; labelConstraints desc Ljavax/swing/JLabel; firstConstraints first Ljava/util/TreeMap; title dlg Lorg/openide/DialogDescriptor; dialog Ljava/awt/Dialog; .Ljava/util/ArrayList<Ljavax/swing/JCheckBox;>; :Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Integer;>; (Ljava/util/Iterator<Ljava/lang/String;>;#  res displayNameWithMnemonic box mnemonicChar 
moveColumn from to 
access$000 E(Lorg/openide/explorer/view/NodeTableModel;Lorg/openide/nodes/Node;)I x0 x1 
access$100 ?(Lorg/openide/explorer/view/NodeTableModel;Ljava/lang/String;)I <clinit> 
SourceFile NodeTableModel.java InnerClasses ArrayColumn Property PropertySet !      �� �    � �� �    � �� �    � �� �    � �� �    r �� �    Y �� �   � �� �   �                   # $    ' (    + ,    4 5   8 (   ,    �   }     7*� *� � *�
� *� � *� !*� %*� )*� -Y*� /� 2�   �   "    5  @  C  F  I   L % M * P�       7��   �� �       r=� 6� Y=� � 9Y� ;�� � <� � BYD� F� I>*� �� *� 2*� 2� O����*+� >*� �� *� 2*� 2� S����*� V�   �   6    g  h  i   j , l 7 m D l J o O q Z r g q m t q u�   4  . � $  Q � $    r��     r�     p� ( �    � � � � � �   �   �� �  �    �=� 6� Y=� � 9Y� ;�� � <� � BYD� F� I+�>*� !*� )66+�� 6+2Y� [:� a� � a� c� *+2� )��6����*� � 6*� %� fY� h:66+�� �� �*� � Y� iS*� 2+2� j*+2� n� N�+2r� [:		� t� 	� t� v� z� �� � W� � �c� z� �� � W� -*� 2� �+2�� [:		� a� +2�� �� �*� %� "+2�� [:		� a� *	� a� c� %����**�
� 6	� � � � :

� � � -
� � � t� �6*� 2	� �*� 	O�	���*� ��   �   � 5   {  |  }   ~ , � / � 4 � 9 � < � F � Q � Y � d � l � o � s � y � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �# �. �6 �B �I �T �\ �h �k �q �y �| �� �� �� �� �� �� �� ��   �  Q "��  ? :� $  � :�� 	. �� 	T �� 	  ���    ���  �� (  /�� $  <�� $  �?� $  �1��  �.� $  �+� $ | G� $ 	� 9�� 
�     �1�� �   = � � 3� �  	 � �  � e�� )%�  �3�   �   � � �  !     �*�
� � fY� hM>*� �� B*� 2� �6� ,� �g� z� �� � W� ,�� z� �� � W����>,� � � � :� � � ~� � � t� �6*� 2� �:*� n� *� O*� 2� ��� >*� 2� ��� [:� a� "� a� c� �� �� ��� �� ���~*� ��   �   j    �  �  �  � % � + � B � S � Y � [ � h � r � � � � � � � � � � � � � � � � � � � � � � � � � � � � ��   f 
 % .� $   H� $  � '��  � i� $  � ]� ,    ���     �� $   ���  [ �� $  h ��� �      ���  h ��� �   % �  �� 0� � �  �� F \� :�   �    � � �   C     *� *� .2� ��   �      �       ��     � $ �   �    � � �   >     
*� 2� ��   �      �       
��     
� $ �   �    �� �   R     *� *� .2� ��   �   
    �        ��     � $    � $ �   	�  �    �� �   M     *� 2� ��   �   
    
�        ��     � $    � $ �   	�  �     � � �   >     
*� 2� ��   �      %�       
��     
� $ �   �    � � �   �     "=*� �� *� 2� �� ������   �      - . / -  3�       � $    "��     "� $ �   
 � � �   �    � � �   ?     **� .� Ĭ   �      ;�       ��     � $ �   �     � � �   �     "*� 2� �M,�� [N-� a� -� a� c��   �      C 
D F G  J�   *    "��     "� $  
 � ,   �� �    �   \��   �    � � �   }     =*� �� *� .� ������   �      R S T R X�       � $    ��     � $ �   
 � � �   �     ' A �   /     *� %�   �      ^�       ��     � � �   �     "*� 2� �M,�� [N-� a� -� a� c��   �      f 
g i j  m�   *    "��     "� $  
 � ,   �� �    �   \��   �    � � �   �     P*� !� "*� *� !2� �M,�� �� �,�� �� �� !*� !*� *� !2� �M,�� ȶ �� *� !�   �   .   u v w x '{ ,| 1~ > G� J� O��   *   � ,  > 	� ,    P��     P� $ �    '"�   �    � � �   R     � �*� .�   �      � � ��       ��     � $ �    �   �    � � �   �     S*� !� 0<*� �� "**� .� ˙ **� .� !����ۧ **� *� !2� �� n� **� !� ά�   �   & 	  � � �  � *� ,� 5� H� Q��     
 (� $    S��  �    � 
!�   � � �   �     2*� !� &<*� �� *� ˙ 
*� !����� *� !��   �   "   � � � �  � "� +� 0��     
 � $    2��  �    � 
�   � A �   �     /*� !� �*� *� !2� �L+�� [M,� a� ,� a� c��   �      � � 
� � � %� -��        /��    � ,   �� �    
� " \�  �V �   �     )*� !� #*� *� !2� �M,�� 	� ȧ � �� ��   �      � � � (��       � ,    )��     )� ( �   0 � "   \  \ ��    \  \ � a� �   �    � � �   �     C+� �N6-�� 5-2� �:6�� ,2� ۙ 	2���������   �   & 	  � � � � #� /� 5� ;� A��   H    � $   #��   9� $    C��     C��    C� ,   >�� �    � �� �� � �   	�  �      �   ;     *� 2�   �      ��       ��      $ �        � �   V     � 
*� .<*� ߰   �      � � ��       ��     � $ �    �   �     � � �   Y     � *� )�*� 2� ��   �      � � 
��       ��     � $ �    
�   �     � �   0     *� ��   �      �       ��    	 
 �   �     "=*� �� +*� 2� � ������   �           �       � $    "��     "�� �   
 � � �   �      �   �     -=*� �� #*� *� .2� �� �+� � ������   �        # % +�       )� $    -��     -� �   
 � "� �       p q �   {      +� [M,� a� ,� a� c� � ��   �      " $ % (�         ��      � ,   �� �    � �@ �   �   �� �   �     +�� 	� ȧ � �� ��   �   
   . /�        ��     � ,     ( �   - �    \  \ ��    \  \ � a�   	�      � �   0     *� ��   �      9�       ��    � �   0     *� ��   �      @�       ��    � � �   �     #*� 2N*� .6*� 2:*-� �� ��   �      I J K L�   >    #��     # $    #� $   ��   	 $   
 �   	  �    �   X     *� �� � �   �      V�        ��      $    � $ �    @�   	  �          �   7     \�   �      _�       ��     � $ �   �          � �   ?     **� .� ��   �      h�       ��     � $ �   �           � � �   A     *� 2� �� ��   �      p�       ��     � $ �   �     �  * 
   �6� �Y� �:� �Y���
������Y*� ��:*� ��:*� ��
:� Y�":		�#	�&	�)Y�+�.	�2	�5� Y�":

�#
�&
�)Y�+�.
�2
�5�9Y;��=:
�>� Y�":�#�&�)Y�+�.�2�5�BY�DY�F,�GK�G-�G�M�P:�S�>� fY� h:6*� �� \**� 2� �� nT�DY�F**� 2� ��W�GK�G*� 2� ��[�G�M:� ��^W�����_�c :6� � � c� � � �:�f� t� �6�BY3�P:�j**� 2� ��pO	�>�tW����v�:+� %+�x� �DY�F+�G{�G�G�M:�}Y���:����:�������� i��666� J���B:.6��3� **� 2� �����6��� ������ 	*���   �  2 L  v x y { "| %{ (} 2~ 5} 8� F� O� X� a� g� n� �� �� �� �� �� �� �� �� �� �� �� �� �� ���
��2�8�A�J�W�j��������������������������#�&�)�3�>�Y�n�x�~������������������������������  $ � � M c� $ � B� $ � 2 � T� � 5 � N� $ � _ $ � \ $   ���    ��   ��   ��  � (  �  F� !  O�"#  X�$   a�%& 	 �`'& 
 �#()  �*& 2�+ J��, �9�� �6� $ 3 �-� n �./ x }01 �      F� 2 J��3 �9�4 �   � 
�M   � � � �56  9 B  f  � b�  �� i� / �� ?   � � � �56  9 B  f � �}�  � <B� 
� � 
�           YZ �   �     (M+�� [N-� -���x� -��M� +� �M,�   �      � � 
� � !� &��   *    (��     (� ,   &7�  
 8� �    � ! ���   �    rs �   �     :+��,� ��+��,�[�,�� [N-� -���x� +-�������   �      � � � � -� 9��   *    :��     :9    :� ,   :� �    � 9��   	9  �    ;� �   �     9*� .>*� .6*� O*� O*� 2� �*� 2� �*� !�   �   "        (	 3 8�   4    9��     9< $    9= $   2� $   *� $ �   	<  =  >? �   :     *+� �   �       5�       @�     A� BC �   :     *+� �   �       5�       @�     A�  D  �   4      ��� � � 6�   �       5�    @ E   FG   "   H  \ I	 -       � J	