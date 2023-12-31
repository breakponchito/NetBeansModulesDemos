Êþº¾   4   RequestProcessor queue manager
      java/lang/Thread <init> (Ljava/lang/String;)V
 
     )org/openide/util/RequestProcessor$TickTac 	setDaemon (Z)V  java/util/PriorityQueue
     (ILjava/util/Comparator;)V	 
    queue Ljava/util/PriorityQueue;	      &org/openide/util/RequestProcessor$Item when J	 
    ! TICK +Lorg/openide/util/RequestProcessor$TickTac;
 
 #  $ ()V
 
 & ' ( scheduleImpl ,(Lorg/openide/util/RequestProcessor$Item;J)V
 
 * + $ start
 - . / 0 $ java/lang/Object 	notifyAll	 
 2 3 4 $assertionsDisabled Z
  6 7 8 	holdsLock (Ljava/lang/Object;)Z : java/lang/AssertionError
 9 #
 = > ? @ A java/lang/System currentTimeMillis ()J
  C D 8 add
 
 F G H 
cancelImpl +(Lorg/openide/util/RequestProcessor$Item;)V
  J K 8 remove
 
 M N O obtainFirst *()Lorg/openide/util/RequestProcessor$Item;
  Q R S access$1400 M(Lorg/openide/util/RequestProcessor$Item;)Lorg/openide/util/RequestProcessor;
 U V W X H !org/openide/util/RequestProcessor enqueue Z java/lang/InterruptedException
  \ ] ^ poll ()Ljava/lang/Object;
 - ` a b wait (J)V
 
 d e f compare S(Lorg/openide/util/RequestProcessor$Item;Lorg/openide/util/RequestProcessor$Item;)I
 h i j k l java/lang/Class desiredAssertionStatus ()Z n java/util/Comparator 	Signature CLjava/util/PriorityQueue<Lorg/openide/util/RequestProcessor$Item;>; Code LineNumberTable LocalVariableTable this o1 (Lorg/openide/util/RequestProcessor$Item; o2 StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; schedule 	localItem delay cancel run first ex  Ljava/lang/InterruptedException; q LocalVariableTypeTable 
Exceptions '(Ljava/lang/Object;Ljava/lang/Object;)I <clinit> RLjava/lang/Thread;Ljava/util/Comparator<Lorg/openide/util/RequestProcessor$Item;>; 
SourceFile RequestProcessor.java InnerClasses TickTac Item 0 
   m  
   !       o    p 3 4   
   $  q   Q     *· *¶ 	*» Y *· µ ±    r          s        t !    e f  q   v     +´ ,´  ¬+´ ,´  ¬¬    r           s         t !      u v     w v  x     y   	 u   w   z     {   8 | (  q        /² Ç » 
Y· "³ ² *· %² ¶ )§ ² *· %
¶ ,±    r          ! )  .¡ s       / } v     / ~   x    ! y   	 }   ~    ' (  q   |     )² 1 
¸ 5 » 9Y· ;¿+¸ < aµ *´ +¶ BW±    r      ¤ ¦ § (¨ s        ) t !     ) } v    ) ~   x     y   	 }   ~   8  H  q   R     ² Æ ² *· E
¶ ,±    r      « ¬ ­ ¯ s        } v   x     y    }    G H  q   e      ² 1 
¸ 5 » 9Y· ;¿*´ +¶ IW±    r      ² ³ ´ s         t !       } v  x     y    }     $  q        ² *¦ ¸ LL+Æ +¸ P+¶ T§ÿéL§ÿå±     Y  r   "   ¸ º » ¼ À ¾ ¿ Ã s         v          t !   x   	  B Y z     {   * N O  q   Ö     @² Ç °² ´ K*¶ [À L+Ç 	³ °+´ ¸ <eA 	 *+¶ BW
 ¶ _°+°    r   6   Æ Ç É Ê Ë Ì Í !Ï *Ð 0Ñ 6Ò <Ó >Õ s       1      )  v  *  ~         1  p   x    ý   ü       YA e   q   7     *+À ,À ¶ c¬    r       s        t !   y   	 u  w  z     {     $  q   4      U¶ g § ³ 1±    r       x    @  o               
 U    U  
