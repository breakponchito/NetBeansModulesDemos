Êþº¾   4 
      .org/openide/util/lookup/ProxyLookup$WeakResult 
setResults $([Lorg/openide/util/Lookup$Result;)V
   	 
 
getResults #()[Lorg/openide/util/Lookup$Result;	     result -Lorg/openide/util/lookup/ProxyLookup$WeakRef;
      &org/openide/util/lookup/WaitableResult <init> ()V  +org/openide/util/lookup/ProxyLookup$WeakRef
     ¡(Lorg/openide/util/lookup/ProxyLookup$R;Lorg/openide/util/lookup/ProxyLookup$WeakResult;Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/Lookup$Template;)V
      org/openide/util/Lookup$Result removeLookupListener $(Lorg/openide/util/LookupListener;)V
  ! " # get ()Ljava/lang/Object; % %org/openide/util/lookup/ProxyLookup$R
 $ ' ( ) beforeLookup %(Lorg/openide/util/Lookup$Template;)V
  + ,  removeListeners
 $ . / 0 collectFires (Ljava/util/Collection;)V	  2 3 4 $assertionsDisabled Z 6 java/lang/AssertionError
 5 
 $ 9 : ; resultChanged !(Lorg/openide/util/LookupEvent;)V	  = > ? results ![Lorg/openide/util/Lookup$Result;
  A B C allInstances ()Ljava/util/Collection;
  E F C allItems H #org/openide/util/lookup/ProxyLookup
 J K L M N java/lang/Class desiredAssertionStatus ()Z P org/openide/util/LookupListener R java/lang/Runnable 	Signature &[Lorg/openide/util/Lookup$Result<TT;>; 2Lorg/openide/util/lookup/ProxyLookup$WeakRef<TT;>; q(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/lookup/ProxyLookup$R;Lorg/openide/util/Lookup$Template;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/util/lookup/ProxyLookup$WeakResult; proxy %Lorg/openide/util/lookup/ProxyLookup; r 'Lorg/openide/util/lookup/ProxyLookup$R; t "Lorg/openide/util/Lookup$Template; LocalVariableTypeTable 5Lorg/openide/util/lookup/ProxyLookup$WeakResult<TT;>; 'Lorg/openide/util/Lookup$Template<TT;>; MethodParameters v(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/lookup/ProxyLookup$R;Lorg/openide/util/Lookup$Template<TT;>;)V i I arr StackMapTable ? evAndListeners Ljava/util/Collection; *Ljava/util/Collection<Ljava/lang/Object;>; *Lorg/openide/util/lookup/ProxyLookup$R<*>; -(Ljava/util/Collection<Ljava/lang/Object;>;)V addLookupListener l !Lorg/openide/util/LookupListener; ()Ljava/util/Collection<TT;>; ev Lorg/openide/util/LookupEvent; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
allClasses ()Ljava/util/Set; *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; run (()[Lorg/openide/util/Lookup$Result<TT;>; )([Lorg/openide/util/Lookup$Result<TT;>;)V (Z)Ljava/util/Collection; callBeforeLookup .(Z)Ljava/util/Collection<+Ljava/lang/Object;>; ?(Z)Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; 
access$100 _(Lorg/openide/util/lookup/ProxyLookup$WeakResult;)Lorg/openide/util/lookup/ProxyLookup$WeakRef; x0 
access$200 S(Lorg/openide/util/lookup/ProxyLookup$WeakResult;)[Lorg/openide/util/Lookup$Result; 
access$300 T(Lorg/openide/util/lookup/ProxyLookup$WeakResult;[Lorg/openide/util/Lookup$Result;)V x1 <clinit> x<T:Ljava/lang/Object;>Lorg/openide/util/lookup/WaitableResult<TT;>;Lorg/openide/util/LookupListener;Ljava/lang/Runnable; 
SourceFile ProxyLookup.java InnerClasses 
WeakResult  org/openide/util/Lookup Result WeakRef R   org/openide/util/Lookup$Template Template  org/openide/util/Lookup$Item Item 0    O Q   > ?  S    T     S    U 3 4      V  W        *· *» Y,*+-· µ ±    X      5 6 7 Y   *     Z [      \ ]     ^ _     ` a  b        Z c      ` d  e    \   ^   `   S    f  ,   W   §      *· L+Ç ±=+¾¢ +2*¶ §ÿð±    X      : ; 	< 
? @ ? B Y        g h      Z [     i ?  b         Z c     i T  j    ü 
 kü ú   ( )  W        *´ ¶  À $M,Æ ,+¶ &§ *¶ *±    X      E F G I K Y         Z [      ` a    ^ _  b        Z c   j   	 ü  $ e    `    / 0  W        *´ ¶  À $M,Æ ,+¶ -§ *¶ *±    X      N O P R T Y         Z [      l m    ^ _  b         Z c      l n    ^ o  j   	 ü  $ e    l   S    p  q   W   b     ² 1 » 5Y· 7¿±    X   
   W X Y        Z [      r s  b        Z c   j     e    r       W   b     ² 1 » 5Y· 7¿±    X   
   [ \ Y        Z [      r s  b        Z c   j     e    r    B C  W   Y     ² 1 » 5Y· 7¿°    X   
   _ ` Y        Z [   b        Z c   j     S    t  : ;  W        *´ ¶  À $M,Æ ,+¶ 8§ *¶ *±    X      d e f h j Y         Z [      u v    ^ _  b        Z c   j   	 ü  $ e    u    F C  W   Y     ² 1 » 5Y· 7¿°    X   
   n o Y        Z [   b        Z c   j     S    w x     y    z {  W   Y     ² 1 » 5Y· 7¿°    X   
   t u Y        Z [   b        Z c   j     S    | x     y    }   W   E     *¶ *±    X   
   y z Y        Z [   b        Z c    	 
  W   A     *´ <°    X      } Y        Z [   b        Z c   S    ~     W   Z     *+µ <±    X   
     Y        Z [      > ?  b        Z c      > T  e    >   S      B   W   K     *¶ @°    X       Y        Z [       4  b        Z c   e       S     x     y    F   W   K     *¶ D°    X       Y        Z [       4  b        Z c   e       S     x     y      W   /     *´ °    X      0 Y         [      W   /     *· °    X      0 Y         [      W   :     *+· ±    X      0 Y         [       ?      W   4      G¶ I § ³ 1±    X      0 j    @  S             2   G     	  G   $ G         	