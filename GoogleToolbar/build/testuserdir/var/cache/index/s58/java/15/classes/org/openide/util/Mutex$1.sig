����   4 K
      java/lang/Object <init> ()V
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  'org/openide/util/spi/MutexEventProvider
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;  java/lang/IllegalStateException  .No MutexEventProvider found in default Lookup.
     (Ljava/lang/String;)V     createMutex ,()Lorg/openide/util/spi/MutexImplementation;   Null value from %s.createMutex()  ! " # getClass ()Ljava/lang/Class;
 % & ' ( ) java/lang/String format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
 + , - .  org/openide/util/Mutex$1 call 0 java/util/concurrent/Callable Code LineNumberTable LocalVariableTable this Lorg/openide/util/Mutex$1; provider )Lorg/openide/util/spi/MutexEventProvider; 	mutexImpl *Lorg/openide/util/spi/MutexImplementation; StackMapTable < (org/openide/util/spi/MutexImplementation 
Exceptions ? java/lang/Exception #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/lang/Object; 	Signature ]Ljava/lang/Object;Ljava/util/concurrent/Callable<Lorg/openide/util/spi/MutexImplementation;>; 
SourceFile 
Mutex.java EnclosingMethod I org/openide/util/Mutex InnerClasses   +   /         1   /     *� �    2       } 3        4 5    .   1   �     A� � � L+� � Y� �+�  M,� � Y� Y+�   S� $� �,�    2   & 	   �  �  �  � ! � % � 2 � 8 � ? � 3        A 4 5    5 6 7  !   8 9  :    �  � $ ; =     > @     A  A . B  1   /     *� *�    2       } 3        4 5   =     > @     A    C    D E    F G    H   J   
  +      