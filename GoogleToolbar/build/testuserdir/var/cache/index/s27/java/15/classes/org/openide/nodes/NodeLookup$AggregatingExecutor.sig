����   4 ]
      0org/openide/nodes/NodeLookup$AggregatingExecutor <init> ()V
   	 java/lang/Object  java/util/ArrayList
 
 	     list Ljava/util/ArrayList;	     	scheduled Z
      java/awt/EventQueue isDispatchThread ()Z
 
    add (Ljava/lang/Object;)Z
    ! " invokeLater (Ljava/lang/Runnable;)V $ % & '  java/lang/Runnable run	  ) *  $assertionsDisabled , java/lang/AssertionError
 + 
 
 / 0 1 iterator ()Ljava/util/Iterator; 3 4 5 6  java/util/Iterator hasNext 3 8 9 : next ()Ljava/lang/Object; < org/openide/nodes/NodeLookup
 > ? @ A  java/lang/Class desiredAssertionStatus C java/util/concurrent/Executor 	Signature +Ljava/util/ArrayList<Ljava/lang/Runnable;>; Code LineNumberTable LocalVariableTable this 2Lorg/openide/nodes/NodeLookup$AggregatingExecutor; execute command Ljava/lang/Runnable; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; r #(Lorg/openide/nodes/NodeLookup$1;)V x0  Lorg/openide/nodes/NodeLookup$1; <clinit> 
SourceFile NodeLookup.java InnerClasses AggregatingExecutor \ org/openide/nodes/NodeLookup$1      B $       D    E      *         F   G     *� *� 
Y� � *� �    G       �  �  � H        I J    K "  F        )� � *� +� W*� � *� *� � 	+� # �    G       �  �  �  �  � " � ( H       ) I J     ) L M  N    " O    L   P     Q    '   F   �     I� (� � � � +Y� -�*� � .L+� 2 � +� 7 � $M,� # ���*� 
Y� � *� �    G       	 /
 5 8 C H H     /  R M    I I J   N    �  3�  P     Q     S  F   9     *� �    G       � H        I J      T U   V   F   4      ;� =� � � (�    G       � N    @  W    X Y      ; Z 
 [    