����   4 B
      java/io/IOException <init> ()V	  	 
   'org/openide/nodes/NodeNotFoundException node Lorg/openide/nodes/Node;	     name Ljava/lang/String;	     depth I  java/lang/StringBuilder
    Could not find child '
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;  ' of 
  !  " -(Ljava/lang/Object;)Ljava/lang/StringBuilder; $ 
 at depth 
  &  ' (I)Ljava/lang/StringBuilder;
  ) * + toString ()Ljava/lang/String; serialVersionUID J ConstantValue���*��� .(Lorg/openide/nodes/Node;Ljava/lang/String;I)V Code LineNumberTable LocalVariableTable this )Lorg/openide/nodes/NodeNotFoundException; MethodParameters getClosestNode ()Lorg/openide/nodes/Node; getMissingChildName getClosestNodeDepth ()I 
getMessage #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile NodeNotFoundException.java 1       , -  .    /                    1  2   l     *� *+� *,� *� �    3       .  / 	 0  1  2 4   *     5 6                     7              8 9  2   /     *� �    3       8 4        5 6    : +  2   /     *� �    3       ? 4        5 6    ; <  2   /     *� �    3       F 4        5 6    = +  2   Y     /� Y� � *� � � *� �  #� *� � %� (�    3       J 4       / 5 6   >     ?    @    A