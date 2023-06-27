����   4�
      java/lang/Object <init> ()V  3org/netbeans/swing/tabcontrol/DefaultTabDataModel$L
  
   k(Lorg/netbeans/swing/tabcontrol/DefaultTabDataModel;Lorg/netbeans/swing/tabcontrol/DefaultTabDataModel$1;)V	      1org/netbeans/swing/tabcontrol/DefaultTabDataModel list 5Lorg/netbeans/swing/tabcontrol/DefaultTabDataModel$L;  org/openide/util/ChangeSupport
     (Ljava/lang/Object;)V	     cs  Lorg/openide/util/ChangeSupport;	     LOCK Ljava/lang/Object;
   ! " # $ java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
  & ' ( addAll (Ljava/util/Collection;)Z
 * + , - . java/util/Collections unmodifiableList "(Ljava/util/List;)Ljava/util/List;
  0 1 2 get (I)Ljava/lang/Object; 4 %org/netbeans/swing/tabcontrol/TabData
  6 7 8 size ()I
  : ; < toArray (([Ljava/lang/Object;)[Ljava/lang/Object; > ([Lorg/netbeans/swing/tabcontrol/TabData;
   @ A B equals )([Ljava/lang/Object;[Ljava/lang/Object;)Z
  D E  clear G <org/netbeans/swing/tabcontrol/event/VeryComplexListDataEvent
 F I  J e(Ljava/lang/Object;[Lorg/netbeans/swing/tabcontrol/TabData;[Lorg/netbeans/swing/tabcontrol/TabData;)V
  L M N fireIndicesChanged =(Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent;)V
  P Q R _setIcon (ILjavax/swing/Icon;[Z)Z T 8org/netbeans/swing/tabcontrol/event/ComplexListDataEvent
 S V  W (Ljava/lang/Object;IIIZ)V
  Y Z [ fireContentsChanged $(Ljavax/swing/event/ListDataEvent;)V	 3 ] ^ _ NO_ICON Ljavax/swing/Icon;
  a b c getTab *(I)Lorg/netbeans/swing/tabcontrol/TabData;
 3 e f g getIcon ()Ljavax/swing/Icon; i j k l 8 javax/swing/Icon getIconWidth	 3 n o _ icon	 3 q r s tip Ljava/lang/String;
  u v w _setText (ILjava/lang/String;[Z)Z
   y z { fill ([ZZ)V
  } Q ~ ([I[Ljavax/swing/Icon;[Z)[I
  � v � ([I[Ljava/lang/String;[Z)[I
 S �  � (Ljava/lang/Object;I[IZ)V � java/util/HashSet
 � �  � (I)V
  � � � toObjectArray ([I)[Ljava/lang/Integer; � & � java/util/Set � 6 � java/lang/Integer � : � [Ljava/lang/Integer;
  � � � toPrimitiveArray ([Ljava/lang/Integer;)[I	 3 � � s txt
 3 � � � getText ()Ljava/lang/String;
 3 � A � (Ljava/lang/Object;)Z
 � � � java/lang/String
 3 � � � getUserObject ()Ljava/lang/Object;
  � � � set '(ILjava/lang/Object;)Ljava/lang/Object; � javax/swing/event/ListDataEvent
 S �  � (Ljava/lang/Object;IIIZZ)V
 S � � � setAffectedItems +([Lorg/netbeans/swing/tabcontrol/TabData;)V
  � � � add (ILjava/lang/Object;)V
  � � [ fireIntervalAdded
  � ' � (ILjava/util/Collection;)Z
  � � 2 remove
 S �  � (Ljava/lang/Object;III)V
  � � [ fireIntervalRemoved � java/util/ArrayList
  � � � subList (II)Ljava/util/List;
 � �  � (Ljava/util/Collection;)V
  � � � removeRange (II)V � : � java/util/List � java/util/HashMap
 � �
 � � � � � � � java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
   � � � sort ([I)V � � 1 � &(Ljava/lang/Object;)Ljava/lang/Object;
  � � N fireIndicesAdded
  � � N fireIndicesRemoved	  � � � listenerList Ljava/util/ArrayList;
 � 
 � � � �
 � � � � � � � � iterator ()Ljava/util/Iterator; java/util/Iterator hasNext ()Z � next
 ;org/netbeans/swing/tabcontrol/event/ComplexListDataListener	 [ intervalAdded
   
fireChange	 [ intervalRemoved	 [ contentsChanged	 N indicesAdded	 N indicesRemoved	 N indicesChanged! java/lang/StringBuffer
 #$% getClass ()Ljava/lang/Class;
'()* � java/lang/Class getName
 , - (Ljava/lang/String;)V/  size =
 123 append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
  6
 627 (I)Ljava/lang/StringBuffer;9  - 
 3;< � toString
 >2? (C)Ljava/lang/StringBuffer;
 ;
 BCD addChangeListener %(Ljavax/swing/event/ChangeListener;)V
 FGD removeChangeListener
 IJK indexOf (Ljava/lang/Object;)I
 �MN 8 intValueP *org/netbeans/swing/tabcontrol/TabDataModel 	Signature TLjava/util/ArrayList<Lorg/netbeans/swing/tabcontrol/event/ComplexListDataListener;>; Code LineNumberTable LocalVariableTable this 3Lorg/netbeans/swing/tabcontrol/DefaultTabDataModel; data MethodParameters getTabs ()Ljava/util/List; ;()Ljava/util/List<Lorg/netbeans/swing/tabcontrol/TabData;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; index I setTabs oldContents vclde >Lorg/netbeans/swing/tabcontrol/event/VeryComplexListDataEvent; StackMapTable setIcon (ILjavax/swing/Icon;)V clde :Lorg/netbeans/swing/tabcontrol/event/ComplexListDataEvent; i widthChanged [Z Zl 'Lorg/netbeans/swing/tabcontrol/TabData; setToolTipTextAt (ILjava/lang/String;)V tooltip setText currWidthChanged toFire [I idx indices [Ljava/lang/String; changed changedCountvy icons [Ljavax/swing/Icon; currChanged setIconsAndText +([I[Ljava/lang/String;[Ljavax/swing/Icon;)V o allIndicesToFire Ljava/util/Set; all allPrimitive iconWidthsChanged txtWidthsChanged iconsToFire 	txtToFire fire LocalVariableTypeTable $Ljava/util/Set<Ljava/lang/Integer;>; ([I[Ljavax/swing/Icon;)V ([I[Ljava/lang/String;)V setTab +(ILorg/netbeans/swing/tabcontrol/TabData;)V olddata txtChg compChg lde addTab addTabs ,(I[Lorg/netbeans/swing/tabcontrol/TabData;)V start 	removeTab td 
removeTabs end affected Ljava/util/List; 9Ljava/util/List<Lorg/netbeans/swing/tabcontrol/TabData;>; -([I[Lorg/netbeans/swing/tabcontrol/TabData;)V key Ljava/lang/Integer; currData m Ljava/util/Map; KLjava/util/Map<Ljava/lang/Integer;Lorg/netbeans/swing/tabcontrol/TabData;>; addComplexListDataListener @(Lorg/netbeans/swing/tabcontrol/event/ComplexListDataListener;)V listener =Lorg/netbeans/swing/tabcontrol/event/ComplexListDataListener;� java/lang/Throwable removeComplexListDataListener l event !Ljavax/swing/event/ListDataEvent; 	listeners OLjava/util/List<Lorg/netbeans/swing/tabcontrol/event/ComplexListDataListener;>; out Ljava/lang/StringBuffer; max "Ljavax/swing/event/ChangeListener; *(Lorg/netbeans/swing/tabcontrol/TabData;)I result 
SourceFile DefaultTabDataModel.java InnerClasses L� 3org/netbeans/swing/tabcontrol/DefaultTabDataModel$1 !   O  � � � Q   R                %    S   c     )*� *� Y*� 	� *� Y*� � *� Y� � �   T       A  8  :  < ( BU       )VW     � S   }     5*� *� Y*� 	� *� Y*� � *� Y� � *� +� � %W�   T       G  8  :  < ( H 4 IU       5VW     5X > Y   X   Z[ S   2     *� � )�   T       MU       VW  Q   \]    ^    b c S   @     *� � /� 3�   T       RU       VW     _` Y   _  ]    ^   a � S   �     D*� � 5� 3M*� ,� 9� =M+,� ?� �*� � C*� +� � %W� FY*,+� HN*-� K�   T   & 	   X  Y  \  ]   ` ' a 3 c > f C gU   *    DVW     DX >   9b >  > cd e    �   =Y   X  ]    ^   fg S   �     -�YTN*,-� O6� � SY*-3� U:*� X�   T       k  m  n  o & s , uU   >  & hi    -VW     -_`    -j _   %kl   m e   	 � ,nY   	_  j  ]    ^    Q R S   �     =,� � \M*� `:,� d� &-� d� h ,� h � � T,� m��   T   & 	   x  y  {  |  } % ~ 3  9 � ; �U   4    =VW     =_`    =j _    =kl   .Xo e   5 � (   in 3 n�     in 3 nY   _  j  k  pq S   \     *� `N-,� p�   T       �  �  �U   *    VW     _`    r s   Xo Y   	_  r   sq S   �     -�YTN*,-� t6� � SY*-3� U:*� X�   T       �  �  �  � & � , �U   >  & hi    -VW     -_`    - � s   %kl   m e   	 � ,nY   	_   �  ]    ^    v � S  �  
   �-T6+��:6� x6+�� B�YT:*+.,2� t�6-\33�T3� �3T����-3� � @+�� 	+:� 0�
:66		+�� 	3� +	.O��	�����   T   j    �  �  �  �  �  �   � ) � 6 � < � F � M � P � Y � _ � j � q � w � } � � � � � � � � � � � � � � �U   �  ) 0tl   Fj`  t uv  � !j` 	 � $w`  } *uv    �VW     �xv    � �y    �kl   �m   �zl   �{` e   5 	�   |}nn  � 6n� 
� |� � Y   x   �  k   Q ~ S  �     �-T6+��:6� x�YT:66		+�� 9*+	.,	2� O6�6-\33�T� �	T�	���-3� � @+�� 	+:	� 0�
:	6
6+�� 3� 	
+.O�
����	��   T   r    �  �  �  �  �  �  � " � , � 7 � < � C � M � R � U � \ � b � m � t � z � � � � � � � � � � � � � � � � �U   �  % =j` 	 w uv 	 � !j`  � $w` 
 � *uv 	   �VW     �xv    �~    �kl   �m   �zl   �{`   �tl  " ��m e   4 	� % 
 |�nnn  /� 
� |� � Y   x  ~  k  �� S  �    �YT:�YT:*+-� |:*+,� :3� 
3� � 6� � � � 6		� �+�  +� � SY*+� �:
*
� X� �� 	�� � 	�� `6
� �Y
� �:� *� �:� � � W� *� �:� � � W� � � �:� � � �:*� �:� SY*� �:*� X�   T   j    � 	 �  �  � & � ; � Q � V � b � p � v � y � � � � � � � � � �  � � � � � � �	
U   �  p hi 
 � � �  � � �  � v 7` 
 � k��  � +� �  � �v  hi   VW    xv    �y   ~  	�l   ��l   ��v  & ��v  ; �km  Q ��m 	�     � k�� e   b � 4  |}�nn||  @� @� )
@J�   
 |}�nn|| � ' �� 6Y   x   �  ~  ]    ^   f� S   �     -�YTN*+,-� |:� � SY*-3� �:*� X�   T          & ,U   >  & hi    -VW     -xv    -~   %kl   uv e    � ,n|Y   	x  ~  ]    ^   s� S   �     -�YTN*+,-� :� � SY*-3� �:*� X�   T      ! " # $ &( ,*U   >  & hi    -VW     -xv    - �y   %kl   uv e    � ,n|Y   	x   �  ]    ^    v w S   �     +*� `:,� �� -� �,� � T,� ���   T      . / 0 !1 '2 )4U   4    +VW     +_`    + � s    +kl   $Xo e   4 �    �n 3 n�     �n 3 nY   _   �  k  �� S   �     `,*� `� �� V*� `N,� �-� �� �6,� �-� �� � 6*� ,� �W� SY*� �:� 3Y,S� �*� X�   T   & 	  : ; < = 1> ;? LD YE _GU   H   M�o   @�m  1 .�m  L �i    `VW     `_`    `Xo e    � . 3@� /Y   	_  X  ]    ^   �� S   �     (*� ,� �� SY*� UN-� 3Y,S� �*-� ��   T      K 	L O "P 'QU   *    (VW     (_`    (Xo   �i Y   	_  X  ]    ^   �� S   �     **� ,� � �W� SY*,�`d� UN-,� �*-� ��   T      U V Y $Z )[U   *    *VW     *�`    *X >   �i Y   	�  X  ]    ^   � � S   �     3� 3Y*� � /� 3SM*� � �W� SY*� �N-,� �*-� ɱ   T      _ ` a (d -e 2fU   *    3VW     3_`    � >  ( �i Y   _  ]    ^   � � S   �     Q� �Y*� � η �N� *� � �W� *� � ջ SY*� �:-� 3� � � =� �*� ɱ   T   "   n o p "r +t 8w Jx PyU   4    QVW     Q�`    Q�`   @��  8 �i �      @�� e   	 � " �Y   	�  �  ]    ^   �� S  ^     �� �Y,�� �N6,�� -� �Y+.� �,2� � W����+� �6+�� 0� �Y+.� �:-� � � 3:*� +.� ����ϻ SY*+� �:,� �*� ��   T   :   } 
~  *~ 0� 4� >� K� X� e� k� x� ~� ��U   \ 	  #j`  K ��  X �o  7 4j`    �VW     �xv    �X >  
 {��  x hi �     
 {�� e    �  �� "� � 3Y   	x  X  ]    ^   � � S   �     @+� �+�� 3M+�d>� ,*� +.� �� 3S����� SY*+� �N-,� �*-� �   T   & 	  � � 
� � #� )� 5� :� ?�U   4   j`    @VW     @xv  
 6� >  5 hi e    �  =� Y   x  ]    ^    7 8 S   2     *� � 5�   T      �U       VW  ]    ^   !�� S   �     -*� YM�*� �� *� �Y� �� �*� �+� �W,ç N,�-��   $ '   ' * '   T      � � � � "� ,�U       -VW     -�� e    �  M�� Y   �  ]    ^   !�� S   �     *� YM�*� �+� �W,ç N,�-��            T      � � � �U       VW     �� e    �   	  �� Y   �  ]    ^    � [ S       YM*� YN�*� �� -ñ� �Y*� � �M-ç 
:-��,� � N-�  � -� �	:+� ���*� ��  	  $    ! $   $ ( $   T   .   � � 	� � � � +� F� N� Q� X�U   *  F ��    YVW     Y��   W�� �      W�� e    �  � P�� � � Y   �    � [ S       YM*� YN�*� �� -ñ� �Y*� � �M-ç 
:-��,� � N-�  � -� �	:+� ���*� ��  	  $    ! $   $ ( $   T   .   � � 	� � � � +� F� N� Q� X�U   *  F ��    YVW     Y��   W�� �      W�� e    �  � P�� � � Y   �    Z [ S       YM*� YN�*� �� -ñ� �Y*� � �M-ç 
:-��,� � N-�  � -� �	:+� ���*� ��  	  $    ! $   $ ( $   T   .   � � 	� � � � +� F� N� Q� X�U   *  F ��    YVW     Y��   W�� �      W�� e    �  � P�� � � Y   �    � N S       YM*� YN�*� �� -ñ� �Y*� � �M-ç 
:-��,� � N-�  � -� �	:+� ���*� ��  	  $    ! $   $ ( $   T   .   � � 	� � � � +� F� N� Q� X�U   *  F ��    YVW     Y�i   W�� �      W�� e    �  � P�� � � Y   �    � N S       YM*� YN�*� �� -ñ� �Y*� � �M-ç 
:-��,� � N-�  � -� �	:+� ���*� ��  	  $    ! $   $ ( $   T   .   � � 	� � � � +� F� N� Q� X�U   *  F ��    YVW     Y�i   W�� �      W�� e    �  � P�� � � Y   �    M N S       YM*� YN�*� �� -ñ� �Y*� � �M-ç 
:-��,� � N-�  � -� �	:+� ���*� ��  	  $    ! $   $ ( $   T   .   � � 	� �    + F N Q XU   *  F ��    YVW     Y�i   W�� �      W�� e    �  � P�� � � Y   �   < � S   �     [� Y*�"�&�+L+.�0W*�4=+�5W+8�0W>� (*� `:+�:�0Wd� 
+,�=W����+�@�   T   2   
    " * 1 8 B I P VU   4  8 �o  , *j`    [VW    L��   ?�` e    � , #� ]    ^   CD S   A     	*� +�A�   T   
   % &U       	VW     	�� Y   �  ]    ^   GD S   A     	*� +�E�   T   
   / 0U       	VW     	�� Y   �  ]    ^   J� S   =     	*� +�H�   T      4U       	VW     	�o Y   �  ]    ^    � � S   �     #+�� �M>+�� ,� �Y+.� �S����,�   T      8 9 : 9 !<U   *   j`    #VW     #�v   � � e    �  �� Y   �    � � S   �     +��
M>+�� ,+2�LO����,�   T      @ A B A DU   *   j`    VW     � �   �v e    � |� Y   �   �   ��      � �    