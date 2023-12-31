����   4 �
      .org/openide/util/lookup/AbstractLookup$Content <init> "(Ljava/util/concurrent/Executor;)V
  	 
   java/lang/Object ()V	     notifyIn Ljava/lang/Object;	     al (Lorg/openide/util/lookup/AbstractLookup;
     getEarlyPairs ()Ljava/util/ArrayList;
     setPairs (Ljava/util/Collection;)V  java/lang/IllegalStateException  java/lang/StringBuilder
  	 " Trying to use content for 
  $ % & append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ( % ) -(Ljava/lang/Object;)Ljava/lang/StringBuilder; +  but it is already used for 
  - . / toString ()Ljava/lang/String;
  1  2 (Ljava/lang/String;)V
  4 5 6 getExecutor !()Ljava/util/concurrent/Executor; 8 java/lang/NullPointerException : BAdding a pair to Content not connected to Lookup is not supported!
 7 1
 = > ? @ A &org/openide/util/lookup/AbstractLookup addPair O(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/util/concurrent/Executor;)V C java/util/ArrayList
 B E  F (I)V
 B H I J add (Ljava/lang/Object;)Z
 = L M A 
removePair
 B O P J remove
 = R  S 8(Ljava/util/Collection;Ljava/util/concurrent/Executor;)V
 B U   W java/util/concurrent/Executor Y java/io/Serializable serialVersionUID J ConstantValue        Code LineNumberTable LocalVariableTable this 0Lorg/openide/util/lookup/AbstractLookup$Content; Ljava/util/concurrent/Executor; MethodParameters attachExecutor attach +(Lorg/openide/util/lookup/AbstractLookup;)V ep Ljava/util/ArrayList; LocalVariableTypeTable DLjava/util/ArrayList<Lorg/openide/util/lookup/AbstractLookup$Pair;>; StackMapTable 0(Lorg/openide/util/lookup/AbstractLookup$Pair;)V pair -Lorg/openide/util/lookup/AbstractLookup$Pair; a e 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; 	Signature 3(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;)V c Ljava/util/Collection; FLjava/util/Collection<+Lorg/openide/util/lookup/AbstractLookup$Pair;>; I(Ljava/util/Collection<+Lorg/openide/util/lookup/AbstractLookup$Pair;>;)V o F()Ljava/util/ArrayList<Lorg/openide/util/lookup/AbstractLookup$Pair;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked 
SourceFile AbstractLookup.java InnerClasses Content � +org/openide/util/lookup/AbstractLookup$Pair Pair !    X   Z [  \    ]      �     	     _   4     *� �    `   
   � � a        b c       _   F     
*� *+� �    `      � � 	� a       
 b c     
  d  e        f   _   >     *+� �    `   
   � � a        b c       d  e       0 g h  _   �     J*� � *+� *� M,� *� *,� � *� Y� Y�  !� #+� '*� #*� � '� ,� 0��    `   & 	  � � � � � � � "� I� a        i j    J b c     J    k       i l  m    & e        @ n  _   �     F*� M*� 3N,� -� ,� � 7Y9� ;�,+-� <� *� � *� BY� D� *� +� GW�    `   * 
  � � 
� � �  � )� 0� <� E� a   *    F b c     F o p   A q   
 < r d  k       F o s  m    �  = V e    o   t    u  M n  _   �     8*� M*� 3N,� -� ,+-� K� *� � *� BY� D� *� +� NW�    `   "   � � 
� � � "� .� 7  a   *    8 b c     8 o p   3 q   
 . r d  k       8 o s  m    �  = V e    o   t    u     _   �     (*� M*� 3N,� -� ,+-� Q� *� BY+� T� �    `        
	 
  ' a   *    ( b c     ( v w   # q   
  r d  k       ( v x  m    �  = V e    v   t    y     _   _     *� L+� B� 
+� B� �    `   
     a        b c     z   m    �  @ B t    { |     }  ~[ s   5 6  _   _     *� L+� V� 
+� V� �    `   
     a        b c     z   m    �  @ V  �    � �      = � 	 � = �	