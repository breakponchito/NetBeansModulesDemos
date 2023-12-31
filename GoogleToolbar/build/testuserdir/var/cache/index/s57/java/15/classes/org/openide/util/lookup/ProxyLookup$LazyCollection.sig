����   4 
      2org/openide/util/lookup/ProxyLookup$LazyCollection computeDelegate ([I)Ljava/util/Collection;	   	 
 arr ![Lorg/openide/util/Lookup$Result;
      java/lang/Object <init> ()V	     result 'Lorg/openide/util/lookup/ProxyLookup$R;	     indexToCache I	     cc [Ljava/lang/Object;	      callBeforeLookup Z " java/util/Collection	  $ % & computed [Ljava/util/Collection;
  ( ) * delegate (Z)Ljava/util/Collection;	  , ) - Ljava/util/Collection; / java/util/HashSet
 . 
 2 3 4 5 6 java/util/Collections unmodifiableSet  (Ljava/util/Set;)Ljava/util/Set; 8 java/util/ArrayList
 7 :  ; (I)V
 2 = > ? unmodifiableList "(Ljava/util/List;)Ljava/util/List;
  A B C getComputed ()[Ljava/util/Collection; E &org/openide/util/lookup/WaitableResult
 G H I J K %org/openide/util/lookup/ProxyLookup$R 
access$600 K(Lorg/openide/util/lookup/ProxyLookup$R;)Lorg/openide/util/Lookup$Template;
 D M N O beforeLookup %(Lorg/openide/util/Lookup$Template;)V
  Q R S computeSingleResult (I)Ljava/util/Collection;	  U V   $assertionsDisabled X java/lang/AssertionError
 W  ! [ \ ] isEmpty ()Z ! _ ` a addAll (Ljava/util/Collection;)Z
 G c d e 
access$700 u(Lorg/openide/util/lookup/ProxyLookup$R;[Ljava/lang/Object;I[Lorg/openide/util/Lookup$Result;Ljava/util/Collection;)V
  g ) h ()Ljava/util/Collection; ! j k l size ()I ! n o p contains (Ljava/lang/Object;)Z ! r s t iterator ()Ljava/util/Iterator;
  v w t lazyIterator ! y z { toArray ()[Ljava/lang/Object; ! } z ~ (([Ljava/lang/Object;)[Ljava/lang/Object; ! � � � toString ()Ljava/lang/String; ! � � l hashCode ! � � p equals � 'java/lang/UnsupportedOperationException
 �  ! � � a containsAll � 4org/openide/util/lookup/ProxyLookup$LazyCollection$1
 � �  � 7(Lorg/openide/util/lookup/ProxyLookup$LazyCollection;)V
 D � � * allInstances
 � � � � h org/openide/util/Lookup$Result
 � � � � 
allClasses ()Ljava/util/Set;
 D � � * allItems
 � � � h � java/lang/StringBuilder
 �  � Wrong index: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � (I)Ljava/lang/StringBuilder;
 � �
 W �  � (Ljava/lang/Object;)V
 � � � � p java/lang/Thread 	holdsLock � #org/openide/util/lookup/ProxyLookup
 � � � � ] java/lang/Class desiredAssertionStatus `(Lorg/openide/util/lookup/ProxyLookup$R;[Ljava/lang/Object;IZ[Lorg/openide/util/Lookup$Result;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/util/lookup/ProxyLookup$LazyCollection; MethodParameters 	computeIt dlgt StackMapTable � java/lang/Throwable s Ljava/util/HashSet; l Ljava/util/List; one wr (Lorg/openide/util/lookup/WaitableResult; r firstNonEmpty [I compute ret i LocalVariableTypeTable 'Ljava/util/HashSet<Ljava/lang/Object;>; $Ljava/util/List<Ljava/lang/Object;>; +Lorg/openide/util/lookup/WaitableResult<*>; *Ljava/util/Collection<Ljava/lang/Object;>; � #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; o Ljava/lang/Object; c � java/util/Iterator a obj add e remove 	removeAll 	retainAll clear 
access$800 W(Lorg/openide/util/lookup/ProxyLookup$LazyCollection;)[Lorg/openide/util/Lookup$Result; x0 
access$900 N(Lorg/openide/util/lookup/ProxyLookup$LazyCollection;[I)Ljava/util/Collection; x1 <clinit> 
SourceFile ProxyLookup.java InnerClasses LazyCollection � org/openide/util/Lookup Result R �  org/openide/util/Lookup$Template Template      !                        	 
    % &    ) -   V        �  �   �     **� *+� *� *,� *� *� *�� !� #�    �   "   f g 	h i j k l )m �   >    * � �     *      *      *      *       * 	 
  �                	    ) h  �   0     *� '�    �      p �        � �    ) *  �   �     FM*YN�,� *� +� *,� +*� *� +� 
*� +-ð� -ð-ç 
:-��*� M���   ( 6   ) 0 6   1 3 6   6 : 6    �   .   s u v w x z "{ )} -~ 1� =� �        F � �     F �     D � -  �    �  !�  D ��  �    �       �  b  	  UMN+� 	+.� 9*� � � .Y� 0:M� 1N� � 7Y*� �h� 9:M� <N+� � +.6*� �� �*Y:�*� @2:ç :��� N+� /*� � (*� 2� D� *� 2� D:*� � F� L*� P:� T� � � WY� Y�6*Y:�*� @2� *� @S�+� +O� Z � Nç %6ç :��� ,� ^ W��1*� �� ),� %*� :� *� *� *� -� b*� -�  ` l o   o t o   � �
  
  

    �   � +  � � � � � � "� (� +� ;� >� D� Q� [� `� i� w� |� �� �� �� �� �� �� �� �� �� �� �� �� �� ������ �#�1�7�<�N�S� �   z   	 � �  ; 	 � �  i  � -  �  � �  w � � -  � V `   7  �    U � �    U � �  S � -  Q � -  Q �   �   4   	 � �  ; 	 � �  �  � �  S � �  Q � �  �   e �  ! !B� �    � ! !    ��    � ! ! !  4�  E �� � � * G�  �    �    k l  �   4     
*� f� i �    �      � �       
 � �   �     �    \ ]  �   4     
*� f� Z �    �      � �       
 � �   �     �    o p  �   ?     *� f+� m �    �      � �        � �      � �  �    �   �     �    s t  �   b     *� 'L+� +� q � *� u�    �   
   � � �        � �     � -  �    �  !C � �     �    z {  �   4     
*� f� x �    �      � �       
 � �   �     �    z ~  �   ?     *� f+� | �    �      � �        � �      �   �    �   �     �    � �  �   4     
*� f�  �    �      � �       
 � �   �     �    � l  �   4     
*� f� � �    �      � �       
 � �   �     �    � p  �   ?     *� f+� � �    �      � �        � �      � �  �    �   �     �    � p  �   <     � �Y� ��    �      � �        � �      � �  �    �   �     �    � p  �   <     � �Y� ��    �      � �        � �      � �  �    �   �     �    � a  �   ?     *� f+� � �    �      � �        � �      � -  �    �   �     �    ` a  �   <     � �Y� ��    �       �        � �      � -  �    �   �     �    � a  �   <     � �Y� ��    �       �        � �      � -  �    �   �     �    � a  �   <     � �Y� ��    �       �        � �      � -  �    �   �     �    �   �   2     � �Y� ��    �       �        � �   �     �    w t  �   3     	� �Y*� ��    �       �       	 � �    R S  �  �     �M*� �    �             P   ]*� � %*� 2� D� *� 2� DN-*� � �M� w*� 2� �M� j*� 2� �M� ]*� � %*� 2� D� *� 2� DN-*� � �M� 4*� 2� �M� '� T� !� WY� �Y� ��� �*� � �� �� ��,�    �   J   = >  @ 3A =B FC ID SF VH `I cK vL �M �N �O �Q �S �U �   4  = 	 � �  � 	 � �    � � �     � �    � � -  �     = 	 � �  � 	 � �  �    �   !((# �    �    B C  �   Q     � T� *� �� � WY� Y�*� #�    �   
   Y Z �        � �   �     � �  �   /     *� �    �      Z �        � �   � �  �   :     *+� �    �      Z �        � �      � �   �   �   4      �� �� � � T�    �      Z �    @  �    � �   *   � � 
 � � �	 G � �  � � �  �      