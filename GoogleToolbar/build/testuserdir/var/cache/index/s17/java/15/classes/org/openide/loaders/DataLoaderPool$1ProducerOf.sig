����   4 ?	      .org/openide/loaders/DataLoaderPool$1ProducerOf this$0 $Lorg/openide/loaders/DataLoaderPool;	   	 
 	val$clazz Ljava/lang/Class;
      java/lang/Object <init> ()V
      org/openide/loaders/DataLoader getRepresentationClass ()Ljava/lang/Class;
      java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
      process X(Lorg/openide/loaders/DataLoader;Ljava/util/Collection;)Lorg/openide/loaders/DataLoader; " 'org/openide/util/Enumerations$Processor 8(Lorg/openide/loaders/DataLoaderPool;Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/loaders/DataLoaderPool$1ProducerOf; MethodParameters 	Signature dl  Lorg/openide/loaders/DataLoader; ignore Ljava/util/Collection; StackMapTable <(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object; }Ljava/lang/Object;Lorg/openide/util/Enumerations$Processor<Lorg/openide/loaders/DataLoader;Lorg/openide/loaders/DataLoader;>; 
SourceFile DataLoaderPool.java EnclosingMethod 6 "org/openide/loaders/DataLoaderPool 8 9 producersOf *(Ljava/lang/Class;)Ljava/util/Enumeration; InnerClasses 
ProducerOf = org/openide/util/Enumerations 	Processor      !  	 
           #  $   C     *+� *,� *� �    %      { &        ' (         )   	 � 	 *          $   _     *� +� � � +� �    %      } &         ' (      + ,     - .  /    @  )   	 +   -  A  0  $   4     
*+� ,� �    %      { &       
 ' (   )   	 +  -   *    1 2    3 4    5 7 :        ;   ! < >	