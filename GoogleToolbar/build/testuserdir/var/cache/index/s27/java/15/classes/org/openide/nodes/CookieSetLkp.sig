Êþº¾   4 à
      &org/openide/util/lookup/AbstractLookup <init> ()V  java/lang/ThreadLocal
  	      org/openide/nodes/CookieSetLkp isInReplaceInst Ljava/lang/ThreadLocal;	     before $Lorg/openide/nodes/CookieSet$Before;  )org/openide/nodes/CookieSetLkp$SimpleItem
     (Ljava/lang/Object;)V
     addPair 0(Lorg/openide/util/lookup/AbstractLookup$Pair;)V  -org/openide/nodes/CookieSetLkp$ConvertingItem
     ! H(Ljava/lang/Object;Lorg/openide/util/lookup/InstanceContent$Convertor;)V
  # $  
removePair
  & ' ( get ()Ljava/lang/Object;
  * +  set - java/lang/Object
  / 0 1 lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
 3 4 5 6 7 org/openide/util/Lookup$Result allItems ()Ljava/util/Collection; 9 : ; < = java/util/Collection iterator ()Ljava/util/Iterator; ? java/util/ArrayList
 >  B C D E F java/util/Iterator hasNext ()Z B H I ( next K org/openide/util/Lookup$Item	  M N O $assertionsDisabled Z Q +org/openide/util/lookup/AbstractLookup$Pair S java/lang/AssertionError U java/lang/StringBuilder
 T  X 
Not Pair: 
 T Z [ \ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 T ^ [ _ -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 T a b c toString ()Ljava/lang/String;
 R 
 J f g h getType ()Ljava/lang/Class;
 j k l m n java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
  p q r 
access$000 ?(Lorg/openide/nodes/CookieSetLkp$SimpleItem;)Ljava/lang/Object; t u v w x java/util/List add (Ljava/lang/Object;)Z
  z { | setPairs (Ljava/util/Collection;)V
 ~     org/openide/nodes/CookieSet fireChangeEvent
  f   org/openide/util/Lookup$Template
     beforeLookupImpl (Ljava/lang/Class;)V      "org/openide/nodes/CookieSet$Before beforeLookup
 j   F desiredAssertionStatus 	Signature +Ljava/lang/ThreadLocal<Ljava/lang/Object;>; '(Lorg/openide/nodes/CookieSet$Before;)V Code LineNumberTable LocalVariableTable this  Lorg/openide/nodes/CookieSetLkp; b MethodParameters obj Ljava/lang/Object; inst conv 3Lorg/openide/util/lookup/InstanceContent$Convertor; LocalVariableTypeTable TT; ;Lorg/openide/util/lookup/InstanceContent$Convertor<TT;TR;>; k<T:Ljava/lang/Object;R:Ljava/lang/Object;>(TT;Lorg/openide/util/lookup/InstanceContent$Convertor<TT;TR;>;)V remove superRemovePair pair -Lorg/openide/util/lookup/AbstractLookup$Pair; replaceInstances D(Ljava/lang/Class;[Ljava/lang/Object;Lorg/openide/nodes/CookieSet;)V simple +Lorg/openide/nodes/CookieSetLkp$SimpleItem; item Lorg/openide/util/Lookup$Item; change index I it Ljava/util/Iterator; pairs Ljava/util/List; clazz Ljava/lang/Class; 	instances [Ljava/lang/Object; Lorg/openide/nodes/CookieSet; prev .Lorg/openide/nodes/CookieSetLkp$SimpleItem<*>; 5Ljava/util/Iterator<+Lorg/openide/util/Lookup$Item;>; ?Ljava/util/List<Lorg/openide/util/lookup/AbstractLookup$Pair;>; Ljava/lang/Class<+TT;>; [TT; StackMapTable ¸ Ã java/lang/Throwable Q<T:Ljava/lang/Object;>(Ljava/lang/Class<+TT;>;[TT;Lorg/openide/nodes/CookieSet;)V %(Lorg/openide/util/Lookup$Template;)V template "Lorg/openide/util/Lookup$Template; %Lorg/openide/util/Lookup$Template<*>; ((Lorg/openide/util/Lookup$Template<*>;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; Ljava/lang/Class<*>; (Ljava/lang/Class<*>;)V <clinit> 
SourceFile CookieSetLkp.java InnerClasses Before 
SimpleItem Pair ConvertingItem × 1org/openide/util/lookup/InstanceContent$Convertor Ù 'org/openide/util/lookup/InstanceContent 	Convertor Ü org/openide/util/Lookup Result Item Template 0                    N O   
        U     *· *» Y· 	µ 
*+µ ±           &  <  '  (                           w      E     *» Y+· ¶ ±       
    +  ,                           w !     l     *» Y+,· ¶ ±       
    .  /                                    ¡      ¢     	           £  ¤      E     *» Y+· ¶ "±       
    2  3                           ¤ !     l     *» Y+,· ¶ "±       
    5  6                                    ¡      ¢     	           £   ¥      >     *+¶ "±       
    9  :                ¦ §      ¦     ¨ ©        -*´ 
¶ %:*´ 
*¶ )*,¶ .¶ 2¹ 8 :» >Y· @:66	¹ A  ©¹ G À J:
² L '
Á P » RY» TY· VW¶ Y
¶ ]¶ `· d¿+
¶ e¶ i W	,¾¢ J
Á  &
À :¸ o,	2¦ 	¹ s W§ÿ6» Y,		2· ¹ s W§ 6§ 
À P¹ s W§ÿS	,¾¢ 6» Y,		2· ¹ s W§ÿà *¶ y-¶ }*´ 
¶ )§ :*´ 
¶ )¿±  	           !   B 	 D  F ! G * I - J 0 K : L F M p O | P  Q  R  S  T ¡ U « V ® Z ± [ Ê ] Ð ` Ý b à d ç e ê f i j k n o n) o, p        ª «  F  ¬ ­ 
 - å ® O  0 â ¯ ° 	 ! ý ± ²  * ô ³ ´   -      - µ ¶   - · ¸   - + ¹ ,  ± ² ,  ³ ´  	$ º       H    ª »  ! ý ± ¼  * ô ³ ½   - µ ¾   - · ¿ ,  ± ¼ ,  ³ ½  À   k ÿ 0 
  j Á ~ B  t ,  ü ? J=ú "ù ÿ    j Á ~    ,  Âÿ    j Á ~ B  t ,       µ   ·   +       Ä   Å     S     	*+¶ ¶ ±       
    t  u        	       	 Æ Ç          	 Æ È      Æ       É Ê     Ë          s     *´ Æ *´ 
¶ %Ç *´ +¹  ±           x  y  {                µ ¶           µ Ì  À         µ       Í  Î      4      ¶  § ³ L±           # À    @  Ï    Ð Ñ   B   ~ Ò	   Ó  P  Ô	   Õ  Ö Ø Ú	 3 Û Ý	 J Û Þ	  Û ß 