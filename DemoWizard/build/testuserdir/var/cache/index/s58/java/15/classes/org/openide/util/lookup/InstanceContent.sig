����   4 k
      .org/openide/util/lookup/AbstractLookup$Content <init> ()V
    	 "(Ljava/util/concurrent/Executor;)V  2org/openide/util/lookup/InstanceContent$SimpleItem
 
    (Ljava/lang/Object;)V
      'org/openide/util/lookup/InstanceContent addPair 0(Lorg/openide/util/lookup/AbstractLookup$Pair;)V  6org/openide/util/lookup/InstanceContent$ConvertingItem
     H(Ljava/lang/Object;Lorg/openide/util/lookup/InstanceContent$Convertor;)V
     
removePair  java/util/ArrayList   ! " # $ java/util/Collection size ()I
  &  ' (I)V   ) * + iterator ()Ljava/util/Iterator; - . / 0 1 java/util/Iterator hasNext ()Z - 3 4 5 next ()Ljava/lang/Object;
  7 8 9 add (Ljava/lang/Object;)Z
  ; < = setPairs (Ljava/util/Collection;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/util/lookup/InstanceContent; notifyIn Ljava/util/concurrent/Executor; MethodParameters inst Ljava/lang/Object; conv 3Lorg/openide/util/lookup/InstanceContent$Convertor; LocalVariableTypeTable TT; ;Lorg/openide/util/lookup/InstanceContent$Convertor<TT;TR;>; 	Signature k<T:Ljava/lang/Object;R:Ljava/lang/Object;>(TT;Lorg/openide/util/lookup/InstanceContent$Convertor<TT;TR;>;)V remove set L(Ljava/util/Collection;Lorg/openide/util/lookup/InstanceContent$Convertor;)V col Ljava/util/Collection; l Ljava/util/ArrayList; it Ljava/util/Iterator; Ljava/util/Collection<TT;>; GLjava/util/ArrayList<Lorg/openide/util/lookup/AbstractLookup$Pair<*>;>; Ljava/util/Iterator<TT;>; StackMapTable �<T:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;Lorg/openide/util/lookup/InstanceContent$Convertor<TT;TR;>;)V 
SourceFile InstanceContent.java InnerClasses a &org/openide/util/lookup/AbstractLookup Content 
SimpleItem e +org/openide/util/lookup/AbstractLookup$Pair Pair ConvertingItem i 1org/openide/util/lookup/InstanceContent$Convertor 	Convertor 1            >   3     *� �    ?   
    2  3 @        A B     	  >   >     *+� �    ?   
    ;  < @        A B      C D  E    C    8   >   E     *� 
Y+� � �    ?   
    G  H @        A B      F G  E    F    8   >   l     *� Y+,� � �    ?   
    \  ] @         A B      F G     H I  J        F K     H L  E   	 F   H   M    N  O   >   E     *� 
Y+� � �    ?   
    c  d @        A B      F G  E    F    O   >   l     *� Y+,� � �    ?   
    n  o @         A B      F G     H I  J        F K     H L  E   	 F   H   M    N  P Q  >       a� Y+�  � %N+� ( :,� #� , � :-� 
Y� 2 � � 6W���� , � -� Y� 2 ,� � 6W���*-� :�    ?   & 	   y  z  |  } $ ~ : � D � [ � ` � @   4    a A B     a R S    a H I   S T U   K V W  J   *    a R X    a H L   S T Y   K V Z  [    �   -  E   	 R   H   M    \  ]    ^ _   *   ` b 	 
  c  d ` f	   g  h  j	