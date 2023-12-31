����   4y
      (org/openide/util/lookup/AbstractLookup$R 	initItems H(Lorg/openide/util/lookup/AbstractLookup$Storage;)Ljava/util/Collection;
  	 
   &org/openide/util/lookup/WaitableResult <init> ()V	     	reference :Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;	      8org/openide/util/lookup/AbstractLookup$ReferenceToResult lookup (Lorg/openide/util/lookup/AbstractLookup;
      &org/openide/util/lookup/AbstractLookup 
access$200 <(Lorg/openide/util/lookup/AbstractLookup;)Ljava/lang/Object;  .org/openide/util/lookup/AbstractLookup$Storage
   ! " # $ )org/openide/util/lookup/DelegatingStorage isSimple 3(Lorg/openide/util/lookup/AbstractLookup$Storage;)Z
  & # ' ()Z	  ) * + caches Ljava/lang/Object; - [Ljava/lang/Object;
  / 0 1 getFromCache (I)Ljava/lang/Object; 3 java/util/Set
  5 6 7 setReferences (ILjava/lang/Object;)V 9 java/util/Collection ; .[Lorg/openide/util/lookup/AbstractLookup$Pair; 8 = > ? size ()I A +org/openide/util/lookup/AbstractLookup$Pair 8 C D E toArray (([Ljava/lang/Object;)[Ljava/lang/Object; G java/lang/Object	  I J + 	listeners
  L M N modifyListenerList H(ZLorg/openide/util/LookupListener;Ljava/lang/Object;)Ljava/lang/Object;
  P Q R getItemsCache 0()[Lorg/openide/util/lookup/AbstractLookup$Pair;
  T U  clearCaches
  W X Y allItemsWithoutBeforeLookup ()Ljava/util/Collection; 8 [ D \ ()[Ljava/lang/Object;
  ^ _ ` 
access$300 )([Ljava/lang/Object;[Ljava/lang/Object;)Z b org/openide/util/LookupListener d java/util/ArrayList
 c =
 c C h "[Lorg/openide/util/LookupListener; j org/openide/util/LookupEvent
 i l  m #(Lorg/openide/util/Lookup$Result;)V
  o p q notifyListeners J([Ljava/lang/Object;Lorg/openide/util/LookupEvent;Ljava/util/Collection;)V
  s t u allInstances (Z)Ljava/util/Collection;	  w x y template "Lorg/openide/util/Lookup$Template;
  { | } beforeLookup %(Lorg/openide/util/Lookup$Template;)V
   � Y getInstancesCache
 c �  � (I)V 8 � � � iterator ()Ljava/util/Iterator; � � � � ' java/util/Iterator hasNext � � � � next ()Ljava/lang/Object;
 @ � � � getInstance
 � � � � �  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;
 � � � � � java/lang/Class 
isInstance (Ljava/lang/Object;)Z
 c � � � add
 � � � � � java/util/Collections unmodifiableList "(Ljava/util/List;)Ljava/util/List;
  � � � setInstancesCache (Ljava/util/Collection;)V
  � � � getClassesCache ()Ljava/util/Set; � java/util/HashSet
 � 	
 @ � 2 �
 � � � � unmodifiableSet  (Ljava/util/Set;)Ljava/util/Set;
  � � � setClassesCache (Ljava/util/Set;)V
  � � u allItems
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
  � � � 
access$400 Z(Lorg/openide/util/lookup/AbstractLookup;)Lorg/openide/util/lookup/AbstractLookup$Storage;
 � � � � unmodifiableCollection .(Ljava/util/Collection;)Ljava/util/Collection;
  � � � 
access$500 � *org/openide/util/lookup/AbstractLookup$ISE
 c 	  �  � *(Ljava/lang/Class;)Ljava/util/Enumeration; � � � � ' java/util/Enumeration hasMoreElements � � � � nextElement
  � � � extractPairs -(Ljava/util/ArrayList;)Ljava/util/Collection; � java/util/TreeSet	 � � � � � (org/openide/util/lookup/ALPairComparator DEFAULT Ljava/util/Comparator;
 � �  � (Ljava/util/Comparator;)V
 c �
  � � � matches S(Lorg/openide/util/Lookup$Template;Lorg/openide/util/lookup/AbstractLookup$Pair;Z)Z
 � �
  � � � setItemsCache � java/lang/StringBuilder
 � 	
 F � � � toString ()Ljava/lang/String;
 �  append -(Ljava/lang/String;)Ljava/lang/StringBuilder;  for 
 � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � 	Signature ?Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult<TT;>; Code LineNumberTable LocalVariableTable this *Lorg/openide/util/lookup/AbstractLookup$R; LocalVariableTypeTable /Lorg/openide/util/lookup/AbstractLookup$R<TT;>; s 0Lorg/openide/util/lookup/AbstractLookup$Storage; indx I 
maybeArray StackMapTable MethodParameters *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked Ljava/util/Set; ()Ljava/util/Collection<TT;>; c Ljava/util/Collection; 5()[Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>; Ljava/util/Collection<*>; (Ljava/util/Collection<*>;)V arr index obj addLookupListener $(Lorg/openide/util/LookupListener;)V l !Lorg/openide/util/LookupListener; removeLookupListener collectFires newArray Ljava/util/ArrayList; evAndListeners previousItems ll ev Lorg/openide/util/LookupEvent; Ljava/util/ArrayList<*>; *Ljava/util/Collection<Ljava/lang/Object;>;8 java/lang/Throwable -(Ljava/util/Collection<Ljava/lang/Object;>;)V item -Lorg/openide/util/lookup/AbstractLookup$Pair; callBeforeLookup Z items list it Ljava/util/Iterator; 2Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>; TT; Ljava/util/Collection<TT;>; JLjava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; Ljava/util/ArrayList<TT;>; HLjava/util/Iterator<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; (Z)Ljava/util/Collection<TT;>; 
allClasses clazz Ljava/lang/Class; Ljava/lang/Class<+TT;>; (Ljava/util/Set<Ljava/lang/Class<+TT;>;>; Ljava/lang/Override; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; ?(Z)Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; i en Ljava/util/Enumeration; ex ,Lorg/openide/util/lookup/AbstractLookup$ISE; 
saferCheck t ALorg/openide/util/lookup/AbstractLookup$Pair<Ljava/lang/Object;>; ZLjava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair<Ljava/lang/Object;>;>; 3[Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>; XLjava/util/ArrayList<Lorg/openide/util/lookup/AbstractLookup$Pair<Ljava/lang/Object;>;>; 3Lorg/openide/util/lookup/AbstractLookup$Storage<*>; L()Ljava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; Ljava/util/TreeSet; GLjava/util/TreeSet<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; �(Ljava/util/ArrayList<Lorg/openide/util/lookup/AbstractLookup$Pair<Ljava/lang/Object;>;>;)Ljava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; KLjava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; (Lorg/openide/util/lookup/AbstractLookup$Storage<*>;)Ljava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; 
access$700 r(Lorg/openide/util/lookup/AbstractLookup$R;Lorg/openide/util/lookup/AbstractLookup$Storage;)Ljava/util/Collection; x0 x1 C<T:Ljava/lang/Object;>Lorg/openide/util/lookup/WaitableResult<TT;>; 
SourceFile AbstractLookup.java InnerClasses R Storage ReferenceToResult Pairp org/openide/util/Lookup$Resultr org/openide/util/Lookup Result Template ISEw org/openide/util/Lookup$Item Item 0         	   
  J +          E     *� �      
   e f                    # '    ]     *� � � � L+� �      
   k m                       0 1    �     !*� %� �*� � (M,� ,� 
,� ,2��         w x 	{ } ~ �        !     !    +        !     	 	�  F       � �    E     	*� .� 2�         �       	         	  	        [ s  � �    y     *� %� *� *� � (�*+� 4�         � � � � �                                 � Y    E     	*� .� 8�         �       	         	  	        [ s  � �    y     *� %� *� *� � (�*+� 4�         � � � � �             !                      Q R    E     	*� .� :�         �       	         	  	   "     [ s  � �    �     (*� %� *� *� � (�*++� < � @� B � 4�         � � � � '�       (     ( !        (     ( #           	   $  6 7    �     ,*� � (N-� ,� -� ,:� *� � FY:� (,S�         � � � � &� +�   >   % -    ,     ,&    , +   $' +  # 	% -        ,      �  F�  ,   	&      U     f     *� � (� ,� *� � F� (�         � � �                       !()    X     *+*� H� K� H�      
   � �            *+             *   !,)    X     *+*� H� K� H�      
   � �            *+             *   - �   �     �*� OM*� S,� *� V� Z N,-� ]� �*Y:�*� H� ñ*� H� a� � aY*� H� aSN� *� H� c:� e� a� f� gNç :��-:� iY*� k:+� n�  % / l   0 i l   l q l      J   � � 	� � � �  � %� ,� 0� :� L� U� f� t� w� �� ��   f 
  	. -  I % h  U */  f % h    �     �0!   �1 -  t % h  w 2 h  � 	34       U *5    �     �06    P �   ,�   F�    8 , g F  �    8 ,  F 7�    8 , g     0  	   9  t Y    B     *� r�         �                  	     t u   �     �� *� � *� � v� z*� ~M,� ,�*� VN� cY-� < � �:-� � :� � � 3� � � @:� �:*� � v� �� �� � �W���� �M*,� �,�      F   � � � � �   % 4 < F R	 Y k s v | �   R  R !:;  Y ' +    �     �<=   i!  % ^>!  4 O?/  < G@A    H  R !:B  Y 'C    �    iD  % ^>E  4 O?F  < G@G     � 
 8�  8 c �6   <  	   H I �   $     d*� � *� � v� z*� �L+� +�� �Y� �L*� V� � M,� � � $,� � � @N-� �:� +� � W���+� �L*+� �+�      6        # $% A& G( L) U+ X- ]. b0   *  G JK  A :;    d    N    *  G JL  A :B    d    NM     �  2�  �&� 	       N    � Y    B     *� ��         7                  	   O    N    � u    q     � *� � *� � v� z*� V�         ; < >            <=                 <  	   P    N    X Y   �     �*� OL+� +� �� ��M*� � � �N*-� � �:*� � � �W�:� cY� �M-� � :� � � � � � @:,� �W���*� � � �W� :*� � � �W�*,� �   ( 6 �  ( w   6 i w   w y w      R   C E 	F I J N (\ 3N 6O 8R @T IV SW _X fY i\ t] w\ �] �^   H  _ Q;  I  RS  8 1TU    �    �  ;   zV/   oW    >  _ QX  I  RY    �    � Z   zV[   oW\    / �  :� $   : c   ��  � �� M7	   ]  � �    �     C� �Y� � �M+� �N-� � � (-� � � @:*� � v� � 
,� �W���,� ˰         c d $e 4f ;h >i   *  $ Q;    C     CV/   8>^    *  $ QX    C     CV[   8>_     �  � �*�    V 	   `     [ s           Q+*� � v� �� � M� �Y� � �N,� � � (,� � � @:*� � v� � 
-� �W���*-� �-�      & 	  p s u %v 0x @y G{ J~ O�   4  0 Q;    Q     QW   @RS   5>^    4  0 QB    Q     QW\   @Ra   5>_     �  � �*   W  	   b  | }    t     +� �*� � v� �� *� � +� z�         � � �            W y                 W    � �    ^     "� �Y� �*� �� �� �*� � v���         �       "         "      N  cd    :     *+� �         ^       e     f  	   gh   ij   B   k   l  m  @ n	oqs	 �qt  � u vqx	