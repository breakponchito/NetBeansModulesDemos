����   4 c	      "org/openide/nodes/AsynchChildren$1 this$0 "Lorg/openide/nodes/AsynchChildren;	   	 
 val$minimalCount I
      java/util/LinkedList <init> ()V	       org/openide/nodes/AsynchChildren 	cancelled Z
      java/lang/Thread interrupted ()Z  %org/openide/nodes/AsynchChildren$Stop
     ! '(Lorg/openide/nodes/AsynchChildren$1;)V
  # $ % add (Ljava/lang/Object;)Z
  '  ( (Ljava/util/Collection;)V
  * + , 
access$100 D(Lorg/openide/nodes/AsynchChildren;)Lorg/openide/nodes/ChildFactory;
 . / 0 1 2 org/openide/nodes/ChildFactory getWaitNode ()Lorg/openide/nodes/Node;
 4 5 6 7 8 java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
  : ; < 	removeAll (Ljava/util/Collection;)Z
  > ? @ size ()I
  B C ( setKeys &(Lorg/openide/nodes/AsynchChildren;I)V Code LineNumberTable LocalVariableTable this $Lorg/openide/nodes/AsynchChildren$1; LocalVariableTypeTable MethodParameters e Ljava/lang/Object; newKeys Ljava/util/LinkedList; n Lorg/openide/nodes/Node; TT; *Ljava/util/LinkedList<Ljava/lang/Object;>; StackMapTable V org/openide/nodes/Node 	Signature (TT;)Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; Ljava/util/LinkedList<TT;>; 
SourceFile AsynchChildren.java EnclosingMethod `  run InnerClasses Stop        	 
           D  E   U     *+� *� *� �    F       � G        H I         J        H I   K   	 � 	  $ %  E       [*� � � 	� � � Y� �*+� "W� Y*� &M*� � )� -N-� 	,-� "W,� 3� 9W,� =*� � *� ,� A�    F   .    �  �  �  � ( � 3 � 7 � = � F � Q � Y � G   *    [ H I     [ L M  ( 3 N O  3 ( P Q  J        [ H I     [ L R  ( 3 N S  T    � #  U K    L   W    X Y     Z    W    [ \    ] ^     _ a              b 