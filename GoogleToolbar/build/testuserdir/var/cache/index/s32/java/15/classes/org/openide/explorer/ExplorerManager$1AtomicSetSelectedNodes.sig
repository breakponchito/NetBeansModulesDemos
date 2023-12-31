����   4 �  $org/openide/explorer/ExplorerManager	      <org/openide/explorer/ExplorerManager$1AtomicSetSelectedNodes this$0 &Lorg/openide/explorer/ExplorerManager;	  
   	val$value [Lorg/openide/nodes/Node;
      java/lang/Object <init> ()V  "java/lang/IllegalArgumentException
      org/openide/explorer/Bundle EXC_NodeCannotBeNull ()Ljava/lang/String;
     (Ljava/lang/String;)V
     ! 
access$000 A(Lorg/openide/explorer/ExplorerManager;)[Lorg/openide/nodes/Node;
  # $ % 
access$100 [(Lorg/openide/explorer/ExplorerManager;[Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)Z
  ' (  %EXC_NoElementOfNodeSelectionMayBeNull
  * + , 
access$200 A(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;)Z . java/util/ArrayList
 - 0  1 (I)V 3 4 5 6 7 java/util/List add (Ljava/lang/Object;)Z 3 9 : ; size ()I = org/openide/nodes/Node 3 ? @ A toArray (([Ljava/lang/Object;)[Ljava/lang/Object; 	  D E  newValue
  G H I 
access$300 J(Lorg/openide/explorer/ExplorerManager;)Ljava/beans/VetoableChangeSupport; K selectedNodes
 M N O P Q  java/beans/VetoableChangeSupport fireVetoableChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V S  java/beans/PropertyVetoException	  U V W veto "Ljava/beans/PropertyVetoException;
  Y Z  updateSelection	  \ ]  oldValue
  _ ` a addRemoveListeners (Z)V
  c d e 
access$002 Z(Lorg/openide/explorer/ExplorerManager;[Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node;	  g h i doFire Z
  k l Q 	fireInAWT
  n o  checkAndSet q java/lang/Runnable B(Lorg/openide/explorer/ExplorerManager;[Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this >Lorg/openide/explorer/ExplorerManager$1AtomicSetSelectedNodes; MethodParameters 	Signature j I i ex 
validNodes Ljava/util/List; LocalVariableTypeTable *Ljava/util/List<Lorg/openide/nodes/Node;>; StackMapTable fire run 
SourceFile ExplorerManager.java EnclosingMethod � � setSelectedNodes ([Lorg/openide/nodes/Node;)V InnerClasses AtomicSetSelectedNodes      p   V W    h i    ]     E                r  s   C     *+� *,� 	*� �    t       � u        v w         x   	 �  y      o   s      *� 	� � Y� � �*� *� 	*� � � "� �L=*� 	�� l*� 	2� � Y� &� �*� *� 	2� )� 1+� >� -Y*� 	�� /L>� +*� 	2� 2 W���� +� +*� 	2� 2 W����+� /*++� 8 � <� > � B� C*� *� C*� � � "� �**� 	� C*� C�� .*� � F� $*� � FJ*� � *� C� L� 
M*,� T�*� X�  � � R  t   z    �  �  � ' � ( � * � 5 � > � I � Y � ] � j � q � ~ � � � � � � � � � � � � � � � � � � � � � � � � � �	 �  u   4  l  z {  , r | {   } W    v w   * � ~   �     * � ~ �  �    �  3� "� � /k R  Z   s   k     -**� � � [*� � ^*� *� C� bW*� � ^*� f�    t          ' ,	 u       - v w    �   s   W     *� f� *� J*� [*� � � j�    t         u        v w   �      �   s   3     *� m�    t   
     u        v w    �    � �     � �   
     �  