����   4 \	      &org/openide/nodes/Index$KeysChildren$1 this$0 &Lorg/openide/nodes/Index$KeysChildren;
  	 
   org/openide/nodes/Index$Support <init> ()V
      $org/openide/nodes/Index$KeysChildren getNodes ()[Lorg/openide/nodes/Node;
      java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;	     nodes Ljava/util/Collection;     ! " java/util/List 	removeAll (Ljava/util/Collection;)Z  $ % & size ()I ( org/openide/nodes/Node  * + , toArray (([Ljava/lang/Object;)[Ljava/lang/Object; . [Lorg/openide/nodes/Node;	  0 1 2 list Ljava/util/List;
  4 5 6 reorder ([I)V
  8 9  update ; javax/swing/event/ChangeEvent
 : =  > (Ljava/lang/Object;)V
  @ A B fireChangeEvent "(Ljavax/swing/event/ChangeEvent;)V )(Lorg/openide/nodes/Index$KeysChildren;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/nodes/Index$KeysChildren$1; LocalVariableTypeTable MethodParameters l *Ljava/util/List<Lorg/openide/nodes/Node;>; StackMapTable getNodesCount perm [I 
SourceFile 
Index.java EnclosingMethod U V createIndex ()Lorg/openide/nodes/Index; InnerClasses Y org/openide/nodes/Index KeysChildren Support                C  D   P     
*+� *� �    E      � F       
 G H     
    I       
 G H   J    �     D   �     6*� � � L*� � � +*� � �  W++� # � '� ) � -�    E      � � � #� F       6 G H    + K 2  I       6 G H    + K L  M    � #   N &  D   I     *� � /� # �    E      � F        G H   I        G H    5 6  D   n     *� +� 3*� � 7*� :Y*� <� ?�    E      � � � � F        G H      O P  I        G H   J    O    Q    R S     T W      X Z	         X [	