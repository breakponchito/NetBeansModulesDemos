����   4 [	      $org/openide/explorer/view/TreeView$2 this$0 $Lorg/openide/explorer/view/TreeView;	   	 
 val$prepare Ljava/util/List;	     val$n Lorg/openide/nodes/Node;
      java/lang/Object <init> ()V	      "org/openide/explorer/view/TreeView LOG Ljava/util/logging/Logger;	       java/util/logging/Level FINEST Ljava/util/logging/Level; " .Just print the variable so it is not GCed: {0}
 $ % & ' ( java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  * + , getTreePath 5(Lorg/openide/nodes/Node;)Ljavax/swing/tree/TreePath;	  . /   FINE 1 expandNode: {0} {1}
 $ 3 ' 4 A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V	  6 7 8 tree Ljavax/swing/JTree;
 : ; < = > javax/swing/JTree 
expandPath (Ljavax/swing/tree/TreePath;)V @ expandPath done
 $ B C D fine (Ljava/lang/String;)V F java/lang/Runnable O(Lorg/openide/explorer/view/TreeView;Ljava/util/List;Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/explorer/view/TreeView$2; MethodParameters 	Signature run p Ljavax/swing/tree/TreePath; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TreeView.java EnclosingMethod X Y 
expandNode (Lorg/openide/nodes/Node;)V InnerClasses      E  	 
               G  H   H     *+� *,� *-� *� �    I      T J        K L         M    � 	  N      O   H   �     I� � !*� � #*� *� � )L� � -0� Y*� SY+S� 2*� � 5+� 9� ?� A�    I      W X Y 5Z @[ H\ J       I K L    . P Q  R     S    T    U V     W Z   
        