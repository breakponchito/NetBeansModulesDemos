����   4 �
      java/lang/Object <init> ()V  *java/util/concurrent/ConcurrentLinkedQueue
  	      )org/openide/loaders/FolderLookup$Dispatch queue Ljava/util/Queue;	     DISPATCH #Lorg/openide/util/RequestProcessor;
      !org/openide/util/RequestProcessor create ?(Ljava/lang/Runnable;Z)Lorg/openide/util/RequestProcessor$Task;	     task (Lorg/openide/util/RequestProcessor$Task;	     ! LOG Ljava/util/logging/Logger;	 # $ % & ' java/util/logging/Level FINER Ljava/util/logging/Level; ) Enqueued: {0}
 + , - . / java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V 1 2 3 4 5 java/util/Queue add (Ljava/lang/Object;)Z
 7 8 9 : ; &org/openide/util/RequestProcessor$Task schedule (I)V
 7 = >  waitFinished @ Processing dispatched commands
 + B C D finer (Ljava/lang/String;)V 1 F G H poll ()Ljava/lang/Object; J java/lang/Runnable L Processing done. Queue: {0} 1 N O P isEmpty ()Z
 R S T U V java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; X Processing {0} I Z [  run ] Lookup Dispatch Thread
  _  D
 a b c d e java/lang/Class getName ()Ljava/lang/String;
 + g h i 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; k java/util/concurrent/Executor 	Signature 'Ljava/util/Queue<Ljava/lang/Runnable;>; Code LineNumberTable LocalVariableTable this +Lorg/openide/loaders/FolderLookup$Dispatch; execute (Ljava/lang/Runnable;)V command Ljava/lang/Runnable; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; r StackMapTable <clinit> 
SourceFile FolderLookup.java InnerClasses �  org/openide/loaders/FolderLookup Dispatch Task 0    j I          !       l    m            n   N     *� *� Y� 	� 
*� *� � �    o       	 
 p        q r    s t  n   `      � � "(+� **� 
+� 0 W*� � 6�    o          p         q r       u v  w    u   x     y    >   n   6     *� � <�    o   
     p        q r    [   n   �     F� ?� A*� 
� E � IL+� � � "K*� 
� M � Q� *�� � "W+� *+� Y ���    o   "       0 1  =! C" p      . z v    F q r   {   	 � ( I x     y    |   n   4      � Y\� ^� � `� f� �    o   
      }    ~       � �  7  � 