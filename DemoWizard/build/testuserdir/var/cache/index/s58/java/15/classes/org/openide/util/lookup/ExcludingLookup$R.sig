Êþº¾   4 Æ	      )org/openide/util/lookup/ExcludingLookup$R weak 4Lorg/openide/util/lookup/ExcludingLookup$WeakResult;	   	 
 from "Lorg/openide/util/Lookup$Template;	     this$0 )Lorg/openide/util/lookup/ExcludingLookup;
      &org/openide/util/lookup/WaitableResult <init> ()V	     result  Lorg/openide/util/Lookup$Result;  2org/openide/util/lookup/ExcludingLookup$WeakResult
     w(Lorg/openide/util/lookup/ExcludingLookup;Lorg/openide/util/lookup/ExcludingLookup$R;Lorg/openide/util/Lookup$Result;)V
     ! beforeLookup %(Lorg/openide/util/Lookup$Template;)V	  # $ % 	listeners Ljava/lang/Object;
 ' ( ) * + &org/openide/util/lookup/AbstractLookup modifyListenerList H(ZLorg/openide/util/LookupListener;Ljava/lang/Object;)Ljava/lang/Object;
 - . / 0 1 org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
 - 3 4 1 removeLookupListener
 - 6 7 8 allInstances ()Ljava/util/Collection;
  : ; < openCol /(Ljava/util/Collection;I)Ljava/util/Collection;
  6
 ? @ A B C 'org/openide/util/lookup/ExcludingLookup classes ()[Ljava/lang/Class;
 E F G H I  org/openide/util/Lookup$Template getType ()Ljava/lang/Class; K java/util/ArrayList M N O P Q java/util/Collection size ()I
 J S  T (I)V
 ? V W X filter h([Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;ILjava/util/Collection;)Ljava/util/Collection;
 - Z [ \ 
allClasses ()Ljava/util/Set; ^ java/util/HashSet
 ]  a java/util/Set
 - c d 8 allItems
  c
 g h i j k org/openide/util/LookupEvent 	getSource ()Ljava/lang/Object;
  m n o collectFires (Ljava/util/Collection;)V q org/openide/util/LookupListener
 J N
 J t u v toArray (([Ljava/lang/Object;)[Ljava/lang/Object; x "[Lorg/openide/util/LookupListener;
 g z  { #(Lorg/openide/util/Lookup$Result;)V
 ' } ~  notifyListeners J([Ljava/lang/Object;Lorg/openide/util/LookupEvent;Ljava/util/Collection;)V 	Signature %Lorg/openide/util/Lookup$Result<TT;>; 9Lorg/openide/util/lookup/ExcludingLookup$WeakResult<TT;>; n(Lorg/openide/util/lookup/ExcludingLookup;Lorg/openide/util/Lookup$Template;Lorg/openide/util/Lookup$Result;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/util/lookup/ExcludingLookup$R; delegate LocalVariableTypeTable 0Lorg/openide/util/lookup/ExcludingLookup$R<TT;>; MethodParameters J(Lorg/openide/util/Lookup$Template;Lorg/openide/util/Lookup$Result<TT;>;)V t StackMapTable add Z l !Lorg/openide/util/LookupListener;  java/lang/Object  java/lang/Throwable remove ()Ljava/util/Collection<+TT;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; (Z)Ljava/util/Collection; ignore (Z)Ljava/util/Collection<+TT;>; c Ljava/util/Collection; type I Ljava/util/Collection<TS;>; O<S:Ljava/lang/Object;>(Ljava/util/Collection<TS;>;I)Ljava/util/Collection<TS;>; *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; ?(Z)Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; arr Ljava/util/ArrayList; evAndListeners ll newev Ljava/util/ArrayList<*>; *Ljava/util/Collection<Ljava/lang/Object;>; -(Ljava/util/Collection<Ljava/lang/Object;>;)V 
access$200 O(Lorg/openide/util/lookup/ExcludingLookup$R;)Lorg/openide/util/Lookup$Template; x0 
access$300 a(Lorg/openide/util/lookup/ExcludingLookup$R;)Lorg/openide/util/lookup/ExcludingLookup$WeakResult; d<T:Ljava/lang/Object;>Lorg/openide/util/lookup/WaitableResult<TT;>;Lorg/openide/util/LookupListener; 
SourceFile ExcludingLookup.java InnerClasses R 
WeakResult À org/openide/util/Lookup Template Result Ä org/openide/util/Lookup$Item Item 0    p                     $ %    	 
                     "*+µ *· *,µ *-µ *» Y+*-· µ ±          ' 	( ) * !+         "       " 	 
    "           "       "         	              !     m     *´ Á  *´ À +¶ ±          . 
/ 1                 
                           0 1     à     :*YNÂ*+*´ "¸ &µ "*´ "Æ § =-Ã§ 
:-Ã¿ *´ *´ ¶ ,±     #   # ' #          6 7 8 9 *; .< 9>    *         :       :    *            :         ý   @E ÿ    p           4 1     à     :*YNÂ*+*´ "¸ &µ "*´ "Ç § =-Ã§ 
:-Ã¿ *´ *´ ¶ 2±     #   # ' #          C D E F *H .I 9K    *         :       :    *            :         ý   @E ÿ    p           7 8     I     **´ ¶ 5· 9°          O                                       7      K     *¶ =°          S                                                    ; <          %*´ *´ ¶ >*´ ¶ D+» JY+¹ L · R¶ U°          W         %       %       % ¡ ¢         %       %  £     	    ¡       ¤  [ \     d     (*´ *´ ¶ >*´ ¶ D*´ ¶ Y» ]Y· _¶ UÀ `°          \        (            (         ¥          d 8     I     **´ ¶ b· 9°          a                             ¦          d      K     *¶ e°          e                                          §          ¨ ©     h     +¶ f*´ ¦ *¶ l±          i j l                ª «                       ª    n o         d*YNÂ*´ "Ç -Ã±*´ "Á p ½ pY*´ "À pSM§ *´ "À J:¶ r½ p¶ sÀ wM-Ã§ 
:-Ã¿,N» gY*· y:-+¸ |±    I    F I   I M I       2   q r s v w *y 3z D| P~ R \ c    R  '  ¬ x  3   ­  D  ¬ x    d       d ®    P  ¬ x  R  ¯ x  \  ° «        3   ±    d       d ® ²     A ý   ÿ    M w   ÿ    M    ÿ    M w       ®       ³ ´ µ     /     *´ °          !         ¶    · ¸     /     *´ °          !         ¶         ¹ º    » ¼   *   ? ½   ? ¾  E ¿ Á  - ¿ Â	 Ã ¿ Å	