����   4 >
      java/util/HashSet <init> ()V
  	 
   ,org/openide/explorer/view/VisualizerChildren children (Z)Ljava/util/Enumeration;      java/util/Enumeration hasMoreElements ()Z     nextElement ()Ljava/lang/Object;  (org/openide/explorer/view/VisualizerNode
     getChildren 1(Z)Lorg/openide/explorer/view/VisualizerChildren;
     ! " 3org/openide/explorer/view/TreeView$VisualizerHolder removeRecur 1(Lorg/openide/explorer/view/VisualizerChildren;)V
  $ % & remove (Ljava/lang/Object;)Z Code LineNumberTable LocalVariableTable this 5Lorg/openide/explorer/view/TreeView$VisualizerHolder; vn *Lorg/openide/explorer/view/VisualizerNode; visChildren .Lorg/openide/explorer/view/VisualizerChildren; vnodes Ljava/util/Enumeration; LocalVariableTypeTable CLjava/util/Enumeration<Lorg/openide/explorer/view/VisualizerNode;>; StackMapTable MethodParameters 	Signature CLjava/util/HashSet<Lorg/openide/explorer/view/VisualizerChildren;>; 
SourceFile TreeView.java InnerClasses < "org/openide/explorer/view/TreeView VisualizerHolder               '   /     *� �    (      	 )        * +     ! "  '   �     0+� M,�  � ,�  � N-� *-� � ���*+� #W�    (   "   	 	 	 	 	 &	 )	 /	 )   *    , -    0 * +     0 . /   * 0 1  2      * 0 3  4   
 �   5    .    6    7 8    9 :   
   ; = 