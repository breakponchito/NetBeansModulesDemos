����   4 �	      1org/openide/windows/TopComponent$SynchronizeNodes this$0 "Lorg/openide/windows/TopComponent;
  	 
   java/lang/Object <init> ()V   org/openide/util/Lookup$Template  org/openide/nodes/Node
     (Ljava/lang/Class;)V
      org/openide/util/Lookup lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;	     res  Lorg/openide/util/Lookup$Result;
    ! " # org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
  % & ' resultChanged !(Lorg/openide/util/LookupEvent;)V	 ) * + , -  org/openide/windows/TopComponent LOG Ljava/util/logging/Logger;	 / 0 1 2 3 java/util/logging/Level FINE Ljava/util/logging/Level;
 5 6 7 8 9 java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z ; java/lang/StringBuilder
 : 	 > lookup changed for 
 : @ A B append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 : D A E -(Ljava/lang/Object;)Ljava/lang/StringBuilder; G  is visible: 
 ) I J K 	isVisible ()Z
 : M A N (Z)Ljava/lang/StringBuilder;
 : P Q R toString ()Ljava/lang/String;
 5 T U V fine (Ljava/lang/String;)V
 X Y Z [ K java/awt/EventQueue isDispatchThread
  ] ^  run
 X ` a b invokeLater (Ljava/lang/Runnable;)V d lookup changed exit 
  f g h allInstances ()Ljava/util/Collection; j setting nodes for  l  to  n o p q r java/util/Collection toArray (([Ljava/lang/Object;)[Ljava/lang/Object; t [Lorg/openide/nodes/Node;
 ) v w x 
access$500 >(Lorg/openide/windows/TopComponent;[Lorg/openide/nodes/Node;)V z setting nodes done for  | org/openide/util/LookupListener ~ java/lang/Runnable 	Signature :Lorg/openide/util/Lookup$Result<Lorg/openide/nodes/Node;>; >(Lorg/openide/windows/TopComponent;Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/windows/TopComponent$SynchronizeNodes; l Lorg/openide/util/Lookup; MethodParameters ev Lorg/openide/util/LookupEvent; Z StackMapTable nodes Ljava/util/Collection; LocalVariableTypeTable 1Ljava/util/Collection<+Lorg/openide/nodes/Node;>; 
SourceFile TopComponent.java InnerClasses SynchronizeNodes Template Result      { }          �        �  �   l     (*+� *� *,� Y� � � *� *� *� $�    �      � 	� � "� '� �       ( � �     ( � �  �   	  �    & '  �   �     u� (� .� 4=� .� (� :Y� <=� ?*� � CF� ?*� � H� L� O� S*� � H� � W� 
*� \� *� _� � (� :Y� <c� ?*� � C� O� S�    �   & 	  � 
� � 9� I� P� T� X� t� �        u � �     u � �  
 k � �  �   	 � 9 �    �    ^   �   �     y� (� .� 4<*� � eM� (� (� :Y� <i� ?*� � Ck� ?,� C� O� S*� ,� � m � s� u� (� (� :Y� <y� ?*� � Ck� ?,� C� O� S�    �   "   � 
� � � ;� O� S� x� �        y � �   
 o � �   g � �  �      g � �  �   
 � ; n<  �    � �      ) �    �    �	