����   4 s	      )org/openide/explorer/view/NodeListModel$1 this$0 )Lorg/openide/explorer/view/NodeListModel;	   	 
 val$root Lorg/openide/nodes/Node;	     val$showRoot Z
      java/lang/Object <init> ()V	      org/openide/nodes/Children MUTEX Lorg/openide/util/Mutex;
       org/openide/util/Mutex isReadAccess ()Z
  " #   isWriteAccess
  % & ' 
readAccess (Ljava/lang/Runnable;)V
 ) * + , - (org/openide/explorer/view/VisualizerNode getVisualizer r(Lorg/openide/explorer/view/VisualizerChildren;Lorg/openide/nodes/Node;)Lorg/openide/explorer/view/VisualizerNode;
 / 0 1 2 3 'org/openide/explorer/view/NodeListModel 
access$000 U(Lorg/openide/explorer/view/NodeListModel;)Lorg/openide/explorer/view/VisualizerNode;
 / 5 6 7 
access$100 ,(Lorg/openide/explorer/view/NodeListModel;)Z
 / 9 :  	removeAll
 / < = > 
access$200 ](Lorg/openide/explorer/view/NodeListModel;)Lorg/openide/explorer/view/NodeListModel$Listener;
 ) @ A B removeNodeModel ((Lorg/openide/explorer/view/NodeModel;)V
 / D E F 
access$102 -(Lorg/openide/explorer/view/NodeListModel;Z)Z
 / H I J 
access$002 (Lorg/openide/explorer/view/NodeListModel;Lorg/openide/explorer/view/VisualizerNode;)Lorg/openide/explorer/view/VisualizerNode;
 / L M N 
access$302 O(Lorg/openide/explorer/view/NodeListModel;Ljava/lang/Object;)Ljava/lang/Object;
 / P Q R 
access$400 ,(Lorg/openide/explorer/view/NodeListModel;)V
 / T U  addAll
 ) W X B addNodeModel Z java/lang/Runnable E(Lorg/openide/explorer/view/NodeListModel;Lorg/openide/nodes/Node;Z)V Code LineNumberTable LocalVariableTable this +Lorg/openide/explorer/view/NodeListModel$1; MethodParameters 	Signature run v *Lorg/openide/explorer/view/VisualizerNode; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile NodeListModel.java EnclosingMethod m n setNode (Lorg/openide/nodes/Node;Z)V InnerClasses q 0org/openide/explorer/view/NodeListModel$Listener Listener      Y  	 
               [  \   H     *+� *,� *� *� �    ]       Y ^        _ `         a    � 	  b      c   \       �� � � � � !� � *� $�*� � (L+*� � .� *� � 4*� � �*� � 8*� � .*� � ;� ?*� *� � CW*� +� GW*� +� KW*� � O*� � S*� � .*� � ;� V�    ]   >    \  ]  ^  ` # b < d = g D h U j a k j l s m z o � p � q ^       � _ `   # p d e  f   	 � " ) g     h    i    j k    / l o            p / r 