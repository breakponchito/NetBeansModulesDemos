����   4s
      %org/openide/util/lookup/ProxyLookup$R updateResultCache N([Ljava/lang/Object;I[Lorg/openide/util/Lookup$Result;Ljava/util/Collection;)V
   	 
 template $()Lorg/openide/util/Lookup$Template;	     data ;Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;
      &org/openide/util/lookup/WaitableResult <init> ()V  .org/openide/util/lookup/ProxyLookup$WeakResult
     q(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/lookup/ProxyLookup$R;Lorg/openide/util/Lookup$Template;)V	     weakL 0Lorg/openide/util/lookup/ProxyLookup$WeakResult;
     ! 
access$100 _(Lorg/openide/util/lookup/ProxyLookup$WeakResult;)Lorg/openide/util/lookup/ProxyLookup$WeakRef;	 # $ % & ' +org/openide/util/lookup/ProxyLookup$WeakRef proxy %Lorg/openide/util/lookup/ProxyLookup; ) org/openide/util/Lookup$Result
 # + ,  run
  . & / '()Lorg/openide/util/lookup/ProxyLookup;
  1 2 3 
access$200 S(Lorg/openide/util/lookup/ProxyLookup$WeakResult;)[Lorg/openide/util/Lookup$Result;
 5 6 7 8 9 9org/openide/util/lookup/ProxyLookup$ImmutableInternalData 
getLookups (Z)[Lorg/openide/util/Lookup;
  ; < = 
newResults $(I)[Lorg/openide/util/Lookup$Result;
 ? @ A B C org/openide/util/Lookup lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
  E F G 
access$300 T(Lorg/openide/util/lookup/ProxyLookup$WeakResult;[Lorg/openide/util/Lookup$Result;)V
 ( I J K addLookupListener $(Lorg/openide/util/LookupListener;)V M java/util/IdentityHashMap
 L O  P (I)V R S T U V java/util/Set contains (Ljava/lang/Object;)Z X Y Z [ \ java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; X ^ _ ` get &(Ljava/lang/Object;)Ljava/lang/Object; b java/lang/IllegalStateException
 a 	  e f g 	listeners ,Lorg/openide/util/lookup/LookupListenerList; i *org/openide/util/lookup/LookupListenerList
 h 
 h l m K add
  o p q initResults #()[Lorg/openide/util/Lookup$Result;
 h s t K remove
  v w x allInstances (Z)Ljava/util/Collection;
  z { | computeResult (IZ)Ljava/util/Collection;
  ~  x allItems
  � � � getCache ()[Ljava/util/Collection;	  � � � NO_CACHE [Ljava/util/Collection;
  � � � myBeforeLookup %(ZZ)[Lorg/openide/util/Lookup$Result; � +org/openide/util/lookup/ProxyLookup$LazySet
 � �  � `(Lorg/openide/util/lookup/ProxyLookup$R;[Ljava/lang/Object;IZ[Lorg/openide/util/Lookup$Result;)V � ,org/openide/util/lookup/ProxyLookup$LazyList
 � �
  � � � collectFires (Ljava/util/Collection;)V	  � � � IN Ljava/lang/ThreadLocal;
 � � � _ � java/lang/ThreadLocal ()Ljava/lang/Object;
 � � � � set (Ljava/lang/Object;)V
  � � � collImpl
  � � � setCache ([Ljava/util/Collection;)V
 h � � � getListenerCount ()I � java/util/Collection
 h � � � getListenerList $()[Lorg/openide/util/LookupListener;	  � � � $assertionsDisabled Z � java/lang/AssertionError
 �  � � � � size � � � V equals � � � � isEmpty ()Z � org/openide/util/LookupEvent
 � �  � #(Lorg/openide/util/Lookup$Result;)V
 � � � � � &org/openide/util/lookup/AbstractLookup notifyListeners J([Ljava/lang/Object;Lorg/openide/util/LookupEvent;Ljava/util/Collection;)V
 � � � � � #org/openide/util/lookup/ProxyLookup beforeLookup &(ZLorg/openide/util/Lookup$Template;)V
  � � � %(Lorg/openide/util/Lookup$Template;)V
 � � � � �  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;	  � � � cache
 � � � � V java/lang/Thread 	holdsLock	 # � 	 � "Lorg/openide/util/Lookup$Template;
 � � � � � java/lang/Class desiredAssertionStatus
 �  	Signature 5Lorg/openide/util/lookup/ProxyLookup$WeakResult<TT;>; CLjava/lang/ThreadLocal<Lorg/openide/util/lookup/ProxyLookup$R<*>;>; J(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/Lookup$Template;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/util/lookup/ProxyLookup$R; t LocalVariableTypeTable ,Lorg/openide/util/lookup/ProxyLookup$R<TT;>; 'Lorg/openide/util/Lookup$Template<TT;>; MethodParameters O(Lorg/openide/util/lookup/ProxyLookup;Lorg/openide/util/Lookup$Template<TT;>;)V len I )(I)[Lorg/openide/util/Lookup$Result<TT;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked finalize Ljava/lang/Override; myLkps [Lorg/openide/util/Lookup; current i currentLkps arr ![Lorg/openide/util/Lookup$Result; &[Lorg/openide/util/Lookup$Result<TT;>; StackMapTable java/lang/Object java/lang/Throwable (()[Lorg/openide/util/Lookup$Result<TT;>; lookupChange �(Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;[Lorg/openide/util/Lookup;Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V newData oldData added Ljava/util/Set; removed toAdd Ljava/util/Map; toRemove old map *Ljava/util/Set<Lorg/openide/util/Lookup;>; RLjava/util/Map<Lorg/openide/util/Lookup$Result;Lorg/openide/util/LookupListener;>; OLjava/util/Map<Lorg/openide/util/Lookup;Lorg/openide/util/Lookup$Result<TT;>;>;�(Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;[Lorg/openide/util/Lookup;Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;Ljava/util/Set<Lorg/openide/util/Lookup;>;Ljava/util/Set<Lorg/openide/util/Lookup;>;Ljava/util/Map<Lorg/openide/util/Lookup$Result;Lorg/openide/util/LookupListener;>;Ljava/util/Map<Lorg/openide/util/Lookup$Result;Lorg/openide/util/LookupListener;>;)V l !Lorg/openide/util/LookupListener; removeLookupListener listenersLocal/ org/openide/util/LookupListener ()Ljava/util/Collection; ()Ljava/util/Collection<TT;>; callBeforeLookup (Z)Ljava/util/Collection<TT;>; 
allClasses ()Ljava/util/Set; *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; ?(Z)Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; cc indexToCache cachedResult Ljava/util/Collection; � resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; evAndListeners prev *Ljava/util/Collection<Ljava/lang/Object;>; *Lorg/openide/util/lookup/ProxyLookup$R<*>; -(Ljava/util/Collection<Ljava/lang/Object;>;)V ll [Ljava/lang/Object; oldItems oldInstances newItems newInstances modified <Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>;H w (Lorg/openide/util/lookup/WaitableResult; callBeforeOnWait *(ZZ)[Lorg/openide/util/Lookup$Result<TT;>; )()Lorg/openide/util/Lookup$Template<TT;>; oldCC ret b([Ljava/lang/Object;I[Lorg/openide/util/Lookup$Result;Ljava/util/Collection<Ljava/lang/Object;>;)V 
access$002 �(Lorg/openide/util/lookup/ProxyLookup$R;Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData;)Lorg/openide/util/lookup/ProxyLookup$ImmutableInternalData; x0 x1 
access$600 K(Lorg/openide/util/lookup/ProxyLookup$R;)Lorg/openide/util/Lookup$Template; 
access$700 u(Lorg/openide/util/lookup/ProxyLookup$R;[Ljava/lang/Object;I[Lorg/openide/util/Lookup$Result;Ljava/util/Collection;)V x2 x3 x4 <clinit> C<T:Ljava/lang/Object;>Lorg/openide/util/lookup/WaitableResult<TT;>; 
SourceFile ProxyLookup.java InnerClasses R Result Template ImmutableInternalData 
WeakResult WeakRef LazySet LazyListq org/openide/util/Lookup$Item Item 0          �    �  f g    � �        
 � �  �    �  � �   � �      �  �   u     *� *� Y+*,� � �    �      � � � �         � �      & '     � �  �        � �      � �  �   	 &   �   �      & /  �   G     *� � � "�    �      � �        � �   �        � �    < =  �   K     � (�    �      � �        � �       �        � �   �      �        [ s    �   K     *� � � *�    �   
   � 
� �        � �   �        � �      	    p q  �  �     �*� -YN�*� � 0� *� � 0-ð*� � 4L*� M-ç 
:-��*+�� :N6-�� -+2*� � >S����*� -Y:�,*� � 	ç��*� � 4:�+�� 	ç�z6�� 2+2� 	ç�]����*� � 0� *� � 0ð*� -� Dç :��6-�� -2*� � H����-� 	   .    + .   . 2 .   c n �   q � �   � � �   � � �   � � �   � � �    �   r   � � � � $� )� 5� <� F� U� [� c� k� q� {� �� �� �� �� �� �� �� �� �� �� �� �� �� �   f 
 $ 

  )    ?   �    { N  �   5 �
  5 �   < �    � � �   �     < �    � � �     a  �   R�    5  � 	� � � � � �    5 � � �  �      �  Y     �*� � 0� �-� 4:� LY�h� N:	6

�� M
2� Q � !� 3*� � 0
2*� � W W� 	
2*� � 0
2� W W�
���*,�� ::
6,�� c,2� Q � ,
,2*� � >S� :
2*� � W W� &
	,2� ] � (S
2� � aY� c�����*� 
� D�    �   Z   � 
� � �  � +� :� ?� X� o� u } � � � �	 � � � � � � �   �  # R 
 � g    � � �     �     �    �     �    �     �!"    �#"   �$    �%" 	 } t 
 �   H    � � �     �&    � &    �!'    �#'    �%( 	 } t 
    	�  X4� � 
="�  �              !  #   �   )  J K  �   �     1*� -YM�*� d� *� hY� j� d,ç N,�-�*� d+� k*� nW�        !     �         ! ## +$ 0% �       1 � �     1*+  �       1 � �      � D�  �   *   , K  �   �     "*� -YN�*� dM-ç 
:-��,� ,+� r�             �      + , - . / !1 �   *   - g    " � �     "*+   
- g  �       " � �     ' �   .  �   . h   �   *    w0  �   B     *� u�    �      8 �        � �   �        � �   �   1    	    w x  �   M     *� y�    �      < �        � �     2 �  �        � �   �   2   �   3     [ s 45  �   F     
*� y� R�    �      F �       
 � �   �       
 � �   �   6     [ s	    0  �   B     *� }�    �      O �        � �   �        � �   �   7    	     x  �   M     *� y�    �      T �        � �     2 �  �        � �   �   2   �   8     [ s	    { |  �  �     �N*� -Y:�*� �:� � �� 2Nç :��*-� � � �:*� -Y:�*� �:� � �� 2Nç :��-� -�� � �Y*� ��� �Y*� ��  
 % (   ( - (   H c f   f k f    �   F   \ ] 
^ _ ` "b 0d @g Hh Ni [j `l nm rn tp yq �s �   R   9 �  N 9 �    � � �     �:    �2 �   �;<  @ W  n )9 �  �       � � �     u 
� " �E� � 	   �  �     �  � $=�    �  �    �=   �   	:  2   >?  �   P     *� ��    �   
   y z �        � �     @A  �        � �   �   @    � �  �   �     1� �� �� M*,� �� �*� �*+� �� �,� �� N� �,� �-��    &    �   * 
  ~ 
 � � � � #� &� .� 0� �        1 � �     1B<  
 'C �  �        1 � �     1BD  
 'CE     �  U	 �   B   �   F  � �  �  j    �=*� -Y:�*� �:� �� ,�*� -Y:�*� �� �� *� �ç :	�	��� � 2:� � 2:*� d� *� d� �� 4*� �� ��*� -Y:�*� �� �� *� �ç :
�
��*� d� �N� �� -� � �Y� ��*� �� �ç :��� 1*� }:� "� � � � � � � � =� q� 1*� u:� "� � � � � � � � =� >*� }:� � � =*� -Y:�*� �� �� *� �� �ç :��*� -Y:�*� �� �� *� �ç :��� -:*� -Y:�*� �� �� *� �ç :���� � �Y*� �:-+� ̱  # 5 8   8 = 8   � � �   � � �   
  �   A { �   � � �   � � �  Qfi  ini  y��  ���    �   A {�   �q�  ���  ���  ���    �   � 9  � � 
� � � � #� -� 2� @� A� P� _� p� x� {� �� �� �� �� �� �� �� �� �� �� �� �� �� ����%�1�3�6�=�G�I�Q�[�c�q�y������������������������� �   �   �9 �  � GH  _ iI<  P xJ<  � $K<  $L< = 4K<  � �I<  � �J<  � �GH � @A   � � �    �B<  �M � � GH  �   *  � $KN = 4KN   � � �    �BD   5 !� 2 	  �   =  E�  C �� 
   �   �=  C ��    �  � �=  � !E�  �    �O � �=  �    �    �    �O � �  //�  �� E�    �O  � E� �    � �    �             E� �    �O   �   B   �   F  � �  �       G*� N*� --� �*� n:� /6�� $2� � 2� :-� ؄����    �   * 
  � � � � � #� .� 8� >� D� �   H  8 PQ   )    G � �     G2 �    GR �   B 	 �   3  �        G � �    B 	 �   3     �  �"�  �   	2  R   �   S  � �  �   m     +� �*� � ۦ 
*� �W�    �      � � � �        � �      � �  �        � �       �    �      	    � �  �   A     *� �    �      � �        � �   �        � �    � �  �   u     � �� *� -� � � �Y� ��*+� �    �      � � � �        � �      � �  �        � �       �    �    	 
  �   G     *� � � �    �       �        � �   �        � �   �   T     �  !     P*� -Y:�*� �:+� ñ� � �� *� �Y:� �-*� � 0� 	Sç :���    G    D G   G L G    �   * 
    	   % 0 ; A O �   >   39 �    P � �     PUH    P:    P    PV<  �       P � �     PVD     � =
� E�  �   U  :    V   �   WXY  �   ;     *+Z� �    �      � �       Z �     [  \]  �   /     *� �    �      � �       Z �  ^_  �   \     
*+-� �    �      � �   4    
Z �     
[H    
`    
a    
b<  c   �   M      "Ӷ � � � �� �Y� � �� �� ��    �      � |      @  �   de   fg   J 	  �h  ( ?i	 � ?j  5 �k  �l  # �m  � �n  � �o p ?r	