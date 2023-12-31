����   4 �
      java/lang/Object <init> ()V  )java/util/concurrent/atomic/AtomicBoolean
  	      3org/openide/util/RequestProcessor$TaskFutureWrapper 	cancelled +Ljava/util/concurrent/atomic/AtomicBoolean;	     toRun Ljava/lang/Runnable;	     initialDelay J	     period	       java/util/concurrent/TimeUnit MILLISECONDS Ljava/util/concurrent/TimeUnit; " # $ % & java/util/concurrent/Delayed getDelay "(Ljava/util/concurrent/TimeUnit;)J
  # ) org/openide/util/Cancellable ( + , - cancel ()Z	  / 0 1 t (Lorg/openide/util/RequestProcessor$Task;
 3 4 5 , 6 &org/openide/util/RequestProcessor$Task (Z)Z
  8 9 - get
 3 ; < - 
isFinished > *java/util/concurrent/CancellationException
 = 
 3 A B  waitFinished
  D E F convert #(JLjava/util/concurrent/TimeUnit;)J
 3 H B I (J)Z
  K L M 	compareTo !(Ljava/util/concurrent/Delayed;)I
  O 9 P 2(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;
  R 9 S ()Ljava/lang/Void; U $java/util/concurrent/ScheduledFuture W java/lang/Runnable Y 1org/openide/util/RequestProcessor$RunnableWrapper (Ljava/lang/Runnable;JJ)V Code LineNumberTable LocalVariableTable this 5Lorg/openide/util/RequestProcessor$TaskFutureWrapper; run MethodParameters getRunnable ()Ljava/lang/Runnable; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; o Ljava/util/concurrent/Delayed; other ours mayInterruptIfRunning Z result StackMapTable isCancelled isDone 
Exceptions r java/lang/InterruptedException t 'java/util/concurrent/ExecutionException timeout unit millis y %java/util/concurrent/TimeoutException (Ljava/lang/Object;)I 4(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object; ()Ljava/lang/Object; 	Signature �Ljava/lang/Object;Ljava/util/concurrent/ScheduledFuture<Ljava/lang/Void;>;Ljava/lang/Runnable;Lorg/openide/util/RequestProcessor$RunnableWrapper; 
SourceFile RequestProcessor.java InnerClasses � !org/openide/util/RequestProcessor TaskFutureWrapper Task RunnableWrapper     T V X  @ 0 1                           Z  [   |      *� *� Y� 	� 
*+� * � *� �    \      D C E F G H ]   *      ^ _       `                 a    `          b c  [   /     *� �    \      L ]        ^ _   d     e    L M  [   i     +� � ! A*� � '7 e��    \      Q 
R T ]   *     ^ _      f g  
  h     i   a    f   d     e    , 6  [   �     (=*� � (� *� � (� * =� *� .� 2=�    \      Y Z [ ] _ &a ]        ( ^ _     ( j k   & l k  m    �  a    j   d     e    n -  [   2     *� 
� 7�    \      f ]        ^ _   d     e    o -  [   P     *� 
� 7� *� .� :� � �    \      k ]        ^ _   m    @ d     e    9 S  [   u     -*� 
� 7� � =Y� ?�*� .� @*� 
� 7� � =Y� ?��    \      p 
q s t #u +w ]       - ^ _   m     p     q s d     e    9 P  [   �     :*� 
� 7� � =Y� ?�� -� C7*� .� GW*� 
� 7� � =Y� ?��    \      | 
}  � &� 0� 8� ]   *    : ^ _     : u     : v      w   m    � % p     q s x a   	 u   v   d     e  A L z  [   3     	*+� "� J�    \      > ]       	 ^ _   a    f  d     e  A 9 {  [   1     *-� N�    \      > ]        ^ _   p     q s x a   	 u  v  d     e  A 9 |  [   /     *� Q�    \      > ]        ^ _   p     q s d     e    }    ~     � �      � �
 3 � �  X � �
