����   4 3  org/openide/util/Exceptions	      org/openide/util/Exceptions$1 val$localizedMessage Ljava/lang/String;
 
     java/util/ResourceBundle <init> ()V  msg
      java/lang/String equals (Ljava/lang/Object;)Z
      org/openide/util/Enumerations 	singleton +(Ljava/lang/Object;)Ljava/util/Enumeration; (Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this Lorg/openide/util/Exceptions$1; MethodParameters handleGetObject &(Ljava/lang/String;)Ljava/lang/Object; key StackMapTable getKeys ()Ljava/util/Enumeration; 	Signature -()Ljava/util/Enumeration<Ljava/lang/String;>; 
SourceFile Exceptions.java EnclosingMethod 0 1 attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable; InnerClasses    
                 4     
*+� *� 	�           L         
 ! "   #      $ %     U     +� � *� ��           N 	 O  Q          ! "      &   '     #    &    ( )     0     � �           V          ! "   *    +  ,    - .     / 2   
        