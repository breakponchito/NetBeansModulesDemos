����   4
      5org/openide/util/lookup/SimpleProxyLookup$ProxyResult checkResult "()Lorg/openide/util/Lookup$Result;	   	 
 this$0 +Lorg/openide/util/lookup/SimpleProxyLookup;
      &org/openide/util/lookup/WaitableResult <init> ()V	     template "Lorg/openide/util/Lookup$Template;
     getDelegate
      )org/openide/util/lookup/SimpleProxyLookup 
access$100 F(Lorg/openide/util/lookup/SimpleProxyLookup;)Lorg/openide/util/Lookup;  org/openide/util/Lookup$Result
  ! " # updateLookup D(Lorg/openide/util/Lookup$Result;[Lorg/openide/util/Lookup$Result;)Z
  % & ' getLookupDelegate ()Lorg/openide/util/Lookup;
  ) * + getLastListener 8()Lorg/openide/util/lookup/SimpleProxyLookup$WeakResult;
  - . / removeLookupListener $(Lorg/openide/util/LookupListener;)V
  1 2 3 allItems ()Ljava/util/Collection;
 5 6 7 8 9 org/openide/util/Lookup lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;	 ; < = > ? 4org/openide/util/lookup/SimpleProxyLookup$WeakResult source  Lorg/openide/util/Lookup$Result;	 ; A B C result Ljava/lang/ref/Reference;
 E F G H I java/lang/ref/Reference get ()Ljava/lang/Object;
 ; K  L �(Lorg/openide/util/lookup/SimpleProxyLookup;Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult;Lorg/openide/util/Lookup$Result;)V
  N O P setLastListener 9(Lorg/openide/util/lookup/SimpleProxyLookup$WeakResult;)V
  R S T setDelegate #(Lorg/openide/util/Lookup$Result;)V
  V W / addLookupListener Y java/util/List	 [ \ ] ^ _ java/util/Collections 	EMPTY_SET Ljava/util/Set;
 [ a b c 	emptyList ()Ljava/util/List; e java/util/ArrayList
 d g  h (Ljava/util/Collection;)V j k l m n java/util/Collection equals (Ljava/lang/Object;)Z
  p q r getListeners p(Lorg/openide/util/LookupListener;Lorg/openide/util/LookupListener;)Lorg/openide/util/lookup/LookupListenerList;
  t u 3 allInstances
  w x y 
allClasses ()Ljava/util/Set;
  { | } beforeLookup %(Lorg/openide/util/Lookup$Template;)V
   � h collectFires
 � � � � � *org/openide/util/lookup/LookupListenerList getListenerList $()[Lorg/openide/util/LookupListener; � org/openide/util/LookupEvent
 � �  T
 � � � � � &org/openide/util/lookup/AbstractLookup notifyListeners J([Ljava/lang/Object;Lorg/openide/util/LookupEvent;Ljava/util/Collection;)V
  t
  1	  � � � 	listeners ,Lorg/openide/util/lookup/LookupListenerList;
 � 
 � � � / add
 � � � / remove	  � � � $assertionsDisabled Z
 � � � � n java/lang/Thread 	holdsLock � java/lang/AssertionError
 � 	  � � ? delegate	  � � � lastListener 6Lorg/openide/util/lookup/SimpleProxyLookup$WeakResult;
 � � � � � java/lang/Class desiredAssertionStatus ()Z � org/openide/util/LookupListener 	Signature 'Lorg/openide/util/Lookup$Template<TT;>; %Lorg/openide/util/Lookup$Result<TT;>; ;Lorg/openide/util/lookup/SimpleProxyLookup$WeakResult<TT;>; P(Lorg/openide/util/lookup/SimpleProxyLookup;Lorg/openide/util/Lookup$Template;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult; LocalVariableTypeTable <Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult<TT;>; MethodParameters *(Lorg/openide/util/Lookup$Template<TT;>;)V lkp used ![Lorg/openide/util/Lookup$Result; StackMapTable � java/lang/Object � java/lang/Throwable '()Lorg/openide/util/Lookup$Result<TT;>; prevListener !Lorg/openide/util/LookupListener; l Lorg/openide/util/Lookup; del listenerToAdd ll prev oldPairs Ljava/util/Collection; toAdd newPairs <Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; � #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/util/Collection<+TT;>; *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; t r resultChanged !(Lorg/openide/util/LookupEvent;)V anEvent Lorg/openide/util/LookupEvent; evAndListeners [Ljava/lang/Object; ev *Ljava/util/Collection<Ljava/lang/Object;>; � -(Ljava/util/Collection<Ljava/lang/Object;>;)V (Z)Ljava/util/Collection; callBeforeLookup .(Z)Ljava/util/Collection<+Ljava/lang/Object;>; ?(Z)Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; toRemove ((Lorg/openide/util/Lookup$Result<TT;>;)V =()Lorg/openide/util/lookup/SimpleProxyLookup$WeakResult<TT;>; >(Lorg/openide/util/lookup/SimpleProxyLookup$WeakResult<TT;>;)V 
access$000 Y(Lorg/openide/util/lookup/SimpleProxyLookup$ProxyResult;)Lorg/openide/util/Lookup$Result; x0 <clinit> d<T:Ljava/lang/Object;>Lorg/openide/util/lookup/WaitableResult<TT;>;Lorg/openide/util/LookupListener; 
SourceFile SimpleProxyLookup.java InnerClasses ProxyResult Result  org/openide/util/Lookup$Template Template 
WeakResult org/openide/util/Lookup$Item Item 0    �      �    �  � ?  �    �  � �    � �  �    � � �   	 
       �  �   g     *+� *� *,� �    �       � 	 �  � �        � �         �        � �       �  �   	 	    �    �     �   �     /*YM�*� L,ç N,�-�*� � W� YSM*+,�  W,2�             �       �  � 	 �  �  � $ � + � �   *  	  � ?    / � �     � ?  $  � �  �       / � �   �     �     �  ��       �    �  " #  �  X    5N*Y:	�*� � $:*� :� *� (� *� (:*� (� ,� :	ç :
	�
�-� +� +� 0N� ,� � 	� 0N*� � 4:*Y:	�*� (:

� P
�  
� :� 
� @� D*� 

:� � ;Y*� *� J:*� M*� Q,� ,S	ç 	ç :	����&� U-� �� 0:-� X� -� Z� 
� `N� � dY-� fN� X� � dY� f:-� i � � �   : =   = B =   t � �   � � �   � � �    �   � '   �  �  �  �  � " � ( � 4 � 7 � E � I � M � U � ^ � d � o � t � z � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �$ � �   �  (  � �  7  � �   - � �   ' � ?  �  � �  �  � �  z T � � 
 E � � �  E � � ?   5 � �    5 � ?   5 � �  3 � �  E � � �  o � � ?  � V � �  � B � �  �   f 
  ' � �  �  � �  �  � �  z T � � 
 E � � �   5 � �   3 � �  o � � �  � V � �  � B � �  �  ' �  j� 1 
   � j    5  �  �  
   � j �   5  �  �  
   � j      �  ��  	   � j �   5   � >    � j �   5  � ;  �     � j �  ; 5  � ;  �  
   � j �   5  �  E ��     � j �   �  ;�  j@ �   	 �   �    W /  �   R     *+� oW�    �   
    �  � �        � �      � �  �        � �   �    �   �     �    . /  �   R     *+� oW�    �   
     �        � �      � �  �        � �   �    �   �     �    u 3  �   D     *� � s�    �       �        � �   �        � �   �    �  x y  �   D     *� � v�    �      	 �        � �   �        � �   �    �  2 3  �   D     *� � 0�    �       �        � �   �        � �   �    �  | }  �        *� M,� � ,� +� z�    �          �         � �      �     � ?  �        � �   �    �   �    �    � �  �   P     *� ~�    �   
     �        � �      � �  �        � �   �    �    � h  �   �     )*� oM,� �,� �N-�� �� �Y*� �:-+� ��    �   & 	  " $ % ( * + . !/ (0 �   4    ) � �     ) � �   " � �    � �  !  � �  �       ) � �     ) � �  �    �  �� 
 � �    �   �    � �     �    u �  �   K     *� ��    �      4 �        � �      � �  �        � �   �    �   �    � �     �    2 �  �   K     *� ��    �      9 �        � �      � �  �        � �   �    �   �    � �     �   " q r  �   �     <+� *� �� �*� �� *� �Y� �� �+� *� �+� �,� *� �,� �*� ��    �   & 	  B C E F H #I +K /L 7N �        < � �     < � �    < � �  �       < � �   �     �   	 �   �       �   c     � �� *� �� � �Y� ��*� ��    �   
   R S �        � �   �        � �   �     �    �  S T  �   |     � �� *� �� � �Y� ��*+� ��    �      W X Y �        � �      � ?  �        � �      � �  �     �    �   �    �  * +  �   c     � �� *� �� � �Y� ��*� ��    �   
   \ ] �        � �   �        � �   �     �    �  O P  �   |     � �� *� �� � �Y� ��*+� ��    �      a b c �        � �      � �  �        � �      � �  �     �    �   �    � � �  �   /     *� �    �       � �        � �    �   �   4      � �� � � ��    �       � �    @  �    � �    � �   *    �   5 	 5  ;   5	