����   4 U	      /org/openide/util/lookup/ArrayStorage$1JustPairs this$0 &Lorg/openide/util/lookup/ArrayStorage;	   	 
 val$all Ljava/util/Enumeration;	     	val$clazz Ljava/lang/Class;
      java/lang/Object <init> ()V	     next -Lorg/openide/util/lookup/AbstractLookup$Pair;      java/util/Enumeration hasMoreElements ()Z    ! " nextElement ()Ljava/lang/Object; $ +org/openide/util/lookup/AbstractLookup$Pair
 # & ' ( 
instanceOf (Ljava/lang/Class;)Z
  * + , findNext /()Lorg/openide/util/lookup/AbstractLookup$Pair; .  java/util/NoSuchElementException
 - 
  1 ! , 	Signature 2Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>; Q(Lorg/openide/util/lookup/ArrayStorage;Ljava/util/Enumeration;Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/util/lookup/ArrayStorage$1JustPairs; MethodParameters ok Z o Ljava/lang/Object; StackMapTable 4()Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked r LocalVariableTypeTable ]Ljava/lang/Object;Ljava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; 
SourceFile ArrayStorage.java EnclosingMethod L $org/openide/util/lookup/ArrayStorage N O lookup *(Ljava/lang/Class;)Ljava/util/Enumeration; InnerClasses 	JustPairs S &org/openide/util/lookup/AbstractLookup Pair            2    3 	 
               4  5   H     *+� *,� *-� *� �    6       � 7        8 9         :    � 	  2      + ,  5   �     ^*� � *� �*� �  � �*� �  L+� #� !*� � +� #*� � %� � =� =*� 
+� #� � ���    6   * 
   �  �  �  �  � $ � + � I � K � [ � 7   *  F  ; <  $ 7 = >  K  ; <    ^ 8 9   ?   + 
 � % @� K �        # 2    @ A     B  C[ s D     5   B     *� )� � �    6       � 7        8 9   ?    @  ! ,  5   |     *� )L+� � -Y� /�*� +�    6       �  � 	 �  �  � 7        8 9     E   F       E 3  ?    �  # 2    @A ! "  5   /     *� 0�    6       � 7        8 9    2    G H    I J    K M P        Q   # R T	