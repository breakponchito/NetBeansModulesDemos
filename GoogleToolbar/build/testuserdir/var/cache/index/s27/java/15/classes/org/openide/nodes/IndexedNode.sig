����   4 \  %org/openide/nodes/Index$ArrayChildren
     <init> ()V
  	 
   org/openide/nodes/AbstractNode (Lorg/openide/nodes/Children;)V
      org/openide/nodes/IndexedNode getChildren ()Lorg/openide/nodes/Children;  org/openide/nodes/Index	     	indexImpl Lorg/openide/nodes/Index;
     8(Lorg/openide/nodes/Children;Lorg/openide/util/Lookup;)V  javax/swing/JPanel
    #org/openide/nodes/IndexedCustomizer
  !  " (Ljava/awt/Container;Z)V
  $ % & 	setObject (Ljava/lang/Object;)V
 ( ) * + , java/lang/Class 
isInstance (Ljava/lang/Object;)Z
 ( . / 0 cast &(Ljava/lang/Object;)Ljava/lang/Object; 2 org/openide/nodes/Node$Cookie
  4 5 6 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/IndexedNode; 8(Lorg/openide/nodes/Children;Lorg/openide/nodes/Index;)V children Lorg/openide/nodes/Children; MethodParameters Q(Lorg/openide/nodes/Children;Lorg/openide/nodes/Index;Lorg/openide/util/Lookup;)V lookup Lorg/openide/util/Lookup; hasCustomizer ()Z getCustomizer ()Ljava/awt/Component; c Ljava/awt/Container; 
customizer %Lorg/openide/nodes/IndexedCustomizer; clazz Ljava/lang/Class; ch LocalVariableTypeTable Ljava/lang/Class<TT;>; StackMapTable R org/openide/nodes/Children 	Signature ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; 
SourceFile IndexedNode.java InnerClasses ArrayChildren Z org/openide/nodes/Node Cookie !                7   I     *� Y� � **� � � �    8       (  )  * 9        : ;     <  7   Q     *+� *,� �    8       2  3 
 4 9         : ;      = >        ?   	 =        @  7   \     *+-� *,� �    8       >  ?  @ 9   *     : ;      = >           A B  ?    =      A    C D  7   ,     �    8       H 9        : ;    E F  7   f     � Y� L� Y+�  M,*� � #+�    8       O  Q  R  T 9         : ;     G H   
 I J   5 6  7   �     3+*� � '� +*� � -� 1�*� M+,� '� +,� -� 1�*+� 3�    8       ]  _  b  d $ f - i 9        3 : ;     3 K L    M >  N       3 K O  P   	 �  Q ?    K   S    T  U    V W       X 	 1 Y [	