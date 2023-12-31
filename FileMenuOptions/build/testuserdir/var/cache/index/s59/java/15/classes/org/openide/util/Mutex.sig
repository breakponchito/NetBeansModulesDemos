Êþº¾   4 ±
      java/lang/Object <init> ()V  impl
 
     org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V	      org/openide/util/Mutex *Lorg/openide/util/spi/MutexImplementation;
      <org/netbeans/modules/openide/util/DefaultMutexImplementation 	usingLock R(Ljava/lang/Object;)Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;
     -(Lorg/openide/util/spi/MutexImplementation;)V
      create @()Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;
 " # $ % & !org/openide/util/Mutex$Privileged 
access$000 n(Lorg/openide/util/Mutex$Privileged;)Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged;
  ( ) * controlledBy (Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged;)Lorg/netbeans/modules/openide/util/DefaultMutexImplementation;
  , ) - ¨(Lorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged;Ljava/util/concurrent/Executor;)Lorg/netbeans/modules/openide/util/DefaultMutexImplementation; / 0 1 2 3 (org/openide/util/spi/MutexImplementation 
readAccess <(Lorg/openide/util/Mutex$ExceptionAction;)Ljava/lang/Object; 5 org/openide/util/MutexException 7 java/lang/InternalError 9 #Exception from non-Exception Action
 6 ;  < (Ljava/lang/String;)V
 4 > ? @ getException ()Ljava/lang/Exception;
 6 B C D 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; / F 2 G (Ljava/lang/Runnable;)V / I J 3 writeAccess / L J G / N O P isReadAccess ()Z / R S P isWriteAccess U 	Mutex[%s] / W X Y toString ()Ljava/lang/String;
 [ \ ] ^ _ java/lang/String format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; / a b G postReadRequest / d e G postWriteRequest
 g h i j Y java/lang/Class getName
 l m n o p java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	  r s t LOG Ljava/util/logging/Logger; v org/openide/util/Mutex$1
 u  y 9org/netbeans/modules/openide/util/LazyMutexImplementation
 x {  | "(Ljava/util/concurrent/Callable;)V	  ~   EVENT Lorg/openide/util/Mutex; Code LineNumberTable LocalVariableTable this MethodParameters (Ljava/lang/Object;)V lock Ljava/lang/Object; &(Lorg/openide/util/Mutex$Privileged;)V 
privileged #Lorg/openide/util/Mutex$Privileged; E(Lorg/openide/util/Mutex$Privileged;Ljava/util/concurrent/Executor;)V executor Ljava/util/concurrent/Executor; 3(Lorg/openide/util/Mutex$Action;)Ljava/lang/Object; ex !Lorg/openide/util/MutexException; action Lorg/openide/util/Mutex$Action; LocalVariableTypeTable $Lorg/openide/util/Mutex$Action<TT;>; StackMapTable 	Signature ?<T:Ljava/lang/Object;>(Lorg/openide/util/Mutex$Action<TT;>;)TT; (Lorg/openide/util/Mutex$ExceptionAction; -Lorg/openide/util/Mutex$ExceptionAction<TT;>; 
Exceptions H<T:Ljava/lang/Object;>(Lorg/openide/util/Mutex$ExceptionAction<TT;>;)TT; Ljava/lang/Runnable; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; run <clinit> c Ljava/util/concurrent/Callable; KLjava/util/concurrent/Callable<Lorg/openide/util/spi/MutexImplementation;>; 
SourceFile 
Mutex.java InnerClasses 
Privileged ª Gorg/netbeans/modules/openide/util/DefaultMutexImplementation$Privileged ¬ &org/openide/util/Mutex$ExceptionAction ExceptionAction ¯ org/openide/util/Mutex$Action Action 1            s t                P     *· +¸ 	*+µ ±              
                                    A     	*+¸ · ±       
              	       	                  6     *¸ · ±       
    £  ¤                    L     *· *+¸ !¸ 'µ ±           ©  ª  «                                 W     *· *+¸ !,¸ +µ ±           »  ¼  ½                             	        2            *´ +¹ . °M» 6Y8· :,¶ =¶ AÀ 6¿    
  4         Ç  È  É                                           K 4             2 3     Q     *´ +¹ . °           è                                   4             2 G     C     *´ +¹ E ±       
    ò 
 ó                          J            *´ +¹ H °M» 6Y8· :,¶ =¶ AÀ 6¿    
  4         ý  þ  ÿ                                           K 4              J 3     Q     *´ +¹ H °                                             4              J G     C     *´ +¹ K ±       
   $ 
%                          O P     4     
*´ ¹ M ¬          9        
      S P     4     
*´ ¹ Q ¬          E        
      X Y     H     T½ Y*´ ¹ V S¸ Z°          K M K                      b G     C     *´ +¹ ` ±       
   a 
b                            e G     C     *´ +¹ c ±       
   r 
s                             ¡      n     &¶ f¸ k³ q» uY· wK» Y» xY*· z· ³ }±           Y  }   %         ¢ £          ¢ ¤    ¥    ¦ §   *  "  ¨  ©  ¨ 	 «  ­	 u       ®  °	