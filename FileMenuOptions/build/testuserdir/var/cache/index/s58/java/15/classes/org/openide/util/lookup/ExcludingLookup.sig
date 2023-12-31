����   4 �
      org/openide/util/Lookup <init> ()V	  	 
   'org/openide/util/lookup/ExcludingLookup delegate Lorg/openide/util/Lookup;  java/lang/NullPointerException
  	     classes Ljava/lang/Object;  java/lang/StringBuilder
    ExcludingLookup: 
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
     -(Ljava/lang/Object;)Ljava/lang/StringBuilder; !  excludes: 
  #  $ ()[Ljava/lang/Class;
 & ' ( ) * java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
  , - . toString ()Ljava/lang/String;
 0 1 2 3 4  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;
  6 7 8 &areSubclassesOfThisClassAlwaysExcluded (Ljava/lang/Class;)Z	  : ;  EMPTY
  = > ? lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;	  A B C results 4Lorg/openide/util/lookup/ExcludingLookup$WeakResult;
 E F G H I 2org/openide/util/lookup/ExcludingLookup$WeakResult 
access$000 O(Lorg/openide/util/lookup/ExcludingLookup$WeakResult;)Ljava/lang/ref/Reference;
 K L M N O java/lang/ref/Reference get ()Ljava/lang/Object; Q )org/openide/util/lookup/ExcludingLookup$R
 E S T U 
access$100 j(Lorg/openide/util/lookup/ExcludingLookup$WeakResult;)Lorg/openide/util/lookup/ExcludingLookup$WeakResult;
 E W X Y 
access$102 �(Lorg/openide/util/lookup/ExcludingLookup$WeakResult;Lorg/openide/util/lookup/ExcludingLookup$WeakResult;)Lorg/openide/util/lookup/ExcludingLookup$WeakResult;
 P [ \ ] 
access$200 O(Lorg/openide/util/lookup/ExcludingLookup$R;)Lorg/openide/util/Lookup$Template;
 0 _ ` a equals (Ljava/lang/Object;)Z
 P c d e 
access$300 a(Lorg/openide/util/lookup/ExcludingLookup$R;)Lorg/openide/util/lookup/ExcludingLookup$WeakResult;
 P g  h n(Lorg/openide/util/lookup/ExcludingLookup;Lorg/openide/util/Lookup$Template;Lorg/openide/util/Lookup$Result;)V
  j > k %(Ljava/lang/Class;)Ljava/lang/Object;
  m n o isObjectAccessible '(Ljava/lang/Class;Ljava/lang/Object;I)Z
  q r s 
lookupItem B(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Item;
 u v w x 8 java/lang/Class isAssignableFrom z [Ljava/lang/Class;
 u | } 4 getSuperclass
   � � isAccessible 7([Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z
 u � � $ getInterfaces
  � n � 9([Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z
 � � � � 4 java/lang/Object getClass � org/openide/util/Lookup$Item
 � 1 � java/lang/IllegalStateException � Type: 
  �  � (I)Ljava/lang/StringBuilder;
 � �  � (Ljava/lang/String;)V � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � O next � � � a add 	Signature 7Lorg/openide/util/lookup/ExcludingLookup$WeakResult<*>; .(Lorg/openide/util/Lookup;[Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable c Ljava/lang/Class; this )Lorg/openide/util/lookup/ExcludingLookup; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; old  Lorg/openide/util/Lookup$Result; res +Lorg/openide/util/lookup/ExcludingLookup$R; r prev template "Lorg/openide/util/Lookup$Template; ret LocalVariableTypeTable %Lorg/openide/util/Lookup$Result<TT;>; .Lorg/openide/util/lookup/ExcludingLookup$R<*>; 'Lorg/openide/util/Lookup$Template<TT;>; 0Lorg/openide/util/lookup/ExcludingLookup$R<TT;>; � java/lang/Throwable d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; clazz Ljava/lang/Class<TT;>; TT; 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; retValue Lorg/openide/util/Lookup$Item; #Lorg/openide/util/Lookup$Item<TT;>; b<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Item<TT;>; i I arr Ljava/lang/Class<*>; [Ljava/lang/Class<*>; (Ljava/lang/Class<*>;)Z ()[Ljava/lang/Class<*>; barriers from to 
interfaces @([Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)Z type item filter h([Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;ILjava/util/Collection;)Ljava/util/Collection; it Ljava/util/Iterator; Ljava/util/Collection; 	prototype TE; Ljava/util/Iterator<TE;>; i<E:Ljava/lang/Object;T::Ljava/util/Collection<TE;>;>([Ljava/lang/Class<*>;Ljava/lang/Class<*>;TT;ITT;)TT; 
SourceFile ExcludingLookup.java InnerClasses Template � org/openide/util/Lookup$Result Result 
WeakResult R Item 0                 B C  �    �     �  �   �     H*� *+� ,N-�66� -2:� � Y� �����,�� *,2� � *,� �    �   * 
   0  1 	 3  4 $ 5 , 3 2 8 8 9 B ; G = �   *    � �    H � �     H      H  z  �    �     y y  �  �   	        - .  �   P     &� Y� � *� �  � *� "� %� � +�    �       A �       & � �   �     �    > ?  �  #  	   �+� � Y� �*+� /� 5� � 9+� <�M*YN�*� @::� W� D� J� P:� "� � R� VW� $*� R� @� +� Z� ^� :-ð:� R:���,� ,� b*� @� VW*,� b� @,-ð-ç 
:-��� PY*+*� +� <� fM��`  % x �   y � �   � � �   � � �    �   j    E  F  I  K  N ! P % Q + R . S 3 T @ U E V J W X Y d \ p ^ t _ y b } c � d � e � f � g � h � j � k �   H  t  � �  @ D � �  + x � C  . u � C    � � �     � � �  ! � � �  �   >  t  � �  @ D � �  + x � �  . u � �    � � �  ! � � �  �   + �  P�  � E E� ) P� � D ��  �    �   �    �  > k  �   �     !*+� 5� �*� +� iM*+,� l� ,��    �       q  r 
 u  w  x  z �        ! � �     ! � �    �   �       ! � �    � �  �   	 
