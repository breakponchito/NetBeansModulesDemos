����   4 3
      "org/openide/nodes/NodeReorderEvent getSnapshot ()Ljava/util/List;
  	 
   )org/openide/explorer/view/VisualizerEvent <init> `(Lorg/openide/explorer/view/VisualizerChildren;[ILorg/openide/nodes/NodeEvent;Ljava/util/List;)V
     getChildren 0()Lorg/openide/explorer/view/VisualizerChildren;
      ,org/openide/explorer/view/VisualizerChildren 	reordered 8(Lorg/openide/explorer/view/VisualizerEvent$Reordered;)V  3org/openide/explorer/view/VisualizerEvent$Reordered  java/lang/Runnable serialVersionUID J ConstantValue���^��� W(Lorg/openide/explorer/view/VisualizerChildren;[ILorg/openide/nodes/NodeReorderEvent;)V Code LineNumberTable LocalVariableTable this 5Lorg/openide/explorer/view/VisualizerEvent$Reordered; ch .Lorg/openide/explorer/view/VisualizerChildren; idxs [I originalEvent $Lorg/openide/nodes/NodeReorderEvent; MethodParameters run ()V 
SourceFile VisualizerEvent.java InnerClasses 	Reordered 0                     !   X     *+,--� � �    "   
    }  ~ #   *     $ %      & '     ( )     * +  ,    &   (   *    - .  !   7     	*� *� �    "   
    �  � #       	 $ %    /    0 1   
    2 