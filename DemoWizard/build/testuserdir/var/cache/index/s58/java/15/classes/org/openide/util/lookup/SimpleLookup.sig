Êşº¾   4 Ã
      $org/openide/util/lookup/SimpleLookup matches R(Lorg/openide/util/Lookup$Template;Lorg/openide/util/lookup/AbstractLookup$Pair;)Z	   	 
 allItems Ljava/util/Collection;
      org/openide/util/Lookup <init> ()V  java/util/ArrayList      java/util/Collection size ()I
     (I)V     iterator ()Ljava/util/Iterator; ! " # $ % java/util/Iterator hasNext ()Z ' 2org/openide/util/lookup/InstanceContent$SimpleItem ! ) * + next ()Ljava/lang/Object;
 & -  . (Ljava/lang/Object;)V  0 1 2 add (Ljava/lang/Object;)Z 4 6org/openide/util/lookup/InstanceContent$ConvertingItem
 3 6  7 H(Ljava/lang/Object;Lorg/openide/util/lookup/InstanceContent$Convertor;)V 9 java/lang/StringBuilder
 8  < SimpleLookup
 8 > ? @ append -(Ljava/lang/String;)Ljava/lang/StringBuilder; B  org/openide/util/Lookup$Template D java/lang/Object
 A F  G (Ljava/lang/Class;)V
  I J K lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
 M N O P Q org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;
 8 S ? T -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 8 V W X toString ()Ljava/lang/String; Z java/lang/NullPointerException
 Y  ] 1org/openide/util/lookup/SimpleLookup$SimpleResult
 \ _  ` K(Lorg/openide/util/lookup/SimpleLookup;Lorg/openide/util/Lookup$Template;)V b +org/openide/util/lookup/AbstractLookup$Pair
 a d e f 
instanceOf (Ljava/lang/Class;)Z
 a h i + getInstance
 k l m n 2 java/lang/Class 
isInstance
 k p q r cast &(Ljava/lang/Object;)Ljava/lang/Object;
 t u v  w &org/openide/util/lookup/AbstractLookup S(Lorg/openide/util/Lookup$Template;Lorg/openide/util/lookup/AbstractLookup$Pair;Z)Z
 A y z { getType ()Ljava/lang/Class;
 a y
 k ~  f isAssignableFrom 	Signature 9Ljava/util/Collection<Lorg/openide/util/Lookup$Item<*>;>; (Ljava/util/Collection;)V Code LineNumberTable LocalVariableTable i Ljava/util/Iterator; this &Lorg/openide/util/lookup/SimpleLookup; 	instances LocalVariableTypeTable *Ljava/util/Collection<Ljava/lang/Object;>; StackMapTable MethodParameters -(Ljava/util/Collection<Ljava/lang/Object;>;)V L(Ljava/util/Collection;Lorg/openide/util/lookup/InstanceContent$Convertor;)V item Ljava/lang/Object; keys conv 3Lorg/openide/util/lookup/InstanceContent$Convertor; TT; Ljava/util/Collection<TT;>; <Lorg/openide/util/lookup/InstanceContent$Convertor<-TT;TR;>;  1org/openide/util/lookup/InstanceContent$Convertor <T:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/Collection<TT;>;Lorg/openide/util/lookup/InstanceContent$Convertor<-TT;TR;>;)V template "Lorg/openide/util/Lookup$Template; 'Lorg/openide/util/Lookup$Template<TT;>; d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; %(Ljava/lang/Class;)Ljava/lang/Object; ret p -Lorg/openide/util/lookup/AbstractLookup$Pair; o clazz Ljava/lang/Class; 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; Ljava/lang/Class<TT;>; 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; t type %Lorg/openide/util/Lookup$Template<*>; Ljava/lang/Class<*>; X(Lorg/openide/util/Lookup$Template<*>;Lorg/openide/util/lookup/AbstractLookup$Pair<*>;)Z 
access$000 >(Lorg/openide/util/lookup/SimpleLookup;)Ljava/util/Collection; x0 
access$100 x1 
SourceFile SimpleLookup.java InnerClasses Template Pair º 'org/openide/util/lookup/InstanceContent 
SimpleItem ConvertingItem 	Convertor Result SimpleResult Á org/openide/util/Lookup$Item Item         	 
                »     @*· *» Y+¹  · µ +¹  M,¹    *´ » &Y,¹ ( · ,¹ / W§ÿà±           +  ,  . % / ? 1        #      @       @  
         @        ÿ     !  ú "                     å     E*· *» Y+¹  · µ +¹  N-¹    "-¹ ( :*´ » 3Y,· 5¹ / W§ÿÛ±           3  4  6 - 7 A 8 D 9    *  -       E       E  
    E          -       E      E        ÿ      !  ú '    	             W X     M     #» 8Y· :;¶ =*» AYC· E¶ H¶ L¶ R¶ U°           <        #      J K     m     +Ç » YY· [¿» \Y*+· ^°           @  A  D                                                J       ú     L*´ ¹  M,¹    :,¹ ( N-Á a )-À a:+¶ c ¶ g:+¶ j 
+¶ o°§ÿÃ°       * 
   H  I  K ! L ' M 0 N 7 O @ P G T J U    >  7  ¡   '   ¢ £   - ¤   
 @      L       L ¥ ¦       '   ¢ §    L ¥ ¨      ü 
 !<ú      ¥       © 
       ª     #*+¸ s ¬*¶ xM,Æ ,+¶ |¶ } ¬¬           ] 	 ^  a  c  d ! g         # ª      #  £    « ¦          # ª ¬     #  §    « ­     	 ü  k    	 ª          ® ¯ °     /     *´ °           "         ±    ²      :     *+¸ ¬           "         ±       ³ £   ´    µ ¶   B  A  ·  a t ¸	 & ¹ »  3 ¹ ¼   ¹ ½	 M  ¾	 \  ¿  À  Â	