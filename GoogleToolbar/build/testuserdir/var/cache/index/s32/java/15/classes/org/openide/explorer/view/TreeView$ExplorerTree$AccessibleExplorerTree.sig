����   4 3	      Forg/openide/explorer/view/TreeView$ExplorerTree$AccessibleExplorerTree this$1 1Lorg/openide/explorer/view/TreeView$ExplorerTree;
  	 
   !javax/swing/JTree$AccessibleJTree <init> (Ljavax/swing/JTree;)V	      /org/openide/explorer/view/TreeView$ExplorerTree this$0 $Lorg/openide/explorer/view/TreeView;
      "org/openide/explorer/view/TreeView getAccessibleContext )()Ljavax/accessibility/AccessibleContext;
      %javax/accessibility/AccessibleContext getAccessibleName ()Ljava/lang/String;
    !  getAccessibleDescription 4(Lorg/openide/explorer/view/TreeView$ExplorerTree;)V Code LineNumberTable LocalVariableTable this HLorg/openide/explorer/view/TreeView$ExplorerTree$AccessibleExplorerTree; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TreeView.java InnerClasses ExplorerTree AccessibleExplorerTree 1 javax/swing/JTree AccessibleJTree                "  #   9     *+� *+� �    $   
   � 
� %        & '   (         #   8     *� � � � �    $      � %        & '   )     *    !   #   8     *� � � � �    $      � %        & '   )     *    +    , -       .    /   0 2 