����   4#	      'org/openide/explorer/view/NodeTreeModel views +Ljava/util/concurrent/CopyOnWriteArrayList;
   	 
 listener 4()Lorg/openide/explorer/view/NodeTreeModel$Listener;
      )java/util/concurrent/CopyOnWriteArrayList add (Ljava/lang/Object;)Z	      (org/openide/explorer/view/VisualizerNode EMPTY *Lorg/openide/explorer/view/VisualizerNode;
      !javax/swing/tree/DefaultTreeModel <init> (Ljavax/swing/tree/TreeNode;Z)V
     ()V
  ! " # doCallSetNode (Lorg/openide/nodes/Node;)V
  % & # setNode
  ( & ) P(Lorg/openide/nodes/Node;Lorg/openide/explorer/view/TreeView$VisualizerHolder;)V	 + , - . / org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; 1 )org/openide/explorer/view/NodeTreeModel$1
 0 3  4 y(Lorg/openide/explorer/view/NodeTreeModel;Lorg/openide/nodes/Node;Lorg/openide/explorer/view/TreeView$VisualizerHolder;)V
 + 6 7 8 
readAccess (Ljava/lang/Runnable;)V	  : 	 ; 2Lorg/openide/explorer/view/NodeTreeModel$Listener; = 0org/openide/explorer/view/NodeTreeModel$Listener
 < ?  @ ,(Lorg/openide/explorer/view/NodeTreeModel;)V
 B C D E F javax/swing/tree/TreePath getLastPathComponent ()Ljava/lang/Object;
  H I J nodeChanged (Ljavax/swing/tree/TreeNode;)V L  javax/swing/tree/MutableTreeNode K N O P setUserObject (Ljava/lang/Object;)V	  R S T listenerList %Ljavax/swing/event/EventListenerList;
 V W X Y Z )org/openide/explorer/view/VisualizerEvent getVisualizer ,()Lorg/openide/explorer/view/VisualizerNode;
  \ ] ^ getPathToRoot 9(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;
 ` a b c d #javax/swing/event/EventListenerList getListenerList ()[Ljava/lang/Object; f #javax/swing/event/TreeModelListener h :org/openide/explorer/view/NodeTreeModel$TreeModelEventImpl
 g j  k S(Ljava/lang/Object;[Ljava/lang/Object;Lorg/openide/explorer/view/VisualizerEvent;)V e m n o treeNodesInserted %(Ljavax/swing/event/TreeModelEvent;)V q #java/lang/IndexOutOfBoundsException	  s t u LOG Ljava/util/logging/Logger;	 w x y z { java/util/logging/Level WARNING Ljava/util/logging/Level; } Visualizer: {0}
  � � � � java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 � � � � � $org/openide/explorer/view/Visualizer findNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node; � 	Node: {0} �   # children: {0}
 � � � � � org/openide/nodes/Node getChildren ()Lorg/openide/nodes/Children;
 � � � � � org/openide/nodes/Children getNodesCount ()I
 � � � � � java/lang/Integer valueOf (I)Ljava/lang/Integer; �   children: {0}
 � � � � � java/lang/Object getClass ()Ljava/lang/Class; � 	Path: {0}
 � � � � � java/util/Arrays toString '([Ljava/lang/Object;)Ljava/lang/String; � ev.getArray: {0}
 V � � � getArray ()[I
 � � � � ([I)Ljava/lang/String; � ev.getSnapshot: {0}
 V � � � getSnapshot ()Ljava/util/List; � � � � � java/util/List get (I)Ljava/lang/Object;
 � � � � findVisualizer 5(Lorg/openide/nodes/Node;)Ljavax/swing/tree/TreeNode;
 � � � � � java/lang/Class getName ()Ljava/lang/String;
  � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; serialVersionUID J ConstantValue`��H�� 	Signature QLjava/util/concurrent/CopyOnWriteArrayList<Lorg/openide/explorer/view/TreeView;>; addView '(Lorg/openide/explorer/view/TreeView;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/explorer/view/NodeTreeModel; tw $Lorg/openide/explorer/view/TreeView; MethodParameters root Lorg/openide/nodes/Node; r 	visHolder 5Lorg/openide/explorer/view/TreeView$VisualizerHolder; StackMapTable valueForPathChanged 0(Ljavax/swing/tree/TreePath;Ljava/lang/Object;)V path Ljavax/swing/tree/TreePath; newValue Ljava/lang/Object; o aNode "Ljavax/swing/tree/MutableTreeNode; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; nodesWereInsertedInternal .(Lorg/openide/explorer/view/VisualizerEvent;)V n ex %Ljava/lang/IndexOutOfBoundsException; i I ev +Lorg/openide/explorer/view/VisualizerEvent; node Ljavax/swing/tree/TreeNode; [Ljava/lang/Object; 	listeners e "Ljavax/swing/event/TreeModelEvent; javax/swing/tree/TreeNode   javax/swing/event/TreeModelEvent computeChildren @(Lorg/openide/explorer/view/VisualizerEvent;)[Ljava/lang/Object; childIndices [I arr nodes Ljava/util/List; LocalVariableTypeTable *Ljava/util/List<Lorg/openide/nodes/Node;>; 
access$000 ](Lorg/openide/explorer/view/NodeTreeModel;)Lorg/openide/explorer/view/NodeTreeModel$Listener; x0 
access$100 V(Lorg/openide/explorer/view/NodeTreeModel;)Ljava/util/concurrent/CopyOnWriteArrayList; <clinit> 
SourceFile NodeTreeModel.java InnerClasses Listener 3org/openide/explorer/view/TreeView$VisualizerHolder  "org/openide/explorer/view/TreeView VisualizerHolder TreeModelEventImpl !       � �  �    �  t u   � 	 ;       �    �    � �  �   B     
*� +� W�    �   
    6 	 7 �       
 � �     
 � �  �    �       �   F     *� � *� Y� � �    �       <  4  = �        � �     #  �   Y     *� � *� Y� � *+�  �    �       C  4  D  E �        � �      � �  �    �    " #  �   >     *+� $�    �   
    H  I �        � �      � �  �    �    & #  �   ?     *+� '�    �   
    O  P �        � �      � �  �    �    & )  �   S     � *� 0Y*+,� 2� 5�    �   
    S  j �         � �      � �     � �  �   	 �  �   	 
  �   S     *� 9� *� <Y*� >� 9*� 9�    �       o  p  s �        � �   �      � �  �   �     /+� �+� AN-� � *-� � G�-� K:,� M *� G�    �   * 
   ~    � 
 �  �  �  �   � ( � . � �   4    / � �     / � �    / � �  
 % � �     � �  �   	 �  � �   	 �   �   �     �     � �  �  �  	   �*� Q� �+� UM*,� [N*� Q� _::�d6� �2e� �� � gY*-+� i:`2� e� l � �:� r� v|,� ~,� �:� r� v�� ~� ,� r� v�� �� �� �� ~� r� v�� �� �� ~� r� v�-� �� ~� r� v�+� �� �� ~� r� v�+� �� ~�����G�  F W Z p  �   f    �  �  �  �  �  �  � + � 5 � : � F � W � Z � \ � h � n � { � � � � � � � � � � � � � � � � � �   \ 	 n n � �  \ � � �  & � � �    � � �     � � �   � � �   � �    �    �  �   1 �    V  S p� N p �� 2�  �    �  	
  �   �     6*� �L+�� �M*� �N6,�� ,-+.� � � �� �S����,�    �           . 4 �   4   ! � �    6 � �    1   +    &       &  �    �   V �  �   �    �    �   /     *� �    �       + �        �    �   /     *� �    �       + �        �      �   $      � ɸ ϳ r�    �       -       "  <  !  0       g " 
