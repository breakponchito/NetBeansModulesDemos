����   4 �
      .org/netbeans/swing/outline/DefaultOutlineModel createOutlineModel (Ljavax/swing/tree/TreeModel;Lorg/netbeans/swing/outline/RowModel;ZLjava/lang/String;)Lorg/netbeans/swing/outline/OutlineModel;
   	 
 <init> W(Ljavax/swing/tree/TreeModel;Lorg/netbeans/swing/outline/RowModel;ZLjava/lang/String;)V  *org/netbeans/swing/outline/ProxyTableModel
   	  ((Lorg/netbeans/swing/outline/RowModel;)V
   	  P(Ljavax/swing/tree/TreeModel;Ljavax/swing/table/TableModel;ZLjava/lang/String;)V
    	  java/lang/Object ()V  Nodes	     nodesColumnLabel Ljava/lang/String;	     ! 	treeModel Ljavax/swing/tree/TreeModel;	  # $ % 
tableModel Ljavax/swing/table/TableModel; ' 'javax/swing/tree/FixedHeightLayoutCache
 &  * *javax/swing/tree/VariableHeightLayoutCache
 ) 	  - . / layout &Ljavax/swing/tree/AbstractLayoutCache; 1 +org/netbeans/swing/outline/EventBroadcaster
 0 3 	 4 3(Lorg/netbeans/swing/outline/DefaultOutlineModel;)V	  6 7 8 broadcaster -Lorg/netbeans/swing/outline/EventBroadcaster;
 : ; < = > $javax/swing/tree/AbstractLayoutCache setRootVisible (Z)V
 : @ A B setModel (Ljavax/swing/tree/TreeModel;)V D *org/netbeans/swing/outline/TreePathSupport
 C F 	 G R(Lorg/netbeans/swing/outline/OutlineModel;Ljavax/swing/tree/AbstractLayoutCache;)V	  I J K treePathSupport ,Lorg/netbeans/swing/outline/TreePathSupport;
 C M N O addTreeExpansionListener ,(Ljavax/swing/event/TreeExpansionListener;)V
 C Q R S addTreeWillExpandListener -(Ljavax/swing/event/TreeWillExpandListener;)V U V W X Y javax/swing/tree/TreeModel addTreeModelListener ((Ljavax/swing/event/TreeModelListener;)V [ \ ] ^ _ javax/swing/table/TableModel addTableModelListener )(Ljavax/swing/event/TableModelListener;)V
  a b c setOutlineModel ,(Lorg/netbeans/swing/outline/OutlineModel;)V
 0 e f g areMoreEventsPending ()Z U i j k getChild '(Ljava/lang/Object;I)Ljava/lang/Object; U m n o getChildCount (Ljava/lang/Object;)I [ q r s getColumnClass (I)Ljava/lang/Class; [ u v w getColumnCount ()I [ y z { getColumnName (I)Ljava/lang/String; } !javax/swing/event/TableModelEvent
 |  	 � %(Ljavax/swing/table/TableModel;IIII)V
 0 � � � fireTableChange &(Ljavax/swing/event/TableModelEvent;)V U � � � getIndexOfChild '(Ljava/lang/Object;Ljava/lang/Object;)I U � � � getRoot ()Ljava/lang/Object;
 : � � w getRowCount
  � � � 	getLayout (()Ljavax/swing/tree/AbstractLayoutCache;
 : � � � getPathForRow (I)Ljavax/swing/tree/TreePath;
 � � � � � javax/swing/tree/TreePath getLastPathComponent [ � � � 
getValueAt (II)Ljava/lang/Object; [ � � � isCellEditable (II)Z U � � � isLeaf (Ljava/lang/Object;)Z
 0 \
 0 V
 0 � � _ removeTableModelListener
 0 � � Y removeTreeModelListener [ � � � 
setValueAt (Ljava/lang/Object;II)V
  � � � setTreeValueAt (Ljava/lang/Object;I)V U � � � valueForPathChanged 0(Ljavax/swing/tree/TreePath;Ljava/lang/Object;)V � 'org/netbeans/swing/outline/OutlineModel NODES_CHANGED I ConstantValue     NODES_INSERTED    NODES_REMOVED    STRUCTURE_CHANGED    l(Ljavax/swing/tree/TreeModel;Lorg/netbeans/swing/outline/RowModel;)Lorg/netbeans/swing/outline/OutlineModel; Code LineNumberTable LocalVariableTable rowModel %Lorg/netbeans/swing/outline/RowModel; MethodParameters m(Ljavax/swing/tree/TreeModel;Lorg/netbeans/swing/outline/RowModel;Z)Lorg/netbeans/swing/outline/OutlineModel; isLargeModel Z this 0Lorg/netbeans/swing/outline/DefaultOutlineModel; 
largeModel StackMapTable � java/lang/String getTreePathSupport .()Lorg/netbeans/swing/outline/TreePathSupport; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getTreeModel ()Ljavax/swing/tree/TreeModel; getTableModel  ()Ljavax/swing/table/TableModel; parent Ljava/lang/Object; index columnIndex setNodesColumnLabel (Ljava/lang/String;)V label child result path Ljavax/swing/tree/TreePath; rowIndex node l &Ljavax/swing/event/TableModelListener; %Ljavax/swing/event/TreeModelListener; aValue newValue 
SourceFile DefaultOutlineModel.java !    � 
    !    $ %    . /    J K    7 8         � �  �    �  � �  �    �  � �  �    �  � �  �    �  	  �  �   <     *+� �    �       f �          !      � �  �   	     �   	  �  �   F     *+� �    �       p �           !      � �     � �  �        �   �   	    �   T     � Y*+-� �    �       z �   *       !      � �     � �        �        �   �       	 
  �   g     *+� Y,� � �    �   
    �  � �   4     � �        !     � �     � �        �        �   �       	   �  u     �*� *� *+� *,� "� 	*� *� � &Y� (� 
� )Y� +� ,*� 0Y*� 2� 5*� ,� 9*� ,*� ?*� CY**� ,� E� H*� H*� 5� L*� H*� 5� P+*� 5� T ,*� 5� Z ,� � ,� *� `�    �   N    �  W 
 �  �  �  �  � . � 8 � D � L � T � d � o � z � � � � � � � � � �   4    � � �     �   !    � $ %    � � �    �    �   7 �    U [ �  N �    U [ �   :� g �        $   �       � �  �   /     *� H�    �       � �        � �   �     �    � �  �   /     *� ,�    �       � �        � �   �     �    f g  �   2     *� 5� d�    �       � �        � �     � �  �   /     *� �    �       � �        � �     � �  �   /     *� "�    �       � �        � �    j k  �   J     *� +� h �    �       � �         � �      � �     � �  �   	 �   �   �     �    n o  �   ?     *� +� l �    �       � �        � �      � �  �    �   �     �    r s  �   Y     � �*� "d� p �    �       �  �  � �        � �      � �  �     �    �   �     �    v w  �   6     *� "� t `�    �       � �        � �   �     �    z {  �   [     � *� �*� "d� x �    �       �  � 	 � �        � �      � �  �    	 �    �   �     �    � �  �   U     *+� *� 5� |Y*� ~� ��    �       �  �  � �        � �      �   �    �    � �  �   J     *� +,� � �    �       � �         � �      � �     � �  �   	 �   �   �     �    � �  �   4     
*� � � �    �       � �       
 � �   �     �    � w  �   2     *� ,� ��    �       �        � �   �     �    � �  �   �     1�  *� �� �:� � �N� N� *� "d� � N-�    �   "   
      ! / �   H    � �    � �    � �    1 � �     1 � �    1 � �  /  � �  �   ! �   ��      � �   �   	 �   �   �     �    � �  �   c     � �*� "d� � �    �         �         � �      � �     � �  �     �   	 �   �   �     �    � �  �   W     +� *� +� � � � �    �      " �        � �      � �  �    @ �    �   �     �   1 ^ _  �   A     	*� 5+� ��    �   
   ( ) �       	 � �     	 � �  �    �   �     �   1 X Y  �   A     	*� 5+� ��    �   
   . / �       	 � �     	 � �  �    �   �     �   1 � _  �   A     	*� 5+� ��    �   
   4 5 �       	 � �     	 � �  �    �   �     �   1 � Y  �   A     	*� 5+� ��    �   
   : ; �       	 � �     	 � �  �    �   �     �    � �  �   z     � *� "+d� � � 	*+� ��    �      @ A C E �   *     � �      � �     � �     � �  �     �    �   �   �   �     �    � �  �   ?      �    �      P �         � �      � �     � �  �   	 �   �    � �  �   N     *� +,� � �    �   
   V W �         � �      � �     � �  �   	 �   �   �     �    � g  �   2     *� ,� &�    �      [ �        � �   �     �    �    