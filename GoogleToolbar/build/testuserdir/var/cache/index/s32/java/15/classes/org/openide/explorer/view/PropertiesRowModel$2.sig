����   4 n	      .org/openide/explorer/view/PropertiesRowModel$2 this$0 .Lorg/openide/explorer/view/PropertiesRowModel;
  	 
   java/lang/Object <init> ()V
      javax/swing/SwingUtilities isEventDispatchThread ()Z  0org/openide/explorer/view/PropertiesRowModel$2$1
     S(Lorg/openide/explorer/view/PropertiesRowModel$2;Ljava/beans/PropertyChangeEvent;)V
     invokeLater (Ljava/lang/Runnable;)V  org/openide/nodes/Node  shortDescription
 ! " # $ % java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
 ' ( ) * + java/lang/String equals (Ljava/lang/Object;)Z
 ! - . / 	getSource ()Ljava/lang/Object;
 1 2 3 4 5 ,org/openide/explorer/view/PropertiesRowModel 
access$000 I(Lorg/openide/explorer/view/PropertiesRowModel;Lorg/openide/nodes/Node;)I	 1 7 8 9 otu DLorg/openide/explorer/view/PropertiesRowModel$OutlineTooltipUpdater;
 1 ; < = 
access$200 T(Lorg/openide/explorer/view/PropertiesRowModel;)Lorg/netbeans/swing/outline/Outline;
 ? @ A B C Borg/openide/explorer/view/PropertiesRowModel$OutlineTooltipUpdater fireToolTipChanged ((Lorg/netbeans/swing/outline/Outline;I)V
 1 E F G 
access$400 S(Lorg/openide/explorer/view/PropertiesRowModel;)Ljava/beans/PropertyChangeListener; I J K L M !java/beans/PropertyChangeListener propertyChange #(Ljava/beans/PropertyChangeEvent;)V O org/openide/nodes/NodeListener 1(Lorg/openide/explorer/view/PropertiesRowModel;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/explorer/view/PropertiesRowModel$2; MethodParameters childrenAdded &(Lorg/openide/nodes/NodeMemberEvent;)V ev #Lorg/openide/nodes/NodeMemberEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; childrenRemoved childrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V $Lorg/openide/nodes/NodeReorderEvent; nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V Lorg/openide/nodes/NodeEvent; row I evt  Ljava/beans/PropertyChangeEvent; StackMapTable 
SourceFile PropertiesRowModel.java EnclosingMethod InnerClasses OutlineTooltipUpdater      N          P  Q   >     
*+� *� �    R       a S       
 T U     
    V    �  W X  Q   5      �    R       d S        T U      Y Z  V    Y   [     \    ] X  Q   5      �    R       g S        T U      Y Z  V    Y   [     \    ^ _  Q   5      �    R       j S        T U      Y `  V    Y   [     \    a b  Q   5      �    R       m S        T U      Y c  V    Y   [     \    L M  Q   �     N� � � Y*+� � �+�  � &� $*� +� ,� � 0=*� � 6*� � :� >*� � D+� H �    R   "    q  r  x  z  { . | @ ~ M  S      .  d e    N T U     N f g  h    , V    f  [     \    i    j k    1   l                   ? 1 m 
