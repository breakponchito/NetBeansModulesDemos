����   4 8
      %org/openide/nodes/FilterNode$Children <init> (Lorg/openide/nodes/Node;)V	  	 
   )org/openide/nodes/LazyNode$SwitchChildren node Lorg/openide/nodes/LazyNode;
      org/openide/nodes/LazyNode switchToOriginal ()Lorg/openide/nodes/Node;
     	addNotify ()V
     getNodes (Z)[Lorg/openide/nodes/Node;
     getNodesCount (Z)I
    ! " 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node; Code LineNumberTable LocalVariableTable this +Lorg/openide/nodes/LazyNode$SwitchChildren; or Lorg/openide/nodes/Node; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; optimalResult Z name Ljava/lang/String; 
SourceFile LazyNode.java InnerClasses 5 org/openide/nodes/FilterNode Children SwitchChildren 0                 #   >     *+� �    $   
    O  P %        & '      ( )  *    (       #   ?     *� � W*� �    $       T  U  V %        & '   +     ,       #   F     *� � W*� �    $   
    Z  [ %        & '      - .  *    -   +     ,       #   F     *� � W*� �    $   
    `  a %        & '      - .  *    -   +     ,    ! "  #   F     *� � W*+� �    $   
    g  h %        & '      / 0  *    /   +     ,    1    2 3      4 6 	   7 