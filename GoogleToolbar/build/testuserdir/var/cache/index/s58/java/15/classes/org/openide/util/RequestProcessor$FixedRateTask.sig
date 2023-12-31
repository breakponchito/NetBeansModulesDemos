Źžŗ¾   4 
      3org/openide/util/RequestProcessor$TaskFutureWrapper <init> (Ljava/lang/Runnable;JJ)V  java/lang/Object
  
   ()V	      /org/openide/util/RequestProcessor$FixedRateTask runLock Ljava/lang/Object;	     timeLock  java/lang/Long       	     start J	      firstRun Z
 " # $ % & java/lang/System currentTimeMillis ()J	  ( ) * toRun Ljava/lang/Runnable; , - . /  java/lang/Runnable run 1 java/lang/RuntimeException
  3 4 5 cancel (Z)Z
  7 8  
reschedule	  : ;  initialDelay	  = >  period	  @ A B runCount I	  D E  nextRunTime
 G H I J K java/lang/Math max (JJ)J	  M N O 	cancelled +Ljava/util/concurrent/atomic/AtomicBoolean;
 Q R S T U )java/util/concurrent/atomic/AtomicBoolean get ()Z
 W X Y Z [ java/lang/Thread currentThread ()Ljava/lang/Thread;
 W ] ^ U isInterrupted	  ` a b t (Lorg/openide/util/RequestProcessor$Task;
 d e f g h &org/openide/util/RequestProcessor$Task schedule (J)V
  j k U isCancelled’’’’’’’
 G o p K min	 r s t u v java/util/concurrent/TimeUnit MILLISECONDS Ljava/util/concurrent/TimeUnit;
 r x y z convert #(JLjava/util/concurrent/TimeUnit;)J Code LineNumberTable LocalVariableTable this 1Lorg/openide/util/RequestProcessor$FixedRateTask; MethodParameters e Ljava/lang/RuntimeException; StackMapTable  java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; interval canContinue getDelay "(Ljava/util/concurrent/TimeUnit;)J delay unit 
SourceFile RequestProcessor.java InnerClasses  !org/openide/util/RequestProcessor TaskFutureWrapper FixedRateTask Task 0                 A B    E         @            {        +*+ · *» Y· 	µ *» Y· 	µ * µ *µ ±    |          % * }   *    + ~      + / *    + ;     + >       /   ;   >    /   {       O*“   *“ YLĀ*ø !µ *µ +Ć§ M+Ć,æ*“ YLĀ*“ '¹ + +Ć§ N+Ć-æ§ L*¶ 2W+æ*· 6±        "    + 6 9   9 < 9   $ > A 0  |   :        $ + 4 >£ A  B” H¢ J¤ N„ }     B       O ~       - ’      ś ’      ś B 0          8   {   	    h*“ YNĀ**“ *“ 9*“ <*“ ?iaaµ C*Y“ ?`µ ?	*“ Cø !eø F@-Ć§ 
:-Ćæ*“ L¶ P ø V¶ \ § > *“ _¶ c±   8 ;   ; ? ;    |   & 	  Ŗ « ¬ )­ 6® BÆ [° _± g³ }   *  6       h ~    B &    [         & ’ ;       ’     @ü      {   Ļ     7*¶ i  l­*“ Y:Ā	*“ Cø !eø nAĆ§ :Ćæ+ ² q¶ w­   # &   & + &    |      · ø » ¼  ½ .¾ }   *          7 ~      7  v  . 	       & ’    r     ’    r                               
     d   