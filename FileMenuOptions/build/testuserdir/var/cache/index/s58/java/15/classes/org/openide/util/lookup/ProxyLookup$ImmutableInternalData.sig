����   4 �
      java/lang/Object <init> ()V  	 
   java/util/Map size ()I	      9org/openide/util/lookup/ProxyLookup$ImmutableInternalData 	EMPTY_ARR [Lorg/openide/util/Lookup;	     EMPTY ;Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;     entrySet ()Ljava/util/Set;       java/util/Set iterator ()Ljava/util/Iterator; " # $ % & java/util/Iterator next ()Ljava/lang/Object; ( java/util/Map$Entry * 6org/openide/util/lookup/ProxyLookup$SingleInternalData ' , - & getKey /  org/openide/util/Lookup$Template ' 1 2 & getValue 4 java/lang/ref/Reference
 ) 6  7 P(Ljava/lang/Object;Lorg/openide/util/Lookup$Template;Ljava/lang/ref/Reference;)V 9 4org/openide/util/lookup/ProxyLookup$RealInternalData
 8 ;  < $(Ljava/lang/Object;Ljava/util/Map;)V
  > ? @ 
getResults ()Ljava/util/Map;  B C D values ()Ljava/util/Collection;  F G H containsKey (Ljava/lang/Object;)Z J java/util/HashMap
 I L  M (Ljava/util/Map;)V
 I O P Q remove &(Ljava/lang/Object;)Ljava/lang/Object;
 3 S T & get
  V W & getRawLookups
  Y Z [ create ^(Ljava/lang/Object;Ljava/util/Map;)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;	  ] ^ _ $assertionsDisabled Z
 a b c d H java/lang/Thread 	holdsLock f java/lang/AssertionError
 e   i T Q k %org/openide/util/lookup/ProxyLookup$R
 m n o p q #org/openide/util/lookup/ProxyLookup 
access$500 P(Lorg/openide/util/lookup/ProxyLookup$R;)Lorg/openide/util/lookup/ProxyLookup$R;
 j s  t J(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/Lookup$Template;)V v java/lang/ref/SoftReference
 u x  y (Ljava/lang/Object;)V
 I { | } put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 j  � � 
access$002 �(Lorg/openide/util/lookup/ProxyLookup$R;Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;
  � � � 
getLookups (Z)[Lorg/openide/util/Lookup; � Cannot assign null delegate
 e x
 � �  � & clone
  � � � isEmpty ()Z � org/openide/util/Lookup
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 � � � � � java/lang/Class desiredAssertionStatus � 5org/openide/util/lookup/ProxyLookup$EmptyInternalData
 �  Code LineNumberTable LocalVariableTable this e Ljava/util/Map$Entry; lkp Ljava/lang/Object; results Ljava/util/Map; LocalVariableTypeTable {Ljava/util/Map$Entry<Lorg/openide/util/Lookup$Template;Ljava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>;>; uLjava/util/Map<Lorg/openide/util/Lookup$Template;Ljava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>;>; StackMapTable MethodParameters 	Signature �(Ljava/lang/Object;Ljava/util/Map<Lorg/openide/util/Lookup$Template;Ljava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>;>;)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData; w()Ljava/util/Map<Lorg/openide/util/Lookup$Template;Ljava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>;>; 
references \()Ljava/util/Collection<Ljava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>;>; removeTemplate �(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/Lookup$Template;)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData; c Ljava/util/HashMap; ref Ljava/lang/ref/Reference; proxy %Lorg/openide/util/lookup/ProxyLookup; template "Lorg/openide/util/Lookup$Template; yLjava/util/HashMap<Lorg/openide/util/Lookup$Template;Ljava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>;>; BLjava/lang/ref/Reference<Lorg/openide/util/lookup/ProxyLookup$R;>; 'Lorg/openide/util/Lookup$Template<TT;>; �<T:Ljava/lang/Object;>(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData; 
findResult �(Lorg/openide/util/lookup/ProxyLookup;[Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;Lorg/openide/util/Lookup$Template;)Lorg/openide/util/lookup/ProxyLookup$R; newData <[Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData; map r 'Lorg/openide/util/lookup/ProxyLookup$R; res newR ,Lorg/openide/util/lookup/ProxyLookup$R<TT;>; �<T:Ljava/lang/Object;>(Lorg/openide/util/lookup/ProxyLookup;[Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/lookup/ProxyLookup$R<TT;>; setLookupsNoFire X([Lorg/openide/util/Lookup;Z)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData; i I same previous l lookups 	skipCheck arr getLookupsList ()Ljava/util/List; -()Ljava/util/List<Lorg/openide/util/Lookup;>; <clinit> 
SourceFile ProxyLookup.java InnerClasses ImmutableInternalData Entry SingleInternalData Template RealInternalData R EmptyInternalData                 ^ _        �   3     *� �    �   
   � � �        �    	 Z [  �   �     W+�  � *� � � �+�  � 2+�  �  � ! � 'M� )Y*,� + � .,� 0 � 3� 5�� 8Y*+� :�    �      � � � � 2� M� �      2  � �    W � �     W � �  �     2  � �    W � �  �    8 �   	 �   �   �    � � �   ? @  �    � W &    � D  �   4     
*� =� A �    �      � �       
 �    �    �  � �  �   �     =*� =,� E � 1� IY*� =� KN-,� N� 3:� � R� *�*� U-� X�*�    �      � � � #� 0� 2� ;� �   4   " � �  #  � �    = �      = � �    = � �  �       " � �  #  � �    = � �  �    � 2 I 3�  �   	 �   �   �    �   � �  �  �  	   �� \� +� `� � eY� g�*� =:-� h � 3:� � � R� j:� ,*S� l�� IY� K:� jY+-� r:-� uY� w� zW,*� U� X[S� ~W�    �   2   � � � (� ;� @� D� J� U� `� p� �� �   \ 	   � �      � � �    � � �    � � �   k � �  ( ^ � �  ; K � �  U 1 � �  ` & � �  �   4    � � �   k � �  ( ^ � �  U 1 � �  ` & � �  �    �   3G j�  j �    �   �   �   �    �  � �  �  �     �� J*� �:+� *��+�� 366�� +22� � ������� *�+�� +2N� \� "-� � eY�� ��+�� 
� N� +� �N*� �� -� � *�-*� =� X�    �   Z   � � � � � � � )� 5� 8� ;� A� I� K� Q� U� i� n� u� z� �� �� �   \ 	 !   � �   - � �   @ �   U  � �  r  � �    � �      � �     � � _  z  � �  �    	�   �� � � 	�   �   	 �   �    � �  �   �     +*� UM,� �� � �Y,� �S�,� �N� -� �� �N-�    �      � � � � � !� )� �   *    �     + �      + � _   & � �  �    �  �  � �    �    � �  �   3     	*� �� ��    �       �       	 �    �    �  �   �   M      "m� �� � � \� �Y� �� � �� �    �      � � � �    @  �    � �   :   m � '  �	 ) m �  . � �  8 m �  j m �  � m � 