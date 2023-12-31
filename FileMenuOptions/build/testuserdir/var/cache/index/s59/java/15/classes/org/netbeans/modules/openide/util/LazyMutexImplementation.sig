����   4 t
      java/lang/Object <init> ()V  provider
 
     org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V	      9org/netbeans/modules/openide/util/LazyMutexImplementation Ljava/util/concurrent/Callable;
     getDelegate ,()Lorg/openide/util/spi/MutexImplementation;      (org/openide/util/spi/MutexImplementation isReadAccess ()Z      isWriteAccess  " # $ writeAccess (Ljava/lang/Runnable;)V  & # ' <(Lorg/openide/util/Mutex$ExceptionAction;)Ljava/lang/Object;  ) * $ 
readAccess  , * '  . / $ postReadRequest  1 2 $ postWriteRequest	  4 5 6 impl *Lorg/openide/util/spi/MutexImplementation; 8 9 : ; < java/util/concurrent/Callable call ()Ljava/lang/Object; > java/lang/Exception
 @ A B C D org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V	  F G H $assertionsDisabled Z J java/lang/AssertionError
 I 
 M N O P  java/lang/Class desiredAssertionStatus 	Signature LLjava/util/concurrent/Callable<+Lorg/openide/util/spi/MutexImplementation;>; "(Ljava/util/concurrent/Callable;)V Code LineNumberTable LocalVariableTable this ;Lorg/netbeans/modules/openide/util/LazyMutexImplementation; LocalVariableTypeTable MethodParameters O(Ljava/util/concurrent/Callable<+Lorg/openide/util/spi/MutexImplementation;>;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; runnable Ljava/lang/Runnable; action (Lorg/openide/util/Mutex$ExceptionAction; -Lorg/openide/util/Mutex$ExceptionAction<TT;>; 
Exceptions e org/openide/util/MutexException H<T:Ljava/lang/Object;>(Lorg/openide/util/Mutex$ExceptionAction<TT;>;)TT; run e Ljava/lang/Exception; StackMapTable <clinit> 
SourceFile LazyMutexImplementation.java InnerClasses p &org/openide/util/Mutex$ExceptionAction r org/openide/util/Mutex ExceptionAction 1          Q    R  5 6   G H      S  T   b     *� +� 	*+� �    U       '  ( 
 )  * V        W X         Y         R  Z      Q    [     T   4     
*� �  �    U       . V       
 W X   \     ]        T   4     
*� �  �    U       3 V       
 W X   \     ]    # $  T   C     *� +� ! �    U   
    8 
 9 V        W X      ^ _  Z    ^   \     ]    # '  T   Q     *� +� % �    U       = V        W X      ` a  Y        ` b  c     d Z    `   Q    f \     ]    * $  T   C     *� +� ( �    U   
    B 
 C V        W X      ^ _  Z    ^   \     ]    * '  T   Q     *� +� + �    U       G V        W X      ` a  Y        ` b  c     d Z    `   Q    f \     ]    / $  T   C     *� +� - �    U   
    L 
 M V        W X      g _  Z    g   \     ]    2 $  T   C     *� +� 0 �    U   
    Q 
 R V        W X      g _  Z    g   \     ]   "    T   �     9*� 3� 0**� � 7 � � 3� L+� ?� E� *� 3� � IY� K�*� 3�     =  U       U  W  Z  X  Y  [ 4 ] V       h i    9 W X   j    Z =  k   T   4      � L� � � E�    U         j    @  l    m n   
  o q s	