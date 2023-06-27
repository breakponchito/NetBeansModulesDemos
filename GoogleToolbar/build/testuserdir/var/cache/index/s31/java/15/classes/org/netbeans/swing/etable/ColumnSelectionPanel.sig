����   40
      javax/swing/JPanel <init> ()V  java/util/HashMap
  	      .org/netbeans/swing/etable/ColumnSelectionPanel 
checkBoxes Ljava/util/Map;
       org/netbeans/swing/etable/ETable getColumnModel &()Ljavax/swing/table/TableColumnModel;  +org/netbeans/swing/etable/ETableColumnModel	     columnModel -Lorg/netbeans/swing/etable/ETableColumnModel;
     getAllColumns ()Ljava/util/List;	 ! " # $ % Eorg/netbeans/swing/etable/ColumnSelectionPanel$ETableColumnComparator DEFAULT GLorg/netbeans/swing/etable/ColumnSelectionPanel$ETableColumnComparator;
 ' ( ) * + java/util/Collections sort )(Ljava/util/List;Ljava/util/Comparator;)V
  - . / layoutPanel I(Ljava/util/List;ILorg/netbeans/swing/etable/ETable;)Ljavax/swing/JPanel;
  1 2 3 getPreferredSize ()Ljava/awt/Dimension;
  5 6 7 getCurrentGraphicsConfiguration "()Ljava/awt/GraphicsConfiguration;
  9 : ; getUsableScreenBounds 6(Ljava/awt/GraphicsConfiguration;)Ljava/awt/Rectangle;	 = > ? @ A java/awt/Dimension width I	 C > D java/awt/Rectangle	 = F G A height	 C F J 0org/netbeans/swing/etable/ColumnSelectionPanel$1
 I L  M G(Lorg/netbeans/swing/etable/ColumnSelectionPanel;Ljava/awt/Rectangle;)V
 O P Q R S javax/swing/JScrollPane setViewportView (Ljava/awt/Component;)V
  U V W add *(Ljava/awt/Component;)Ljava/awt/Component; Y java/awt/GridBagLayout
 X 
  \  ] (Ljava/awt/LayoutManager;)V _ java/util/ArrayList
 ^  b c d e f java/util/List size ()I b h i j get (I)Ljava/lang/Object; l &org/netbeans/swing/etable/ETableColumn n javax/swing/JCheckBox
 m 
  q r s transformValue &(Ljava/lang/Object;)Ljava/lang/Object;
 k u v w getHeaderValue ()Ljava/lang/Object;
 y z { | } java/lang/Object toString ()Ljava/lang/String;
   � � getColumnDisplayName &(Ljava/lang/String;)Ljava/lang/String;
 m � � � setText (Ljava/lang/String;)V � � � � � java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  � � � isColumnHidden "(Ljavax/swing/table/TableColumn;)Z
 m � � � setSelected (Z)V
 k � � � isHidingAllowed ()Z
 m � � � 
setEnabled
 ^ � � � contains (Ljava/lang/Object;)Z � � i s
 ^ � V � � java/lang/IllegalStateException � java/lang/StringBuilder
 �  � Wrong object theFirstOne is 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � z
 � �  �
 ^ � � j remove � java/lang/String
 � � � � � java/text/Collator getInstance ()Ljava/text/Collator;
 ^ � V � (ILjava/lang/Object;)V � ColumnsSelectorHint �  org/netbeans/swing/etable/Bundle
 � � � � � java/util/ResourceBundle 	getBundle .(Ljava/lang/String;)Ljava/util/ResourceBundle;
 � � � � 	getString � java/awt/GridBagConstraints
 � 	 � � � A gridx	 � � � A gridy � java/awt/Insets
 � �  � (IIII)V	 � � � � insets Ljava/awt/Insets;	 � � � A anchor � javax/swing/JLabel
 � �
  � V � )(Ljava/awt/Component;Ljava/lang/Object;)V
 ^ � � � iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext � � � w next
 ^ c
 ^ h � Wrong object obj is 	 � � � � weightx D � �  keySet ()Ljava/util/Set; � java/util/Set
 m � 
