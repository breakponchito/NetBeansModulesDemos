����   4 �
      java/lang/Object <init> ()V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      0org/openide/explorer/view/NodeTreeModel$Listener model Ljava/lang/ref/Reference;
      java/lang/ref/Reference get ()Ljava/lang/Object;  'org/openide/explorer/view/NodeTreeModel
      )org/openide/explorer/view/VisualizerEvent getVisualizer ,()Lorg/openide/explorer/view/VisualizerNode;
 ! " # $ % (org/openide/explorer/view/VisualizerNode removeNodeModel ((Lorg/openide/explorer/view/NodeModel;)V
  '  ( V(Lorg/openide/explorer/view/VisualizerEvent;)Lorg/openide/explorer/view/NodeTreeModel;
  * + , nodesWereInsertedInternal .(Lorg/openide/explorer/view/VisualizerEvent;)V
  . / 0 
access$100 V(Lorg/openide/explorer/view/NodeTreeModel;)Ljava/util/concurrent/CopyOnWriteArrayList;
 2 3 4 5 6 )java/util/concurrent/CopyOnWriteArrayList iterator ()Ljava/util/Iterator; 8 9 : ; < java/util/Iterator hasNext ()Z 8 > ?  next A "org/openide/explorer/view/TreeView	 C D E F G 1org/openide/explorer/view/VisualizerEvent$Removed removed Ljava/util/LinkedList;
 @ I J K removedNodes (Ljava/util/List;)V
 C 
 C N O P getArray ()[I
 R S T U V java/util/LinkedList toArray ()[Ljava/lang/Object;
  X Y Z nodesWereRemoved 3(Ljavax/swing/tree/TreeNode;[I[Ljava/lang/Object;)V
 \  ] 3org/openide/explorer/view/VisualizerEvent$Reordered
  _ ` a nodeStructureChanged (Ljavax/swing/tree/TreeNode;)V
  c d a nodeChanged f #org/openide/explorer/view/NodeModel 	Signature DLjava/lang/ref/Reference<Lorg/openide/explorer/view/NodeTreeModel;>; ,(Lorg/openide/explorer/view/NodeTreeModel;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/explorer/view/NodeTreeModel$Listener; m )Lorg/openide/explorer/view/NodeTreeModel; MethodParameters ev +Lorg/openide/explorer/view/VisualizerEvent; StackMapTable added 4(Lorg/openide/explorer/view/VisualizerEvent$Added;)V 1Lorg/openide/explorer/view/VisualizerEvent$Added; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 6(Lorg/openide/explorer/view/VisualizerEvent$Removed;)V tw $Lorg/openide/explorer/view/TreeView; 3Lorg/openide/explorer/view/VisualizerEvent$Removed; 	reordered 8(Lorg/openide/explorer/view/VisualizerEvent$Reordered;)V 5Lorg/openide/explorer/view/VisualizerEvent$Reordered; update -(Lorg/openide/explorer/view/VisualizerNode;)V v *Lorg/openide/explorer/view/VisualizerNode; structuralChange 
SourceFile NodeTreeModel.java InnerClasses Listener Removed 	Reordered � /org/openide/explorer/view/VisualizerEvent$Added Added 0    e      g    h    i  j   M     *� *� Y+� 	� �    k       �  �  � l        m n      o p  q    o     (  j   {     *� � � M,� +� +� *�  �,�    k       �  �  �  �  � l         m n      r s    o p  t    �   q    r    u v  j   m     *+� &M,� �,+� )�    k       �  � 
 �  �  � l         m n      r w    o p  t    �   q    r   x     y    F z  j   �     G*+� &M,� �,� -� 1N-� 7 � -� = � @:+� B� H���,+� L+� M+� B� Q� W�    k   "    �  � 
 �  � ' � 0 � 3 � F � l   *  ' 	 { |    G m n     G r }   A o p  t    �  �  8�  q    r   x     y    ~   j   p     *+� &M,� �,+� [� ^�    k       �  � 
 �  �  � l         m n      r �    o p  t    �   q    r   x     y    � �  j   m     *� &M,� �,+� b�    k       �  
   l         m n      � �    o p  t    �   q    �   x     y    � �  j   m     *� &M,� �,+� ^�    k        
   l         m n      � �    o p  t    �   q    �   x     y    �    � �   "    �  C  �  \  �  �  � 