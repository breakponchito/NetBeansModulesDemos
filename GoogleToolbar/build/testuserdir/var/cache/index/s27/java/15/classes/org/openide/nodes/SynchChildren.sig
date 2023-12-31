����   4 ]
      org/openide/nodes/Children$Keys <init> ()V	  	 
   org/openide/nodes/SynchChildren active Z	     factory  Lorg/openide/nodes/ChildFactory;
      org/openide/nodes/ChildFactory 	addNotify
     refresh (Z)V
      java/util/Collections 	emptyList ()Ljava/util/List;
  ! " # setKeys (Ljava/util/Collection;)V
  % &  removeNotify
  ( ) * createNodesForKey -(Ljava/lang/Object;)[Lorg/openide/nodes/Node;
  , - . destroyNodes ([Lorg/openide/nodes/Node;)V
  , 1 java/util/LinkedList
 0 
  4 5 6 
createKeys (Ljava/util/List;)Z 8 'org/openide/nodes/ChildFactory$Observer 	Signature %Lorg/openide/nodes/ChildFactory<TT;>; #(Lorg/openide/nodes/ChildFactory;)V Code LineNumberTable LocalVariableTable this !Lorg/openide/nodes/SynchChildren; LocalVariableTypeTable &Lorg/openide/nodes/SynchChildren<TT;>; MethodParameters ((Lorg/openide/nodes/ChildFactory<TT;>;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; createNodes key Ljava/lang/Object; TT; (TT;)[Lorg/openide/nodes/Node; arr [Lorg/openide/nodes/Node; 
toPopulate Ljava/util/List; 	immediate Ljava/util/List<TT;>; StackMapTable T java/util/List e<T:Ljava/lang/Object;>Lorg/openide/nodes/Children$Keys<TT;>;Lorg/openide/nodes/ChildFactory$Observer; 
SourceFile SynchChildren.java InnerClasses Z org/openide/nodes/Children Keys Observer 0    7      9    : @         ;  <   k     *� *� *+� �    =       %  ) 	 &  ' >        ? @         A        ? B       :  C       9    D     <   Z     *� *� � *� �    =       +  ,  -  . >        ? @   A        ? B   E     F    &   <   \     *� *� �  *� � $�    =       1  2  3  4 >        ? @   A        ? B   E     F    G *  <   Y     	*� +� '�    =       7 >       	 ? @     	 H I  A       	 ? B     	 H J  C    H   9    K  - .  <   \     *+� +*� +� /�    =       <  =  > >        ? @      L M  A        ? B   C    L   E     F       <   �     #*� � � 0Y� 2M*� ,� 3� ���*,�  �    =       B  C  D  E " G >        N O    # ? @     # P   A       N Q    # ? B   R    �  S�  C    P    9    U V    W X      Y [	 7  \