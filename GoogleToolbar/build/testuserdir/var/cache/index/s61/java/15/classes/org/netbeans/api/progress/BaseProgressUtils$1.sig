����   4 N	      -org/netbeans/api/progress/BaseProgressUtils$1 val$displayName Ljava/lang/String;	   	 
 val$ref -Ljava/util/concurrent/atomic/AtomicReference;	     val$operation ,Lorg/netbeans/api/progress/ProgressRunnable;
      java/lang/Object <init> ()V
      (org/netbeans/api/progress/ProgressHandle createHandle >(Ljava/lang/String;)Lorg/netbeans/api/progress/ProgressHandle;
     start
      switchToIndeterminate " # $ % & *org/netbeans/api/progress/ProgressRunnable run >(Lorg/netbeans/api/progress/ProgressHandle;)Ljava/lang/Object;
 ( ) * + , +java/util/concurrent/atomic/AtomicReference set (Ljava/lang/Object;)V
  . /  close 1 java/lang/Throwable
 0 3 4 5 addSuppressed (Ljava/lang/Throwable;)V 7 java/lang/Runnable n(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Lorg/netbeans/api/progress/ProgressRunnable;)V Code LineNumberTable LocalVariableTable this /Lorg/netbeans/api/progress/BaseProgressUtils$1; MethodParameters 	Signature handle *Lorg/netbeans/api/progress/ProgressHandle; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile BaseProgressUtils.java EnclosingMethod I +org/netbeans/api/progress/BaseProgressUtils K L showProgressDialogAndRun S(Lorg/netbeans/api/progress/ProgressRunnable;Ljava/lang/String;Z)Ljava/lang/Object; InnerClasses      6      	 
           8  9   >     *+� *,� *-� *� �    :       � ;        < =   >     	  ?      %   9   �     A*� � L+� +� *� *� +� ! � '+� +� -� M+� +� -� 	N,-� 2,��   ! , 0 1 5 8 0  :       �  �  �  � ! � , � @ � ;      8 @ A    A < =   B   ) � ,     0�     0  0�  C     D    E    F G    H J M   
        