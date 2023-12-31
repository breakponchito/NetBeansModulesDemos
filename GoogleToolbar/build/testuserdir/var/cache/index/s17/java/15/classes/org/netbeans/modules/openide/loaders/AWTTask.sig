����   4 �
      org/openide/util/Task <init> (Ljava/lang/Runnable;)V  org.openide.awt.Toolbar
 
     java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	      ,org/netbeans/modules/openide/loaders/AWTTask LOG Ljava/util/logging/Logger;	     id Ljava/lang/Object;	     PENDING *Ljava/util/concurrent/LinkedBlockingQueue;
     ! " (java/util/concurrent/LinkedBlockingQueue add (Ljava/lang/Object;)Z	 $ % & ' ( org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;	  * + , 	PROCESSOR Ljava/lang/Runnable;
 $ . /  
readAccess	  1 2 3 executed Z
 5 6 7 8 9 java/lang/System currentTimeMillis ()J
  ; < = run ()V	 ? @ A B C java/util/logging/Level FINER Ljava/util/logging/Level;       d	 ? G H C FINE      �	 ? L M C INFO      �	 ? Q R C WARNING T  Too long AWTTask: {0} ms for {1} V java/lang/Object
 X Y Z [ \ java/lang/Long valueOf (J)Ljava/lang/Long;
 
 ^ _ ` log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V b java/lang/ThreadDeath d java/lang/Throwable f Error in AWT task
 
 h _ i C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 k l m n o java/awt/EventQueue isDispatchThread ()Z
  q r " remove
  ;	  u v w WAKE_UP 2Lorg/netbeans/modules/openide/loaders/AWTTask$EDT;
 y z { | = 0org/netbeans/modules/openide/loaders/AWTTask$EDT wakeUp
  ~  = waitFinished
  � � o 
isFinished
 U � � � wait (J)V	  � � 3 $assertionsDisabled � java/lang/AssertionError
 � �  =
  � � o isEmpty � ; � java/lang/Runnable
 y � � � enter ()Ljava/lang/Thread;      '
  �  � (J)Z
  � � = flush
 y � � � exit (Ljava/lang/Thread;)V � java/lang/InterruptedException
 � � � � o java/lang/Class desiredAssertionStatus
  �
 y �  � 3(Lorg/netbeans/modules/openide/loaders/AWTTask$1;)V � 6org/netbeans/modules/openide/loaders/AWTTask$Processor
 � � 	Signature ZLjava/util/concurrent/LinkedBlockingQueue<Lorg/netbeans/modules/openide/loaders/AWTTask;>; ;(Ljava/lang/Runnable;Lorg/openide/loaders/FolderInstance;)V Code LineNumberTable LocalVariableTable this .Lorg/netbeans/modules/openide/loaders/AWTTask; r $Lorg/openide/loaders/FolderInstance; MethodParameters took J level t Ljava/lang/ThreadDeath; Ljava/lang/Throwable; l StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; milliseconds 
Exceptions waitFor (Lorg/openide/util/Task;)Z ex  Ljava/lang/InterruptedException; Lorg/openide/util/Task; previous Ljava/lang/Thread; � java/lang/Thread <clinit> 
SourceFile AWTTask.java InnerClasses EDT � .org/netbeans/modules/openide/loaders/AWTTask$1 	Processor 1          �    �  v w    + ,         2 3        � 3      �  �   w     %*+� *� 	� *,� � *� W� #� )� -�    �       +  )  ,  -  . $ / �        % � �     % � ,    %  �  �   	 �       < =  �  �  
  -*� 0�(� 4@*� :*� 0� 4eB� >:! D�� � F:! I�� � K:! N�� � P:*� S� UY!� WSY*� S� ]� �N-�N*� � Pe-� g*� 0� 4eB� >:! D�� � F:! I�� � K:! N�� � P:*� S� UY!� WSY*� S� ]� a:*� 0� 4e7� >:	 D�� � F:	 I�� � K:	 N�� � P:	*� 	S� UY� WSY*� S� ]��    f a   i c   �   f w �   � � �    �   � )   3  4  6  <  =  >  ? ' @ , B 4 C 9 E A F F H c I f 7 g 8 i 9 j : w < | = � > � ? � @ � B � C � E � F � H � I � < � = � > � ? � @ � B � C � E F H) I, K �   f 
  I � �   D � C  g  � �  j  � �  � I � �  � D � C  � M � �  � H � C 	 ! � �   - � �   �   V � , ?�     aB c� * ?�     c�        c ?  �       �     �     =  �   j     "� j� � *� p� *� s� � t� x*� }�    �       O  P  Q  T  U ! W �       " � �   �    	 �     �     �  �   �     <� j� � *� pW*� s�� t� x*YN�*� �� -ì*� �*� �-ì:-��   ( 5   ) 4 5   5 9 5    �   .    [  \  ]  ^  `  a  b % c ) e . f 5 g �       < � �     < � �  �    �  UK c �     � �    �   �     �   	 � �  �  6     o� �� � j� � �Y� ��� � �� � )� � �L� t� �L* �� �� � �=� t+� ��� t+� �� M� �>� t+� ��:� t+� ���  ) ? R � ) ? a   R X a   a c a    �   V    n  o  p % q ' s ) u 0 v : w = x ? ~ F x H ~ O  R z S { V | X ~ _ | a ~ j  m � �      S  � �    o � �   ) F � �  �    �   �I �N c �    �    � =  �   %      	� )� � �    �   
    �  �  � =  �   `      1� �� � � �� Y� �� � yY� �� t� �Y� �� )�    �       "  #  $ % % �    @  �    � �     y  �  �     �  � 