����   4 �	      2org/openide/util/lookup/ExcludingLookup$WeakResult next 4Lorg/openide/util/lookup/ExcludingLookup$WeakResult;	   	 
 result Ljava/lang/ref/Reference;	     this$0 )Lorg/openide/util/lookup/ExcludingLookup;
      &org/openide/util/lookup/WaitableResult <init> ()V  java/lang/ref/WeakReference
     (Ljava/lang/Object;)V	     source  Lorg/openide/util/Lookup$Result;
    ! " # java/lang/ref/Reference get ()Ljava/lang/Object; % )org/openide/util/lookup/ExcludingLookup$R
 $ ' ( ) beforeLookup %(Lorg/openide/util/Lookup$Template;)V
 + , - . / org/openide/util/Lookup$Result removeLookupListener $(Lorg/openide/util/LookupListener;)V
 $ 1 2 3 collectFires (Ljava/util/Collection;)V	  5 6 7 $assertionsDisabled Z 9 java/lang/AssertionError
 8 
 $ < = > resultChanged !(Lorg/openide/util/LookupEvent;)V
  @ A B allItems ()Ljava/util/Collection; D 'org/openide/util/lookup/ExcludingLookup
 F G H I J java/lang/Class desiredAssertionStatus ()Z L org/openide/util/LookupListener 	Signature KLjava/lang/ref/Reference<Lorg/openide/util/lookup/ExcludingLookup$R<TT;>;>; 7Lorg/openide/util/lookup/ExcludingLookup$WeakResult<*>; w(Lorg/openide/util/lookup/ExcludingLookup;Lorg/openide/util/lookup/ExcludingLookup$R;Lorg/openide/util/Lookup$Result;)V Code LineNumberTable LocalVariableTable this r +Lorg/openide/util/lookup/ExcludingLookup$R; s LocalVariableTypeTable 9Lorg/openide/util/lookup/ExcludingLookup$WeakResult<TT;>; 0Lorg/openide/util/lookup/ExcludingLookup$R<TT;>; %Lorg/openide/util/Lookup$Result<TT;>; MethodParameters X(Lorg/openide/util/lookup/ExcludingLookup$R<TT;>;Lorg/openide/util/Lookup$Result<TT;>;)V t "Lorg/openide/util/Lookup$Template; StackMapTable evAndListeners Ljava/util/Collection; *Ljava/util/Collection<Ljava/lang/Object;>; -(Ljava/util/Collection<Ljava/lang/Object;>;)V addLookupListener l !Lorg/openide/util/LookupListener; allInstances ()Ljava/util/Collection<TT;>; (Z)Ljava/util/Collection; ignore (Z)Ljava/util/Collection<TT;>; ev Lorg/openide/util/LookupEvent; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; callBeforeLookup ?(Z)Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; 
allClasses ()Ljava/util/Set; *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; 
access$000 O(Lorg/openide/util/lookup/ExcludingLookup$WeakResult;)Ljava/lang/ref/Reference; x0 
access$102 �(Lorg/openide/util/lookup/ExcludingLookup$WeakResult;Lorg/openide/util/lookup/ExcludingLookup$WeakResult;)Lorg/openide/util/lookup/ExcludingLookup$WeakResult; x1 
access$100 j(Lorg/openide/util/lookup/ExcludingLookup$WeakResult;)Lorg/openide/util/lookup/ExcludingLookup$WeakResult; <clinit> d<T:Ljava/lang/Object;>Lorg/openide/util/lookup/WaitableResult<TT;>;Lorg/openide/util/LookupListener; 
SourceFile ExcludingLookup.java InnerClasses 
WeakResult � org/openide/util/Lookup Result R �  org/openide/util/Lookup$Template Template � org/openide/util/Lookup$Item Item 0    K        	 
  M    N     M    O 6 7          P  Q   �     *+� *� *� Y,� � *-� �    R      � 	� � � S         T       U V     W   X         T Y      U Z     W [  \     U   W   M    ]  ( )  Q   �      *� � � $M,� ,+� &� *� *� *�    R      � � � � � S          T        ^ _    U V  X         T Y   `   	 �  $ \    ^    2 3  Q   �      *� � � $M,� ,+� 0� *� *� *�    R      � � � � � S          T        a b    U V  X          T Y       a c    U Z  `   	 �  $ \    a   M    d  e /  Q   b     � 4� � 8Y� :��    R   
   � � S        T       f g  X        T Y   `     \    f    . /  Q   b     � 4� � 8Y� :��    R   
   � � S        T       f g  X        T Y   `     \    f    h B  Q   Y     � 4� � 8Y� :��    R   
   � � S        T    X        T Y   `     M    i  h j  Q   c     � 4� � 8Y� :��    R   
   � � S        T       k 7  X        T Y   `     \    k   M    l  = >  Q   �      *� � � $M,� ,+� ;� *� *� *�    R      � � � � � S          T        m n    U V  X         T Y   `   	 �  $ \    m    A B  Q   Y     � 4� � 8Y� :��    R   
   � � S        T    X        T Y   `     M    o p     q    A j  Q   K     *� ?�    R      � S        T       r 7  X        T Y   \    r   M    s p     q    t u  Q   Y     � 4� � 8Y� :��    R   
   � � S        T    X        T Y   `     M    v p     q   w x  Q   /     *� �    R      � S        y    z {  Q   ;     *+Z� �    R      � S        y       |   } ~  Q   /     *� �    R      � S        y        Q   4      C� E� � � 4�    R      � `    @  M    � �    � �   *   C �  + � �	 $ C �  � � �  � � �	