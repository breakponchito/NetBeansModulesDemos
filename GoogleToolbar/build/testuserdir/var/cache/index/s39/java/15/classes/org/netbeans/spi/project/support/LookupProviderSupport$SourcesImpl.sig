Êþº¾   4 ¶
      java/lang/Object <init> ()V  org/openide/util/ChangeSupport
  
   (Ljava/lang/Object;)V	      Borg/netbeans/spi/project/support/LookupProviderSupport$SourcesImpl changeSupport  Lorg/openide/util/ChangeSupport;   org/netbeans/api/project/Sources
      org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	     	delegates  Lorg/openide/util/Lookup$Result;
    ! " # org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V	  % & ' $assertionsDisabled Z ) java/lang/AssertionError
 ( 	  , - . currentDelegates #[Lorg/netbeans/api/project/Sources;
  0 1 2 allInstances ()Ljava/util/Collection; 4 5 6 7 8 java/util/Collection size ()I 4 : ; < toArray (([Ljava/lang/Object;)[Ljava/lang/Object; .  ? @ A addChangeListener %(Ljavax/swing/event/ChangeListener;)V C java/util/ArrayList
 B   F G H getSourceGroups ;(Ljava/lang/String;)[Lorg/netbeans/api/project/SourceGroup; J java/lang/NullPointerException L java/lang/StringBuilder
 K 
 K O P Q append -(Ljava/lang/Object;)Ljava/lang/StringBuilder; S  returns null source group!
 K U P V -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 K X Y Z toString ()Ljava/lang/String;
 I \  ] (Ljava/lang/String;)V
 _ ` a b c org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V 4 e f g add (Ljava/lang/Object;)Z i $org/netbeans/api/project/SourceGroup k '[Lorg/netbeans/api/project/SourceGroup;
  ?
  n o A removeChangeListener
  q r  
fireChange  n u 6org/netbeans/spi/project/support/LookupProviderSupport
 w x y z { java/lang/Class desiredAssertionStatus ()Z }  javax/swing/event/ChangeListener  org/openide/util/LookupListener 	Signature DLorg/openide/util/Lookup$Result<Lorg/netbeans/api/project/Sources;>; (Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this DLorg/netbeans/spi/project/support/LookupProviderSupport$SourcesImpl; lookup Lorg/openide/util/Lookup; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value LeakingThisInConstructor ns "Lorg/netbeans/api/project/Sources; 	instances Ljava/util/Collection; _currentDelegates sourceGroup &Lorg/netbeans/api/project/SourceGroup; sourceGroups type Ljava/lang/String; result LocalVariableTypeTable ;Ljava/util/Collection<+Lorg/netbeans/api/project/Sources;>; >Ljava/util/Collection<Lorg/netbeans/api/project/SourceGroup;>; StackMapTable  java/lang/String ¡ java/lang/Throwable Ljava/lang/Override; listener "Ljavax/swing/event/ChangeListener; stateChanged "(Ljavax/swing/event/ChangeEvent;)V e Ljavax/swing/event/ChangeEvent; resultChanged !(Lorg/openide/util/LookupEvent;)V old ev Lorg/openide/util/LookupEvent; ¯ org/openide/util/LookupEvent <clinit> 
SourceFile LookupProviderSupport.java InnerClasses SourcesImpl Result       | ~                 - .   & '            g     #*· *» Y*· 	µ *+¶ µ *´ *¶ ±                  "         #       #                  [ s   G H    º    ² $ *´ Ç » (Y· *¿*YNÂ*´ +Ç N*´ ¶ /:*¹ 3 ½ ¹ 9 À =µ +*´ +:¾66¢ 2:*¹ > §ÿç*´ +M-Ã§ 
:	-Ã	¿» BY· DN,:¾66¢ n2:+¹ E :Æ R:		¾6
6
¢ ?	2:Ç $» IY» KY· M¶ NR¶ T¶ W· [¸ ^§ -¹ d W§ÿÀ§ÿ--¹ 3 ½ h¹ 9 À j°   r u   u y u       V            )  A  ]  e  k  p  |       § ¡ ¬ ¢ Æ £ Ë ¤ ì ¦ õ ¢ û  «    f 
 ]     ) B    p   .  Æ /    § T  k   ^               |   .            ) B              ÿ 9      4 =  ÿ        I  ÿ     =  ÿ     = 4 =  ÿ (    = 4 =  j j  ü 3 hú ÿ     = 4 =  ø              ¢   ! @ A     A     	*´ +¶ l±       
    ¯  °        	       	 £ ¤      £        ¢   ! o A     A     	*´ +¶ m±       
    ³  ´        	       	 £ ¤      £        ¢    ¥ ¦     @     *´ ¶ p±       
    ·  ¸                § ¨      §        ¢    © ª     á     K*YMÂ*´ +Æ /*´ +N-¾66¢ -2:*¹ s §ÿè*µ +,Ã§ 
:,Ã¿*´ ¶ p±   9 <   < @ <       & 	   »  ¼  ½ $ ¾ , ½ 2 À 7 Â C Ã J Ä       $  «     K       K ¬ ­     " ÿ    ®  =  ø D  ú      ¬        ¢    °      4      t¶ v § ³ $±                @  ±    ² ³      t ´ 
   µ	