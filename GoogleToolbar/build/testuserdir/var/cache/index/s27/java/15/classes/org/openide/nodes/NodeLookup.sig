����   4
      &org/openide/util/lookup/AbstractLookup <init> ()V  0org/openide/nodes/NodeLookup$AggregatingExecutor
  
   #(Lorg/openide/nodes/NodeLookup$1;)V	      org/openide/nodes/NodeLookup EXECUTOR 2Lorg/openide/nodes/NodeLookup$AggregatingExecutor;  java/util/ArrayList
  	     queriedCookieClasses Ljava/util/Collection;	     node Lorg/openide/nodes/Node;  )org/openide/nodes/CookieSetLkp$SimpleItem
     ! (Ljava/lang/Object;)V
  # $ % addPair 0(Lorg/openide/util/lookup/AbstractLookup$Pair;)V
 ' ( ) * + org/openide/nodes/CookieSet entryQueryMode %(Ljava/lang/Class;)Ljava/lang/Object;
 - . / 0 1 org/openide/nodes/Node 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 ' 3 4 5 exitQueryMode *(Ljava/lang/Object;)Ljava/util/Collection; 7 $org/openide/nodes/CookieSet$PairWrap
 6 9  : !(Lorg/openide/util/Lookup$Item;)V
 < = > ? @ java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set; B C D E F java/util/Collection addAll (Ljava/util/Collection;)Z B H I J iterator ()Ljava/util/Iterator; L M N O P java/util/Iterator hasNext ()Z L R S T next ()Ljava/lang/Object; V +org/openide/util/lookup/AbstractLookup$Pair X Y Z [ \ java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; ^ java/lang/Class
 ] ` a b isAssignableFrom (Ljava/lang/Class;)Z X d e f put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 h i j k l  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;
 - n o p blockEvents ()Ljava/util/Set;
  r s t blockingBeforeLookup (Ljava/lang/Class;)V
 - v w x unblockEvents (Ljava/util/Set;)V z java/lang/Object
 ' | } T entryAllClassesMode  org/openide/nodes/Node$Cookie
 ' � � @ exitAllClassesMode � H � java/util/Set
  � � t updateLookupAsCookiesAreChanged B � � � contains (Ljava/lang/Object;)Z B � � � add � java/util/LinkedHashSet B � � � size ()I
 � �  � (I)V � java/util/LinkedHashMap
 � 
  �  � (Ljava/util/Collection;)V
  H
  � � � 	addCookie Q(Lorg/openide/nodes/Node;Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Map;)V � !org/openide/nodes/NodeLookup$1Cmp
 � �  � 0(Lorg/openide/nodes/NodeLookup;Ljava/util/Map;)V
 < � � � sort )(Ljava/util/List;Ljava/util/Comparator;)V
  � � � setPairs	  � � � NO_COOKIE_CHANGE Ljava/lang/ThreadLocal;
 � � � [ T java/lang/ThreadLocal
 � � � ! set
  � � � 8(Ljava/util/Collection;Ljava/util/concurrent/Executor;)V
 �  	Signature 1Ljava/lang/ThreadLocal<Lorg/openide/nodes/Node;>; )Ljava/util/Collection<Ljava/lang/Class;>; (Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/NodeLookup; n MethodParameters fake Ljava/lang/Class; res Ljava/lang/Object; pairs p -Lorg/openide/util/lookup/AbstractLookup$Pair; orig +Lorg/openide/nodes/CookieSetLkp$SimpleItem; oldClazz c 
collection fromPairToClass Ljava/util/Map; prev LocalVariableTypeTable 3Ljava/lang/Class<+Lorg/openide/nodes/Node$Cookie;>; ELjava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair;>; ?Lorg/openide/nodes/CookieSetLkp$SimpleItem<Ljava/lang/Object;>; Ljava/lang/Class<*>; OLjava/util/Map<Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/lang/Class;>; StackMapTable � java/lang/Throwable �(Lorg/openide/nodes/Node;Ljava/lang/Class<*>;Ljava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair;>;Ljava/util/Map<Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/lang/Class;>;)V beforeLookup %(Lorg/openide/util/Lookup$Template;)V template "Lorg/openide/util/Lookup$Template; type nds Ljava/util/Set; )Ljava/util/Set<Lorg/openide/nodes/Node;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; all it Ljava/util/Iterator; "Ljava/util/Set<Ljava/lang/Class;>; 'Ljava/util/Iterator<Ljava/lang/Class;>; (Ljava/lang/Class<*>;)V nodePair 	instances fromPairToQueryClass toAdd m list Ljava/util/List; ELorg/openide/nodes/CookieSetLkp$SimpleItem<Lorg/openide/nodes/Node;>; ?Ljava/util/List<Lorg/openide/util/lookup/AbstractLookup$Pair;>; � java/util/List <clinit> 
SourceFile NodeLookup.java InnerClasses AggregatingExecutor org/openide/nodes/NodeLookup$1 org/openide/nodes/CookieSetLkp 
SimpleItem Pair Cookie PairWrap org/openide/util/Lookup$Item org/openide/util/Lookup Item Template Cmp 0       � �  �    �          �    �         �  �   u     -*� *� Y� 	� *� Y� � *+� *� Y+� � "�    �       9  -  0  ;   < , = �       - � �     - �   �    �   
 � �  �  �  
   �+� &:+:*� ,:� 2:� :� 2:�� 5� �� Y� :� -� 
:� � 6Y� 8:� ;:,� A W� G :� K � 7� Q � U:-� W � ]:		� +	� _� -+� c W��ű             �   Z    K  O 	 P  R  S  R $ S ' U , V 1 W 2 Z = \ E ] L _ W a ^ d g e � f � g � h � j � k �   �  	  � �   
 � �    �   I  � �  = ! � �  W  � �  �  � � 	 � % � �    �       � � �    � �     � � �  ' � � �  $ � �    � � �  �   R  	  � �    � �  = ! � �  �  � � 	   � � �    � � �    � � �  $ � � �  �   ^ 
�   - ] B X   y  ��   - ] B X y B y  
�  � 
 U� �  L� 0 U ]� 	�  �       �   �   �   �    �  � �  �   �     +� gM� mN*,� q-� u� :-� u��  	           �   "    r  s 	 u  w  x  w  x  y �   *     � �      � �    � �  	  � �  �     	  � �  �    �    h ] �  � �    �   �     �    s t  �  �     w+y� aN� {N*� ~� ,:-� �M� :-� �M�,� � :� K � � Q � ]:*� ����*� ~� � � 	*~� �*� +� � � *+� ��        !     �   J    |    �  �  �  �  � & � ) � 1 � ; � G � M � P � ^ � d � q � v � �   H    � �  G  � �  & > � �   \ � �  1 3 � �    w � �     w � �  �   *    � �  & > � �  1 3 � �    w � �  �   4 �    ]  y  �� 	   ] � y  �  L�  �    �   �    �  � t  �    	  *Y:�+� *� +� � � ñ*� +� � W� �Y*� � � � �M� �Y� �N� Y*� � �� �:� Y*� � :,� � W--� c Wç :��� K � � Q � ]:*� ,-� ����-:� Y,� �:� �Y*� �� �+� *� �� :� �� �� -:� �*� � �**� � �� �� �� :� �� ���    u    r u   u z u   � � �   � � �    �   v    �  � 	 �  �  � % � 6 � > � N � [ � d � o � } � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   �  [  � �  6 ? �   > 7 � �  N ' � �  �  � �  � , �     � �     � �  } � �   } � � �  } � � �  � ^ � �  � T � �  �   \ 	 [  � �  6 ? � �  > 7 � �  N ' � �  } � � �  } � � �  } � � �  � ^ � �  � T � �  �   a �    ]    y  
� O ��    ] B X L  #� ( X �� )   ] B X L X � -  ��  �    �    �   �   #      � �Y� �� ��    �       ,  �       J 	   
       U 	 ~ -		 6 '
 	 h  �    