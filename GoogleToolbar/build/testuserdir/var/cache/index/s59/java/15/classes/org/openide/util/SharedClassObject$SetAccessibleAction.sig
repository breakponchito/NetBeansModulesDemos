����   4 -
      java/lang/Object <init> ()V	  	 
   6org/openide/util/SharedClassObject$SetAccessibleAction klass Ljava/lang/Class;
      "org/openide/util/SharedClassObject createInstancePrivileged 7(Ljava/lang/Class;)Lorg/openide/util/SharedClassObject;
     run &()Lorg/openide/util/SharedClassObject;  'java/security/PrivilegedExceptionAction 	Signature 8Ljava/lang/Class<+Lorg/openide/util/SharedClassObject;>; (Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable this 8Lorg/openide/util/SharedClassObject$SetAccessibleAction; LocalVariableTypeTable MethodParameters ;(Ljava/lang/Class<+Lorg/openide/util/SharedClassObject;>;)V 
Exceptions & java/lang/Exception ()Ljava/lang/Object; aLjava/lang/Object;Ljava/security/PrivilegedExceptionAction<Lorg/openide/util/SharedClassObject;>; 
SourceFile SharedClassObject.java InnerClasses SetAccessibleAction 0                         X     
*� *+� �          � � 	�        
        
    !       
    "           #        2     *� � �          �              $     %A  '     /     *� �          �              $     %      ( )    * +   
    , 