����   4 �	      <org/openide/explorer/view/TreeView$ExplorerTree$ModelHandler this$1 1Lorg/openide/explorer/view/TreeView$ExplorerTree;
  	 
   "javax/swing/JTree$TreeModelHandler <init> (Ljavax/swing/JTree;)V
      /org/openide/explorer/view/TreeView$ExplorerTree getSelectionPaths ()[Ljavax/swing/tree/TreePath;
       javax/swing/event/TreeModelEvent getTreePath ()Ljavax/swing/tree/TreePath;
     getExpandedDescendants 4(Ljavax/swing/tree/TreePath;)Ljava/util/Enumeration;
      treeStructureChanged %(Ljavax/swing/event/TreeModelEvent;)V " # $ % & java/util/Enumeration hasMoreElements ()Z " ( ) * nextElement ()Ljava/lang/Object; , javax/swing/tree/TreePath
  . / 0 
expandPath (Ljavax/swing/tree/TreePath;)V
  2 3 4 isPathSelected (Ljavax/swing/tree/TreePath;)Z
  6 7 8 setSelectionPaths ([Ljavax/swing/tree/TreePath;)V
  : ; 0 scrollPathToVisible
  = >   treeNodesRemoved	  @ A B this$0 $Lorg/openide/explorer/view/TreeView;
 D E F G H "org/openide/explorer/view/TreeView access$2100 '(Lorg/openide/explorer/view/TreeView;)Z
 D J K L access$2102 ((Lorg/openide/explorer/view/TreeView;Z)Z
 N O P Q R ,org/openide/explorer/view/ExplorerDnDManager 
getDefault 0()Lorg/openide/explorer/view/ExplorerDnDManager;
 N T U & isDnDActive	 D W X Y tree Ljavax/swing/JTree;
 [ \ ] ^ _ javax/swing/JTree getSelectionCount ()I
  a b c getChildIndices ()[I
 D e f g findSiblingTreePath :(Ljavax/swing/tree/TreePath;[I)Ljavax/swing/tree/TreePath;
 + i j _ getPathCount
 [ l m 0 setSelectionPath 4(Lorg/openide/explorer/view/TreeView$ExplorerTree;)V Code LineNumberTable LocalVariableTable this >Lorg/openide/explorer/view/TreeView$ExplorerTree$ModelHandler; MethodParameters wasSelected Z e "Ljavax/swing/event/TreeModelEvent; selectionPaths [Ljavax/swing/tree/TreePath; expanded Ljava/util/Enumeration; StackMapTable z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; path Ljavax/swing/tree/TreePath; 
SourceFile TreeView.java InnerClasses ExplorerTree ModelHandler TreeModelHandler                n  o   9     *+� *+� �    p   
   � 
� q        r s   t          o   �     f*� � M*� +� � N*+� -� -� ! � *� -� ' � +� -���,� +,�� &*� ,2� 16*� ,� 5� *� ,2� 9�    p   2   � � � � � &� 9� B� N� V� [� e� q   4  N  u v    f r s     f w x   ^ y z   R { |  }    �  ~ "+ t    w        �    >    o   �     i*+� <*� � ?� C=*� � ?� IW� M� S� �� A*� � ?� V� Z� 1+� +� `� dN-� +� `�� �-� h� *� � ?� V-� k�    p   2   � � � � %� &� :� F� R� S� Z� h� q   *  F " � �    i r s     i w x   Y u v  }    � &� + + �  t    w        �    �    � �      D �    �   [ � 