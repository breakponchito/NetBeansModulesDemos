����   4 o	      :org/openide/util/WeakSet$SharedKeyWeakHashMap$HashIterator this$0 /Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;
  	 
   java/lang/Object <init> ()V	     entry 5Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;	     lastReturned
      -org/openide/util/WeakSet$SharedKeyWeakHashMap 
access$500 2(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;)I	     expectedModCount I	     ! nextKey Ljava/lang/Object;	  # $ ! 
currentKey
  & ' ( size ()I
  * + , 
access$600 g(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;)[Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;	  . /  index
 1 2 3 4 5 3org/openide/util/WeakSet$SharedKeyWeakHashMap$Entry get ()Ljava/lang/Object;
 1 7 8 9 
access$200 l(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;)Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry; ; )java/util/ConcurrentModificationException
 : 	
  > ? @ hasNext ()Z B  java/util/NoSuchElementException
 A 	 E java/lang/IllegalStateException
 D 	
  H I J remove &(Ljava/lang/Object;)Ljava/lang/Object; L java/util/Iterator 	Signature =Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry<TK;TV;>; 2(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;)V Code LineNumberTable LocalVariableTable this <Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$HashIterator; LocalVariableTypeTable ILorg/openide/util/WeakSet$SharedKeyWeakHashMap<TK;TV;>.HashIterator<TT;>; StackMapTable MethodParameters e i t 6[Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry; \ #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	nextEntry 7()Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry; ?()Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry<TK;TV;>; Ljava/lang/SuppressWarnings; value element-type-mismatch A<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Iterator<TT;>; 
SourceFile WeakSet.java InnerClasses k org/openide/util/WeakSet SharedKeyWeakHashMap HashIterator Entry     K   /        M    N     M    N         !    $ !           O  P   �     =*+� *� *� *� **� � � *� *� "*+� %� +� )�� � -�    Q   "   � 	� � � � #� (� <� R       = S T   U       = S V   W   # � 8     �        X      ? @  P       _*� � )L*� � Q*� M*� ->,� � +��2M���*,� *� -,� 
*� "�*,� 0� *� � **� � 6� ����    Q   B   � � � � � !� +� 0� 5� 9� >� @� H� O� Z� ]� R   *   F Y    A Z     _ S T    W [ \  U      F Y N    _ S V   W    �  ]�  1�  ^     _    ` a  P   �     Q*� � *� � � :Y� <�*� � *� =� � AY� C�**� � **� � 6� **� � "*� *� �    Q   & 	  � � � $� ,� 4� ?� G� L� R       Q S T   U       Q S V   W     M    b  I   P   �     G*� � � DY� F�*� � *� � � :Y� <�*� *� "� GW**� � � *� *� "�    Q   & 	  � � � � %� 1� <� A� F� R       G S T   U       G S V   W     ^     _   c  d[ s e  M    f g    h i      j l    m 1  n 