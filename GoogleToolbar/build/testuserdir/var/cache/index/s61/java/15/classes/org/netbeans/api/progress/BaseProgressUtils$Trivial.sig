����   4 L
      3org/netbeans/api/progress/BaseProgressUtils$Trivial <init> ()V
   	 java/lang/Object	      org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
     isReadAccess ()Z
      +org/netbeans/api/progress/BaseProgressUtils 
access$100 %()Lorg/openide/util/RequestProcessor;
      !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
 ! " # $  &org/openide/util/RequestProcessor$Task waitFinished & ' ( )  java/lang/Runnable run + 3org/netbeans/modules/progress/spi/RunOffEDTProvider Code LineNumberTable LocalVariableTable this 5Lorg/netbeans/api/progress/BaseProgressUtils$Trivial; runOffEventDispatchThread W(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZII)V 	operation Ljava/lang/Runnable; operationDescr Ljava/lang/String; cancelOperation +Ljava/util/concurrent/atomic/AtomicBoolean; waitForCanceled Z waitCursorAfter I dialogAfter StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 2(Lorg/netbeans/api/progress/BaseProgressUtils$1;)V x0 /Lorg/netbeans/api/progress/BaseProgressUtils$1; 
SourceFile BaseProgressUtils.java InnerClasses Trivial Task K -org/netbeans/api/progress/BaseProgressUtils$1      *        ,   /     *� �    -      % .        / 0    1 2  ,   �     � 
� � � +� �  � 	+� % �    -      ( 	* , . .   H     / 0      3 4     5 6     7 8     9 :     ; <     = <  >     ?    3   5   7   9   ;   =   @     A     B  ,   9     *� �    -      % .        / 0      C D   E    F G       H 
 !  I  J      