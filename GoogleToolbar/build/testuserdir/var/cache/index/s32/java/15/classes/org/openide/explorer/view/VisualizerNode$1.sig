����   4 F	      *org/openide/explorer/view/VisualizerNode$1 this$0 *Lorg/openide/explorer/view/VisualizerNode;
  	 
   java/lang/Object <init> ()V	      (org/openide/explorer/view/VisualizerNode node Lorg/openide/nodes/Node;
      org/openide/nodes/Node getChildren ()Lorg/openide/nodes/Children;
      org/openide/nodes/Children snapshot ()Ljava/util/List;   ,org/openide/explorer/view/VisualizerChildren
  "  # =(Lorg/openide/explorer/view/VisualizerNode;Ljava/util/List;)V
  % & ' notifyVisualizerChildrenChange 2(ZLorg/openide/explorer/view/VisualizerChildren;)V
  ) * + run 0()Lorg/openide/explorer/view/VisualizerChildren; - org/openide/util/Mutex$Action -(Lorg/openide/explorer/view/VisualizerNode;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/explorer/view/VisualizerNode$1; MethodParameters Ljava/util/List; vc .Lorg/openide/explorer/view/VisualizerChildren; LocalVariableTypeTable *Ljava/util/List<Lorg/openide/nodes/Node;>; ()Ljava/lang/Object; 	Signature aLjava/lang/Object;Lorg/openide/util/Mutex$Action<Lorg/openide/explorer/view/VisualizerChildren;>; 
SourceFile VisualizerNode.java EnclosingMethod  A 1(Z)Lorg/openide/explorer/view/VisualizerChildren; InnerClasses D org/openide/util/Mutex Action      ,          .  /   >     
*+� *� �    0       � 1       
 2 3     
    4    �  * +  /   �     &*� � � � L� Y*� +� !M*� ,� $,�    0       �  �  � $  1        & 2 3      5    6 7  8        9 A * :  /   /     *� (�    0       � 1        2 3    ;    < =    > ?     @ B            , C E	