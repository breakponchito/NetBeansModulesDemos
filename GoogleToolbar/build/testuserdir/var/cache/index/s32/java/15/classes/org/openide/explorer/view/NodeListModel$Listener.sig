����   4 _
      java/lang/Object <init> ()V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      0org/openide/explorer/view/NodeListModel$Listener model Ljava/lang/ref/Reference;
      java/lang/ref/Reference get ()Ljava/lang/Object;  'org/openide/explorer/view/NodeListModel
      )org/openide/explorer/view/VisualizerEvent getVisualizer ,()Lorg/openide/explorer/view/VisualizerNode;
 ! " # $ % (org/openide/explorer/view/VisualizerNode removeNodeModel ((Lorg/openide/explorer/view/NodeModel;)V
  '  ( V(Lorg/openide/explorer/view/VisualizerEvent;)Lorg/openide/explorer/view/NodeListModel;
  * + , added 4(Lorg/openide/explorer/view/VisualizerEvent$Added;)V
  . / 0 removed 6(Lorg/openide/explorer/view/VisualizerEvent$Removed;)V
  2 3  	changeAll
  5 6 7 update -(Lorg/openide/explorer/view/VisualizerNode;)V 9 #org/openide/explorer/view/NodeModel 	Signature DLjava/lang/ref/Reference<Lorg/openide/explorer/view/NodeListModel;>; ,(Lorg/openide/explorer/view/NodeListModel;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/explorer/view/NodeListModel$Listener; m )Lorg/openide/explorer/view/NodeListModel; MethodParameters ev +Lorg/openide/explorer/view/VisualizerEvent; StackMapTable 1Lorg/openide/explorer/view/VisualizerEvent$Added; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 3Lorg/openide/explorer/view/VisualizerEvent$Removed; 	reordered 8(Lorg/openide/explorer/view/VisualizerEvent$Reordered;)V 5Lorg/openide/explorer/view/VisualizerEvent$Reordered; v *Lorg/openide/explorer/view/VisualizerNode; structuralChange 
SourceFile NodeListModel.java InnerClasses Listener W /org/openide/explorer/view/VisualizerEvent$Added Added Z 1org/openide/explorer/view/VisualizerEvent$Removed Removed ] 3org/openide/explorer/view/VisualizerEvent$Reordered 	Reordered 0    8      :    ;    <  =   M     *� *� Y+� 	� �    >      � � � ?        @ A      B C  D    B     (  =   {     *� � � M,� +� +� *�  �,�    >      � � � � � ?         @ A      E F    B C  G    �   D    E    + ,  =   m     *+� &M,� �,+� )�    >      � � 
� � � ?         @ A      E H    B C  G    �   D    E   I     J    / 0  =   m     *+� &M,� �,+� -�    >      � � 
� � � ?         @ A      E K    B C  G    �   D    E   I     J    L M  =   l     *+� &M,� �,� 1�    >      � � 
� � � ?         @ A      E N   
 B C  G    �   D    E   I     J    6 7  =   m     *� &M,� �,+� 4�    >      � � 
� � � ?         @ A      O P    B C  G    �   D    O   I     J    Q 7  =   l     *� &M,� �,� 1�    >      � � 
� � � ?         @ A      O P   
 B C  G    �   D    O   I     J    R    S T   "    U  V  X  Y  [  \  ^ 