�  � �    �   �    �  r s  �   �     '*+� /� 5� �*� +� pM*+� /,� l� ,��    �       �  �  �  � # � % � �        ' � �     ' � �    � �  �       ' � �    � �  �   	 �  � �    �   �    � �     �    7 8  �   �     !*� "M>,�� ,2+� t� ������    �       �  �  �  �  �  � �   *    � �    ! � �     ! � �    � z  �       ! � �    � �  �    �  y�  �    �   �    �   $  �   \     !*� � y� *� � y�� uY*� � uS�    �       � 
 �  � �       ! � �   �     �    � 
 � �  �  <     _,� +,� t� �>*�� ,*2� �����+,� �*+,� {� ~� �,� �N6-�� *+-2� ~� ������    �   B    �  �  �  �  �  � % � * � , � 8 � : � ? � I � U � W � ] � �   >    � �  B  � �    _ � z     _ � �    _ � �  ?   � z  �        _ � �     _ � �    _ � �  �    
� � �  y�  �    �   �   �   �    �  n o  �   j     ,� �*� "+,� ��    �       �  �  � �   *     � �      � �     �      � �  �     �    �   �   �    n �  �   �     `,� ��   >             #   -*+,� �� ~�*+,� u� ~�,� �:*+� �� ~�� �Y� Y� �� � �� +� ��    �   "    �  �  �   � * � 4 � : � E � �   4  :  � �    ` � z     ` � �    ` �     ` � �  �    		 �    �   �   �   �    � �  �  m  	   T:-� � :� � � 6� � :+,� �� ���:���� � � W���� � -�    �   2    �     * / 3 6 ; E H �   \ 	  ' �    = � �    T � �     T � z    T � �    T � �    T � �    T � �   Q � �  �   H   ' � �   = � �    T � �    T � �    T � �    T � �   Q � �  �    �  ��  �� * �� � 	@ � �    �   �   �   �   �   �    �  �    � �   *  0  �  �  �	 E  �  P  �  �  �	