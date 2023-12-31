����   4 j
      org/openide/nodes/NodeEvent <init> (Lorg/openide/nodes/Node;)V	  	 
   "org/openide/nodes/NodeReorderEvent 
newIndices [I
      org/openide/nodes/Node getChildren ()Lorg/openide/nodes/Children;
      org/openide/nodes/Children snapshot ()Ljava/util/List;	     currSnapshot Ljava/util/List;  java/lang/StringBuffer
     ! ()V
 # $ % & ' java/lang/Object getClass ()Ljava/lang/Class;
 ) * + , - java/lang/Class getName ()Ljava/lang/String;
  / 0 1 append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; 3 [node=
  5 6 7 	getSource ()Ljava/lang/Object;
  9 0 : ,(Ljava/lang/Object;)Ljava/lang/StringBuffer; < , permutation = (
  > ? @ getPermutation ()[I
  B 0 C (I)Ljava/lang/StringBuffer; E ,  G )]
  I J - toString serialVersionUID J ConstantValue>)p
�� 	Signature *Ljava/util/List<Lorg/openide/nodes/Node;>; (Lorg/openide/nodes/Node;[I)V Code LineNumberTable LocalVariableTable this $Lorg/openide/nodes/NodeReorderEvent; n Lorg/openide/nodes/Node; MethodParameters getSnapshot ,()Ljava/util/List<Lorg/openide/nodes/Node;>; 
newIndexOf (I)I i I getPermutationSize ()I sb Ljava/lang/StringBuffer; perm StackMapTable  
SourceFile NodeReorderEvent.java 1       K L  M    N          P    Q     R  S   `     *+� *,� *+� � � �    T       *  + 
 ,  - U         V W      X Y        Z   	 X       [   S   /     *� �    T       5 U        V W   P    \  ] ^  S   ;     *� .�    T       = U        V W      _ `  Z    _    ? @  S   /     *� �    T       D U        V W    a b  S   0     *� ��    T       J U        V W    J -  S   �     _� Y� L+*� "� (� .W+2� .W+*� 4� 8W+;� .W*� =M>,�� +,.� AW�,����+D� .W���+F� .W+� H�    T   2    O  P  Q  R $ S + U 0 W 8 X @ Z I [ S _ Z a U   *  2 ! _ `    _ V W    W c d  0 / e   f    � 2  g�    h    i