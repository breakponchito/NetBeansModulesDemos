����   4d	      -org/openide/util/WeakSet$SharedKeyWeakHashMap table 6[Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;	   	 
 modCount I
     
unmaskNull &(Ljava/lang/Object;)Ljava/lang/Object;
     putIfAbsent ((Ljava/lang/Object;[Z)Ljava/lang/Object;
      java/util/AbstractMap <init> ()V  java/lang/ref/ReferenceQueue
  	     queue Ljava/lang/ref/ReferenceQueue;	  ! " # entrySet Ljava/util/Set;	  % & # keySet	  ( ) * values Ljava/util/Collection; , "java/lang/IllegalArgumentException . java/lang/StringBuilder
 -  1 Illegal Initial Capacity: 
 - 3 4 5 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 - 7 4 8 (I)Ljava/lang/StringBuilder;
 - : ; < toString ()Ljava/lang/String;
 + >  ? (Ljava/lang/String;)V@   
 B C D E F java/lang/Float isNaN (F)Z H Illegal Load factor: 
 - J 4 K (F)Ljava/lang/StringBuilder; M 3org/openide/util/WeakSet$SharedKeyWeakHashMap$Entry	  O P Q 
loadFactor F	  S T 
 	threshold?@  
  W  X (IF)V Z [ \ ] ^ java/util/Map size ()I
 ` a b c d java/lang/Math max (II)I
  f g h putAll (Ljava/util/Map;)V	  j k l NULL_KEY Ljava/lang/Object;
 n o p q r java/lang/Object equals (Ljava/lang/Object;)Z
  t u v poll ()Ljava/lang/ref/Reference;
 L x y z 
access$100 8(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;)I
  | } d indexFor
 L  � � 
access$200 l(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;)Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;
 L � � � 
access$202 �(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;)Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;	  � ] 

  � �  expungeStaleEntries
  [ � 'java/lang/UnsupportedOperationException
 � 
  � � � getEntry I(Ljava/lang/Object;)Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;
  � �  maskNull
 n � � ^ hashCode
  � � � hash (I)I
  � � � getTable 8()[Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;
 L � � � get ()Ljava/lang/Object;
  � � � eq '(Ljava/lang/Object;Ljava/lang/Object;)Z � use putIfAbsent instead
 � > � java/lang/Integer���
  � � � transfer o([Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;[Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;)V
  � � � resize (I)V Z � " � ()Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next � java/util/Map$Entry � � � � getKey � [Z
 � � � � � org/openide/util/WeakSet 
access$300
 L o
  � � � containsNullValue � 4org/openide/util/WeakSet$SharedKeyWeakHashMap$KeySet
 � �  � N(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;Lorg/openide/util/WeakSet$1;)V � 4org/openide/util/WeakSet$SharedKeyWeakHashMap$Values
 � � � 6org/openide/util/WeakSet$SharedKeyWeakHashMap$EntrySet
 � �
 L �  � i(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;)V
 n  DEFAULT_INITIAL_CAPACITY ConstantValue    MAXIMUM_CAPACITY DEFAULT_LOAD_FACTOR 	Signature >[Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry<TK;TV;>; #Ljava/lang/ref/ReferenceQueue<TK;>; .Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>; Ljava/util/Set<TK;>; Ljava/util/Collection<TV;>; Code LineNumberTable LocalVariableTable this /Lorg/openide/util/WeakSet$SharedKeyWeakHashMap; initialCapacity capacity LocalVariableTypeTable 7Lorg/openide/util/WeakSet$SharedKeyWeakHashMap<TK;TV;>; StackMapTable MethodParameters m Ljava/util/Map; Ljava/util/Map<+TK;+TV;>; (Ljava/util/Map<+TK;+TV;>;)V key -<K:Ljava/lang/Object;>(Ljava/lang/Object;)TK; x y h length 5Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry; i prev p e =Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry<TK;TV;>; @()[Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry<TK;TV;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value ReturnOfCollectionOrArrayField Ljava/lang/Override; isEmpty (Ljava/lang/Object;)TV; containsKey k tab index  Q(Ljava/lang/Object;)Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry<TK;TV;>; put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; TK; TV; (TK;TV;)TV; newCapacity oldTable oldCapacity newTable j src dest targetCapacity Ljava/util/Map$Entry; numKeysToBeAdded Ljava/util/Map$Entry<+TK;+TV;>; remove removeMapping o entry Ljava/util/Map$Entry<TK;TV;>; clear containsValue ks ()Ljava/util/Set<TK;>; ()Ljava/util/Collection; vs8 java/util/Collection ()Ljava/util/Collection<TV;>; es 0()Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>; refedKey modified 
(TK;[Z)TK; 
access$000 W(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;Ljava/lang/Object;[Z)Ljava/lang/Object; x0 x1 x2 
access$400 
access$500 2(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;)I 
access$600 g(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;)[Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry; <clinit> `<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/util/AbstractMap<TK;TV;>;Ljava/util/Map<TK;TV;>; 
SourceFile WeakSet.java InnerClasses SharedKeyWeakHashMap Entry KeySetR org/openide/util/WeakSet$1 Values EntrySetV ;org/openide/util/WeakSet$SharedKeyWeakHashMap$EntryIterator EntryIteratorY 9org/openide/util/WeakSet$SharedKeyWeakHashMap$KeyIterator KeyIterator\ ;org/openide/util/WeakSet$SharedKeyWeakHashMap$ValueIterator ValueIterator_ :org/openide/util/WeakSet$SharedKeyWeakHashMap$HashIterator HashIteratorb 9org/openide/util/WeakSet$SharedKeyWeakHashMap$SimpleEntry SimpleEntry 0    Z   � 
  �    �  � 
  �    @  � Q  �    U     �    �  ] 
    T 
    P Q       �    � B 	 
    k l   � " #  �    � � & #  �    � � ) *  �    � "   X  �  M     �*� *� Y� � *�  *� $*� '� � +Y� -Y� /0� 2� 6� 9� =�@� @<$�� 
$� A� � +Y� -Y� /G� 2$� I� 9� =�>� 
x>���*� L� *$� N*�$j�� R�    �   J   !   � � " "# =& C' F* S+ n. p/ u0 |2 �3 �4 �5 �   *    � � �     � � 
    � P Q  p # � 
  �       � � �   �    � =    �  �   	 �   P     �  �   R     *U� V�    �   
   ? @ �        � �      � 
  �        � �   �    �       �   �     4*� *� Y� � *�  *� $*� '*U� N*� R*� L� �    �   & 	  F   � � G $H *I 3J �       4 � �   �       4 � �     h  �   v     *+� Y �Un�`� _U� V*+� e�    �      W Y Z �        � �      � �  �        � �      �   �    �   �    
 �   �   C     *� 	� i� *�    �      g �        l   �    
@ n �      
    �   D     *� i� � *�    �      n �        l   �    @ n �      �     � �  �   S     *+� *+� m� � �    �      v �        l      l  �    @ �   	      } d  �   :     d~�    �      } �        
      
  �   	      �   �  �     w*� � s� LYL� j+� w=*� �� {>*� 2::� G� ~:+� /+� *� S� � �W+� �W*Y� �d� �� ::�������    �   N   � � � � &� *� /� 6� <� B� M� U� [� e� h� l� p� s� v� �   H  6 : �   _ 
   U	 
  & M
  * I    w � �    k  �   4  6 : �  & M
  * I    w � �    k  �   .  � )   L L L  � " L� 
   L    � �  �   I     	*� �*� �    �   
   � � �       	 � �   �       	 � �   �        [ s  ] ^  �   c     *� �� �*� �*� ��    �      � � 	� � �        � �   �        � �   �    	        �  �   T     *� �� � �    �      � �        � �   �        � �   �    @        �   �   N     � �Y� ��    �      � �        � �      l  �        � �   �      �           r  �   _     *+� �� � �    �      � �        � �      l  �        � �   �    @ �              � �  �       J+� �M,� �� �>*� �:�� {62:� "� w� ,� �� �� � ~:����    �   "   � � � � � #� =� G� �   H    J � �     J l   E l   = 
   7    . 
  # '  �        J � �    7 �  # '  �    � #   n n L  	 �      �      �   n     
� �Y�� ��    �       �        
 � �     
 l    
 l  �        
 � �     
    
  �   	     �             � �  �       U*� �M,�>@� 
*�� R�� L:*,� �*� *� �*� Rl� *�*� Nj�� R� *� �*,� �*,� �    �   :          " (% 5& D( H) O* T, �   4    U � �     U! 
   P"    M# 
   :$   �        U � �    P" �   :$ �  �    � � . �   !    � �  �  [     g>+�� a+2:+S� M� ~:� �:� � �W*Y� �d� �� � w,�� {6,2� �W,S:��������    �   B   0 1 2 3 4 5 $6 )7 08 =: I; S< Y> ]? `0 fA �   R  I 	 
   @ �  $ 9 l   S   d% 
    g � �     g&     g'   �       @ �   S    g � �   �    � �  L� + L n� �  �   	&  '    g h  �  a     �+� Y =� �*� R� =�*� Nnb�>@� @>*� �6� x6���*� �� 	*� �+� � � � N-� � � !-� � � �:*� � � η W��ܱ    �   B   M N O [ \ ] %^ (` /a 5b >d He Ni nj ~k �l �   >   /( 
  / ! 
  n )    � � �     � � �   {* 
  �      n +    � � �     � �   �    � � � � �  �� & �    �   �          ,   �  �  	   �+� �M,� �� �>*� �:�� {62::� [� ~:� w� @,� �� �� 4*Y� `� *Y� �d� �� S� � �W� а::����    �   N   � � � � � #� '� ,� 3� H� R� \� c� m� u� y� }� �� �� �   \ 	 3 N �    � � �     � l   � l   y 
   s    j	 
  # c
  ' _  �   4  3 N �    � � �    s �  # c
  ' _  �   ( � '   n n L L  � E L� 
 �      �           - �  �  �  
   �+� ɚ �*� �M+� �N-� � � �:� �� �6,�� {6,2::� W� ~:	� w� ;-� ՙ 2*Y� `� *Y� �d� �� ,	S� 	� �W�:	:����    �   Z   � � 	� � � � (� 1� 7� ;� @� G� Z� d� n� u� ~� �� �� �� �� �� �   f 
 G J � 	   � � �     �. l   �    �/)   x l  ( n 
  1 e	 
  7 _
  ; [  �   >  G J � 	   � � �    � �   �/0  7 _
  ; [  �   , 	� 1 	  n � n L L  � B L� 
 �   .   �    1   �   �     A*� � s� ���*Y� `� *� L=+�� +S����*� �*� � s� ����    �   & 	  � � � � $� (� .� 3� @� �       	 
    A � �    %   �       A � �   �     � �        2 r  �   b     +� *� ֬�    �      � � 	� �        � �      l  �        � �   �    	 �             � �  �   �     *� �L+�=��� +2N-� �����    �      � � � � � �   *      	 
     � �       �            � �     �  �    � � 
 L� �   & �  �   �     *� $L+� +� *� �Y*� �Z� $�    �   
     ! �        � �    3 #  �        � �    3 �  �    �  �M � �   4        )5  �   �     *� 'L+� +� *� �Y*� �Z� '�    �   
   U V �        � �    6 *  �        � �    6 �  �    � 7M7 �   9        " �  �   �     *�  L+� +� *� �Y*� �Z�  �    �   
   � � �        � �    : #  �        � �    : �  �    �  �M � �   ;        � �  �   E     ||��;|�|��    �   
   � � �        
   �          �  �  	   �+� �N-� �� �6*� �:�� {62:� -� w� � �:-� �� 	� �� ~:���*Y� `� 2:� LY-*� � �S*Y� �`Z� �*� R� *�h� �,� ,T-� �    �   N   � � � � � %� *� 4� ;� D� J� T� ^� e� z� �� �� �� �� �   \ 	 ; < l    � � �     � l    �= �   � l   � 
   �    �	 
  % }  �   4  ; <    � � �     �   �  % }  �   # � %   n � n L  $	� @ �   	  =   �   >?@  �   E     *+,� �    �       � �        A �     B l    C � D   �   /     *� �    �       � �       A l  EF  �   /     *� �    �       � �       A �  GH  �   /     *� �    �       � �       A �   I   �   #      � nY� � i�    �      a  �   JK   LM   b   �N  L O  � ZO	 � P Q     � S  � T U W X Z [ ] ^ `a c 