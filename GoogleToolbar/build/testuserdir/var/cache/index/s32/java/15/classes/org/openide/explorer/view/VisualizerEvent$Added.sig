����   4 3
      !org/openide/nodes/NodeMemberEvent getSnapshot ()Ljava/util/List;
  	 
   )org/openide/explorer/view/VisualizerEvent <init> `(Lorg/openide/explorer/view/VisualizerChildren;[ILorg/openide/nodes/NodeEvent;Ljava/util/List;)V
     getChildren 0()Lorg/openide/explorer/view/VisualizerChildren;
      ,org/openide/explorer/view/VisualizerChildren added 4(Lorg/openide/explorer/view/VisualizerEvent$Added;)V  /org/openide/explorer/view/VisualizerEvent$Added  java/lang/Runnable serialVersionUID J ConstantValueQ��ۭw; V(Lorg/openide/explorer/view/VisualizerChildren;[ILorg/openide/nodes/NodeMemberEvent;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/explorer/view/VisualizerEvent$Added; ch .Lorg/openide/explorer/view/VisualizerChildren; idxs [I originalEvent #Lorg/openide/nodes/NodeMemberEvent; MethodParameters run ()V 
SourceFile VisualizerEvent.java InnerClasses Added 0                     !   X     *+,--� � �    "   
    O  P #   *     $ %      & '     ( )     * +  ,    &   (   *    - .  !   7     	*� *� �    "   
    U  V #       	 $ %    /    0 1   
    2 