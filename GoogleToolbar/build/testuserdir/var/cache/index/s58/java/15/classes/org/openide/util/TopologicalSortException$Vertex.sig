����   4 H
      java/lang/Object <init> ()V  java/util/ArrayList
  	      0org/openide/util/TopologicalSortException$Vertex 	edgesFrom Ljava/util/List;	     x I	     object Ljava/lang/Object;	     sorted Z
      ! java/util/Collections sort (Ljava/util/List;)V # $ % & ' java/util/List iterator ()Ljava/util/Iterator;	  ) *  y
  , - . 	compareTo 5(Lorg/openide/util/TopologicalSortException$Vertex;)I 0 java/lang/Comparable 	Signature DLjava/util/List<Lorg/openide/util/TopologicalSortException$Vertex;>; visited (Ljava/lang/Object;I)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/util/TopologicalSortException$Vertex; obj MethodParameters edges StackMapTable J()Ljava/util/Iterator<Lorg/openide/util/TopologicalSortException$Vertex;>; o (Ljava/lang/Object;)I \Ljava/lang/Object;Ljava/lang/Comparable<Lorg/openide/util/TopologicalSortException$Vertex;>; 
SourceFile TopologicalSortException.java InnerClasses F )org/openide/util/TopologicalSortException Vertex 0    /           1    2       *          3       4  5   h     *� *� Y� 	� 
*� *+� �    6      ` R a b c 7         8 9      :         ;   	 :       < '  5   \     *� � *� 
� *� *� 
� " �    6      i j k n 7        8 9   =     1    >  - .  5   >     
+� (*� (d�    6      x 7       
 8 9     
 ? 9  ;    ?  A - @  5   3     	*+� � +�    6      M 7       	 8 9   ;    ?   1    A B    C D   
   E G 