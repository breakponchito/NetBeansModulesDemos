����   4 p
      0org/openide/loaders/InstanceNode$BeanContextNode getChildren X(Ljava/lang/Object;Lorg/openide/loaders/InstanceDataObject;)Lorg/openide/nodes/Children;
  	 
   org/openide/nodes/BeanNode <init> 1(Ljava/lang/Object;Lorg/openide/nodes/Children;)V
     getSheet ()Lorg/openide/nodes/Sheet;
     changeSheet D(Lorg/openide/nodes/Sheet;Lorg/openide/loaders/InstanceDataObject;)V  org/openide/nodes/Sheet  
properties
     get 1(Ljava/lang/String;)Lorg/openide/nodes/Sheet$Set;
     ! " org/openide/nodes/Sheet$Set getProperties $()[Lorg/openide/nodes/Node$Property;
 $ % & ' (  org/openide/loaders/InstanceNode access$1100 j(Lorg/openide/nodes/Sheet$Set;[Lorg/openide/nodes/Node$Property;Lorg/openide/loaders/InstanceDataObject;)V * expert , "java/beans/beancontext/BeanContext . org/openide/nodes/BeanChildren 0 0org/openide/loaders/InstanceNode$BeanFactoryImpl
 / 2  3 +(Lorg/openide/loaders/InstanceDataObject;)V
 - 5  6 O(Ljava/beans/beancontext/BeanContext;Lorg/openide/nodes/BeanChildren$Factory;)V 8 'java/beans/beancontext/BeanContextProxy 7 : ; < getBeanContextProxy +()Ljava/beans/beancontext/BeanContextChild;	 > ? @ A B org/openide/nodes/Children LEAF Lorg/openide/nodes/Children; =(Ljava/lang/Object;Lorg/openide/loaders/InstanceDataObject;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/loaders/InstanceNode$BeanContextNode; bean Ljava/lang/Object; task (Lorg/openide/loaders/InstanceDataObject; LocalVariableTypeTable 7Lorg/openide/loaders/InstanceNode$BeanContextNode<TT;>; TT; 
Exceptions R !java/beans/IntrospectionException MethodParameters 	Signature .(TT;Lorg/openide/loaders/InstanceDataObject;)V orig Lorg/openide/nodes/Sheet; props Lorg/openide/nodes/Sheet$Set; StackMapTable bch )Ljava/beans/beancontext/BeanContextChild; 
canDestroy ()Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 7<T:Ljava/lang/Object;>Lorg/openide/nodes/BeanNode<TT;>; 
SourceFile InstanceNode.java InnerClasses BeanContextNode Set h org/openide/nodes/Node$Property j org/openide/nodes/Node Property BeanFactoryImpl n &org/openide/nodes/BeanChildren$Factory Factory            C  D   v     *++,� � **� ,� �    E      ^ 
_ ` F         G H      I J     K L  M        G N      I O  P     Q S   	 I   K   T    U     D   �     )+� N-� --� ,� #+)� N-� --� ,� #�    E      c d e h i j (l F   *    ) G H     ) V W    ) K L   " X Y  M       ) G N   Z   	 �   S   	 V   K   
    D   �     K*� +� � -Y*� +� /Y+� 1� 4�*� 7� (*� 7� 9 M,� +� � -Y,� +� /Y+� 1� 4�� =�    E      n o q "r ,s 3t Gw F      ,  [ \    K I J     K K L  Z    + S   	 I   K    ] ^  D   >     �    E      } F        G H   M        G N   _     `    T    a b    c d   *   $ e 
   f  g i k	 / $ l 
 m - o	