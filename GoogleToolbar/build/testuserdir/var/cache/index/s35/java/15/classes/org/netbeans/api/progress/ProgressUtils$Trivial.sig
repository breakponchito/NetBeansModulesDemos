����   4 T
      /org/netbeans/api/progress/ProgressUtils$Trivial <init> ()V
   	 java/lang/Object
      javax/swing/SwingUtilities isEventDispatchThread ()Z	     WORKER #Lorg/openide/util/RequestProcessor;
      !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
      &org/openide/util/RequestProcessor$Task waitFinished   ! " #  java/lang/Runnable run % 'org/netbeans/api/progress/ProgressUtils
 ' ( ) * + java/lang/Class getName ()Ljava/lang/String;
  -  . (Ljava/lang/String;)V 0 3org/netbeans/modules/progress/spi/RunOffEDTProvider Code LineNumberTable LocalVariableTable this 1Lorg/netbeans/api/progress/ProgressUtils$Trivial; runOffEventDispatchThread W(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZII)V t (Lorg/openide/util/RequestProcessor$Task; 	operation Ljava/lang/Runnable; operationDescr Ljava/lang/String; cancelOperation +Ljava/util/concurrent/atomic/AtomicBoolean; waitForCanceled Z waitCursorAfter I dialogAfter StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; .(Lorg/netbeans/api/progress/ProgressUtils$1;)V x0 +Lorg/netbeans/api/progress/ProgressUtils$1; <clinit> 
SourceFile ProgressUtils.java InnerClasses Trivial Task S )org/netbeans/api/progress/ProgressUtils$1      /            1   /     *� �    2       3        4 5    6 7  1   �     � 
� � +� :� � 	+�  �    2            3   R    8 9     4 5      : ;     < =     > ?     @ A     B C     D C  E     F    :   <   >   @   B   D   G     H     I  1   9     *� �    2       3        4 5      J K   L   1   (      � Y$� &� ,� �    2        M    N O      $ P 
   Q  R    