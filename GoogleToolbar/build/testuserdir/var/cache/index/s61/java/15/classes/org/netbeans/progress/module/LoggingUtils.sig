����   4 3
      java/lang/Thread currentThread ()Ljava/lang/Thread;
   	 
 getStackTrace  ()[Ljava/lang/StackTraceElement;
      java/lang/StackTraceElement getClassName ()Ljava/lang/String;  R(java|org[.]netbeans[.](api[.]progress|modules[.]progress|progress[.]module))[.].+
      java/lang/String matches (Ljava/lang/String;)Z
     toString  ???
    ! " # java/lang/Object <init> ()V % )org/netbeans/progress/module/LoggingUtils 
findCaller Code LineNumberTable LocalVariableTable line Ljava/lang/StackTraceElement; StackMapTable . [Ljava/lang/StackTraceElement; this +Lorg/netbeans/progress/module/LoggingUtils; 
SourceFile LoggingUtils.java ! $       	 &   '   }     /� � K*�<=� *2N-� � � -� ������    (          !  &  ,  )       * +  ,    �  -�   " #  '   /     *� �    (       ! )        / 0    1    2