����   4
      <org/netbeans/modules/openide/util/NbMutexEventProvider$Event <init> ()V
   	 java/lang/Object
      javax/swing/SwingUtilities isEventDispatchThread ()Z
     doEvent (Ljava/lang/Runnable;)V
     doEventAccess <(Lorg/openide/util/Mutex$ExceptionAction;)Ljava/lang/Object;
     doEventRequest  EVENT - Full JRE
     !  java/awt/EventQueue isDispatchThread # $ % &  java/lang/Runnable run
 ( ) * + , org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;   . & / C(Lorg/openide/util/Lookup;Ljava/lang/Runnable;)Ljava/lang/Runnable;
  1 2  invokeLater  .
   6 7 8 & 9 &org/openide/util/Mutex$ExceptionAction ()Ljava/lang/Object; ; java/lang/RuntimeException = java/lang/Exception ? org/openide/util/MutexException
 > A  B (Ljava/lang/Exception;)V D +java/util/concurrent/atomic/AtomicReference
 C  G )java/util/concurrent/atomic/AtomicBoolean
 F  J Gorg/netbeans/modules/openide/util/NbMutexEventProvider$Event$1AWTWorker
 I L  M �(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/openide/util/Lookup;Ljava/util/concurrent/atomic/AtomicReference;Lorg/openide/util/Mutex$ExceptionAction;Ljava/util/concurrent/atomic/AtomicBoolean;)V
  O P  invokeAndWait
 F R S T set (Z)V V java/lang/InterruptedException
 X Y Z [ \ org/openide/util/Union2 createSecond -(Ljava/lang/Object;)Lorg/openide/util/Union2;
 C ^ S _ (Ljava/lang/Object;)V a +java/lang/reflect/InvocationTargetException
 C c d 9 get f java/lang/IllegalStateException h java/lang/StringBuilder
 g  k 8#210991: got neither a result nor an exception; started=
 g m n o append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 g q n r -(Ljava/lang/Object;)Ljava/lang/StringBuilder; t 
 finished= v 	 invoked=
 g x y z toString ()Ljava/lang/String;
 e |  } (Ljava/lang/String;)V
 X  �  hasFirst
 X � � 9 first
 X � � 9 second � java/lang/Throwable
  � � � notifyException 8(Ljava/lang/Throwable;)Lorg/openide/util/MutexException;
 � � � � � org/openide/util/BaseUtilities getOperatingSystem ()I
 � � � � � java/lang/Thread currentThread ()Ljava/lang/Thread;
  � � � getClass ()Ljava/lang/Class;
 � � � � z java/lang/Class getName � EventDispatchThread
 � � � � � java/lang/String indexOf (Ljava/lang/String;)I
  � � � unfoldInvocationTargetException D(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Throwable; � java/lang/Error
  � � � annotateEventStack (Ljava/lang/Throwable;)V
 > � � � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;
 ` � � � getTargetException ()Ljava/lang/Throwable;
 � � � � � org/openide/util/lookup/Lookups executeWith 0(Lorg/openide/util/Lookup;Ljava/lang/Runnable;)V � (org/openide/util/spi/MutexImplementation Code LineNumberTable LocalVariableTable this >Lorg/netbeans/modules/openide/util/NbMutexEventProvider$Event; isReadAccess #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; isWriteAccess writeAccess runnable Ljava/lang/Runnable; MethodParameters action (Lorg/openide/util/Mutex$ExceptionAction; LocalVariableTypeTable -Lorg/openide/util/Mutex$ExceptionAction<TT;>; 
Exceptions 	Signature H<T:Ljava/lang/Object;>(Lorg/openide/util/Mutex$ExceptionAction<TT;>;)TT; 
readAccess postReadRequest postWriteRequest inherit Lorg/openide/util/Lookup; StackMapTable e Ljava/lang/RuntimeException; Ljava/lang/Exception; w ILorg/netbeans/modules/openide/util/NbMutexEventProvider$Event$1AWTWorker;  Ljava/lang/InterruptedException; -Ljava/lang/reflect/InvocationTargetException; Ljava/lang/Throwable; res -Ljava/util/concurrent/atomic/AtomicReference; started +Ljava/util/concurrent/atomic/AtomicBoolean; finished invoked _res Lorg/openide/util/Union2; bLjava/util/concurrent/atomic/AtomicReference<Lorg/openide/util/Union2<TT;Ljava/lang/Throwable;>;>; 3Lorg/openide/util/Union2<TT;Ljava/lang/Throwable;>; dispatch Z t exc !Lorg/openide/util/MutexException; ret lambda$doEventRequest$1 lambda$doEvent$0 =(Lorg/netbeans/modules/openide/util/NbMutexEventProvider$1;)V x0 :Lorg/netbeans/modules/openide/util/NbMutexEventProvider$1; 
SourceFile NbMutexEventProvider.java BootstrapMethods �
  "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; 
  � �

  � � InnerClasses 6org/netbeans/modules/openide/util/NbMutexEventProvider Event org/openide/util/Mutex ExceptionAction 	AWTWorker 8org/netbeans/modules/openide/util/NbMutexEventProvider$1 %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles Lookup 0    �        �   /     *� �    �       0 �        � �    �   �   .     � 
�    �       4 �        � �   �     �    �   �   .     � 
�    �       9 �        � �   �     �    �   �   =     +� �    �   
    >  ? �        � �      � �  �    �   �     �    �   �   K     +� �    �       C �        � �      � �  �        � �  �     > �    �   �    � �     �    �   �   =     +� �    �   
    H  I �        � �      � �  �    �   �     �    �   �   K     +� �    �       M �        � �      � �  �        � �  �     > �    �   �    � �     �    �   �   =     +� �    �   
    R  S �        � �      & �  �    &   �     �    �   �   =     +� �    �   
    W  X �        � �      & �  �    &   �     �    y z  �   -     �    �       \ �        � �   �     �   
    �   l     � � *� " � � 'L+*� -  � 0�    �       `  a  c  d  h �      
 � �     & �   �     �    &   
    �   K     � 'L+*� 3  � 0�    �       n  o  r �        & �     � �  �    &   
    �  u     ޸ 4� *� 5 �L+�L� >Y+� @�� CY� EL� FY� HM� FY� HN� FY� H:� ':� IY,+*-� K:� N� Q� :+� W� ]� :+� W� ]+� b� X:� 1� eY� gY� ij� l,� ps� l-� pu� l� p� w� {�� ~� 	� ��� �� �:� :� 	� :�� ��     :    < @ Z ] U @ Z k `  �   v    y  {  |  }  ~    � " � * � 2 � ; � @ � O � T � Z � ] � _ � h � k � m � v �  � � � � � � � � � � � � � � � �   �    � �   	 � �  O  � �  _ 	 � �  m 	 � �  �  � �    � & �   " � � �  * � � �  2 � � �  ; � � �  @ � � �   _ � �  �        � & �   " � � �   _ � �  �   9 	M :B <	� B  6 C F F F (  UM `
� ; X�  � �     > �    &  �    � 
 !   �   n     )� ;� "� �� � �� �� ��� �� � ;�    �       �  �  � ' � �      % � �   �   	 � %@  
 � �  �   �     C*� `� *� `� �K*� �� *� �*� ��*� :� *� �*� :�� >Y*� <� @L+*� �W+�    �   .    �  �  �  �  �  � & � * � / � ; � A � �       C � �   ;  � �  �     �    �   
 � �  �   +      �    �       � �        � �   �    �   
 � �  �   t     *� �L+� `� +� `K� K*���+�    �       �  �  �  �  �  � �        � �     � �  �   
  �  � �    �  
 � �  �   >     *+� ��    �   
    p  q �        � �      & � 
 � �  �   >     *+� ��    �   
    e  f �        � �      & �    �  �   9     *� �    �       0 �        � �      � �   �    � �     �  � 	   *    6	 I         