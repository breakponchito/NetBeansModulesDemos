����   4 [
      2org/openide/util/RequestProcessor$WaitableCallable <init> t(Ljava/util/concurrent/Callable;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
  	 
   java/lang/Object ()V	     delegate Ljava/util/concurrent/Callable;	     	countdown %Ljava/util/concurrent/CountDownLatch;	     ref -Ljava/util/concurrent/atomic/AtomicReference;	     failed Z      ! java/util/concurrent/Callable call ()Ljava/lang/Object;
 # $ % & ' +java/util/concurrent/atomic/AtomicReference set (Ljava/lang/Object;)V
 ) * + ,  #java/util/concurrent/CountDownLatch 	countDown . java/lang/RuntimeException 0 java/lang/Error 2 org/openide/util/Cancellable 1 4 5 6 cancel ()Z 	Signature $Ljava/util/concurrent/Callable<TT;>; 2Ljava/util/concurrent/atomic/AtomicReference<TT;>; G(Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/util/RequestProcessor$WaitableCallable; LocalVariableTypeTable 9Lorg/openide/util/RequestProcessor$WaitableCallable<TT;>; MethodParameters L(Ljava/util/concurrent/Callable<TT;>;Ljava/util/concurrent/CountDownLatch;)V ~(Ljava/util/concurrent/Callable<TT;>;Ljava/util/concurrent/atomic/AtomicReference<TT;>;Ljava/util/concurrent/CountDownLatch;)V result Ljava/lang/Object; e Ljava/lang/RuntimeException; Ljava/lang/Error; TT; StackMapTable M java/lang/Throwable 
Exceptions P java/lang/Exception ()TT; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; j<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/concurrent/Callable<TT;>;Lorg/openide/util/Cancellable; 
SourceFile RequestProcessor.java InnerClasses Y !org/openide/util/RequestProcessor WaitableCallable 0     1           7    8     7    9 B         :  ;   f     *+,� �    <   
   � � =         > ?               @        > A       8  B   	       7    C      ;   �     *� *+� *-� *,� �    <      � � 	� � � =   *     > ?                     @         > A       8      9  B             7    D    6  ;   A     *� �    <      � =        > ?   @        > A      !  ;  M     Z*� �  L*� � *� +� "+M*� � 
*� � 
*� � (,�L*� +�L*� +�N*� � 
*� � 
*� � (-�     2 -    : /    B   2 C B    <   B   � 
     ) 0 2 3 8 : ; @	 B Q X =   *  
 ( E F  3  G H  ;  G I    Z > ?   @     
 ( E J    Z > A   K   - �  �  �     -G /G L�    L N     O 7    Q R     S    5 6  ;   b     *� � 1� *� � 1� 3 � �    <       =        > ?   @        > A   K    @ R     S    7    T U    V W   
   X Z 