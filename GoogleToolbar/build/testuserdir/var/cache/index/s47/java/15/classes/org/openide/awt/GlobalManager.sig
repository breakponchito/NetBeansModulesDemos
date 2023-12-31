����   4+
      org/openide/awt/GlobalManager <init> (Lorg/openide/util/Lookup;)V
  	 
   java/lang/Object ()V  java/lang/ref/WeakReference
     (Ljava/lang/Object;)V	     	actionMap Ljava/lang/ref/Reference;  java/util/HashMap
  		     	listeners Ljava/util/Map;  javax/swing/ActionMap
    ! " # org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	  % & ' result  Lorg/openide/util/Lookup$Result;
 ) * + , - org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
  / 0 1 resultChanged !(Lorg/openide/util/LookupEvent;)V	  3 4  CACHE	  6 7  SURVIVE 9 (org/openide/awt/ContextManager$LookupRef
 8  < = > ? @ java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; B java/lang/ref/Reference
 A D ? E ()Ljava/lang/Object; G ,org/openide/awt/GlobalManager$SurviveManager
 F I  J =(Lorg/openide/util/Lookup;Lorg/openide/awt/GlobalManager$1;)V L )org/openide/awt/GlobalManager$GMReference
 K N  O M(Lorg/openide/awt/GlobalManager;Lorg/openide/awt/ContextManager$LookupRef;Z)V < Q R S put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; < U V @ remove
  X ? Y ((Ljava/lang/Object;)Ljavax/swing/Action;	  [ \ ] LOG Ljava/util/logging/Logger;	 _ ` a b c java/util/logging/Level FINE Ljava/util/logging/Level;
 e f g h i java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z k Action for key: {0} is: {1}
 e m n o log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V q java/util/Set s org/openide/util/WeakSet
 r 	 p v w x add (Ljava/lang/Object;)Z
  	
 { | } ~  +org/openide/awt/GeneralAction$BaseDelAction updateState 2(Ljavax/swing/ActionMap;Ljavax/swing/ActionMap;Z)V p � V x p � � � isEmpty ()Z
 ) � � � allItems ()Ljava/util/Collection; � � � java/util/Collection � � � � iterator ()Ljava/util/Iterator; � � � � E java/util/Iterator next � org/openide/util/Lookup$Item
 � � � E getInstance � changed map : {0}
 e � n � @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V � previous map: {0}
  � � � newMap G(Ljavax/swing/ActionMap;Ljavax/swing/ActionMap;)Ljavax/swing/ActionMap; � clearActionPerformers
 e � � � fine (Ljava/lang/String;)V	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; � org/openide/awt/GlobalManager$1
 � �  � P(Lorg/openide/awt/GlobalManager;Ljavax/swing/ActionMap;Ljavax/swing/ActionMap;)V
 � � � � 
readAccess (Ljava/lang/Runnable;)V � java/util/HashSet
 � 	
  � � � allKeys ()[Ljava/lang/Object;
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 � � � � addAll (Ljava/util/Collection;)Z
 � � � � � � hasNext p �	 � [ � org/openide/awt/GeneralAction � org/openide/util/LookupListener 	Signature uLjava/util/Map<Lorg/openide/awt/ContextManager$LookupRef;Ljava/lang/ref/Reference<Lorg/openide/awt/GlobalManager;>;>; 9Lorg/openide/util/Lookup$Result<Ljavax/swing/ActionMap;>; 2Ljava/lang/ref/Reference<Ljavax/swing/ActionMap;>; aLjava/util/Map<Ljava/lang/Object;Ljava/util/Set<Lorg/openide/awt/GeneralAction$BaseDelAction;>;>; changeL #Ljava/beans/PropertyChangeListener; Code LineNumberTable LocalVariableTable this Lorg/openide/awt/GlobalManager; lookup Lorg/openide/util/Lookup; MethodParameters findManager ;(Lorg/openide/util/Lookup;Z)Lorg/openide/awt/GlobalManager; map lr *Lorg/openide/awt/ContextManager$LookupRef; ref g context survive Z LocalVariableTypeTable :Ljava/lang/ref/Reference<Lorg/openide/awt/GlobalManager;>; StackMapTable � java/lang/Throwable 
clearCache Y(Lorg/openide/awt/ContextManager$LookupRef;Lorg/openide/awt/GlobalManager$GMReference;Z)V +Lorg/openide/awt/GlobalManager$GMReference; findGlobalAction key Ljava/lang/Object; Ljavax/swing/ActionMap; a Ljavax/swing/Action; � javax/swing/Action registerListener B(Ljava/lang/Object;Lorg/openide/awt/GeneralAction$BaseDelAction;)V existing Ljava/util/Set; -Lorg/openide/awt/GeneralAction$BaseDelAction; >Ljava/util/Set<Lorg/openide/awt/GeneralAction$BaseDelAction;>; unregisterListener ev Lorg/openide/util/LookupEvent; all Ljava/util/Collection; prev QLjava/util/Collection<+Lorg/openide/util/Lookup$Item<+Ljavax/swing/ActionMap;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; notifyListeners 1(Ljavax/swing/ActionMap;Ljavax/swing/ActionMap;)V del actions k now keys Ljava/util/HashSet; allPrev [Ljava/lang/Object; allNow 'Ljava/util/HashSet<Ljava/lang/Object;>; 	isSurvive x0 x1 !Lorg/openide/awt/GlobalManager$1; <clinit> 
SourceFile GlobalManager.java InnerClasses Result% org/openide/awt/ContextManager 	LookupRef SurviveManager GMReference BaseDelAction Item      �   \ ]    4   �    �  7   �    �  & '  �    �     �    �     �    �  � �        �        3*� *� Y� � *� Y� � *+� � $*� $*� (*� .�    �       9  5  :  ; % < - = 2 > �       3 � �     3 � �  �    �   	 � �  �  p     �� 2YM�� 	� 5� � 2N� 8Y*� ::-� ; � A:� � � C� :� 6� � FY*� H� � Y*� :� KY� M:-� P W,ð:,��   z {   {  {    �   .    A  B  C  D + E > F C G ] H k I v K { L �   >   g �    ] � �  + P �   > = � �    � � �     � � �  �      g � �  + P � �  �   8 �  B <�   < 8 AG �  G �      � �   	 �   �    � �  �   �     7� 2YN�� 	� 5� � 2:*� ; +� *� T W-ç 
:-���   , /   / 3 /    �       P  Q  R ! S * U 6 V �   *    �     7 � �     7 � �    7 � �  �       � �  �    �  B <D ��  �    �   �   �    � Y  �   �     D+� �*� � C� M,� � ,+� WN� Z� ^� d� � Z� ^j� Y+SY-S� l-�    �       Y  Z  \  ]  ^ + _ B b �   *    D � �     D � �   3 � �   % � �  �    �  D �� # � �    �    �   �       a+� �� 2YN�*� +� ; � p:� � rY� t:*� +� P W,� u W,� Y� y*� � C� � z-ç 
:-���   V Y   Y ] Y    �   .    f  g  i  j  k  l ( m 5 o > p T q ` r �   *   :    a � �     a � �    a �  �      :  �   % � /  p� #    {   ��  �   	 �   �      �   �     J+� �� 2YN�*� +� ; � p:� !,� � W� � � *� +� T W-ç 
:-���   ? B   B F B    �   * 
   u  v  x  y  z  { ( | 2 } = � I � �   *   #    J � �     J � �    J �  �      #  �    � 7 D ��  �   	 �   �    0 1  �  j     �*� $� �M,� � � � ,� � � � � �� �� N� Z� ^� d� !� Z� ^�-� �� Z� ^�*� � C� �*� � C� :-� �*-� �:*� Y� � � Z� ^� d� � Z�� �� �� �Y*� �� ��    �   :    �  � * � 6 � B � T � ` � f � g � p � } � � � � � � � �   >    � � �     �   �	  * z � �  ` D
 �  p 4 � �  �      �  �    �  �S � * �  � )  �              �  �     �+� � Y� yL,� � Y� yM� �Y� �N+� �:,� �:� -� ¶ �W� -� ¶ �W-� �:� � � V� � :*� � ; � p:� ���� � :		� � � 	� � � {:

� 
+,� z��ݧ���    �   N    �  �  �   � & � , � 1 � ; � @ � J � c � s � x � { � � � � � � � � � � � �   \ 	 �  
 s 7  c G �    � � �     �
 �    � �    �  & �  , �  �     s 7    �  �   - 
� " ��  �� *  p�  �"� �  �   	
      �  �   ,     �    �       � �        � �    � �  �   @     ,�    �       � �         � �     
 �     � �  �   	
   �     J  �   D     *+� �    �       . �         � �      �         �   ;      � ѳ Z� Y� � 2� Y� � 5�    �       /  1  2     !"   :  ) #	 8$&  F '  �       K (  { �)  � *	