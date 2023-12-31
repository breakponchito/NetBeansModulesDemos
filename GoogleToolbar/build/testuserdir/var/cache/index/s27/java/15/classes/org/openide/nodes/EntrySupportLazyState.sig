Êþº¾   4 Ï
      java/util/Collections 	emptyList ()Ljava/util/List;
   	 
 emptyMap ()Ljava/util/Map;
      'org/openide/nodes/EntrySupportLazyState <init> G(ZLjava/lang/Thread;ZZLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
      java/lang/Object ()V	     inited Z	     
initThread Ljava/lang/Thread;	      initInProgress	  " #  mustNotifySetEntries	  % & ' entries Ljava/util/List;	  ) * ' visibleEntries	  , - . entryToInfo Ljava/util/Map;
  0 1 2 unmodifiableList "(Ljava/util/List;)Ljava/util/List;
  4 5 6 unmodifiableMap  (Ljava/util/Map;)Ljava/util/Map;
  8 9 : clone ()Ljava/lang/Object; < $java/lang/CloneNotSupportedException > java/lang/IllegalStateException
 = @  A (Ljava/lang/Throwable;)V	  C D  $assertionsDisabled
  F G  
getEntries I J K L M java/util/List size ()I O java/lang/AssertionError
 N 
  R S 
 getEntryToInfo U J V java/util/Map X java/lang/StringBuilder
 W  [ 	Entries: 
 W ] ^ _ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 W a ^ b (I)Ljava/lang/StringBuilder; d ; vis. entries: 
  f g  getVisibleEntries
 i j k l 2 "org/openide/nodes/EntrySupportLazy notNull n 	; Infos:  p ; entriesSize:  r ; entryToInfoSize: 
 i t u v dumpEntriesInfos 3(Ljava/util/List;Ljava/util/Map;)Ljava/lang/String;
 W x y z toString ()Ljava/lang/String;
 N |  } (Ljava/lang/Object;)V  Inited: 
 W  ^  (Z)Ljava/lang/StringBuilder;  	
Thread: 
 W  ^  -(Ljava/lang/Object;)Ljava/lang/StringBuilder;  
InProgress:   
MustNotify:   

Entries: 
      java/lang/Class desiredAssertionStatus ()Z
  	     UNINITIALIZED )Lorg/openide/nodes/EntrySupportLazyState; 	Signature 4Ljava/util/List<Lorg/openide/nodes/Children$Entry;>; fLjava/util/Map<Lorg/openide/nodes/Children$Entry;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;>; Code LineNumberTable LocalVariableTable this LocalVariableTypeTable MethodParameters æ(ZLjava/lang/Thread;ZZLjava/util/List<Lorg/openide/nodes/Children$Entry;>;Ljava/util/List<Lorg/openide/nodes/Children$Entry;>;Ljava/util/Map<Lorg/openide/nodes/Children$Entry;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;>;)V isInited isInitInProgress ()Ljava/lang/Thread; isMustNotify 6()Ljava/util/List<Lorg/openide/nodes/Children$Entry;>; h()Ljava/util/Map<Lorg/openide/nodes/Children$Entry;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;>; 
cloneState +()Lorg/openide/nodes/EntrySupportLazyState; ex &Ljava/lang/CloneNotSupportedException; StackMapTable changeInited ,(Z)Lorg/openide/nodes/EntrySupportLazyState; 	newInited changeThread =(Ljava/lang/Thread;)Lorg/openide/nodes/EntrySupportLazyState; t changeProgress b changeMustNotify changeEntries Z(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Lorg/openide/nodes/EntrySupportLazyState; state entriesSize I entryToInfoSize ù(Ljava/util/List<Lorg/openide/nodes/Children$Entry;>;Ljava/util/List<Lorg/openide/nodes/Children$Entry;>;Ljava/util/Map<Lorg/openide/nodes/Children$Entry;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;>;)Lorg/openide/nodes/EntrySupportLazyState; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile EntrySupportLazyState.java InnerClasses Å /org/openide/nodes/EntrySupportLazyState$NodeRef NodeRef È 1org/openide/nodes/EntrySupportLazyState$EntryInfo 	EntryInfo Ë  org/openide/nodes/Children$Entry Í org/openide/nodes/Children Entry 0     	                       #     & '        * '        - .       D            P     *¸ ¸ ¸ · ±           &  (  )  *  &  ,                    â     ,*· *µ *,µ *µ *µ !*µ $*µ (*µ +±       & 	   6  7 	 8  9  :  ;  < % = + >    R    ,       ,      ,      ,       , #     , & '    , * '    , - .           , &     , *     , -   ¡              #   &   *   -       ¢  £      /     *´ ¬           K              ¤      /     *´ ¬           O               ¥     /     *´ °           R              ¦      /     *´ !¬           V              G      2     *´ $¸ /°           Y                 §  g      2     *´ (¸ /°           \                 §  S 
     2     *´ +¸ 3°           _                 ¨  © ª     b     *¶ 7À °L» =Y+· ?¿      ;         d  e 	 f      	 	 « ¬         ­    H ;  ® ¯     U 	    !» Y*´ *´ *´ !*´ $*´ (*´ +· °           k        !       ! °   ¡    °    ± ²     U 	    !» Y*´ +*´ *´ !*´ $*´ (*´ +· °           s        !       ! ³   ¡    ³    ´ ¯     U 	    !» Y*´ *´ *´ !*´ $*´ (*´ +· °           {        !       ! µ   ¡    µ    ¶ ¯     U 	    !» Y*´ *´ *´ *´ $*´ (*´ +· °                   !       ! µ   ¡    µ    · ¸    Û 	   +Ç *´ $L,Ç *´ (M-Ç *´ +N» Y*´ *´ *´ *´ !+,-· :66² B ¶ E¹ H Y6 » NY· P¿² B ¶ Q¹ T Y6 » NY· P¿² B ¶ E¹ H ¶ Q¹ T  r» NY» WY· YZ¶ \¶ E¹ H ¶ `c¶ \¶ e¸ h¹ H ¶ `m¶ \¶ Q¹ T ¶ `o¶ \¶ `q¶ \¶ `¶ E¶ Q¸ s¶ \¶ w· {¿°       6       	          7  :  =  [  y       H          & '    * '    - .  7 Ñ ¹   : Î º »  = Ë ¼ »           &     *     -   ­    	þ ? û  ¡    &   *   -       ½  y z     ÿ     ¥*¶ E¹ H <*¶ Q¹ T =» WY· Y~¶ \*´ ¶ ¶ \*´ ¶ ¶ \*´ ¶ ¶ \*´ !¶ ¶ \*¶ E¹ H ¶ `c¶ \*¶ e¸ h¹ H ¶ `m¶ \*¶ Q¹ T ¶ `o¶ \¶ `q¶ \¶ `*¶ E*¶ Q¸ s¶ \¶ w°       "    ¥ 
 ¦  § Q ­ b ® v ¯  ± ¤ §         ¥     
  º »    ¼ »  ¾     ¿    À      B      ¶  § ³ B» Y· ³ ±       
    "  # ­    @  Á    Â Ã     Ä  Æ  Ç  É  Ê Ì Î