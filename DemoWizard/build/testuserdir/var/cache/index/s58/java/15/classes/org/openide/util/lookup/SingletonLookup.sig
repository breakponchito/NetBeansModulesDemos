Êþº¾   4 
      'org/openide/util/lookup/SingletonLookup <init> '(Ljava/lang/Object;Ljava/lang/String;)V
  	 
   org/openide/util/Lookup ()V  "java/lang/IllegalArgumentException  null
     (Ljava/lang/String;)V	     objectToLookup Ljava/lang/Object;	     id Ljava/lang/String;
       java/lang/Class 
isInstance (Ljava/lang/Object;)Z
  " # $ cast &(Ljava/lang/Object;)Ljava/lang/Object;
  & ' ( 
lookupItem B(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Item; * 7org/openide/util/lookup/SingletonLookup$SingletonResult
 ) ,  - !(Lorg/openide/util/Lookup$Item;)V	  / 0 1 EMPTY Lorg/openide/util/Lookup;
  3 4 5 lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
 7 8 9 : ; java/util/Collections singletonList $(Ljava/lang/Object;)Ljava/util/List;
 7 = > ? 	emptyList ()Ljava/util/List;
 A B C D E  org/openide/util/Lookup$Template getId ()Ljava/lang/String;
 G H I J E java/lang/Object toString
 L M N O   java/lang/String equals
 A Q R S getInstance ()Ljava/lang/Object;
 A U V W getType ()Ljava/lang/Class;
 Y Z [ ' \ org/openide/util/lookup/Lookups D(Ljava/lang/Object;Ljava/lang/String;)Lorg/openide/util/Lookup$Item; ^ java/lang/StringBuilder
 ] 	 a SingletonLookup[
 ] c d e append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ] g d h -(Ljava/lang/Object;)Ljava/lang/StringBuilder; j ]
 ] H (Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/util/lookup/SingletonLookup; MethodParameters StackMapTable %(Ljava/lang/Class;)Ljava/lang/Object; clazz Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<TT;>; 	Signature 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; template "Lorg/openide/util/Lookup$Template; item Lorg/openide/util/Lookup$Item; 'Lorg/openide/util/Lookup$Template<TT;>; #Lorg/openide/util/Lookup$Item<TT;>;  org/openide/util/Lookup$Item d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection;  java/util/Collection J<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/Collection<+TT;>; 
templateId templateInst b<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Item<TT;>; Ljava/lang/SuppressWarnings; value 	unchecked 
SourceFile SingletonLookup.java InnerClasses Template Item SingletonResult  org/openide/util/Lookup$Result Result                      l  m   ?     *+· ±    n   
    '  ( o        p q         r            m        *· +Ç » Y· ¿*+µ *,µ ±    n       *  +  ,  /  0  1 o         p q               s    ÿ    G L   r   	        4 t  m        &+Ç » Y· ¿+*´ ¶  +*´ ¶ !§ °    n       5  6  9  : $ ; % 9 o       & p q     & u v  w       & u x  s    @ G r    u   y    z {     |    4 5  m   ¦     )+Ç » Y· ¿*+¶ %M,Æ » )Y,· +°² .+¶ 2°    n       @  A  D  E  F ! H o        ) p q     ) } ~       w       ) }        s   	 ü   r    }   y     {     |       m        ++Ç » Y· ¿+*´ ¶  +*´ ¶ !¸ 6§ ¸ <°    n       N  O  R  S ' T * R o       + p q     + u v  w       + u x  s    B  r    u   y     {     |    ' (  m       +Ç » Y· ¿+¶ @M,Æ '*´ Ç ,*´ ¶ F¶ K °,*´ ¶ K °+¶ PN-Æ *´ -¥ °+¶ T:Æ *´ ¶  °Æ *´ ¶ !*´ ¸ X:§ *´ *´ ¸ X:°    n   N    Z  [  ^  _  `  a , b . e 9 f ; k @ l L m N p T q e r g v l w  y  { o   H  ~        p q      } ~   ~    @ Q    T = u v       w   *  ~        }   T = u x       s    ü  Lü  Gü  ü   r    }   y     {     |     [ s   J E  m   F     » ]Y· _`¶ b*´ ¶ fi¶ b¶ k°    n        o        p q   {     |            "  A      	 )      	