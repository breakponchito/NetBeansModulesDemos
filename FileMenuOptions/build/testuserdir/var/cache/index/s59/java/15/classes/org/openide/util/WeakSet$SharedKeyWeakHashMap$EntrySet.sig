����   4 �
      6org/openide/util/WeakSet$SharedKeyWeakHashMap$EntrySet <init> 2(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;)V	   	 
 this$0 /Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;
      java/util/AbstractSet ()V  ;org/openide/util/WeakSet$SharedKeyWeakHashMap$EntryIterator
     N(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;Lorg/openide/util/WeakSet$1;)V  java/util/Map$Entry     getKey ()Ljava/lang/Object;
       -org/openide/util/WeakSet$SharedKeyWeakHashMap getEntry I(Ljava/lang/Object;)Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry;
 " # $ % & 3org/openide/util/WeakSet$SharedKeyWeakHashMap$Entry equals (Ljava/lang/Object;)Z
  ( )   removeMapping
  + , - size ()I
  / 0  clear 2 java/util/ArrayList
  +
 1 5  6 (I)V
  8 9 : iterator ()Ljava/util/Iterator; < = > ? @ java/util/Iterator hasNext ()Z < B C  next E 9org/openide/util/WeakSet$SharedKeyWeakHashMap$SimpleEntry
 D G  H (Ljava/util/Map$Entry;)V J K L M & java/util/List add
  O P Q deepCopy ()Ljava/util/List; J S T U toArray ()[Ljava/lang/Object; J W T X (([Ljava/lang/Object;)[Ljava/lang/Object; Code LineNumberTable LocalVariableTable this 8Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$EntrySet; LocalVariableTypeTable @Lorg/openide/util/WeakSet$SharedKeyWeakHashMap<TK;TV;>.EntrySet; MethodParameters 	Signature 5()Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; contains o Ljava/lang/Object; e Ljava/util/Map$Entry; 	candidate 5Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry; Ljava/util/Map$Entry<TK;TV;>; =Lorg/openide/util/WeakSet$SharedKeyWeakHashMap$Entry<TK;TV;>; StackMapTable remove list Ljava/util/List; /Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>; 1()Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>; a [Ljava/lang/Object; [TT;  <T:Ljava/lang/Object;>([TT;)[TT; x0 x1 Lorg/openide/util/WeakSet$1; 6Ljava/util/AbstractSet<Ljava/util/Map$Entry<TK;TV;>;>; 
SourceFile WeakSet.java InnerClasses � org/openide/util/WeakSet SharedKeyWeakHashMap EntrySet EntryIterator � org/openide/util/WeakSet$1 � java/util/Map Entry SimpleEntry 0      	 
   
     Y   F     
*+� *� �    Z      � [       
 \ ]   ^       
 \ _   `    	  9 :  Y   I     � Y*� � �    Z      � [        \ ]   ^        \ _   a    b c     d    e &  Y   �     .+� � �+� M*� ,�  � N-� -,� !� � �    Z      � � 	� � � [   *    . \ ]     . f g     h i    j k  ^        . \ _      h l    j m  n    	� "  "@ `    f   c     d    o &  Y   b     *� +� '� � �    Z      � [        \ ]      f g  ^        \ _   n    @ `    f   c     d    , -  Y   D     *� � *�    Z      � [        \ ]   ^        \ _   c     d    0   Y   H     *� � .�    Z   
   � � [        \ ]   ^        \ _   c     d    P Q  Y   �     8� 1Y*� 3� 4L*� 7M,� ; � ,� A � N+� DY-� F� I W���+�    Z      � � $� 3� 6� [      $  h i    8 \ ]    , p q  ^      $  h l    8 \ _    , p r  n    �  J <� $ a    s  T U  Y   F     
*� N� R �    Z      � [       
 \ ]   ^       
 \ _   c     d    T X  Y   [     *� N+� V �    Z      � [        \ ]      t u  ^        \ _      t v  `    t   a    w c     d       Y   V     *+� �    Z      � [         \ ]      x 
     y z  ^        \ _    a    { |    } ~   :    �    �    �  �      � �	 "  �  D  � 