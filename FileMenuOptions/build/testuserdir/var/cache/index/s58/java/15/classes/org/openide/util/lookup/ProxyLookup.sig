����   4y
      #org/openide/util/lookup/ProxyLookup convertResult P(Lorg/openide/util/lookup/ProxyLookup$R;)Lorg/openide/util/lookup/ProxyLookup$R;
   	 
 unregisterTemplate %(Lorg/openide/util/Lookup$Template;)V
      org/openide/util/Lookup <init> ()V	      9org/openide/util/lookup/ProxyLookup$ImmutableInternalData EMPTY ;Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;
     setLookupsNoFire X([Lorg/openide/util/Lookup;Z)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;	     data
  
   ! " # $ .org/openide/util/lookup/ProxyLookup$Controller setProxyLookup ((Lorg/openide/util/lookup/ProxyLookup;)V & java/lang/StringBuilder
 %  ) ProxyLookup(class=
 % + , - append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 / 0 1 2 3 java/lang/Object getClass ()Ljava/lang/Class;
 % 5 , 6 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; 8 )->
  : ; < getData =()Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;
  > ? @ 
getLookups (Z)[Lorg/openide/util/Lookup;
 B C D E F java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 % H I J toString ()Ljava/lang/String; L java/util/IdentityHashMap
 K  O P Q R S java/util/Collection iterator ()Ljava/util/Iterator; U V W X Y java/util/Iterator hasNext ()Z U [ \ ] next ()Ljava/lang/Object; _ ` a b c java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; _ e f g keySet ()Ljava/util/Set;
  i j k 
setLookups <(Ljava/util/concurrent/Executor;[Lorg/openide/util/Lookup;)V
  m n o setData �(Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;[Lorg/openide/util/Lookup;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Collection; _ q r g entrySet t P u java/util/Set w java/util/Map$Entry v y z ] getKey | org/openide/util/Lookup$Result v ~  ] getValue � org/openide/util/LookupListener
 { � � � removeLookupListener $(Lorg/openide/util/LookupListener;)V
 { � � � addLookupListener � java/util/ArrayList
 �  � java/lang/ref/Reference
 � � � ] get � %org/openide/util/lookup/ProxyLookup$R
 � � � � collectFires (Ljava/util/Collection;)V � +org/openide/util/lookup/ProxyLookup$1Notify
 � �  � =(Lorg/openide/util/lookup/ProxyLookup;Ljava/util/ArrayList;)V
 � � �  run � � � � � java/util/concurrent/Executor execute (Ljava/lang/Runnable;)V
  � � 
 beforeLookup �  org/openide/util/Lookup$Template
 � �  � (Ljava/lang/Class;)V
  � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object;
  � � � 
lookupItem B(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Item;
  � � � 
findResult �(Lorg/openide/util/lookup/ProxyLookup;[Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;Lorg/openide/util/Lookup$Template;)Lorg/openide/util/lookup/ProxyLookup$R;
  � � � removeTemplate �(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/Lookup$Template;)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;	  � � � $assertionsDisabled Z
 � � � � � java/lang/Thread 	holdsLock (Ljava/lang/Object;)Z � java/lang/AssertionError
 � 
 � � � � � java/util/Collections 	emptyList ()Ljava/util/List;
  � � Y isEmpty
  � n � >(Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;)V
  � � � 
references ()Ljava/util/Collection;
  � � � getLookupsList
  � � � identityHashSet '(Ljava/util/Collection;)Ljava/util/Set; t � � � 	removeAll (Ljava/util/Collection;)Z
 � � � � lookupChange �(Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;[Lorg/openide/util/Lookup;Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
 � � � � 
access$002 �(Lorg/openide/util/lookup/ProxyLookup$R;Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;
 � � � � Y java/lang/Class desiredAssertionStatus ([Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/util/lookup/ProxyLookup; lookups [Lorg/openide/util/Lookup; MethodParameters 3(Lorg/openide/util/lookup/ProxyLookup$Controller;)V 
controller 0Lorg/openide/util/lookup/ProxyLookup$Controller; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value LeakingThisInConstructor Ljava/lang/Override; ()[Lorg/openide/util/Lookup; StackMapTable java/lang/Throwable Lorg/openide/util/Lookup; current Ljava/util/Collection; map Ljava/util/Map; LocalVariableTypeTable 1Ljava/util/Collection<Lorg/openide/util/Lookup;>; :Ljava/util/Map<Lorg/openide/util/Lookup;Ljava/lang/Void;>; 	Signature ](Ljava/util/Collection<Lorg/openide/util/Lookup;>;)Ljava/util/Set<Lorg/openide/util/Lookup;>; newData arr orig e Ljava/util/Map$Entry; r 'Lorg/openide/util/lookup/ProxyLookup$R; ref Ljava/lang/ref/Reference; notifyIn Ljava/util/concurrent/Executor; toRemove toAdd evAndListeners Ljava/util/ArrayList; n -Lorg/openide/util/lookup/ProxyLookup$1Notify; ZLjava/util/Collection<Ljava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>;>; XLjava/util/Map$Entry<Lorg/openide/util/Lookup$Result;Lorg/openide/util/LookupListener;>; *Lorg/openide/util/lookup/ProxyLookup$R<*>; BLjava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>; RLjava/util/Map<Lorg/openide/util/Lookup$Result;Lorg/openide/util/LookupListener;>; )Ljava/util/ArrayList<Ljava/lang/Object;>; � template "Lorg/openide/util/Lookup$Template; %Lorg/openide/util/Lookup$Template<*>; ((Lorg/openide/util/Lookup$Template<*>;)V &(ZLorg/openide/util/Lookup$Template;)V call )(ZLorg/openide/util/Lookup$Template<*>;)V tmpLkps o Ljava/lang/Object; i I clazz Ljava/lang/Class; TT; Ljava/lang/Class<TT;>; 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; Lorg/openide/util/Lookup$Item; #Lorg/openide/util/Lookup$Item<TT;>; 'Lorg/openide/util/Lookup$Template<TT;>; b<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Item<TT;>; k<T:Ljava/lang/Object;>(Lorg/openide/util/lookup/ProxyLookup$R;)Lorg/openide/util/lookup/ProxyLookup$R<TT;>; 	unchecked D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result; res <[Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData; newR ,Lorg/openide/util/lookup/ProxyLookup$R<TT;>; d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; id previous removed Ljava/util/Set; 
currentSet newL *Ljava/util/Set<Lorg/openide/util/Lookup;>;U(Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;[Lorg/openide/util/Lookup;Ljava/util/Map<Lorg/openide/util/Lookup$Result;Lorg/openide/util/LookupListener;>;Ljava/util/Map<Lorg/openide/util/Lookup$Result;Lorg/openide/util/LookupListener;>;)Ljava/util/Collection<Ljava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>;>; 
access$400 J(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/Lookup$Template;)V x0 x1 
access$500 <clinit> 
SourceFile ProxyLookup.java InnerClasses R Template ImmutableInternalData 
Controller Entry Result Notify_ org/openide/util/Lookup$Item Itemb +org/openide/util/lookup/ProxyLookup$LazySet LazySete ,org/openide/util/lookup/ProxyLookup$LazyList LazyListh 2org/openide/util/lookup/ProxyLookup$LazyCollection LazyCollectionk 5org/openide/util/lookup/ProxyLookup$EmptyInternalData EmptyInternalDatan 4org/openide/util/lookup/ProxyLookup$RealInternalData RealInternalDataq 6org/openide/util/lookup/ProxyLookup$SingleInternalData SingleInternalDatat .org/openide/util/lookup/ProxyLookup$WeakResult 
WeakResultw +org/openide/util/lookup/ProxyLookup$WeakRef WeakRef !           � �    �  �  �   M     *� *� +� � �    �       9  :  ; �        � �      � �  �    �     �  �   F     
*� +*� �    �       L  M 	 N �       
 � �     
 � �  �    �   �     �  [ s     �   >     *� *� � �    �       U  V  W �        � �   ! I J  �   T     *� %Y� '(� **� .� 47� **� 9� =� A� 4� G�    �       [ �       * � �   �        ?  �   n     *YL�*� 9� =+ðM+�,�             �       c  d  e �        � �      �    /   � �  �   �     7� KY� MM+� N N-� T � -� Z � :,� ^ W���,� d �    �       i  j # k - l 0 m �   *  # 
 �    7 � �     7	   /
        7   /
     �  _ U�   �         � j �  �   ?     *+� h�    �   
    �  � �        � �      � �  �    �   � j k  �  [    ,� KY� M:� KY� M:*Y:
�*� 9:	*� 9,� :*� 9� 
ñ*,� lN
ç :
��� p � s :

� T � )
� Z � v:� x � {� } � �� ����� p � s :

� T � )
� Z � v:� x � {� } � �� ���ӻ �Y� �:
-� N :� T � (� Z � �:� �� �:� 

� ���Ի �Y*
� �:+� � �� +� � �   4 G   5 D G   G L G    �   j    � 	 �  �  �  � ( � 1 � 5 � A � O � s � � � � � � � � � � � � � � � � � � � � � �# �+ � �   �  (    A 	   *  	 s   �   �   �    , � �    ,   , � �  O �	  	#    O �  	 � X 
  !    \ 	 A "  s #  � #  � $  � %  O �"  	#&  &  � X' 
   � � 5   �(     _ _  /   �    �(     _ _  / �  
  �( O    _ _   �  U� /�  U� /�  � U+� �  � �   	   �    � 
  �   G      �    �       �        � �     )*        )+  �   )     ,   �-  �   k     
� *,� ��    �      
  	 �        
 � �     
. �    
)*        
)+     	 �   	.  )     /  � �  �  &     F*� �Y+� �� �*YN�*� 9� =M-ç 
:-��>,�� ,2+� �:� ������        "     �   * 
      % - 6 ; > D �   >   0 �  6 12  ' 34    F � �     F56  % !0 �      6 17    F58    . �    �  / �    �(  � �  �   5     9  � �  �       ?*+� �*YN�*� 9� =M-ç 
:-��>,�� ,2+� �:� ������  	           �   * 
  $ ' 	( ) + &, /. 4/ 7+ =3 �   >   0 �  / 1:    34    ? � �     ?)*   !0 �      / 1;    ?)<    . �    �  / �    �(  � �  �   )     = �       
    �   ,     *�    �      8 �          �        > �     �  [ s?  �@  �   �     7*YM�� YSN*� 9*-+� �:*-2*� 9� =� lW,ð:,��   / 0   0 4 0    �      < = > ? +@ 0A �   *   #AB   C    7 � �     7)*       CD    7)<     � 0   � /  �   )     E  	 
  �   �     2*YM�*� 9N-� ,ñ*-*+� �*� 9� =� lW,ç 
:,���    *    ' *   * . *    �      G H 	I J L %M 1N �      	 F     2 � �     2)*        2)+    ! �  / �    � / �  �   )     ,  ; <  �   Q     � �� *� �� � �Y� ɿ*� �    �   
   Q R �        � �        n o  �  �    � �� *� �� � �Y� ɿ� �� +� � �Y� ɿ*� 9:+� � ʰ+� Й *+� Ӹ ʰ+� �:*� ڷ �:*,� A� �:*� �:	� � W	� ڹ � W� N :

� T � :
� Z � �:� �� �:� +,	-� �*� 9� ���� N :

� T � (
� Z � �:� �� �:� 
+� �W���*+� ��    �   n   Y Z '\ -^ 3_ 7b >c Ce Gh Mj Xk bl jm tn �p �q �r �s �t �z �{ �| �} �~ ��� �   �  �   � (  �   �     � �         �        - �G   M �	  X �HI  b �JI  j �KI 	   f 
 � $  � (%  � $  � %   &   &  M �"  X �HL  b �JL  j �KL 	   A 
�  � B   ( _ _  O t t t U  =� �  U+�  �              M  n �  �   >     *+� �    �   
   � � �        � �         �      NO  �   :     *+� �    �       2 �       P �     Q* R   �   /     *� �    �       2 �       P   S   �   4      � � � � ��    �       2    @ T   UV   �  � W  � X   Y   Z  v _[	 { \	 �  ]  ^ `	a c d f g i 
j l m o p r s u v x 