����   4 @	      3org/openide/actions/MoveDownAction$OrderingListener this$0 $Lorg/openide/actions/MoveDownAction;
  	 
   java/lang/Object <init> ()V
      "org/openide/actions/MoveDownAction getActivatedNodes ()[Lorg/openide/nodes/Node;
     
access$000 X(Lorg/openide/actions/MoveDownAction;[Lorg/openide/nodes/Node;)Lorg/openide/nodes/Index;
     
setEnabled (Z)V       org/openide/nodes/Index indexOf (Lorg/openide/nodes/Node;)I  " # $ getNodesCount ()I &  javax/swing/event/ChangeListener '(Lorg/openide/actions/MoveDownAction;)V Code LineNumberTable LocalVariableTable this 5Lorg/openide/actions/MoveDownAction$OrderingListener; MethodParameters stateChanged "(Ljavax/swing/event/ChangeEvent;)V 	nodeIndex I e Ljavax/swing/event/ChangeEvent; activatedNodes [Lorg/openide/nodes/Node; cookie Lorg/openide/nodes/Index; StackMapTable 5 ; javax/swing/event/ChangeEvent 
SourceFile MoveDownAction.java InnerClasses OrderingListener 0    %          '  (   8     
*+� *� �    )   
    � 	 � *       
 + ,   -      . /  (   �     J*� � M*� ,� N-� *� � � ,-,2�  6*� � -� ! d� � � �    )       �  �  �  �   � + � I � *   4  +  0 1    J + ,     J 2 3   B 4 5   9 6 7  8   = �   9 � $   : 9   �     : 9   �  -    2    <    = >   
    ? 