����   4 �	      0org/openide/util/lookup/InheritanceTree$1TwoJobs newNode .Lorg/openide/util/lookup/InheritanceTree$Node;	   	 
 this$0 )Lorg/openide/util/lookup/InheritanceTree;	     val$n	     	val$clazz Ljava/lang/Class;
      java/lang/Object <init> ()V	      ,org/openide/util/lookup/InheritanceTree$Node items Ljava/util/Collection;    ! " # java/util/Collection size ()I % +org/openide/util/lookup/AbstractLookup$Pair  ' ( ) iterator ()Ljava/util/Iterator; + , - . / java/util/Iterator hasNext ()Z + 1 2 3 next ()Ljava/lang/Object;
 $ 5 6 7 
instanceOf (Ljava/lang/Class;)Z	  9 : ; pairs .[Lorg/openide/util/lookup/AbstractLookup$Pair;	  = > ? answers [Z  A B C toArray ()[Ljava/lang/Object;
 E F G H I java/util/Arrays equals )([Ljava/lang/Object;[Ljava/lang/Object;)Z
  K L  internal	  N O P children Ljava/util/ArrayList; R java/util/ArrayList
 Q 
 Q '
 V W X Y Z 'org/openide/util/lookup/InheritanceTree 
access$000 D(Ljava/util/Iterator;)Lorg/openide/util/lookup/InheritanceTree$Node;
  \ ] ^ getType ()Ljava/lang/Class;
 ` a b c 7 java/lang/Class isAssignableFrom
 Q e f g add (Ljava/lang/Object;)Z + i j  remove
  l  m (Ljava/lang/Class;)V
  o p q 
assignItem Y(Lorg/openide/util/lookup/InheritanceTree;Lorg/openide/util/lookup/AbstractLookup$Pair;)Z s .org/openide/util/lookup/AbstractLookup$ISE$Job k(Lorg/openide/util/lookup/InheritanceTree;Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/util/lookup/InheritanceTree$1TwoJobs; MethodParameters 	Signature before item -Lorg/openide/util/lookup/AbstractLookup$Pair; i I it Ljava/util/Iterator; arr boolArr LocalVariableTypeTable 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; CLjava/util/Iterator<Lorg/openide/util/lookup/AbstractLookup$Pair;>; StackMapTable ; ? inside r reparent ELjava/util/ArrayList<Lorg/openide/util/lookup/InheritanceTree$Node;>; 
access$100 b(Lorg/openide/util/lookup/InheritanceTree$1TwoJobs;)Lorg/openide/util/lookup/InheritanceTree$Node; x0 
SourceFile InheritanceTree.java EnclosingMethod � � classToNode o(Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class;)Lorg/openide/util/lookup/InheritanceTree$Node; InnerClasses TwoJobs Node � &org/openide/util/lookup/AbstractLookup Pair � *org/openide/util/lookup/AbstractLookup$ISE ISE Job      r   : ;    > ?                	 
       t  u   H     *+� *,� *-� *� �    v      � w        x y      	 
  z    	�   {      |   u  H     uLM*� � � _*� � �  � $L*� � �  �M>*� � � & :� * � &� 0 � $:+S,*� � 4T����*+� 8*,� <�    v   B   � � � � � -� /� =� G� S� X� d� g� j� o� t� w   >  S  } ~  / ;  �  = - � �    u x y    s � ;   q � ?  �     S  } �  = - � �  �    � =   � � +  � ,  �   u   f     #*� 8� *� � � @ *� 8� D� �*� J�    v      � � � � "� w       # x y   �      L   u  �     �L*� � M� *� � QY� S� M� C*� � M� TM,� UN-� � ,*� -� [� _� +� � QY� SL+-� dW,� h ���*� Y*� � k� *� � M*� � dW+� *� +� M*� � � M*� � � & M>,� * � 5,� 0 � $:*� <3� ,� h *� *� *� 82� nW���ȱ    v   r   � � � � (� -� 1� 4� B� F� N T Z ] l	 {  � � � � � � � � � � �! w   H  - - �   ( 5 � �  � $ } ~  � = � �  � ;  �    � x y    � � P  �      � � �  �   , 
�  Q� 
 +�  � � )�  +� 4 $�  � �  u   /     *� �    v      � w        � y    �    � �    V � �   *     �    V �  $ � �	 � � �  r � �