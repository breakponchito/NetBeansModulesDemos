����   4 7
      'org/openide/explorer/view/NodeTreeModel <init> ()V
  	 
   $org/openide/explorer/view/Visualizer findNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node;  org/openide/loaders/DataObject
      org/openide/nodes/Node 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
     
isTemplate ()Z
     getChildCount (Ljava/lang/Object;)I  2org/openide/loaders/TemplateWizard1$TemplatesModel Code LineNumberTable LocalVariableTable this 4Lorg/openide/loaders/TemplateWizard1$TemplatesModel; o Ljava/lang/Object; n Lorg/openide/nodes/Node; obj  Lorg/openide/loaders/DataObject; StackMapTable MethodParameters isLeaf (Ljava/lang/Object;)Z 
SourceFile TemplateWizard1.java InnerClasses 2 org/openide/nodes/Node$Cookie Cookie 5 #org/openide/loaders/TemplateWizard1 TemplatesModel 0                /     *� �           3 !        " #          �     $+� M,� � N-� 
-� � � *+� �           6 7 9 !   *    $ " #     $ $ %    & '    ( )  *    �   D +    $    , -     �      +� M,� � N-� 
-� � � �           = > @ !   *      " #       $ %    & '    ( )  *    �   @ +    $    .    / 0     1  3	  4 6 