����   4�
      5org/netbeans/spi/project/support/DelegatingLookupImpl 
doDelegate ()V
  	 
   #org/openide/util/lookup/ProxyLookup <init>  java/util/HashMap
  		     mergerResults Ljava/util/Map;
      java/util/Collections 	emptyList ()Ljava/util/List;	     old Ljava/util/List;  java/util/ArrayList
  		  ! "  results	  $ % & $assertionsDisabled Z ( java/lang/AssertionError
 ' 	 + .org/openide/util/lookup/ProxyLookup$Controller
 * 		  . / 0 unmergedController 0Lorg/openide/util/lookup/ProxyLookup$Controller;
  2  3 3(Lorg/openide/util/lookup/ProxyLookup$Controller;)V	  5 6 7 unmergedLookup %Lorg/openide/util/lookup/ProxyLookup;	  9 : ; 
baseLookup Lorg/openide/util/Lookup;	  = > ? pathDescriptor Ljava/lang/String; A 'org/netbeans/spi/project/LookupProvider
 C D E F G org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	  I J K providerResult  Lorg/openide/util/Lookup$Result; M 0org/netbeans/modules/projectapi/MetaLookupMerger	  O P K metaMergers
 R S T U V org/openide/util/WeakListeners change X(Ljavax/swing/event/ChangeListener;Ljava/lang/Object;)Ljavax/swing/event/ChangeListener;	  X Y Z metaMergerListener "Ljavax/swing/event/ChangeListener;
  \ ] ^ isAllJustLookupProviders (Lorg/openide/util/Lookup;)Z ` java/lang/StringBuilder
 _ 	 c Layer content at 
 _ e f g append -(Ljava/lang/String;)Ljava/lang/StringBuilder; i V contains other than LookupProvider instances! See messages.log file for more details.
 _ k l m toString ()Ljava/lang/String;
 ' o  p (Ljava/lang/Object;)V r 7org/netbeans/spi/project/support/DelegatingLookupImpl$1
 q t  u :(Lorg/netbeans/spi/project/support/DelegatingLookupImpl;)V	  w x y providerListener !Lorg/openide/util/LookupListener; { org/openide/util/LookupListener
 R } ~  create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;
 � � � � � org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
 � � � � allInstances ()Ljava/util/Collection; � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object;
 � � � � �  org/openide/util/Lookup$Template getType ()Ljava/lang/Class; L � � � probing (Ljava/lang/Class;)V � Borg/netbeans/spi/project/support/DelegatingLookupImpl$1NotifyLater
 � t � � � java/util/List
 � � � � removeLookupListener � � �  clear	  � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z � !New providers count: {0} for: {1} � java/lang/Object � � � � size ()I
 � � � � � java/lang/Integer valueOf (I)Ljava/lang/Integer;
 � � � � � java/lang/System identityHashCode (Ljava/lang/Object;)I
 � � � � log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V � � � � contains (Ljava/lang/Object;)Z � � � � indexOf	  � �  currentLookups � � � � get (I)Ljava/lang/Object; � � � � add @ � � � createAdditionalLookup 4(Lorg/openide/util/Lookup;)Lorg/openide/util/Lookup;
  �  � (Ljava/util/Collection;)V � � � � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Lorg/openide/util/Lookup;
 * � � � 
setLookups <(Ljava/util/concurrent/Executor;[Lorg/openide/util/Lookup;)V	  � � � listenerRef Ljava/lang/ref/Reference;
  � � java/lang/ref/Reference	  K mergers %org/netbeans/spi/project/LookupMerger
  D
 java/lang/ref/WeakReference
	 o L merger )()Lorg/netbeans/spi/project/LookupMerger; � � L removeChangeListener %(Ljavax/swing/event/ChangeListener;)V L addChangeListener � getMergeableClass	 � � WARNING PTwo LookupMerger instances for {0} among {1} in {2}. Only first one will be used!"# �$ java/util/Map &(Ljava/lang/Object;)Ljava/lang/Object;&'( merge -(Lorg/openide/util/Lookup;)Ljava/lang/Object;!*+, put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;. java/lang/Class0 [Ljava/lang/Class;
23456 org/openide/util/lookup/Lookups exclude F(Lorg/openide/util/Lookup;[Ljava/lang/Class;)Lorg/openide/util/Lookup;
289: fixed .([Ljava/lang/Object;)Lorg/openide/util/Lookup;
  �
 �=>  notifyCollectedEvents
@ABC � java/lang/Thread 	holdsLock
 �EF � allItemsH org/openide/util/Lookup$Item
G �
-KLM isAssignableFrom (Ljava/lang/Class;)ZO ${0} from {1} is not a LookupProvider
-QR m getName
GTU m getId
-WX � desiredAssertionStatus
 �Z[\ 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;^  javax/swing/event/ChangeListener 	Signature MLjava/util/Map<Lorg/netbeans/spi/project/LookupMerger<*>;Ljava/lang/Object;>; KLorg/openide/util/Lookup$Result<Lorg/netbeans/spi/project/LookupProvider;>; ;Ljava/util/List<Lorg/netbeans/spi/project/LookupProvider;>; +Ljava/util/List<Lorg/openide/util/Lookup;>; ILorg/openide/util/Lookup$Result<Lorg/netbeans/spi/project/LookupMerger;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value rawtypes TLorg/openide/util/Lookup$Result<Lorg/netbeans/modules/projectapi/MetaLookupMerger;>; <Ljava/lang/ref/Reference<Lorg/openide/util/LookupListener;>; 5Ljava/util/List<Lorg/openide/util/Lookup$Result<*>;>; G(Lorg/openide/util/Lookup;Lorg/openide/util/Lookup;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/spi/project/support/DelegatingLookupImpl; base providerLookup StackMapTablev java/lang/String MethodParameters LeakingThisInConstructor resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; Ljava/lang/Override; beforeLookup %(Lorg/openide/util/Lookup$Template;)V 
metaMerger 2Lorg/netbeans/modules/projectapi/MetaLookupMerger; template "Lorg/openide/util/Lookup$Template; LocalVariableTypeTable %Lorg/openide/util/Lookup$Template<*>; ((Lorg/openide/util/Lookup$Template<*>;)V stateChanged "(Ljavax/swing/event/ChangeEvent;)V e Ljavax/swing/event/ChangeEvent; r index I newone elem )Lorg/netbeans/spi/project/LookupProvider; 'Lorg/netbeans/spi/project/LookupMerger; c Ljava/lang/Class; Ljava/lang/Object; result lm 	providers Ljava/util/Collection; 
newLookups filteredClasses mergedInstances l 
allMergers filtered notifyLater DLorg/netbeans/spi/project/support/DelegatingLookupImpl$1NotifyLater; #Lorg/openide/util/Lookup$Result<*>; *Lorg/netbeans/spi/project/LookupMerger<*>; Ljava/lang/Class<*>; BLjava/util/Collection<+Lorg/netbeans/spi/project/LookupProvider;>; &Ljava/util/List<Ljava/lang/Class<*>;>; $Ljava/util/List<Ljava/lang/Object;>; ?Ljava/util/Collection<Lorg/netbeans/spi/project/LookupMerger;>;� java/lang/Throwable clzz item Lorg/openide/util/Lookup$Item; lkp !Lorg/openide/util/Lookup$Item<*>; 
access$000 x0 <clinit> 
SourceFile DelegatingLookupImpl.java InnerClasses 
Controller Result Template NotifyLater Item      z]   � �    : ;    > ?    / 0    6 7      _   `  J K _   a  x y      _   b  �  _   c  Y Z    K _   de    f g[ sh  P K _   i  � � _   j  "  _   k % &   	   l m  �     �*� *� Y� � *� � *� Y� �  � #� +� � 'Y� )�*� *Y� ,� -*� Y*� -� 1� 4*+� 8*-� <*,@� B� H*,L� B� N**� Q� W� #� +*,� [� #� 'Y� _Y� ab� d-� dh� d� j� n�*� *� qY*� s� v*� Hz*� v*� H� |� z� �*� Nz*� v*� N� |� z� ��   n   J    B  5  8  ? ! C 3 D > E M F R G W H a I k J t K � L � M � S � T � Uo   *    �pq     �r ;    �s ;    � > ? t    � 3   C Cu  � nw   r  s   >  e    f g[ sx yz m   =     *� �   n   
    X  Yo       pq     {| w   {  e    }   ~ m   �     .*� N� �� � M,� � � ,� � � LN-+� �� � ���   n       \   ] * ^ - _o        
��    .pq     .�� �       .�� t    �  �� w   �  _   �e    }   �� m   =     *� �   n   
    c  do       pq     �� w   �  e    }      m  '    � �Y*� �L*�  YM�*�  � � N-� � � -� � � �:*� ����*�  � � *� H� �N� �� �� �� (� �� ��� �Y-� � � �SY*� θ �S� Ի Y� :-� � :� � � p� � � @:*� � � � )*� � � 6*� �� � � C� � W� -*� 8� � :� #� � � 'Y� )�� � W���*� Y-� �� *� �*� 8� � W*� -+� � � C� � � �� �� Y� :� Y� :*� �� *� �� �� z� :� *�� �**� 4��z**�� |� z:*�	Y�� �*�� �� Y*�� �� �:*� N� �� � :		� � � @	� � � L:

