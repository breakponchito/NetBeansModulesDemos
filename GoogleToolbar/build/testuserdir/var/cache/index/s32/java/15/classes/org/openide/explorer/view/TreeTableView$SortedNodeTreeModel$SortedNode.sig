����   4 X
      Forg/openide/explorer/view/TreeTableView$SortedNodeTreeModel$SortedNode setChildren (Lorg/openide/nodes/Children;)V
   	 
 getOriginal ()Lorg/openide/nodes/Node;	     this$1 =Lorg/openide/explorer/view/TreeTableView$SortedNodeTreeModel;
      org/openide/nodes/Node isLeaf ()Z	      %org/openide/nodes/FilterNode$Children LEAF Lorg/openide/nodes/Children;  Jorg/openide/explorer/view/TreeTableView$SortedNodeTreeModel$SortedChildren
      <init> X(Lorg/openide/explorer/view/TreeTableView$SortedNodeTreeModel;Lorg/openide/nodes/Node;)V
 " # $  % org/openide/nodes/FilterNode 7(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;)V
 ' ( ) * + ;org/openide/explorer/view/TreeTableView$SortedNodeTreeModel access$1600 N(Lorg/openide/explorer/view/TreeTableView$SortedNodeTreeModel;)Ljava/util/Map; - . / 0 1 java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 "  4 Horg/openide/explorer/view/TreeTableView$SortedNodeTreeModel$SortedNode$1
 3 6  7 i(Lorg/openide/explorer/view/TreeTableView$SortedNodeTreeModel$SortedNode;Lorg/openide/nodes/FilterNode;)V Code LineNumberTable LocalVariableTable this HLorg/openide/explorer/view/TreeTableView$SortedNodeTreeModel$SortedNode; original Lorg/openide/nodes/Node; StackMapTable A org/openide/nodes/Children MethodParameters getOriginalNode createNodeListener "()Lorg/openide/nodes/NodeListener; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; access$1700 b(Lorg/openide/explorer/view/TreeTableView$SortedNodeTreeModel$SortedNode;)Lorg/openide/nodes/Node; x0 access$1800 access$1900 g(Lorg/openide/explorer/view/TreeTableView$SortedNodeTreeModel$SortedNode;Lorg/openide/nodes/Children;)V x1 
SourceFile TreeTableView.java InnerClasses S 'org/openide/explorer/view/TreeTableView SortedNodeTreeModel 
SortedNode Children SortedChildren    "              8   �     -*+� *,,� � 	� � � Y+,� � !+� &,*� , W�    9      � �  � ,� :       - ; <     - = >  ?   ) �   '   �   '    @ B   	  =    C 
  8   /     *� 2�    9      � :        ; <    D E  8   4     
� 3Y**� 5�    9      � :       
 ; <   F     G   H I  8   /     *� �    9      � :        J <   K I  8   /     *� �    9      � :        J <   L M  8   :     *+� �    9      � :        J <      N    O    P Q   *  ' R T   ' U   " V 	  ' W  3      