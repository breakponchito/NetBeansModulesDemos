Êþº¾   4 Ð
      )org/openide/nodes/FilterNode$FilterLookup replaceNodes 7(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
   	 
 isNodeQuery (Ljava/lang/Class;)Z
     
wackohacko H(Ljava/lang/String;Ljava/lang/Object;)Lorg/openide/util/Lookup$Template;	     node Lorg/openide/nodes/FilterNode;
      org/openide/util/Lookup <init> ()V
      org/openide/nodes/FilterNode getOriginal ()Lorg/openide/nodes/Node;
   ! " # $ java/lang/Class 
isInstance (Ljava/lang/Object;)Z
   & ' ( cast &(Ljava/lang/Object;)Ljava/lang/Object;
 * + , - . org/openide/nodes/Node 	getLookup ()Lorg/openide/util/Lookup;	  0 1 2 delegate Lorg/openide/util/Lookup;	  4 5 6 results Ljava/util/Set; 8 java/util/ArrayList
 7 :  ; (Ljava/util/Collection;)V
 7 = > ? iterator ()Ljava/util/Iterator; A B C D E java/util/Iterator hasNext ()Z A G H I next ()Ljava/lang/Object; K 5org/openide/nodes/FilterNode$FilterLookup$ProxyResult
 J M N O updateLookup (Lorg/openide/util/Lookup;)Z
 J Q R S resultChanged !(Lorg/openide/util/LookupEvent;)V
 J U  V P(Lorg/openide/nodes/FilterNode$FilterLookup;Lorg/openide/util/Lookup$Template;)V X org/openide/util/WeakSet
 W  [ \ ] ^ $ java/util/Set add
  ` a . 	checkNode
  c d e lookup %(Ljava/lang/Class;)Ljava/lang/Object;
   g h 
 isAssignableFrom
 j k l m n  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;
  p q r 
lookupItem B(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Item;
 j t u I getInstance
 j w x y getId ()Ljava/lang/String; { 4org/openide/nodes/FilterNode$FilterLookup$FilterItem
 z }  ~ ](Lorg/openide/nodes/FilterNode$FilterLookup;Lorg/openide/util/Lookup$Item;Ljava/lang/Class;)V
 j    8(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 	Signature HLjava/util/Set<Lorg/openide/nodes/FilterNode$FilterLookup$ProxyResult;>; Code LineNumberTable LocalVariableTable this +Lorg/openide/nodes/FilterNode$FilterLookup; ownNode !(Lorg/openide/nodes/FilterNode;)V n MethodParameters orig Ljava/lang/Object; clazz Ljava/lang/Class; LocalVariableTypeTable TT; Ljava/lang/Class<TT;>; StackMapTable 4<T:Ljava/lang/Object;>(TT;Ljava/lang/Class<TT;>;)TT; p 7Lorg/openide/nodes/FilterNode$FilterLookup$ProxyResult; l toCheck Ljava/util/Iterator; MLjava/util/Iterator<Lorg/openide/nodes/FilterNode$FilterLookup$ProxyResult;>;  java/lang/Object  java/lang/Throwable D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result; template "Lorg/openide/util/Lookup$Template; 'Lorg/openide/util/Lookup$Template<TT;>; <Lorg/openide/nodes/FilterNode$FilterLookup$ProxyResult<TT;>; d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; result 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; c Ljava/lang/Class<*>; (Ljava/lang/Class<*>;)Z nodeQ Z i Lorg/openide/util/Lookup$Item; #Lorg/openide/util/Lookup$Item<TT;>; ± org/openide/util/Lookup$Item b<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Item<TT;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; id Ljava/lang/String; instance T<T:Ljava/lang/Object;>(Ljava/lang/String;TT;)Lorg/openide/util/Lookup$Template<TT;>; Ljava/lang/SuppressWarnings; value 	unchecked 
access$600 K(Lorg/openide/nodes/FilterNode$FilterLookup;)Lorg/openide/nodes/FilterNode; x0 
access$700 x1 
access$800 
access$900 b(Lorg/openide/nodes/FilterNode$FilterLookup;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object; x2 
SourceFile FilterNode.java InnerClasses FilterLookup Template ProxyResult Item 
FilterItem Î org/openide/util/Lookup$Result Result 0            1 2    5 6                3     *· ±       
   ÷ ø                    >     *+µ ±       
   ý þ                                      (,¸  "+*´ ¶ ¦ ,*´ ¶  ,*´ ¶ %°+°            &         (       (      (           (      (        &    	             a .    A     v*´ ¶ ¶ )L*´ /+¦ +°M*YNÂ+*´ /¥ *+µ /*´ 3Æ » 7Y*´ 3· 9¶ <M-Ã§ 
:-Ã¿,Æ &,¹ @  ,¹ F À JN-+¶ L -¶ P§ÿà*´ /°   @ C   C G C       F         # ( / > J! N$ W% a' i( n* q-    *  a       v      k  2   _          _        ü  ý ( A D ú   d       Ó     9» JY*+· TM*YNÂ*´ 3Ç *» WY· Yµ 3*´ 3,¹ Z W-Ã§ 
:-Ã¿,°   - 0   0 4 0          1 
3 4 5  8 +9 7;         9       9 ¡ ¢  
 /           9 ¡ £  
 /  ¤      ý   J O ú      ¡       ¥  d e          (*¶ _+¶ bM,Ç +*´ ¶  +*´ ¶ %M*,+· °          ? 	A B !E         (       (    	  ¦          (    	  ¦       ü !             § 
 	 
     `     **¶ f **¶ f § ¬          M         ¨            ¨ ©       @     ¨       ª  q r     ÷     f+¶ i¸ =*¶ _+¶ oN :-Ç 6+¶ i*´ ¶  (+¶ sÆ +¶ s*´ ¦ *¶ _+¶ v+¶ s¸ ¶ oN -Æ » zY*-+¶ i· |§ -°          R S U X (Y 9[ L^    *    f       f ¡ ¢   ^ « ¬   U ­ ®         f ¡ £   U ­ ¯      ý 9 °@ °     ¡       ² ³     ´   
       R     » jY**+· °          c         µ ¶      ·           ·      	 µ   ·       ¸ ³     ¹  º[ s » ¼ ½     /     *´ °          í         ¾    ¿      :     *+¸ °          í         ¾ ¶      À   Á 
     /     *¸ ¬          í         ¾    Â Ã     E     *+,· °          í          ¾       À      Ä    Å    Æ Ç   2    È  j  É  J  Ê  °  Ë	 z  Ì  Í  Ï	