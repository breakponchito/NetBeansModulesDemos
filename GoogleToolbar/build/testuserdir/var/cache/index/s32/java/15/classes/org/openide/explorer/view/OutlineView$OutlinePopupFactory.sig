����   4 3
      *org/openide/explorer/view/NodePopupFactory <init> ()V   org/netbeans/swing/etable/ETable
  
   convertColumnIndexToModel (I)I
      9org/openide/explorer/view/OutlineView$OutlinePopupFactory setShowQuickFilter (Z)V
     createPopupMenu I(II[Lorg/openide/nodes/Node;Ljava/awt/Component;)Ljavax/swing/JPopupMenu; Code LineNumberTable LocalVariableTable this ;Lorg/openide/explorer/view/OutlineView$OutlinePopupFactory; et "Lorg/netbeans/swing/etable/ETable; modelRowIndex I row column selectedNodes [Lorg/openide/nodes/Node; 	component Ljava/awt/Component; StackMapTable # ) java/awt/Component MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile OutlineView.java InnerClasses 1 %org/openide/explorer/view/OutlineView OutlinePopupFactory                 3     *� �       
   	h 	i                    �     /� �  � :� 	6*� � � *-� �          	m 	n 	o 	p %	r    H              /       /       / !     / " #    / $ %  &   8 � !   ' (   �     ' (   �  *        !   "   $   +     ,    -    . /   
   0 2 
