����   4 l
      %org/openide/nodes/FilterNode$Children <init> (Lorg/openide/nodes/Node;)V
  	 
   java/awt/EventQueue isDispatchThread ()Z  org/openide/nodes/Node  :org/openide/actions/NewTemplateAction$DataShadowFilterNode	      6org/openide/actions/NewTemplateAction$TemplateChildren LEAF Lorg/openide/nodes/Children;
     getDisplayName ()Ljava/lang/String;
     I(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;Ljava/lang/String;)V  org/openide/loaders/DataShadow
  ! " # 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; % org/openide/loaders/DataNode	 '  ( org/openide/nodes/Children
 $ *  + ?(Lorg/openide/loaders/DataObject;Lorg/openide/nodes/Children;)V
 $ 
  . / 0 getOriginal "()Lorg/openide/loaders/DataObject;
 2 3 4 5 6 org/openide/loaders/DataObject getNodeDelegate ()Lorg/openide/nodes/Node;
 2 8 9  
isTemplate
 ; < = > ? %org/openide/actions/NewTemplateAction access$1000 #(Lorg/openide/loaders/DataObject;)Z
  
  B C D 
refreshKey (Ljava/lang/Object;)V
  F G H createNodes 3(Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node; Code LineNumberTable LocalVariableTable this 8Lorg/openide/actions/NewTemplateAction$TemplateChildren; or Lorg/openide/nodes/Node; MethodParameters dn Lorg/openide/loaders/DataNode; n nodeName Ljava/lang/String; obj  Lorg/openide/loaders/DataObject; shadow  Lorg/openide/loaders/DataShadow; StackMapTable \ java/lang/String #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; refreshKeyImpl -(Ljava/lang/Object;)[Lorg/openide/nodes/Node; 
SourceFile NewTemplateAction.java InnerClasses e org/openide/nodes/FilterNode Children DataShadowFilterNode TemplateChildren j org/openide/nodes/Node$Cookie Cookie              I   >     *+� �    J   
   � � K        L M      N O  P    N    G H  I  T 	    �� � � Y� Y+� +� � S�+� MN+�  � :� "� $Y� &� ):� ,M� -N-� 1L-� +2�  � 2N-� *-� 7� -� :� � Y� Y+� Y+� @,� S�� Y� Y+� ,� S�    J   F   � � � "� $� /� 4� B� H� N� S� W� a� e� l� s  � K   >  B  Q R    � L M     � S O  " ~ T U  $ | V W  / q X Y  Z    � 5 [ 2 
 P    S   ]     ^    _   I   >     *+� A�    J   
     K        L M      S O  P    S  D G `  I   3     	*+� � E�    J      � K       	 L M   P    S  ]     ^    a    b c   "   d f 	  ; g 
  ; h 
 i  k	