����   4 �	      *org/openide/nodes/EntrySupportDefault$Info this$0 'Lorg/openide/nodes/EntrySupportDefault;
  	 
   java/lang/Object <init> ()V	     entry "Lorg/openide/nodes/Children$Entry;	     $assertionsDisabled Z
      %org/openide/nodes/EntrySupportDefault 
access$300 B(Lorg/openide/nodes/EntrySupportDefault;)Ljava/lang/ref/Reference;
       java/lang/ref/Reference get ()Ljava/lang/Object; " java/lang/AssertionError $  ChildrenArray is not initialized
 ! &  ' (Ljava/lang/Object;)V
  ) * + 
access$400 L(Lorg/openide/nodes/EntrySupportDefault;[Z)Lorg/openide/nodes/ChildrenArray;
 - . / 0 1 org/openide/nodes/ChildrenArray nodesFor E(Lorg/openide/nodes/EntrySupportDefault$Info;Z)Ljava/util/Collection;
 - 3 4 5 useNodes E(Lorg/openide/nodes/EntrySupportDefault$Info;Ljava/util/Collection;)V 7 8 9 : ; java/util/Collection iterator ()Ljava/util/Iterator; = > ? @ A java/util/Iterator hasNext ()Z = C D   next F org/openide/nodes/Node	  H I J children Lorg/openide/nodes/Children;
 E L M N assignTo  (Lorg/openide/nodes/Children;I)V	 P Q R S T org/openide/nodes/Children parent Lorg/openide/nodes/Node;
 E V W X fireParentNodeChange 3(Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)V	  Z [ \ length I ^ java/lang/StringBuilder
 ] 	 a Children.Info[
 ] c d e append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ] g d h -(Ljava/lang/Object;)Ljava/lang/StringBuilder; j ,length=
 ] l d m (I)Ljava/lang/StringBuilder; o ]
 ] q r s toString ()Ljava/lang/String;
 u v w x A java/lang/Class desiredAssertionStatus L(Lorg/openide/nodes/EntrySupportDefault;Lorg/openide/nodes/Children$Entry;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/nodes/EntrySupportDefault$Info; MethodParameters nodes (Z)Ljava/util/Collection; 
hasToExist arr !Lorg/openide/nodes/ChildrenArray; StackMapTable 	Signature 3(Z)Ljava/util/Collection<Lorg/openide/nodes/Node;>; (Ljava/util/Collection;)V n Ljava/util/Collection; LocalVariableTypeTable 0Ljava/util/Collection<Lorg/openide/nodes/Node;>; 3(Ljava/util/Collection<Lorg/openide/nodes/Node;>;)V ()I #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile EntrySupportDefault.java InnerClasses Info �  org/openide/nodes/Children$Entry Entry 0        [ \                   y  z   U     *+� *� *,� �    {       	  |         } ~                  	 �     � �  z   �     1� � � *� � � � � !Y#� %�*� � (M,*� ,�    {       ! * |        1 } ~     1 �   *  � �  �    !     �   �    �  4 �  z   �     K*� � (M,*+� 2+� 6 N-� < � .-� B � E:*� � G� K*� � G� O� U��ϱ    {       	  * 7 G J |   *  *  � T    K } ~     K � �  	 B � �  �       K � �  �    �  - =� 3     �   �    �  [ �  z   /     *� Y�    {       |        } ~    r s  z   R     (� ]Y� _`� b*� � fi� b*� Y� kn� b� p�    {      " |       ( } ~   �     �    �   z   4      � t� � � �    {       �    @  �    � �       �  � P �