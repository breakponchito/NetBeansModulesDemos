����   4 Z
      java/util/concurrent/FutureTask <init> "(Ljava/util/concurrent/Callable;)V	  	 
   .org/openide/util/RequestProcessor$RPFutureTask runnable Ljava/lang/Runnable;  org/openide/util/Cancellable	     cancellable Lorg/openide/util/Cancellable;
     )(Ljava/lang/Runnable;Ljava/lang/Object;)V	     task (Lorg/openide/util/RequestProcessor$Task;
  
     set (Ljava/lang/Object;)V    ! " cancel ()Z
 $   % &org/openide/util/RequestProcessor$Task
  ' ! ( (Z)Z * 1org/openide/util/RequestProcessor$RunnableWrapper Code LineNumberTable LocalVariableTable this 0Lorg/openide/util/RequestProcessor$RPFutureTask; c Ljava/util/concurrent/Callable; LocalVariableTypeTable 5Lorg/openide/util/RequestProcessor$RPFutureTask<TT;>; $Ljava/util/concurrent/Callable<TT;>; StackMapTable 7 java/util/concurrent/Callable MethodParameters 	Signature '(Ljava/util/concurrent/Callable<TT;>;)V r result Ljava/lang/Object; TT; @ java/lang/Runnable B java/lang/Object (Ljava/lang/Runnable;TT;)V setTask +(Lorg/openide/util/RequestProcessor$Task;)V 4(Ljava/util/concurrent/Callable;Ljava/lang/Object;)V predefinedResult *(Ljava/util/concurrent/Callable<TT;>;TT;)V taskCancelled Z superCancel mayInterruptIfRunning #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getRunnable ()Ljava/lang/Runnable; o<T:Ljava/lang/Object;>Ljava/util/concurrent/FutureTask<TT;>;Lorg/openide/util/RequestProcessor$RunnableWrapper; 
SourceFile RequestProcessor.java InnerClasses V !org/openide/util/RequestProcessor RPFutureTask Task RunnableWrapper      )  D                     +   �     *+� *� *+� � 
+� � � �    ,        
  -        . /      0 1  2        . 3      0 4  5   % �    6  �     6    8    0   9    :      +   �     *+,� *+� *+� � 
+� � � �    ,      " # $ % -         . /      ;      < =  2        . 3      < >  5   + �    ? A  �     ? A    8   	 ;   <   9    C   D E  +   P     *+� �    ,   
   ( ) -        . /         2        . 3   8          F  +   w     *+� *,� �    ,      , - 
. -         . /      0 1     G =  2         . 3      0 4     G >  8   	 0   G   9    H  ! (  +   �     9*� � � *� �  =� !*� � #>*� &6� � � =�    ,      2 3 4 !5 (6 78 -   4  !  I J  (  K J    9 . /     9 L J   $ < J  2       9 . 3   5    H�  @�   8    L   M     N    O P  +   A     *� �    ,      = -        . /   2        . 3   M     N    9    Q R    S T      U W 
 $ U X  ) U Y
