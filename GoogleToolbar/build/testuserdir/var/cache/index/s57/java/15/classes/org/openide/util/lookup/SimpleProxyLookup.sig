Êþº¾   4 µ
      )org/openide/util/lookup/SimpleProxyLookup checkLookup ()Lorg/openide/util/Lookup;
  	 
   org/openide/util/Lookup <init> ()V	     provider "Lorg/openide/util/Lookup$Provider;       org/openide/util/Lookup$Provider 	getLookup	     delegate Lorg/openide/util/Lookup;	     results Ljava/util/WeakHashMap;  java/util/ArrayList
 ! " # $ % java/util/WeakHashMap values ()Ljava/util/Collection;
  '  ( (Ljava/util/Collection;)V
  * + , iterator ()Ljava/util/Iterator;
  	 / 0 1 2 3 java/util/Iterator hasNext ()Z / 5 6 7 next ()Ljava/lang/Object; 9 java/lang/ref/Reference
 8 ; < 7 get > 5org/openide/util/lookup/SimpleProxyLookup$ProxyResult
 = @ A B updateLookup D(Lorg/openide/util/Lookup$Result;[Lorg/openide/util/Lookup$Result;)Z
 = D E ( collectFires G org/openide/util/LookupEvent I org/openide/util/LookupListener H K L M resultChanged !(Lorg/openide/util/LookupEvent;)V
 ! 	
 ! P < Q &(Ljava/lang/Object;)Ljava/lang/Object;
  S T U cast p(Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult;)Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult;
 = W  X P(Lorg/openide/util/lookup/SimpleProxyLookup;Lorg/openide/util/Lookup$Template;)V Z java/lang/ref/WeakReference
 Y \  ] (Ljava/lang/Object;)V
 ! _ ` a put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 = c d e 
access$000 Y(Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult;)Lorg/openide/util/Lookup$Result;
  g h i lookup %(Ljava/lang/Class;)Ljava/lang/Object;
  k l m 
lookupItem B(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Item; 	Signature Ljava/util/WeakHashMap<Lorg/openide/util/Lookup$Template<*>;Ljava/lang/ref/Reference<Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult<*>;>;>; %(Lorg/openide/util/Lookup$Provider;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/util/lookup/SimpleProxyLookup; MethodParameters ref Ljava/lang/ref/Reference; p 7Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult; it Ljava/util/Iterator; ev Lorg/openide/util/LookupEvent; ll !Lorg/openide/util/LookupListener; evAndListeners Ljava/util/ArrayList; l toCheck LocalVariableTypeTable ULjava/lang/ref/Reference<Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult<*>;>; :Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult<*>; kLjava/util/Iterator<Ljava/lang/ref/Reference<Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult<*>;>;>; )Ljava/util/ArrayList<Ljava/lang/Object;>; StackMapTable  java/lang/Object  java/lang/Throwable getLookupDelegate <T:Ljava/lang/Object;>(Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult<*>;)Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult<TT;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result; newP template "Lorg/openide/util/Lookup$Template; <Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult<TT;>; 'Lorg/openide/util/Lookup$Template<TT;>;   org/openide/util/Lookup$Template d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; clazz Ljava/lang/Class; Ljava/lang/Class<TT;>; 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; b<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Item<TT;>; 
access$100 F(Lorg/openide/util/lookup/SimpleProxyLookup;)Lorg/openide/util/Lookup; x0 
SourceFile SimpleProxyLookup.java InnerClasses Provider ProxyResult ¬ org/openide/util/Lookup$Result Result Template ° org/openide/util/Lookup$Item Item ³ 4org/openide/util/lookup/SimpleProxyLookup$WeakResult 
WeakResult 0                    n    o     p  q   F     
*· *+µ ±    r       1  2 	 3 s       
 t u     
    v           q  *     Ç*´ ¹  LM*YNÂ+*´ ¥ !*+µ *´ Æ » Y*´ ¶  · &¶ )M-Ã§ 
:-Ã¿,Æ » Y· -N,:¹ .  9¹ 4 À 8:Ç §ÿå¶ :À =:Æ ¶ ? 	-¶ C§ÿÃ-¶ ):¹ .  '¹ 4 À F:¹ 4 À H:¹ J §ÿÕ+°   8 ;   ; ? ;    r   b    7 
 :  <  =  >  @ $ A 6 D B F F H N I [ J g K l L o O y Q  R  T  V ¡ W ­ X ¹ Y Â Z Å \ s   f 
 g ' w x  y  y z  Q @ { |  ­  } ~  ¹ 	     . { |  N w      Ç t u   
 ½     »  |     4  g ' w   y  y   Q @ {   N w     »       3 	þ 6  / D ú ý   /ü  8ú ú ü  /ù - 0    q   /     *´ °    r       ` s        t u   
 T U  q   >     *°    r       e s        y z           y    v    y   n            [ s   h   q       t*YNÂ*´ Ç *» !Y· Nµ § ,*´ +¶ OÀ 8:Æ ¶ :À =:Æ ¸ R-Ã°» =Y*+· VM» YY,· [:*´ +¶ ^W-Ã§ 
:-Ã¿,¸ bW,°   A f   B c f   f j f    r   :    j  k  l  n & p + q 5 s : t B y L z V { a | m } r ~ s   H  5  y z  &  w x  V  w x  L   z    t t u     t    m   z     >  5  y   &  w   V  w   L       t    m         ý   (c ÿ     =   v       n      h i  q   o     +Ç 
*· W°*· +¶ f°    r          	    s        t u                          v       n    ¡  l m  q   O     	*· +¶ j°    r        s       	 t u     	           	    v       n    ¢ £ ¤  q   /     *· °    r       $ s        ¥ u    ¦    § ¨   2    ©	 =  ª  «  ­	   ®  ¯  ±	 ²  ´ 