����   4 9	      +org/openide/util/lookup/implspi/ActiveQueue activeReferenceQueue 2Lorg/openide/util/lookup/implspi/ActiveQueue$Impl;	   	 
 LOGGER Ljava/util/logging/Logger;
      java/lang/Object <init> ()V  0org/openide/util/lookup/implspi/ActiveQueue$Impl
  
      2org/openide/util/lookup/implspi/ActiveQueue$Daemon ping
      java/lang/Class getName ()Ljava/lang/String;
   ! " # $ java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Code LineNumberTable LocalVariableTable this -Lorg/openide/util/lookup/implspi/ActiveQueue; queue  ()Ljava/lang/ref/ReferenceQueue; StackMapTable 	Signature 4()Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>; 
access$100 ()Ljava/util/logging/Logger; 
access$200 4()Lorg/openide/util/lookup/implspi/ActiveQueue$Impl; <clinit> 
SourceFile ActiveQueue.java InnerClasses Impl Daemon 1       	 
   
          %   /     *� �    &         '        ( )   ) * +  %   D      � � � Y� � � � �    &       *  +  ,  . ,     -    . / 0  %         � �    &        1 2  %         � �    &         3   %   $      � � � �    &       "  4    5 6       7    8 