����   4 �	      5org/openide/nodes/FilterNode$FilterLookup$ProxyResult this$0 +Lorg/openide/nodes/FilterNode$FilterLookup;
  	 
   org/openide/util/Lookup$Result <init> ()V	     template "Lorg/openide/util/Lookup$Template;
      )org/openide/nodes/FilterNode$FilterLookup 	checkNode ()Lorg/openide/util/Lookup;
     updateLookup (Lorg/openide/util/Lookup;)Z	     delegate  Lorg/openide/util/Lookup$Result;
    ! " allItems ()Ljava/util/Collection;
  $ % & removeLookupListener $(Lorg/openide/util/LookupListener;)V
 ( ) * + , org/openide/util/Lookup lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
 . / 0 1 2  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;
  4 5 6 
access$600 K(Lorg/openide/nodes/FilterNode$FilterLookup;)Lorg/openide/nodes/FilterNode;
 8 9 : ; 2 java/lang/Object getClass
 = > ? @ A java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z C D E F G java/util/Collection isEmpty ()Z
 . I J K getId ()Ljava/lang/String;
 . M N O getInstance ()Ljava/lang/Object;
  Q R S 
access$700 H(Ljava/lang/String;Ljava/lang/Object;)Lorg/openide/util/Lookup$Template;
  U V & addLookupListener C X Y Z equals (Ljava/lang/Object;)Z	  \ ] ^ 	listeners %Ljavax/swing/event/EventListenerList; ` #javax/swing/event/EventListenerList
 _ 	 c org/openide/util/LookupListener
 _ e f g add -(Ljava/lang/Class;Ljava/util/EventListener;)V
 _ i j g remove
  l m n checkResult "()Lorg/openide/util/Lookup$Result;
  p q " allInstances
  s t A 
access$800 v java/util/ArrayList C x y z size ()I
 u |  } (I)V C  � � iterator ()Ljava/util/Iterator; � � � � G java/util/Iterator hasNext � � � O next
  � � � 
access$900 b(Lorg/openide/nodes/FilterNode$FilterLookup;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object; � � � f Z java/util/List � D
 = � � Z 
isInstance
 = � � � cast &(Ljava/lang/Object;)Ljava/lang/Object;
  � � � 
allClasses ()Ljava/util/Set;
 _ � � � getListenerList ()[Ljava/lang/Object; � org/openide/util/LookupEvent
 � �  � #(Lorg/openide/util/Lookup$Result;)V b � � � resultChanged !(Lorg/openide/util/LookupEvent;)V 	Signature 'Lorg/openide/util/Lookup$Template<TT;>; %Lorg/openide/util/Lookup$Result<TT;>; P(Lorg/openide/nodes/FilterNode$FilterLookup;Lorg/openide/util/Lookup$Template;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/nodes/FilterNode$FilterLookup$ProxyResult; LocalVariableTypeTable <Lorg/openide/nodes/FilterNode$FilterLookup$ProxyResult<TT;>; MethodParameters *(Lorg/openide/util/Lookup$Template<TT;>;)V '()Lorg/openide/util/Lookup$Result<TT;>; l Lorg/openide/util/Lookup; oldPairs Ljava/util/Collection; newPairs <Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; StackMapTable � java/lang/Throwable !Lorg/openide/util/LookupListener; o Ljava/lang/Object; ll Ljava/util/List; c TT; Ljava/util/List<TT;>; Ljava/util/Collection<+TT;>; ()Ljava/util/Collection<+TT;>; *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; i I anEvent Lorg/openide/util/LookupEvent; [Ljava/lang/Object; ev � \<T:Ljava/lang/Object;>Lorg/openide/util/Lookup$Result<TT;>;Lorg/openide/util/LookupListener; 
SourceFile FilterNode.java InnerClasses � org/openide/nodes/FilterNode FilterLookup ProxyResult Result Template � org/openide/util/Lookup$Item Item 0    b      �    �     �    �  ] ^       	    �  �   g     *+� *� *,� �    �      v 	w x �        � �         �        � �       �  �   	     �    �  m n  �   Q     **� � � W*� �    �   
   }  �        � �   �        � �   �    �     �  z     �*� � *� � � M*YN�*� � *� *� #*+*� � '� *� � -*� � 3� 7� <� +*� � � B � *+*� � H*� � L� P� '� *� *� T-ç 
:-��,� �*� � N,-� W � � �   { ~   ~ � ~    �   6   � � � � &� 2� X� q� y� �� �� �� �� �   *    � � �     � � �   � � �  �  � �  �        � � �    � � �  �  � �  �   # 	@ C�  C 8� JL �� �  C@ �    �   ! V &  �   x     *� [� *� _Y� a� [*� [b+� d�    �      � � � � �        � �      � �  �        � �   �     �    �   ! % &  �   i     *� [� *� [b+� h�    �      � � � �        � �      � �  �        � �   �     �    �    q "  �  e     �*� k� oL*� � -� r� �� uY+� w � {M+� ~ N-� � � %-� � :,*� *� � -� �� � W���,� � � J*� � -*� � 3� �� 6*� � L� *� � L*� � 3� ,*� � -*� � 3� �� � W,�+�    �   .   � � � #� ;� R� U� r� �� �� �� �   *  ;  � �  # � � �    � � �    � � �  �   *  ;  � �  # � � �    � � �    � � �  �    � * C � �� *7�  �    �  � �  �   D     *� k� ��    �      � �        � �   �        � �   �    � �     �    ! "  �   D     *� k� �    �      � �        � �   �        � �   �    � �     �    � �  �       C*� [M,� �,� �N-�� �� �Y*� �:-�d6� -2� b:� � �����    �   2   � � 	� 
� � � � � *� 3� <� B� �   H  3 	 � �  %  � �    C � �     C � �   > � ^   4 ] �   $ � �  �       C � �   �    � 
 _� 
 ��  ��  �    �    �    � �    � �   *   � �    �   ( �	 . ( �  � ( �	