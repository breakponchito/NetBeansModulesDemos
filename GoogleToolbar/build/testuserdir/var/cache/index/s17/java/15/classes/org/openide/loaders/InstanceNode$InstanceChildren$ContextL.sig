����   4 5
      java/lang/Object <init> ()V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      :org/openide/loaders/InstanceNode$InstanceChildren$ContextL ref Ljava/lang/ref/WeakReference;
     get ()Ljava/lang/Object;  1org/openide/loaders/InstanceNode$InstanceChildren
     access$1000 6(Lorg/openide/loaders/InstanceNode$InstanceChildren;)V  4java/beans/beancontext/BeanContextMembershipListener 	Signature RLjava/lang/ref/WeakReference<Lorg/openide/loaders/InstanceNode$InstanceChildren;>; Code LineNumberTable LocalVariableTable this <Lorg/openide/loaders/InstanceNode$InstanceChildren$ContextL; bc 3Lorg/openide/loaders/InstanceNode$InstanceChildren; MethodParameters childrenAdded 6(Ljava/beans/beancontext/BeanContextMembershipEvent;)V bcme 3Ljava/beans/beancontext/BeanContextMembershipEvent; StackMapTable childrenRemoved 
SourceFile InstanceNode.java InnerClasses 2  org/openide/loaders/InstanceNode InstanceChildren ContextL 0                         M     *� *� Y+� 	� �    !      2 3 4 "        # $      % &  '    %    ( )      l     *� � � M,� ,� �    !      ; < = ? "         # $      * +   	 % &  ,    �   '    *    - )      l     *� � � M,� ,� �    !      F G H J "         # $      * +   	 % &  ,    �   '    *    .    / 0      1 3    4 