isSelected
 	
 setColumnHidden #(Ljavax/swing/table/TableColumn;Z)V
  � isPopupUsedFromTheCorner
  showColumnSelectionPopup 9(Ljava/awt/Component;Lorg/netbeans/swing/etable/ETable;)V
  showColumnSelectionDialog %(Lorg/netbeans/swing/etable/ETable;)V
  ;(Ljava/awt/Component;IILorg/netbeans/swing/etable/ETable;)V
  � isColumnHidingAllowed javax/swing/JPopupMenu
 
 !"# getColumnSelector 1()Lorg/netbeans/swing/etable/TableColumnSelector;% javax/swing/JMenuItem
 '( } getSelectVisibleColumnsLabel
$ �+ 0org/netbeans/swing/etable/ColumnSelectionPanel$2
*- 
$/01 addActionListener "(Ljava/awt/event/ActionListener;)V
3 V4 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem; b �7 javax/swing/JCheckBoxMenuItem
6 
6 �
6 �
6 �= 0org/netbeans/swing/etable/ColumnSelectionPanel$3
<? @ �(Lorg/netbeans/swing/etable/ETableColumnModel;Lorg/netbeans/swing/etable/ETableColumn;Ljavax/swing/JCheckBoxMenuItem;Lorg/netbeans/swing/etable/ETable;)V
6/
CDE show (Ljava/awt/Component;II)V
 GHI getColumnHierarchyRoot :()Lorg/netbeans/swing/etable/TableColumnSelector$TreeNode;
 KLM getAvailableColumnNames 8(Lorg/netbeans/swing/etable/ETable;Z)[Ljava/lang/String;
OPQRS -org/netbeans/swing/etable/TableColumnSelector selectVisibleColumns `(Lorg/netbeans/swing/etable/TableColumnSelector$TreeNode;[Ljava/lang/String;)[Ljava/lang/String;
 UVW makeVisibleColumns 8(Lorg/netbeans/swing/etable/ETable;[Ljava/lang/String;)V
OYRZ ;([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
 -] javax/swing/JOptionPane
\_`a showConfirmDialog <(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)I
 cd  changeColumnVisibility
 fg  "updateColumnSelectionMouseListeneri java/util/HashSet
klmno java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
hq r (Ljava/util/Collection;)V
h �u Cannot find column with name 
 kwx w getIdentifier
 z{| getColumnIndex (Ljava/lang/Object;)I
 ~� 
moveColumn (II)V
 ��� 
getColumns ()Ljava/util/Enumeration;
 '��� list .(Ljava/util/Enumeration;)Ljava/util/ArrayList;
 ^��� toArray (([Ljava/lang/Object;)[Ljava/lang/Object;� [Ljava/lang/String;
����� java/awt/KeyboardFocusManager getCurrentKeyboardFocusManager !()Ljava/awt/KeyboardFocusManager;
���� getFocusOwner ()Ljava/awt/Component;
����� javax/swing/SwingUtilities getWindowAncestor '(Ljava/awt/Component;)Ljava/awt/Window;
���� 7 java/awt/Window getGraphicsConfiguration
����� java/awt/GraphicsEnvironment getLocalGraphicsEnvironment  ()Ljava/awt/GraphicsEnvironment;
���� getDefaultScreenDevice ()Ljava/awt/GraphicsDevice;
���� 7 java/awt/GraphicsDevice getDefaultConfiguration
����� java/awt/GraphicsConfiguration 	getBounds ()Ljava/awt/Rectangle;
 C� � (Ljava/awt/Rectangle;)V COLUMNS_SELECTOR_HINT Ljava/lang/String; ConstantValue 	Signature PLjava/util/Map<Lorg/netbeans/swing/etable/ETableColumn;Ljavax/swing/JCheckBox;>; Code LineNumberTable LocalVariableTable currentScrollPane Ljavax/swing/JScrollPane; this 0Lorg/netbeans/swing/etable/ColumnSelectionPanel; table "Lorg/netbeans/swing/etable/ETable; colModel $Ljavax/swing/table/TableColumnModel; etcm columns Ljava/util/List; p Ljavax/swing/JPanel; prefSize Ljava/awt/Dimension; screenBounds Ljava/awt/Rectangle; toAdd Ljavax/swing/JComponent; LocalVariableTypeTable 1Ljava/util/List<Ljavax/swing/table/TableColumn;>; StackMapTable� "javax/swing/table/TableColumnModel� javax/swing/JComponent MethodParameters dName firstCheckBox Ljavax/swing/JCheckBox; al Ljava/util/ArrayList; theFirstOne Ljava/lang/Object; etc (Lorg/netbeans/swing/etable/ETableColumn; checkBox transformed transfCheckBox col gridBagConstraints Ljava/awt/GridBagConstraints; displayName obj it Ljava/util/Iterator; displayNameToCheckBox displayNames first i j index rows hint .Ljava/util/ArrayList<Ljavax/swing/JCheckBox;>; (Ljava/util/Iterator<Ljava/lang/String;>; 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; )Ljava/util/ArrayList<Ljava/lang/String;>; j(Ljava/util/List<Ljavax/swing/table/TableColumn;>;ILorg/netbeans/swing/etable/ETable;)Ljavax/swing/JPanel; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked >Ljava/util/Iterator<Lorg/netbeans/swing/etable/ETableColumn;>;  showColumnSelectionPopupOrDialog c Ljava/awt/Component; selector Ljavax/swing/JMenuItem; Ljavax/swing/JCheckBoxMenuItem; finalChB posx posy popup Ljavax/swing/JPopupMenu; tcs /Lorg/netbeans/swing/etable/TableColumnSelector; 6Ljava/util/ArrayList<Ljavax/swing/JCheckBoxMenuItem;>; 5Ljava/util/Iterator<Ljavax/swing/table/TableColumn;>; java/awt/Component origVisible visibleColumns availableColumns root 8Lorg/netbeans/swing/etable/TableColumnSelector$TreeNode; panel res 6org/netbeans/swing/etable/TableColumnSelector$TreeNode currentIndex visible Ljava/util/HashSet; nameToColumn 'Ljava/util/HashSet<Ljava/lang/String;>; KLjava/util/Map<Ljava/lang/String;Lorg/netbeans/swing/etable/ETableColumn;>; visibleOnly Z w Ljava/awt/Window; 
focusOwner gconf  Ljava/awt/GraphicsConfiguration; 
SourceFile ColumnSelectionPanel.java InnerClasses ETableColumnComparator TreeNode        �� �    �    �   �         �  �     �*� *� Y� 	� 
+� M,� � �,� N*-� -� :�  � &6*+� ,:� 0:� 4� 8::
� <� Bdd� � E� Hdd� � IY*� K:		� N	:
� :
*
� TW�   �   V    L  D  M  N  O  R ! S & T , U 4 V 7 X B Y I Z Q \ T ^ t a � m � n � p � s � t�   p  � �� 	   ���     ���   ���  ! y�   , n��  7 c @ A  B X��  I Q��  Q I��  T F�� 
�     , n�� �   8 �    �  � W   �  b  = C �  �   �    . / �  �    л Y� XY� Z� [:� Y� 	:� ^Y� `:6+� a �(+� g � k:� mY� o:	-� p:

� 
� -� t� x� ~:� 

� x:	� �-	� p� m:� :	*� 
	� � W	*� � �� � � �	� �� �� �� 	� � W� v:� � :� m� � m:� ^Y� `:� �W� 1� ^� � ^:� � �Y� �Y� ��� �� �� �� ��	� �W� � W� �W����� �� �:� �� &� �66	6
+� a l6-¶ p:¦ ĸ �¶ �:� E� �Y� �:� �� �� �Y� ڵ �� �� �Y� x� �� �� �:� � � �� 	6�	� � � �:� � ::� m� � m:� M� ^� )� ^:
� �� 6

�
� �� m:� � �Y� �Y� ��� �� �� �� ��� �Y� �:	� �� � ``� �� �Y� ڵ �� �� �� ���"�   �  . K   {  |  } " ~ 0  = � F � N � Z � k � r � y � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �3 �; �G �O ~U �` �h �p �s �v �y �� �� �� �� �� �� �� �� �� �� �� �� �� �  � � � � �% �/ �7 �> �H �K �Z �] �y �� �� �� �� �� �� �� �� ��  .  h ��  � ��  � p��  � e��  =��  F	�� 	 N�� 
 r ���  � ���  %0� A � 9�� > ��  ���  ���  ��� � E�� � ���   ���    ���   � @ A   ���  ���  ��   "��� `p�� s]� A vZ� A 	yW� A 
�M� A �E�� �   >  � p�� > �� � ���   ���  ���  "��� �  h � %   b   � ^  � 4 k m y�  ��  m_ m�     b   � ^ k m y � m  m%� 0 ^ y� �    b   � ^  � H   b   � ^ � y  � F�  �� + � y m�  ^� �    b   � ^ � y � � y m �  ��    b   � ^ � y � � y m �  �� 1   b   � ^ � y  �   �   @  �  �   ��      [ s d  �       P*� � �*� 
� � � L+� � � 2+� � � kM*� 
,� � � mN*� ,-�� � ���˱   �   "    �  �  �   � * � 8 � L � O ��   *  * "��  8 ��   8��    P��  �      8� �   ? �  �� 0   � k m   k�     � k m   k�   �   ^     +�� *+�� +��   �       �  �  �  ��            �� �    �   	  �   �   B     
*+��   �   
    � 	 ��       
     
�� �   	  �   �  �    W-�� ��Y�:-� :� � �-� :� /-�� (�$Y-�&�):�*Y-�,�.�2W��� :� :�  � &� Y� 	:	� ^Y� `:
�5 :� � �"� � � k:�6Y�8:-� p:� � -� t� x� ~:� 
� x:�9-� p�6:� �� � �:� ��;:�<Y-�>�A
� �� 	� � W� v:	� � :�6� �6:� ^Y� `:� �W� 1� ^� � ^:� � �Y� �Y� ��� �� �� �� ��� �W	� � W
� �W���
� �� &6
� �:� � � �� � � �:	� � ::�6� �6:� M� ^� )� ^:� �� 6�� ��6:� � �Y� �Y� ��� �� �� �� ���2W��x*�B�   �   A           &	 2
 ? L T W ^ e m v  � � � � � �  �" �# �$ �%&'.$03364A5I6P7Y8a9d;l<v>�A�B�D�E�F�G�H�I�J�K�L�M�QRSTV$W'XC[K\N^V_�    ?   � �� P �	 6 p�� A e��  ���  ��	  � ���  � ���  �
	  �)��  �� � r�� � g�� � d�	 � ���  ^��   e���  v��  	 ��� 
� �� A   W    W A   W A   W��  F  @ �  &1 �   H 6 p�  �)�  � � ���  e���  v��� 	 ��� 
�   � � �� 6O� 0  �O  b � ^ �  � 2 k6 y�  �a6�    �O  b � ^ � k6 y � 6� <6� 0 ^ y� � 
  �O  b � ^  �  �� 5 � y6�  ^� � 
  �O  �         � �      [ s  �  }     {*�� �*� L+� L*� � M,�FN-� *�J:+-�N:*�T� !*�J:*�J:+�X:*�T�� Y*�[M*,*�&�^>� ,�b*�e�   �   Z   e f g h i j k "l )m 2n 8o ;p Bq Ir Ss Yu Zx cy nz r{ v| z~�   p  ) �  2 �  B �  I �  S �   A�    <    {��    n  c �  n  A �    � 2O �  �  �   �   
VW �  �  
   �hY+�j�pM*� N-� � �-� :� :�  � &� Y� 	:�5 :� � � A� � � k:*� t� x� ~:	,	�s� � �	� � W���6+�� R+2� � � k:� "� �Y� �Y� �t� �+2� �� �� ���v�y6		�}�����   �   Z   � � � � � � &� .� 7� J� V� d� y� �� �� �� �� �� �� �� �� ���   �  V /��  d !�� 	 @ H��  � 9��  � 	 A 	 � V� A    ���     ��   �    � �   ��   & ���  7 �!  �   *  @ H�   �"  & ���  7 �!# �   � � h�� &  �h�  b � �  � 4 
 �h�  b � � k �   k�   
 �h�  b � � k �   k� � � : k� �   	�     
LM �  �  	   �*� M,� � � ��,� N� -����:� 	-� :�  � &� ^Y� `:�5 :� � � (� � � k:*� t� x� ~:� �W���� �� &� �� ������   �   B   � � � � � � &� ,� 4� =� P� \� j� r� u� }��   f 
 # ��  \ ��  j ��  F /��    ���     �$%   � �   x�   , b��  = Q�� �   *  # ��  F /�  , b��  = Q�� �     � ��  �  b�  ^ �� .�   	�  $   
 6 7 �   y     #����K*� *��L+� +����������   �      � � � � � ��      	&'   (  �    �  
 : ; �   U     *� ������K� CY*�����   �      � � ��       )*  �    �   )   +   ,-   *  ! . 
 I      *      <      O/	