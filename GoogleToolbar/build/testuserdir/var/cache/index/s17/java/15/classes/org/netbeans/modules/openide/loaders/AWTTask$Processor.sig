����   4 `
      6org/netbeans/modules/openide/loaders/AWTTask$Processor <init> ()V
   	 java/lang/Object	     $assertionsDisabled Z
      java/awt/EventQueue isDispatchThread ()Z  java/lang/AssertionError
  	      ,org/netbeans/modules/openide/loaders/AWTTask PENDING *Ljava/util/concurrent/LinkedBlockingQueue;
     ! " (java/util/concurrent/LinkedBlockingQueue poll ()Ljava/lang/Object;	  $ % & LOG Ljava/util/logging/Logger;	 ( ) * + , java/util/logging/Level FINER Ljava/util/logging/Level; .  processing finished
 0 1 2 3 4 java/util/logging/Logger log .(Ljava/util/logging/Level;Ljava/lang/String;)V 6  processing {0}
 0 8 3 9 @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  ; <  run
 > ? @ A  java/lang/Class desiredAssertionStatus
 > C D E getName ()Ljava/lang/String;
 0 G H I 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; K java/lang/Runnable Code LineNumberTable LocalVariableTable this 8Lorg/netbeans/modules/openide/loaders/AWTTask$Processor; t .Lorg/netbeans/modules/openide/loaders/AWTTask; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 3(Lorg/netbeans/modules/openide/loaders/AWTTask$1;)V x0 0Lorg/netbeans/modules/openide/loaders/AWTTask$1; <clinit> 
SourceFile AWTTask.java InnerClasses 	Processor _ .org/netbeans/modules/openide/loaders/AWTTask$1 0    J   % &            L   /     *� �    M       � N        O P    <   L   �     A� 
� � � � Y� �� � � L+� � #� '-� /�� #� '5+� 7+� :���    M   "    �  �  � " � - � . � : � > � N        Q R    A O P   S   	 �   T     U     V  L   9     *� �    M       � N        O P      W X   Y   L   C      � =� � � 
� B� F� #�    M   
    �  � S    @  Z    [ \       ]  ^    