����   4 Q	      ;org/openide/explorer/view/TreeTable$TreeTableCellRenderer$1 this$1 ;Lorg/openide/explorer/view/TreeTable$TreeTableCellRenderer;
  	 
   "javax/swing/JTree$TreeModelHandler <init> (Ljavax/swing/JTree;)V	      9org/openide/explorer/view/TreeTable$TreeTableCellRenderer this$0 %Lorg/openide/explorer/view/TreeTable;
      #org/openide/explorer/view/TreeTable access$1400 b(Lorg/openide/explorer/view/TreeTable;)Lorg/openide/explorer/view/TreeTable$TreeTableCellRenderer;
     getSelectionCount ()I
     ! "  javax/swing/event/TreeModelEvent getTreePath ()Ljavax/swing/tree/TreePath;
  $ % & getChildIndices ()[I
 ( ) * + , "org/openide/explorer/view/TreeView findSiblingTreePath :(Ljavax/swing/tree/TreePath;[I)Ljavax/swing/tree/TreePath;
 . / 0 1  javax/swing/tree/TreePath getPathCount
  3 4 5 setSelectionPath (Ljavax/swing/tree/TreePath;)V >(Lorg/openide/explorer/view/TreeTable$TreeTableCellRenderer;)V Code LineNumberTable LocalVariableTable this =Lorg/openide/explorer/view/TreeTable$TreeTableCellRenderer$1; MethodParameters treeNodesRemoved %(Ljavax/swing/event/TreeModelEvent;)V path Ljavax/swing/tree/TreePath; e "Ljavax/swing/event/TreeModelEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TreeTable.java EnclosingMethod J K createTreeModelListener '()Ljavax/swing/event/TreeModelListener; InnerClasses TreeTableCellRenderer O javax/swing/JTree TreeModelHandler                6  7   ?     *+� *+� �    8      � 9        : ;         <    �  = >  7   �     6*� � � � � (+� +� #� 'M,� ,� -� *� � � ,� 2�    8      � � � '� 5� 9        ? @    6 : ;     6 A B  C    5 <    A   D     E    F    G H     I L       M           N P 