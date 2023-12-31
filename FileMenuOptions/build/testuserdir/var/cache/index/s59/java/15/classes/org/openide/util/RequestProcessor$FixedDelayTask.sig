����   4 p
      3org/openide/util/RequestProcessor$TaskFutureWrapper <init> (Ljava/lang/Runnable;JJ)V  &java/util/concurrent/atomic/AtomicLong
  
   ()V	      0org/openide/util/RequestProcessor$FixedDelayTask nextRunTime (Ljava/util/concurrent/atomic/AtomicLong;
     get ()J
      java/lang/System currentTimeMillis	       java/util/concurrent/TimeUnit MILLISECONDS Ljava/util/concurrent/TimeUnit;
  " # $ convert #(JLjava/util/concurrent/TimeUnit;)J
  & ' ( fini ()Z	  * + , toRun Ljava/lang/Runnable; . / 0 1  java/lang/Runnable run
  3 4  
reschedule	  6 7 8 	cancelled +Ljava/util/concurrent/atomic/AtomicBoolean;
 : ; <  ( )java/util/concurrent/atomic/AtomicBoolean
 > ? @ A B java/lang/Thread currentThread ()Ljava/lang/Thread;
 > D E ( isInterrupted	  G H I period J
  K L M set (J)V	  O P Q t (Lorg/openide/util/RequestProcessor$Task;
 S T U V W &org/openide/util/RequestProcessor$Task schedule (I)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/util/RequestProcessor$FixedDelayTask; initialDelay MethodParameters getDelay "(Ljava/util/concurrent/TimeUnit;)J unit next #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable result Z 
SourceFile RequestProcessor.java InnerClasses l !org/openide/util/RequestProcessor TaskFutureWrapper FixedDelayTask Task 0                 X   d     *+ � *� Y� 	� �    Y      � � � Z   *     [ \      1 ,     ] I     H I  ^    1   ]   H    _ `  X   W     *� � A+ � e� � !�    Y   
   � � Z         [ \      a      b I  ^    a   c     d    1   X   `     *� %� *� )� - *� %� *� 2�    Y      � � � � � Z        [ \   e    
 c     d    ' (  X   _     *� 5� 9� � =� C� � <�    Y   
   � � Z        [ \     f g  e    @  4   X   b     #*� � *� Fa� J*� %� *� N*� F�� R�    Y      � � � "� Z       # [ \   e    "  h    i j      k m
  k n  S k o 