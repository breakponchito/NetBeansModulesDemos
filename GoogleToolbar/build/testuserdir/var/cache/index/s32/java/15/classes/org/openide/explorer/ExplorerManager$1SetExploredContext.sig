����   4 S  $org/openide/explorer/ExplorerManager	      8org/openide/explorer/ExplorerManager$1SetExploredContext this$0 &Lorg/openide/explorer/ExplorerManager;	  
   	val$value Lorg/openide/nodes/Node;	     val$selection [Lorg/openide/nodes/Node;
      java/lang/Object <init> ()V
     
access$400 @(Lorg/openide/explorer/ExplorerManager;)Lorg/openide/nodes/Node;
       org/openide/util/Utilities compareObjects '(Ljava/lang/Object;Ljava/lang/Object;)Z
  " # $ setSelectedNodes0 ([Lorg/openide/nodes/Node;)V
  & ' ( 
access$500 A(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;)V	  * +  oldValue
  - . / addRemoveListeners (Z)V
  1 2 3 
access$402 X(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;)Lorg/openide/nodes/Node;	  5 6 7 doFire Z 9 exploredContext
  ; < = 	fireInAWT 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V ? java/lang/Runnable Z(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this :Lorg/openide/explorer/ExplorerManager$1SetExploredContext; MethodParameters 	Signature run StackMapTable fire 
SourceFile ExplorerManager.java EnclosingMethod O P setExploredContext 4(Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)V InnerClasses SetExploredContext      >    6 7     +                    @  A   H     *+� *,� 	*-� *� �    B      < C        D E         F    �   G      H   A   �     `*� 	*� � � � *� *� � !�*� *� 	� %*� *� � !**� � � )*� � ,*� *� 	� 0W*� � ,*� 4�    B   .   B C E H (I 3K >L FM RN ZP _Q C       ` D E   I      J   A   T     *� 4� *� 8*� )*� 	� :�    B      S T V C        D E   I      K    L M     N Q   
     R  