� :� � W
*� W� 
*� W� ���� � :		� � � �	� � �:

� :� � � '� ��� �YSYSY*� <S� ԧ��� � W*� 
�  :� 
*� 4�% :*� 
�) W� � W*� 4�:*� �*�  � � W��S*� 4� � �-� � �/�1:	� � � ¹ � �7:
*+� CY
SY	S�;,ç 
:,��+�<�       n   @   w 	 y  z . { 4 | 7 } @ ~ H  T � c � o � v � y � � � � � � � � � � � � � � � � � � � � � � �; �D �M �d �i �r �� �� �� �� �� �� �� �� �� �� � �
 �) �2 �> �_ �b �l �y �~ �� �� �� �� �� �� �� �� �� �	 � � �o   �  . � K  � ��  � � ;  � ^�� � %� � .�� 
2 ��� y G'� � � K ) ��� 
 H���  ���  D��  M��  d�� y �T�� � )� ; 	� 9 ; 
  pq   	�� �   f 
 . �� � %� 2 ��� � �� ) ��� 
 H���  ���c D��� M��� �T�� t   � �  � � �� � A ��  � �� I @�  C� 	� � _ � �@ z�  z� P � �� - L� �  �� N-� 6 �� ) 	  � � � � � � z �  � J   � � ��  C � m   2     *�  �?�   n       �o       pq    ] ^ m   �     `+¶ B�D� � M,� � � I,� � �GN-�I:@�J� ,L�J� "� ��N� �Y�PSY-�SS� ԧ���   n       � " � ( � < � [ � ^ �o   *  ( 3��  " 9��    `pq     `� ; �     ( 3��  " 9�� t    �  �� K� w   �  � u m   /     *� �   n       -o       �q   �  m   C      �V� � � #�P�Y� ��   n   
    -  /t    @ �   ��   2  * �  � C�	 q       � C�  �  �  G C�	