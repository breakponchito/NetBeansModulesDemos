����   4 /
      java/lang/Object <init> ()V
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  org/openide/LifecycleManager
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;  $org/openide/LifecycleManager$Trivial
  
     exit  'java/lang/UnsupportedOperationException
   Code LineNumberTable LocalVariableTable this Lorg/openide/LifecycleManager;  ()Lorg/openide/LifecycleManager; lm StackMapTable saveAll (I)V status I MethodParameters markForRestart 
Exceptions 
SourceFile LifecycleManager.java InnerClasses Trivial!               3     *� �       
                    	  !     ^     � � � K*� � Y� K*�           -  /  0  3        "     #    �   $          %     =     *� �       
    J  K                 & '  (    &    )      2     � Y� �           T              *       +    , -   
    . 