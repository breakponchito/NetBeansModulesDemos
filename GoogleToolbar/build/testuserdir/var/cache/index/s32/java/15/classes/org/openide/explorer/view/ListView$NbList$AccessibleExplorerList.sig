����   4 3	      @org/openide/explorer/view/ListView$NbList$AccessibleExplorerList this$1 +Lorg/openide/explorer/view/ListView$NbList;
  	 
   !javax/swing/JList$AccessibleJList <init> (Ljavax/swing/JList;)V	      )org/openide/explorer/view/ListView$NbList this$0 $Lorg/openide/explorer/view/ListView;
      "org/openide/explorer/view/ListView getAccessibleContext )()Ljavax/accessibility/AccessibleContext;
      %javax/accessibility/AccessibleContext getAccessibleName ()Ljava/lang/String;
    !  getAccessibleDescription .(Lorg/openide/explorer/view/ListView$NbList;)V Code LineNumberTable LocalVariableTable this BLorg/openide/explorer/view/ListView$NbList$AccessibleExplorerList; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ListView.java InnerClasses NbList AccessibleExplorerList 1 javax/swing/JList AccessibleJList                "  #   9     *+� *+� �    $   
   � 
� %        & '   (         #   8     *� � � � �    $      � %        & '   )     *    !   #   8     *� � � � �    $      � %        & '   )     *    +    , -       .    /   0 2 