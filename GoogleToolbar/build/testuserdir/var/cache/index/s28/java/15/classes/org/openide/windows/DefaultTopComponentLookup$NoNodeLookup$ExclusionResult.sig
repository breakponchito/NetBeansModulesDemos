Êþº¾   4 §
      org/openide/util/Lookup$Result <init> ()V  java/util/ArrayList
  	      Jorg/openide/windows/DefaultTopComponentLookup$NoNodeLookup$ExclusionResult 	listeners Ljava/util/List;	     delegate  Lorg/openide/util/Lookup$Result;	     verboten Ljava/util/Map;
     allInstances ()Ljava/util/Collection;      ! java/util/Collection size ()I
  #  $ (I)V  & ' ( iterator ()Ljava/util/Iterator; * + , - . java/util/Iterator hasNext ()Z * 0 1 2 next ()Ljava/lang/Object; 4 5 6 7 8 java/util/Map containsKey (Ljava/lang/Object;)Z : ; < = 8 java/util/List add
  ? @ A 
allClasses ()Ljava/util/Set;
  C D  allItems F org/openide/util/Lookup$Item
 E H I 2 getInstance : K L . isEmpty
  N O P addLookupListener $(Lorg/openide/util/LookupListener;)V : R S 8 remove
  U V P removeLookupListener X org/openide/util/LookupEvent
 W Z  [ #(Lorg/openide/util/Lookup$Result;)V :  ^ org/openide/util/LookupListener : ` a b toArray (([Ljava/lang/Object;)[Ljava/lang/Object; d "[Lorg/openide/util/LookupListener; ] f g h resultChanged !(Lorg/openide/util/LookupEvent;)V 	Signature %Lorg/openide/util/Lookup$Result<TT;>; 5Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>; 3Ljava/util/List<Lorg/openide/util/LookupListener;>; 2(Lorg/openide/util/Lookup$Result;Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this LLorg/openide/windows/DefaultTopComponentLookup$NoNodeLookup$ExclusionResult; LocalVariableTypeTable QLorg/openide/windows/DefaultTopComponentLookup$NoNodeLookup$ExclusionResult<TT;>; MethodParameters ](Lorg/openide/util/Lookup$Result<TT;>;Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;)V o Ljava/lang/Object; it Ljava/util/Iterator; c Ljava/util/Collection; ret TT; Ljava/util/Iterator<+TT;>; Ljava/util/Collection<+TT;>; Ljava/util/List<TT;>; StackMapTable ()Ljava/util/Collection<+TT;>; *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; i Lorg/openide/util/Lookup$Item; #Lorg/openide/util/Lookup$Item<TT;>; :Ljava/util/Iterator<+Lorg/openide/util/Lookup$Item<TT;>;>; <Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; 5Ljava/util/List<Lorg/openide/util/Lookup$Item<TT;>;>; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; l !Lorg/openide/util/LookupListener;  java/lang/Object  java/lang/Throwable ls I ev Lorg/openide/util/LookupEvent; ev2 \<T:Ljava/lang/Object;>Lorg/openide/util/Lookup$Result<TT;>;Lorg/openide/util/LookupListener; 
SourceFile DefaultTopComponentLookup.java InnerClasses  org/openide/util/Lookup Result ¡ :org/openide/windows/DefaultTopComponentLookup$NoNodeLookup £ -org/openide/windows/DefaultTopComponentLookup NoNodeLookup ExclusionResult Item 0    ]      i    j     i    k     i    l    m  n        *· *» Y· 	µ 
*+µ *,µ ±    o       û  ù  ü  ý  þ p         q r               s         q t       j      k  u   	       i    v     n  
     J*´ ¶ L» Y+¹  · "M+¹ % N-¹ )  %-¹ / :*´ ¹ 3  ,¹ 9 W§ÿØ,°    o   "      & . < E
 H p   4  .  w x   + y z    J q r    B { |   4 }   s   4  .  w ~   + y     J q t    B {    4 }       þ   : *'ú  i      @ A  n   D     *´ ¶ >°    o       p        q r   s        q t   i              D   n       P*´ ¶ BL» Y+¹  · "M+¹ % N-¹ )  +-¹ / À E:*´ ¶ G¹ 3  ,¹ 9 W§ÿÒ,°    o   "      & 1 B K N! p   4  1      1 y z    P q r    H { |   : }   s   4  1      1 y     P q t    H {    : }       þ   : *-ú  i              O P  n   °     1*´ 
YMÂ*´ 
¹ J  *´ *¶ M*´ 
+¹ 9 W,Ã§ N,Ã-¿±   ( +   + . +    o      % & ' * &+ 0, p       1 q r     1    s       1 q t       ü  O ú  u        V P  n   °     1*´ 
YMÂ*´ 
+¹ Q W*´ 
¹ J  *´ *¶ T,Ã§ N,Ã-¿±   ( +   + . +    o      / 0 2 3 &5 06 p       1 q r     1    s       1 q t       ü & D ú  u        g h  n  &     S» WY*· YM*´ 
Y:Â*´ 
*´ 
¹ \ ½ ]¹ _ À cNÃ§ :Ã¿6-¾¢ -2,¹ e §ÿì±   - 0   0 5 0    o   "   9 	< = *> 8@ BA L@ RC p   >  *   d  ;       S q r     S    	 J    8   d  s       S q t      3 ÿ 0   W W    ÿ    W W c  ü ú  u        i             "    	   ¢ ¤     ¥  E  ¦	