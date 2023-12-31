����   4 �
      "org/openide/explorer/view/TreeView <init> ()V	  	 
   )org/openide/explorer/view/ContextTreeView tree Ljavax/swing/JTree;
      javax/swing/JTree getSelectionModel '()Ljavax/swing/tree/TreeSelectionModel;  #javax/swing/tree/TreeSelectionModel     setSelectionMode (I)V
      org/openide/nodes/Node getParentNode ()Lorg/openide/nodes/Node;
   ! " # $ $org/openide/explorer/ExplorerManager setExploredContext (Lorg/openide/nodes/Node;)V
   & ' ( setSelectedNodes ([Lorg/openide/nodes/Node;)V
  * + , makeVisible (Ljavax/swing/tree/TreePath;)V
  . / 0 getPathBounds 1(Ljavax/swing/tree/TreePath;)Ljava/awt/Rectangle;	 2 3 4 5 6 java/awt/Rectangle width I	 2 8 9 6 x
  ; < = scrollRectToVisible (Ljava/awt/Rectangle;)V
  ? @ , setSelectionPath B javax/swing/tree/TreePath
  D E F setSelectionPaths ([Ljavax/swing/tree/TreePath;)V
 A H I J getParentPath ()Ljavax/swing/tree/TreePath; L :org/openide/explorer/view/ContextTreeView$NodeContextModel
 K 
 O P Q R S java/lang/Class getName ()Ljava/lang/String;
 U V W X Y java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	  [ \ ] LOG Ljava/util/logging/Logger; serialVersionUID J ConstantValue�O�B�� Code LineNumberTable LocalVariableTable this +Lorg/openide/explorer/view/ContextTreeView; selectionAccept ([Lorg/openide/nodes/Node;)Z i nodes [Lorg/openide/nodes/Node; parent Lorg/openide/nodes/Node; StackMapTable MethodParameters selectionChanged B([Lorg/openide/nodes/Node;Lorg/openide/explorer/ExplorerManager;)V man &Lorg/openide/explorer/ExplorerManager; 
Exceptions w  java/beans/PropertyVetoException showPath path Ljavax/swing/tree/TreePath; rect Ljava/awt/Rectangle; showSelection paths [Ljavax/swing/tree/TreePath; useExploredContextMenu ()Z createModel +()Lorg/openide/explorer/view/NodeTreeModel; <clinit> 
SourceFile ContextTreeView.java InnerClasses NodeContextModel !       ^ _  `    a  \ ]        c   D     *� *� � �  �    d       O  P  Q e        f g    h i  c   �     *+�� �+2� M>+�� +2� ,� ������    d   "    V  W  Z  \  ]   ^ " \ ( b e   *    j 6    * f g     * k l    m n  o    �  �  p    k    q r  c   e     +�� 
,+2� ,+� %�    d       j  k  n  o e         f g      k l     s t  o     u     v p   	 k   s    x ,  c   �     8*� +� )*� +� -M,� ,Y� 1,� 7`� 1,� 7*� ,� :*� +� >�    d   "    u  w  y  z " { ' | /  7 � e        8 f g     8 y z   ' { |  o    � / 2 p    y    } F  c   k     !+�� *� � A� C� *� +2� G� >�    d       �  �  �   � e       ! f g     ! ~   o     p    ~    � �  c   ,     �    d       � e        f g    � �  c   2     � KY� M�    d       � e        f g    �   c   $      � N� T� Z�    d       K  �    � �   
  K  � 