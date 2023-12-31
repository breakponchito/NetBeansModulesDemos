����   4	      &org/netbeans/swing/etable/ETableColumn myHeaderRenderer %Ljavax/swing/table/TableCellRenderer;
  	 
   javax/swing/table/TableColumn <init> ()V	     sortRank I	     	ascending Z	     table "Lorg/netbeans/swing/etable/ETable;
     (I)V
     (II)V
     ! M(IILjavax/swing/table/TableCellRenderer;Ljavax/swing/table/TableCellEditor;)V
  # $ % isSortingAllowed ()Z	  ' ( ) 
comparator Ljava/util/Comparator; + java/lang/IllegalStateException - !Cannot sort an unsortable column.
 * /  0 (Ljava/lang/String;)V
  2 3 4 getModelIndex ()I
  6 7 8 getRowComparator (IZ)Ljava/util/Comparator;
  : ; % isSorted = java/lang/StringBuilder
 < 	 @ #getRowComparator returned null for 
 < B C D append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 < F C G -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 < I J K toString ()Ljava/lang/String;
  M N O setHeaderRenderer ((Ljavax/swing/table/TableCellRenderer;)V	  Q R S 
customIcon Ljavax/swing/Icon;
 U V W X Y javax/swing/JTable getModel  ()Ljavax/swing/table/TableModel; [ \ ] ^ 4 javax/swing/table/TableModel getRowCount	  ` a  
modelIndex [ c d e 
getValueAt (II)Ljava/lang/Object;
  g h i estimatedWidth )(Ljava/lang/Object;Ljavax/swing/JTable;)I
  k l  setPreferredWidth
  n o p resize (ILjavax/swing/JTable;)V
  r s 4 getWidth
 U u v w getTableHeader "()Ljavax/swing/table/JTableHeader;
 y z { | } javax/swing/table/JTableHeader setResizingColumn "(Ljavax/swing/table/TableColumn;)V
   � 4 getMinWidth
  � � 4 getMaxWidth
  � �  setMinWidth
  � �  setMaxWidth
  � �  setWidth � (org/netbeans/swing/etable/ETableColumn$1
 � �  � -(Lorg/netbeans/swing/etable/ETableColumn;II)V
 � � � � � javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V
 y � � � 	getParent ()Ljava/awt/Container;
 � � � java/awt/Container � javax/swing/JScrollPane
 � � � � getComponentOrientation !()Ljava/awt/ComponentOrientation;
 � � � � % java/awt/ComponentOrientation isLeftToRight
 y �
 � � � � getViewport ()Ljavax/swing/JViewport;
 � r � javax/swing/JViewport
 U r
 U � � � getSize ()Ljava/awt/Dimension;	 � � � �  java/awt/Dimension width
 U � � � setSize (Ljava/awt/Dimension;)V
 U � � 4 getAutoResizeMode
 � � � � getViewPosition ()Ljava/awt/Point;	 � � � �  java/awt/Point x
 � � � � � java/lang/Math min (II)I
 � � � � max
 � � � � setViewPosition (Ljava/awt/Point;)V
  � � � getCellRenderer '()Ljavax/swing/table/TableCellRenderer; [ � � � getColumnClass (I)Ljava/lang/Class;
 U � � � getDefaultRenderer 8(Ljava/lang/Class;)Ljavax/swing/table/TableCellRenderer;
 U � � � getColumnModel &()Ljavax/swing/table/TableColumnModel;
  � � � getIdentifier ()Ljava/lang/Object; � � � � � "javax/swing/table/TableColumnModel getColumnIndex (Ljava/lang/Object;)I � � � � � #javax/swing/table/TableCellRenderer getTableCellRendererComponent @(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;
 � � � � � java/awt/Component getPreferredSize � ETableColumn-
 J java/lang/Integer (I)Ljava/lang/String; - 
ModelIndex

 java/util/Properties getProperty &(Ljava/lang/String;)Ljava/lang/String;
 parseInt (Ljava/lang/String;)I Width	  � PreferredWidth 	Ascending false
 ! java/lang/String equals (Ljava/lang/Object;)Z# SortRank% HeaderValue	 '() headerValue Ljava/lang/Object;

+,- setProperty 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
 /0 4 getPreferredWidth2 true
4 I5 java/lang/Object7 4org/netbeans/swing/etable/ETableColumn$RowComparator
69 : ,(Lorg/netbeans/swing/etable/ETableColumn;I)V< 9org/netbeans/swing/etable/ETableColumn$FlippingComparator
;> ? (Ljava/util/Comparator;)V	 AB ) nestedComparatorD Iorg/netbeans/swing/etable/ETableColumn$ETableColumnHeaderRendererDelegate
CF G +(Lorg/netbeans/swing/etable/ETableColumn;)VIJKL 4 javax/swing/Icon getIconWidthINO 4 getIconHeight
QRSTU java/awt/GraphicsEnvironment getLocalGraphicsEnvironment  ()Ljava/awt/GraphicsEnvironment;
QWXY getDefaultScreenDevice ()Ljava/awt/GraphicsDevice;
[\]^_ java/awt/GraphicsDevice getDefaultConfiguration "()Ljava/awt/GraphicsConfiguration;a java/awt/Transparency
cdefg java/awt/GraphicsConfiguration getColorModel (I)Ljava/awt/image/ColorModel;i java/awt/image/BufferedImage
klmno java/awt/image/ColorModel createCompatibleWritableRaster #(II)Ljava/awt/image/WritableRaster;
kqr % isAlphaPremultiplied
ht u S(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
hwxy createGraphics ()Ljava/awt/Graphics2D;I{|} 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V
���  java/awt/Graphics dispose� javax/swing/ImageIcon
�� � (Ljava/awt/Image;)V
 ��� 	compareTo +(Lorg/netbeans/swing/etable/ETableColumn;)I� java/lang/Comparable PROP_PREFIX Ljava/lang/String; ConstantValue 
PROP_WIDTH PROP_PREFERRED_WIDTH PROP_SORT_RANK PROP_COMPARATOR� 
Comparator PROP_HEADER_VALUE PROP_MODEL_INDEX PROP_ASCENDING 	Signature ELjava/util/Comparator<Lorg/netbeans/swing/etable/ETable$RowMapping;>; %(Lorg/netbeans/swing/etable/ETable;)V Code LineNumberTable LocalVariableTable this (Lorg/netbeans/swing/etable/ETableColumn; MethodParameters &(ILorg/netbeans/swing/etable/ETable;)V '(IILorg/netbeans/swing/etable/ETable;)V o(IILjavax/swing/table/TableCellRenderer;Ljavax/swing/table/TableCellEditor;Lorg/netbeans/swing/etable/ETable;)V cellRenderer 
cellEditor #Ljavax/swing/table/TableCellEditor; 	setSorted (IZ)V rank StackMapTable 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; setSortRank newRank getSortRank getComparator ()Ljava/util/Comparator; G()Ljava/util/Comparator<Lorg/netbeans/swing/etable/ETable$RowMapping;>; isAscending setAscending (Z)V c LocalVariableTypeTable� java/util/Comparator tcr #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; isHidingAllowed setCustomIcon (Ljavax/swing/Icon;)V i getCustomIcon ()Ljavax/swing/Icon; updatePreferredWidth (Ljavax/swing/JTable;Z)V data estimate Ljavax/swing/JTable; 	dataModel Ljavax/swing/table/TableModel; rows sum 	container Ljava/awt/Container; p Ljava/awt/Point; viewport Ljavax/swing/JViewport; viewportWidth diff newHeaderWidth 	tableSize Ljava/awt/Dimension; newWidth oldWidth header  Ljavax/swing/table/JTableHeader; oldMin oldMax Ljava/lang/Class; 
dataObject cr Ljava/awt/Component; readSettings ,(Ljava/util/Properties;ILjava/lang/String;)V Ljava/util/Properties; index propertyPrefix myPrefix s0 s1 s2 s4 s3 writeSettings obj column I(IZ)Ljava/util/Comparator<Lorg/netbeans/swing/etable/ETable$RowMapping;>; setNestedComparator getNestedComparator createDefaultHeaderRenderer setTableHeaderRendererDelegate delegate 
mergeIcons N(Ljavax/swing/Icon;Ljavax/swing/Icon;IILjava/awt/Component;)Ljavax/swing/Icon; icon1 icon2 y w h model Ljava/awt/image/ColorModel; 	buffImage Ljava/awt/image/BufferedImage; g Ljava/awt/Graphics; 
access$000 O(Lorg/netbeans/swing/etable/ETableColumn;)Ljavax/swing/table/TableCellRenderer; x0 _Ljavax/swing/table/TableColumn;Ljava/lang/Comparable<Lorg/netbeans/swing/etable/ETableColumn;>; 
SourceFile ETableColumn.java InnerClasses RowComparator FlippingComparator "ETableColumnHeaderRendererDelegate +org/netbeans/swing/etable/ETable$RowMapping  org/netbeans/swing/etable/ETable 
RowMapping !   �  �� �    � �� �    �� �    �� �   " �� �   � �� �   $ �� �    �� �          ( ) �   �            R S         B )     � �   X     *� *� *� *+� �   �       V  F 	 J  W  X�       ��        �        � �   c     *� *� *� *,� �   �       \  F 
 J  ]  ^�        ��      a        �   	 a       � �   n     *� *� *� *-� �   �       b  F  J  c  d�   *    ��      a      �        �    a   �       � �   �     *-� *� *� *� �   �       h 	 F  J  i  j�   >    ��      a      �     �     ��       �    a   �  �  �      �� �   �     @*� "� � 
*� &� � *Y,� .�*� *� � ***� 1� 5� &� *� &�   �   "    x  y  { ! | & } * ~ : � ? ��        @��     @�     @   �    	�   	�     �    �    �    ; % �   B     *� &� � �   �       ��       ��  �    @ �  �   d     *� "� � � *Y,� .�*� �   �       �  �  �  ��       ��     �  �    �   �   � 4 �   /     *� �   �       ��       ��    �� �   /     *� &�   �       ��       ��  �   � � % �   /     *� �   �       ��       ��   �� �   �     V*� "� � *Y,� .�*� 9� �*� � �**� 1� 5M,� � *Y� <Y� >?� A*� E� H� .�*� *,� &�   �   2    �  �  �  �  � ! � " � , � 0 � K � P � U ��        V��     V    , *� ) �     , *�� �    � (��        N O �   >     *+� L�   �   
    �  ��       ��     �  �   �  �    �   � % �   ,     �   �       ��       ��    $ % �   ,     �   �       ��       ��   �� �   >     *+� P�   �   
    �  ��       ��     � S �   �    �� �   /     *� P�   �       ��       ��    �� �  J  
   h+� TN-� Z 6� �666� 2-*� _� b :*+� f6		`6	� 	6���̈́*� j� 
*+� m�   �   J    �  �  �  �  �  �  � $  2 ; B I M � S V \	 `
 g�   f 
 2 �)  ; �  	  6�     h��     h �    h o    c��   [�    R�    N �  �    �  [� 	/� �   	    o    o p �  B     �*� q>,� t:� �*� x*� ~6*� �6*� �*� �*� �� �Y*� �� �� �� � �� �Y:� � �� 
� x�� �� �� ~� �� �� s,� o� �� �:� �6	d6
,� �
`6,� �:Y� �
`� �,� �	� 1,� �� *� �:	d� �
`� ̸ ҵ �� �� x�   �   �           # ( - 2  A( K) _+ e, f/ s0 |1 �2 �3 �4 �5 �8 �9 �: �@ �A �B �C �D �H �I�   �  T ��  �  ��  � b��  � [�  	 � V�  
 � M�   � G��    ���     ��     � �   ��    ���   ��   # ��   f ��� �    �  y� M�  �� ��   	�       h i �   �     B*� �N-� ,� T*� _� � :,� �N-,+,� �*� � � � � :� �� ��   �   "   O P 	Q R T &U 2T 9V�   >   ��    B��     B�)    B �   =�   9 	�� �    �  ��   	�      �� �  (  
  +� <Y� >-� A�� A� � A� A� H:+� <Y� >� A� A� H�	:� *�� _+� <Y� >� A� A� H�	:� *��+� <Y� >� A� A� H�	:� *�� j*� +� <Y� >� A� A� H�	:�� *� +� <Y� >� A"� A� H�	:		� #*	�� *� � ***� _*� � 5� &*+� <Y� >� A$� A� H�	�&�   �   V   a "b =c Bd Kf fg kh tj �k �l �n �o �p �q �s �t �u �v �wz*{�   f 
  +��    +��   +�    +��  "	��  = ���  f ���  � ���  � n��  � C�� 	�   # � K� (� (� /� ?�   �  �  �   �� �  �     �� <Y� >-� A�� A� � A� A� H:+� <Y� >� A� A� H*� _� �*W+� <Y� >� A� A� H*�� �*W+� <Y� >� A� A� H*�.� �*W+� <Y� >� A"� A� H*� � �*W+� <Y� >� A� A� H*� � 	1� �*W*�&� $+� <Y� >� A$� A� H*�&�3�*W�   �   & 	  � "� C� d� �� �� �� �� ���   4    ���     ���    ��     ���  " ��� �   : � �  
 
�   
 
+�   �  �  �   �� �   j     *� _+� _� �*� _+� _� ��   �      � � � � ��       ��     �� �    �   �  �    �    7 8 �   n     � �6Y*�8��;Y�6Y*�8�=�   �      � � ��        ��     �        �    �   	�     �   � �? �   >     *+�@�   �   
   � ��       ��     � ) �   �   �� �   /     *�@�   �      ��       ��   � � �   3     	�CY*�E�   �      ��       	��  �    �    � O �   >     *+� �   �   
   � ��       ��     �  �   �   
�� �  �  
   �66*� *�H 6*�M 6+� ;+�H `� +�H `� 6+�M `� +�M `� 6� 6� 6�P�V�Z�b:�hY�j�p�s:�v:	*� *	�z +� +	�z 	�~��Y���   �   V     
    : V! `" j$ m% t& y' �( �* �+ �, �. �/ �1 �3�   f 
   �� S     �� S    � �     ��     ���   ��    ��   y P�   � 6  � / 	�    
� AA		� ?kh�   �  �   �  �  �  A� � �   3     	*+� ���   �       +�       	��  �   � �    �   �   /     *� �   �       +�       �   �   	   
   *  �      6  ;  C    