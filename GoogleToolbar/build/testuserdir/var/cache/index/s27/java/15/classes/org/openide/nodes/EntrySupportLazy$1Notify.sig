����   4 N	      *org/openide/nodes/EntrySupportLazy$1Notify this$0 $Lorg/openide/nodes/EntrySupportLazy;
  	 
   java/lang/Object <init> ()V	      "org/openide/nodes/EntrySupportLazy internal -Ljava/util/concurrent/atomic/AtomicReference;
      +java/util/concurrent/atomic/AtomicReference get ()Ljava/lang/Object;  'org/openide/nodes/EntrySupportLazyState
     changeInited ,(Z)Lorg/openide/nodes/EntrySupportLazyState;
    ! " 
access$000 y(Lorg/openide/nodes/EntrySupportLazy;Lorg/openide/nodes/EntrySupportLazyState;Lorg/openide/nodes/EntrySupportLazyState;)V	  $ % & LOCK Ljava/lang/Object;
  ( ) * isInited ()Z
  , - . changeThread =(Ljava/lang/Thread;)Lorg/openide/nodes/EntrySupportLazyState; 0 java/lang/IllegalStateException
 / 	
  3 4  	notifyAll 6 java/lang/Runnable P(Lorg/openide/nodes/EntrySupportLazy;Lorg/openide/nodes/EntrySupportLazyState;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/nodes/EntrySupportLazy$1Notify; old )Lorg/openide/nodes/EntrySupportLazyState; s MethodParameters run StackMapTable D java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile EntrySupportLazy.java EnclosingMethod K * 	checkInit InnerClasses Notify      5         7  8   s     *+� *� +� � � N+--� � �    9       a 	 b  c  d :   *     ; <            = >    ? >  @   	 � =    A   8   �     L*� � #YL�*� � � � M,� '� *� ,,� +� � � /Y� 1�*� � #� 2+ç N+�-��  
 C F   F I F    9   "    h 
 i  j  k / n 7 p A q K r :      ) ? >    L ; <   B    � /  �      C�  E     F    G    H I     J L   
     M  