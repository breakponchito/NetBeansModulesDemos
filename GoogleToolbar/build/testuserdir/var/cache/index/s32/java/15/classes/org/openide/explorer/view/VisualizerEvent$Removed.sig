����   4 <
      !org/openide/nodes/NodeMemberEvent getSnapshot ()Ljava/util/List;
  	 
   )org/openide/explorer/view/VisualizerEvent <init> `(Lorg/openide/explorer/view/VisualizerChildren;[ILorg/openide/nodes/NodeEvent;Ljava/util/List;)V  java/util/LinkedList
     ()V	      1org/openide/explorer/view/VisualizerEvent$Removed removed Ljava/util/LinkedList;
     getChildren 0()Lorg/openide/explorer/view/VisualizerChildren;
       ,org/openide/explorer/view/VisualizerChildren 6(Lorg/openide/explorer/view/VisualizerEvent$Removed;)V " java/lang/Runnable serialVersionUID J ConstantValueF�>nH 	Signature BLjava/util/LinkedList<Lorg/openide/explorer/view/VisualizerNode;>; V(Lorg/openide/explorer/view/VisualizerChildren;[ILorg/openide/nodes/NodeMemberEvent;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/explorer/view/VisualizerEvent$Removed; ch .Lorg/openide/explorer/view/VisualizerChildren; idxs [I originalEvent #Lorg/openide/nodes/NodeMemberEvent; MethodParameters run 
SourceFile VisualizerEvent.java InnerClasses Removed 0    !   # $  %    &     (    )    *  +   g     *+,--� � *� Y� � �    ,       h  a  i -   *     . /      0 1     2 3     4 5  6    0   2   4    7   +   7     	*� *� �    ,   
    n  o -       	 . /    8    9 :   
    ; 