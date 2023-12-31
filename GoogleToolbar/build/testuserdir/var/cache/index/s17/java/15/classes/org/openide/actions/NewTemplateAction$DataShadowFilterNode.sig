����   4 �
      org/openide/nodes/FilterNode <init> 7(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;)V	  	 
   :org/openide/actions/NewTemplateAction$DataShadowFilterNode name Ljava/lang/String;
     disableDelegation (I)V
      org/openide/nodes/NodeOp weakNodeListener T(Lorg/openide/nodes/NodeListener;Ljava/lang/Object;)Lorg/openide/nodes/NodeListener;
      org/openide/nodes/Node addNodeListener #(Lorg/openide/nodes/NodeListener;)V
      getOriginal ()Lorg/openide/nodes/Node;
  " # $ getDisplayName ()Ljava/lang/String; & org/openide/loaders/DataShadow
  ( ) * 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; , org/openide/loaders/DataNode	 . / 0 1 2 %org/openide/nodes/FilterNode$Children LEAF Lorg/openide/nodes/Children;
 + 4  5 ?(Lorg/openide/loaders/DataObject;Lorg/openide/nodes/Children;)V
 + "
 % 8  9 "()Lorg/openide/loaders/DataObject;
 ; < = >   org/openide/loaders/DataObject getNodeDelegate
 ; @ A B 
isTemplate ()Z
  D E F setChildren (Lorg/openide/nodes/Children;)V
 H I J K L %org/openide/actions/NewTemplateAction access$1000 #(Lorg/openide/loaders/DataObject;)Z N 6org/openide/actions/NewTemplateAction$TemplateChildren
 M P  Q (Lorg/openide/nodes/Node;)V
  S T   getParentNode
  V W X getChildren ()Lorg/openide/nodes/Children;
 M Z [ Q refreshKeyImpl
  ] ^ _ refresh ()V a org/openide/nodes/NodeListener I(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this <Lorg/openide/actions/NewTemplateAction$DataShadowFilterNode; or Lorg/openide/nodes/Node; children MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; dn Lorg/openide/loaders/DataNode; ch 8Lorg/openide/actions/NewTemplateAction$TemplateChildren; n nodeName obj  Lorg/openide/loaders/DataObject; shadow  Lorg/openide/loaders/DataShadow; p StackMapTable { java/lang/String childrenAdded &(Lorg/openide/nodes/NodeMemberEvent;)V ev #Lorg/openide/nodes/NodeMemberEvent; childrenRemoved childrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V $Lorg/openide/nodes/NodeReorderEvent; nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V Lorg/openide/nodes/NodeEvent; propertyChange #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; 
SourceFile NewTemplateAction.java InnerClasses DataShadowFilterNode � org/openide/nodes/Node$Cookie Cookie Children TemplateChildren      `          b  c   r     *+,� *-� *� +*+� � �    d           e   *     f g      h i     j 2        k    h   j       # $  c   /     *� �    d       e        f g   l     m    ^ _  c  �     �*� L+� !MN+%� '� %:� "� +Y� -� 3:� 6M� 7N-� :L-� +;� '� ;N-� 0-� ?� *,� *� -� C�-� G� *,� *� MY+� O� C�*� R:� � U� M:� 	+� Y�    d   j     
! " # & *' 0( 6) ;, ?- I/ M0 T2 Y3 `4 a7 h9 m: y; z> �? �@ �A �B �E e   R  *  n o  �  p q    � f g    � r i  
 � s    � t u   � v w  �  x i  y   ! � ;    z ; %  �    | }  c   =     *� \�    d   
   I J e        f g      ~   k    ~   l     m    � }  c   =     *� \�    d   
   N O e        f g      ~   k    ~   l     m    � �  c   5      �    d      S e        f g      ~ �  k    ~   l     m    � �  c   5      �    d      W e        f g      ~ �  k    ~   l     m    � �  c   =     *� \�    d   
   [ \ e        f g      � �  k    �   l     m    �    � �   "   H � 
 �  �	 .  � 	 M H � 
