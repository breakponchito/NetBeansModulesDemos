����   4 B
      java/lang/ref/ReferenceQueue <init> ()V  'java/lang/UnsupportedOperationException
    "java/lang/IllegalArgumentException  Negative timeout value
 
    (Ljava/lang/String;)V
      java/lang/Thread currentThread ()Ljava/lang/Thread;
      2org/openide/util/lookup/implspi/ActiveQueue$Daemon 
access$000 6()Lorg/openide/util/lookup/implspi/ActiveQueue$Daemon;  java/lang/InterruptedException
  
  ! " # remove (J)Ljava/lang/ref/Reference;
  % " & ()Ljava/lang/ref/Reference; ( 0org/openide/util/lookup/implspi/ActiveQueue$Impl Code LineNumberTable LocalVariableTable this 2Lorg/openide/util/lookup/implspi/ActiveQueue$Impl; poll 	Signature /()Ljava/lang/ref/Reference<Ljava/lang/Object;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; timeout J StackMapTable 
Exceptions MethodParameters 1(J)Ljava/lang/ref/Reference<+Ljava/lang/Object;>; 0()Ljava/lang/ref/Reference<+Ljava/lang/Object;>; 2Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>; 
SourceFile ActiveQueue.java InnerClasses ? +org/openide/util/lookup/implspi/ActiveQueue Daemon Impl 0 '            )   3     *� �    *   
    3  4 +        , -    . &  )   2     � Y� 	�    *       8 +        , -   /    0 1     2    " #  )   u     '	�� � 
Y� �� � � � Y� �*�  �    *       =  >  ?  @ ! C +       ' , -     ' 3 4  5     6     
  7    3   /    8 1     2    " &  )   Q     � � � � Y� �*� $�    *       H 	 I  L +        , -   5     6      /    9 1     2    /    : ;    < =      > @  ' > A 