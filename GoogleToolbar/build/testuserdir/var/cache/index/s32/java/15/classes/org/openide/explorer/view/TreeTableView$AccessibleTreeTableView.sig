����   4 8	      ?org/openide/explorer/view/TreeTableView$AccessibleTreeTableView this$0 )Lorg/openide/explorer/view/TreeTableView;
  	 
   -javax/swing/JScrollPane$AccessibleJScrollPane <init> (Ljavax/swing/JScrollPane;)V
     setAccessibleName (Ljava/lang/String;)V	      'org/openide/explorer/view/TreeTableView 	treeTable Ljavax/swing/JTable;
      javax/swing/JTable getAccessibleContext )()Ljavax/accessibility/AccessibleContext;
    %javax/accessibility/AccessibleContext
  ! "  setAccessibleDescription
  ! ,(Lorg/openide/explorer/view/TreeTableView;)V Code LineNumberTable LocalVariableTable this ALorg/openide/explorer/view/TreeTableView$AccessibleTreeTableView; MethodParameters accessibleName Ljava/lang/String; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; accessibleDescription 
SourceFile TreeTableView.java InnerClasses AccessibleTreeTableView 6 javax/swing/JScrollPane AccessibleJScrollPane                $  %   9     *+� *+� �    &   
   c 
d '        ( )   *         %   g     *+� *� � � *� � � +� �    &      h j k m '        ( )      + ,  -     *    +   .     /    "   %   g     *+�  *� � � *� � � +� #�    &      q s t v '        ( )      0 ,  -     *    0   .     /    1    2 3       4   5 7 