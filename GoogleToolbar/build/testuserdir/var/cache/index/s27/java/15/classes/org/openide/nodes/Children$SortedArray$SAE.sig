����   4 =	      *org/openide/nodes/Children$SortedArray$SAE this$0 (Lorg/openide/nodes/Children$SortedArray;
  	 
   java/lang/Object <init> ()V  java/util/ArrayList
      &org/openide/nodes/Children$SortedArray getCollection ()Ljava/util/Collection;
     (Ljava/util/Collection;)V
     
access$200 @(Lorg/openide/nodes/Children$SortedArray;)Ljava/util/Comparator;
      ! java/util/Collections sort )(Ljava/util/List;Ljava/util/Comparator;)V #  org/openide/nodes/Children$Entry +(Lorg/openide/nodes/Children$SortedArray;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/nodes/Children$SortedArray$SAE; MethodParameters nodes *(Ljava/lang/Object;)Ljava/util/Collection; source Ljava/lang/Object; al Ljava/util/List; LocalVariableTypeTable *Ljava/util/List<Lorg/openide/nodes/Node;>; 	Signature D(Ljava/lang/Object;)Ljava/util/Collection<Lorg/openide/nodes/Node;>; 
SourceFile Children.java InnerClasses 9 org/openide/nodes/Children SortedArray SAE Entry 0    "         $  %   8     
*+� *� �    &   
   � 	� '       
 ( )   *      + ,  %   t     � Y*� � � M,*� � � ,�    &      � � � '         ( )      - .    / 0  1       / 2  *    -   3    4  5    6 7      8 : 	   ;  " 8 <