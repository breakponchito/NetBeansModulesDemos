����   4 \	      )org/openide/explorer/view/NodeTreeModel$1 this$0 )Lorg/openide/explorer/view/NodeTreeModel;	   	 
 val$root Lorg/openide/nodes/Node;	     val$visHolder 5Lorg/openide/explorer/view/TreeView$VisualizerHolder;
      java/lang/Object <init> ()V
      'org/openide/explorer/view/NodeTreeModel getRoot ()Ljava/lang/Object;  (org/openide/explorer/view/VisualizerNode
      getVisualizer r(Lorg/openide/explorer/view/VisualizerChildren;Lorg/openide/nodes/Node;)Lorg/openide/explorer/view/VisualizerNode;
  " # $ 
access$000 ](Lorg/openide/explorer/view/NodeTreeModel;)Lorg/openide/explorer/view/NodeTreeModel$Listener;
  & ' ( removeNodeModel ((Lorg/openide/explorer/view/NodeModel;)V
  * + ( addNodeModel
  - . / setRoot (Ljavax/swing/tree/TreeNode;)V
  1 2 3 getChildren 0()Lorg/openide/explorer/view/VisualizerChildren;
 5 6 7 8 9 3org/openide/explorer/view/TreeView$VisualizerHolder add (Ljava/lang/Object;)Z
 5 ; < = removeRecur 1(Lorg/openide/explorer/view/VisualizerChildren;)V ? java/lang/Runnable y(Lorg/openide/explorer/view/NodeTreeModel;Lorg/openide/nodes/Node;Lorg/openide/explorer/view/TreeView$VisualizerHolder;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/explorer/view/NodeTreeModel$1; MethodParameters 	Signature run v *Lorg/openide/explorer/view/VisualizerNode; nr StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile NodeTreeModel.java EnclosingMethod S T setNode P(Lorg/openide/nodes/Node;Lorg/openide/explorer/view/TreeView$VisualizerHolder;)V InnerClasses W "org/openide/explorer/view/TreeView VisualizerHolder Z 0org/openide/explorer/view/NodeTreeModel$Listener Listener      >  	 
               @  A   H     *+� *,� *-� *� �    B       T C        D E         F    � 	  G      H   A   �     W*� � � L*� � M+,� �+*� � !� %,*� � !� )*� ,� ,*� � *� ,� 0� 4W*� +� 0� :�    B   .    W  X  Z  \  _ % a 0 b 8 c ? d K e V g C        W D E    L I J   C K J  L    �   ; M     N    O    P Q     R U            5 V X  Y  [ 