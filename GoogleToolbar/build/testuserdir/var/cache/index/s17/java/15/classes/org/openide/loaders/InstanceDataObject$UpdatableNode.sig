����   4 :
      4org/openide/loaders/InstanceDataObject$UpdatableNode changeOriginal (Lorg/openide/nodes/Node;Z)V	   	 
 this$0 (Lorg/openide/loaders/InstanceDataObject;
      org/openide/nodes/FilterNode <init> (Lorg/openide/nodes/Node;)V	      %org/openide/nodes/FilterNode$Children MUTEX Lorg/openide/util/Mutex;  6org/openide/loaders/InstanceDataObject$UpdatableNode$1
     9(Lorg/openide/loaders/InstanceDataObject$UpdatableNode;)V
      ! org/openide/util/Mutex postWriteRequest (Ljava/lang/Runnable;)V C(Lorg/openide/loaders/InstanceDataObject;Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/loaders/InstanceDataObject$UpdatableNode; n Lorg/openide/nodes/Node; MethodParameters update ()V 
access$200 R(Lorg/openide/loaders/InstanceDataObject$UpdatableNode;Lorg/openide/nodes/Node;Z)V x0 x1 x2 Z 
SourceFile InstanceDataObject.java InnerClasses 7 &org/openide/loaders/InstanceDataObject UpdatableNode Children 0      	 
      "  #   G     *+� *,� �    $      � � 
� %        & '      ( )  *   	 	 (    + ,  #   =     � � Y*� � �    $   
   � � %        & '   - .  #   E     *+� �    $      � %         / '      0 )     1 2   3    4 5      6 8    9 	       