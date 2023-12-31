����   4 y
      org/openide/nodes/NodeAdapter <init> ()V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      'org/openide/nodes/BeanChildren$ContextL ref Ljava/lang/ref/WeakReference;
     get ()Ljava/lang/Object;  org/openide/nodes/BeanChildren
     
updateKeys
       org/openide/nodes/NodeEvent getNode ()Lorg/openide/nodes/Node;
  " # $ 
access$000 ()Ljava/util/Map; & ' (  ) java/util/Map &(Ljava/lang/Object;)Ljava/lang/Object; + [Ljava/lang/ref/Reference;
 -  . java/lang/ref/Reference 0 "java/beans/beancontext/BeanContext / 2 3 4 remove (Ljava/lang/Object;)Z 6 java/lang/RuntimeException
 8 9 : ; < java/lang/Class getName ()Ljava/lang/String;
 > ? @ A B java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 D E F G H java/util/logging/Level WARNING Ljava/util/logging/Level;
 > J K L log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V N 4java/beans/beancontext/BeanContextMembershipListener 	Signature ?Ljava/lang/ref/WeakReference<Lorg/openide/nodes/BeanChildren;>; Code LineNumberTable LocalVariableTable this )Lorg/openide/nodes/BeanChildren$ContextL; #(Lorg/openide/nodes/BeanChildren;)V bc  Lorg/openide/nodes/BeanChildren; MethodParameters childrenAdded 6(Ljava/beans/beancontext/BeanContextMembershipEvent;)V bcme 3Ljava/beans/beancontext/BeanContextMembershipEvent; StackMapTable childrenRemoved nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V refs re Ljava/lang/RuntimeException; subbean Ljava/lang/Object; bean $Ljava/beans/beancontext/BeanContext; ev Lorg/openide/nodes/NodeEvent; n Lorg/openide/nodes/Node; LocalVariableTypeTable [Ljava/lang/ref/Reference<*>; p org/openide/nodes/Node r java/lang/Object t java/lang/Throwable 
SourceFile BeanChildren.java InnerClasses ContextL 0    M      O    P       Q   3     *� �    R   
    �  � S        T U      V  Q   M     *� *� Y+� 	� �    R       �  �  � S        T U      W X  Y    W    Z [  Q   l     *� � � M,� ,� �    R       �  �  �  � S         T U      \ ]   	 W X  ^    �   Y    \    _ [  Q   l     *� � � M,� ,� �    R       �  �  �  � S         T U      \ ]   	 W X  ^    �   Y    \    ` a  Q  �     i+� M� !Y:¸ !,� % � *Nç :��-� @-2� ,� /:� 0-2� ,:� #� 1 W� :� 7� =� C� I�        $    H R U 5  R   :    �  �  �  � ' � + � 6 � ; � C � H � R � U � W � h � S   R    b +  W  c d  C % e f  6 2 g h    i T U     i i j   d k l  ' B b +  m       b n  ' B b n  ^   K �     o  q  s�     o *  � -    o * / q  5�  Y    i    u    v w   
    x 