����   4 A	      ,org/openide/ServiceType$Registry$1IsInstance this$0 "Lorg/openide/ServiceType$Registry;	   	 
 	val$clazz Ljava/lang/Class;
      java/lang/Object <init> ()V
      java/lang/Class 
isInstance (Ljava/lang/Object;)Z
     cast &(Ljava/lang/Object;)Ljava/lang/Object;  org/openide/ServiceType
      process J(Lorg/openide/ServiceType;Ljava/util/Collection;)Lorg/openide/ServiceType; " 'org/openide/util/Enumerations$Processor 6(Lorg/openide/ServiceType$Registry;Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable this .Lorg/openide/ServiceType$Registry$1IsInstance; MethodParameters 	Signature obj Lorg/openide/ServiceType; ignore Ljava/util/Collection; StackMapTable 4(Lorg/openide/ServiceType;Ljava/util/Collection;)TT; <(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object; YLjava/lang/Object;Lorg/openide/util/Enumerations$Processor<Lorg/openide/ServiceType;TT;>; 
SourceFile ServiceType.java EnclosingMethod 7  org/openide/ServiceType$Registry 9 : services *(Ljava/lang/Class;)Ljava/util/Enumeration; InnerClasses Registry 
IsInstance ? org/openide/util/Enumerations 	Processor      !  	 
           #  $   C     *+� *,� *� �    %       � &        ' (         )   	 � 	 *          $   f     *� +� � *� +� � � �    %       � &         ' (      + ,     - .  /    @  )   	 +   -   *    0A  1  $   4     
*+� ,� �    %       � &       
 ' (   )   	 +  -   *    2 3    4 5    6 8 ;     6  <	    =   ! > @	