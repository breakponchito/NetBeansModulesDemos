����   4�
      org/openide/nodes/CookieSet baseForCookie 2(Lorg/openide/nodes/Node$Cookie;)Ljava/lang/Class;
   	 
 <init> <(Lorg/openide/nodes/CookieSetLkp;Lorg/openide/util/Lookup;)V
    	  java/lang/Object ()V  java/util/HashMap
   	  (I)V	     map Ljava/util/HashMap;  org/openide/util/ChangeSupport
   	  (Ljava/lang/Object;)V	     ! cs  Lorg/openide/util/ChangeSupport;	  # $ % ic  Lorg/openide/nodes/CookieSetLkp;	  ' ( ) lookup Lorg/openide/util/Lookup; + org/openide/nodes/CookieSetLkp
 * - 	 . '(Lorg/openide/nodes/CookieSet$Before;)V	  0 1 2 
QUERY_MODE Ljava/lang/ThreadLocal; 4 org/openide/nodes/AbstractNode
 3 6 	 7  (Lorg/openide/nodes/CookieSet;)V
 3 9 : ; 	getLookup ()Lorg/openide/util/Lookup;
  = >  addImpl
  @ A  fireChangeEvent
  C D E getClass ()Ljava/lang/Class;
  G H I registerCookie &(Ljava/lang/Class;Ljava/lang/Object;)V
 * K L  add
  N O  
removeImpl
  Q R I unregisterCookie
 * T U  remove
 * W X Y beforeLookupImpl (Ljava/lang/Class;)V
  [ \ ] lookupCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 _ ` a b c java/lang/ThreadLocal get ()Ljava/lang/Object;
  e f g findR 2(Ljava/lang/Class;)Lorg/openide/nodes/CookieSet$R;
 i j k l m org/openide/nodes/CookieSet$R cookie !()Lorg/openide/nodes/Node$Cookie; o java/util/Set
  q r s keySet ()Ljava/util/Set; n u v w addAll (Ljava/util/Collection;)Z y 'org/openide/nodes/CookieSet$CookieEntry
 _ { |  set
 x ~  � 	getCookie "(Z)Lorg/openide/nodes/Node$Cookie; � org/openide/nodes/Node$Cookie
 � � � � � java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
  � � � enhancedQueryMode -(Lorg/openide/util/Lookup;Ljava/lang/Class;)V
 � � � � cast &(Ljava/lang/Object;)Ljava/lang/Object;
 � � � � � org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
 � � � � � org/openide/util/Lookup$Result allItems ()Ljava/util/Collection; � � � � � java/util/Collection size ()I � +org/openide/util/lookup/AbstractLookup$Pair � � � � iterator ()Ljava/util/Iterator; � $org/openide/nodes/CookieSet$PairWrap � � � � c java/util/Iterator next � org/openide/util/Lookup$Item
 � � 	 � !(Lorg/openide/util/Lookup$Item;)V
  � � � addChangeListener %(Ljavax/swing/event/ChangeListener;)V
  � � � removeChangeListener � java/util/HashSet
 �  � +org/openide/nodes/CookieSet$CookieEntryPair
 � � 	 � ,(Lorg/openide/nodes/CookieSet$CookieEntry;)V
 � � � � � java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set; � .[Lorg/openide/util/lookup/AbstractLookup$Pair;
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
  � �  
fireChange
 � � � � 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class;
 i 
  � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 i � L � "(Lorg/openide/nodes/Node$Cookie;)V
 � � � E getSuperclass
 � � � � getInterfaces ()[Ljava/lang/Class;
 i � U � "(Lorg/openide/nodes/Node$Cookie;)Z � "java/lang/IllegalArgumentException
 � 
 x � 	 � 9(Lorg/openide/nodes/CookieSet$Factory;Ljava/lang/Class;)V	 � � � � � org/openide/nodes/CookieSet$C INSTANCE Lorg/openide/nodes/CookieSet$C;
 * � L � H(Ljava/lang/Object;Lorg/openide/util/lookup/InstanceContent$Convertor;)V	 x � � � factory %Lorg/openide/nodes/CookieSet$Factory;
 * � U � � C	 i cookies Ljava/util/List;	 i base Ljava/lang/Class;
 � java/util/List � hasNext ()Z � C � C
 * replaceInstances D(Ljava/lang/Class;[Ljava/lang/Object;Lorg/openide/nodes/CookieSet;)V
  b �
 x 
access$000 <(Lorg/openide/nodes/CookieSet$CookieEntry;)Ljava/lang/Class; � C
 _   org/openide/util/Lookup$Provider 	Signature +Ljava/lang/ThreadLocal<Ljava/lang/Object;>; ELjava/util/HashMap<Ljava/lang/Class;Lorg/openide/nodes/CookieSet$R;>; Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/CookieSet; MethodParameters createGeneric C(Lorg/openide/nodes/CookieSet$Before;)Lorg/openide/nodes/CookieSet; before $Lorg/openide/nodes/CookieSet$Before; al an  Lorg/openide/nodes/AbstractNode; StackMapTable2 java/lang/Throwable Lorg/openide/nodes/Node$Cookie; Ljava/lang/Object; clazz LocalVariableTypeTable Ljava/lang/Class<TT;>; ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; keys Ljava/util/Set; r Lorg/openide/nodes/CookieSet$R; ret 	queryMode "Ljava/util/Set<Ljava/lang/Class;>; i I type items Ljava/util/Collection; arr it Ljava/util/Iterator; Ljava/lang/Class<*>; :Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<*>;>; 5Ljava/util/Iterator<+Lorg/openide/util/Lookup$Item;>; 0(Lorg/openide/util/Lookup;Ljava/lang/Class<*>;)V l "Ljavax/swing/event/ChangeListener; entryQueryMode %(Ljava/lang/Class;)Ljava/lang/Object; c prev entryAllClassesMode exitQueryMode *(Ljava/lang/Object;)Ljava/util/Collection; Y(Ljava/lang/Object;)Ljava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair;>; exitAllClassesMode nc inter [Ljava/lang/Class; 3Ljava/lang/Class<+Lorg/openide/nodes/Node$Cookie;>;Y )(Ljava/lang/Class<*>;Ljava/lang/Object;)V 9(Ljava/lang/Class;Lorg/openide/nodes/CookieSet$Factory;)V cookieClass ce )Lorg/openide/nodes/CookieSet$CookieEntry;b #org/openide/nodes/CookieSet$Factory [(Ljava/lang/Class<+Lorg/openide/nodes/Node$Cookie;>;Lorg/openide/nodes/CookieSet$Factory;)V :([Ljava/lang/Class;Lorg/openide/nodes/CookieSet$Factory;)V *[Lorg/openide/nodes/CookieSet$CookieEntry; 4[Ljava/lang/Class<+Lorg/openide/nodes/Node$Cookie;>;e \([Ljava/lang/Class<+Lorg/openide/nodes/Node$Cookie;>;Lorg/openide/nodes/CookieSet$Factory;)V assign '(Ljava/lang/Class;[Ljava/lang/Object;)V t cookieClazz 	instances [Ljava/lang/Object; 1Ljava/util/List<Lorg/openide/nodes/Node$Cookie;>; TT; Ljava/lang/Class<+TT;>; [TT;n 4<T:Ljava/lang/Object;>(Ljava/lang/Class<+TT;>;[TT;)V T(Ljava/lang/Class<+Lorg/openide/nodes/Node$Cookie;>;)Lorg/openide/nodes/CookieSet$R; T(Lorg/openide/nodes/Node$Cookie;)Ljava/lang/Class<+Lorg/openide/nodes/Node$Cookie;>; 
access$100 x0 <clinit> 
SourceFile CookieSet.java InnerClasses~ org/openide/nodes/Node Cookie� "org/openide/nodes/CookieSet$Before Before R CookieEntry Result� &org/openide/util/lookup/AbstractLookup Pair PairWrap Item CookieEntryPair Factory C� 1org/openide/util/lookup/InstanceContent$Convertor� 'org/openide/util/lookup/InstanceContent 	Convertor Provider 1     
 1 2     !        "    !    $ %    ( )     	  #   5     *� �   $   
    9  :%       &'    	 
 #   z     (*� *� Y� � *� Y*� � *+� "*,� &�   $       <  .  0  = " > ' ?%        (&'     ( $ %    ( ( ) (   	 $   (   	)* #   K     � *Y*� ,L� Y++� �   $   
    O 	 P%       +,   	 
- % (   +    : ; #   �     -� /YL�*� &� � 3Y*� 5M*,� 8� &+ç N+�-�*� &�     #   # & #   $       [  \  ]  ^  ` ( a%      ./    -&'  0    �  D1�   L � #   F     
*+� <*� ?�   $       o  p 	 q%       
&'     
 l3 (    l    >  #   �     '*YM�*+� B+� F,ç N,�-�*� "� *� "+� J�            $       t  u  v  w  x & z%       '&'     ' l4 0    �      1� (    l    U � #   F     
*+� M*� ?�   $       �  � 	 �%       
&'     
 l3 (    l     O  #   �     '*YM�*+� B+� P,ç N,�-�*� "� *� "+� S�            $       �  �  �  �  � & �%       '&'     ' l4 0    �      1� (    l     ] #   l     *� "� *� "+� V*+� Z�   $       �  �  �%       &'     5 6       57 0    (   5      8  \ ] #  �     �M� /� ^N*Y:�*+� d:� -� 
*� "� *ð� hM-� n� -� n:*� � p� t Wç :��,� x�  +-� � /,� zM� 3,� x� }M� ',� #*� "� �+� �� 	+�� *� &+� �M+,� �� ��   ) R   * O R   R W R   $   ^    �  � 	 �  �  �  � % � * � 0 � 7 � = � L � Z � a � f � m � r � ~ � � � � � � � � � � �%   >  = 9:   7;<    �&'     �5   �=3  	 �>4 6     = 9?    �57 0   * 	� %   � �   i  � !E1� 	(   5      8  � � #  @     c� /� ^M,+� �*+� �� �N-� � � �-� � � �:-� � :6�� � �Y� � � �� �S���߲ /� z�   $   6    �  �  �  �  �  �   � + � 3 � > � T � Z � b �%   H  6 $@A    c ( )     c5   \B4   MCD  + 8E �  3 0FG 6        c5H   MCI  3 0FJ 0    �  �  ��  � �� #(   	 (  5      K  � � #   A     	*� +� ��   $   
    �  �%       	&'     	LM (   L    � � #   A     	*� +� ��   $   
    �  �%       	&'     	LM (   L   NO #   L     � /� ^L� /*� z+�   $       �  �  �%       P    	Q4 (   P   R c #   H     � /� ^K� /� �Y� �� z*�   $       �  �  �%      Q4   ST #   �     5� /� ^L� /*� z+� x� � �Y+� x� �� İ+� ʙ +� ʸ ̰�   $       �  �  �  � $  + 3%       5Q4    . l4 0   	 � $ (   Q      U V � #   n     � /� ^L� /*� z+� �� +� n��   $      	 
   %       Q4     l4 0    �  (   Q    A  #   6     *� � ұ   $   
    %       &'    H I #  <     i+� �+� �� �+�� �N*-� d:� � iY� �:*� +� �W,� �� �*+� �,� F+� �:6�� *2,� F����   $   :     ! # % ' !( *) 5, >. G0 M2 X3 b2 h5%   H  P @A    i&'     iP    i l4   TW   M;<  M XY 6       iPH   TWZ 0     � & � i� [� (   	P   l      \  R I #  !     V+� �+� �� �+�� �N*-� d:� ,� �� �W*+� �,� P+� �:6�� *2,� P����   $   2   > ? A E G !I +L 4N :P EQ OP US%   H  = @A    V&'     VP    V l4   AW   :;<  : XY 6       VPH   AWZ 0     �  � i� [� (   	P   l      \  L] #   �     F,� � �Y� ��� xY,+� �N*Y:�*+-� Fç :��*� "� *� "-� � �*� ?�   $ '   ' , '   $   * 
  W X [ \ ] !^ /_ 6` Ab Ec%   *    F&'     F^    F � �   0_` 6       F^Z 0     �    �a x  1� (   	^   �      c  Ld #  � 	 	   �,� � �Y� ��+�� xN*Y:�6+�� "*+2-� xY,+2� �[S� F����ç :��*� "� 66+:�66� !2:*� "-�2� � �����*� ?�   C F   F K F   $   >   g h k l m !n :m @p Nr Us Xt qu �t �x �y%   H   &@A  q P  X 0@A    �&'     �^Y    � � �   {Ee 6     q PZ    �^f 0   C � g � %E1� �   [ag[  � $  [ag  (   	^   �      h  U] #  @     l,� � �Y� ��N*Y:�*+� d:� '� h:� x� � xN-� �,� 
*+� Pç :��*� "� -� *� "-� � �*� ?�   F I   I N I   $   B   � � � � � � � &� .� 4� <� C� Q� \� g� k�%   >  & P3   );<    l&'     l^    l � �   ^_` 6       l^Z 0    � 6 x E1� (   	^   �      c  Ud #  �  
   �,� � �Y� ��+�� xN*Y:�6+�� G*+2� d:� 2� h:� x� #� x:-S� �,� *+2� P����ç :	�	�*� "� 3-:�66� !2:� *� "� � �����*� ?�   h k   k p k   $   Z   � � � � � !� +� 0� 7� ?� F� L� U� _� e� s� z� �� �� �� �� ��%   \ 	 F _`  7 (P3  + 4;<   K@A  � _`    �&'     �^Y    � � �   �Ee 6       �^f 0   & 	� g � D� E1� � g� (   	^   �      h �ij #  �    #�+� �� �+�� �N*-� Z:� �*Y:�*�  � d:� M�� E�:���	 :� � � � � �:	*� 	� P���ç :
�
�*� � P*� "� *� "� S��h,:�66� 2:*� <����*� ?� N*� "� G*YN�,:�66� 2:*� B� F����-ç 
:-��*� "+,*��  ! � �   � � �   �     $   z   � 	� � � � !� .� ;� B� H� N� m� z� }� �� �� �� �� �� �� �� �� �� �� �� �����"�%   f 
 m P3 	 B ;E  . O;<   � l3  � k4   �l  � k4   #&'    #5   #mn 6   >  B ;Eo  � kp   �lZ  � kp   #5q   #mr 0   i �  �� F 	  �s � �  i
 �  � %E1� � � 
s� � �    �s s  � D1� 	(   	5  m      t  f g #   R     *� +�� i�   $      	%       &'     P 6       PZ (   P      u 
   #   Q     *� x� *� x��*� �   $        %       P3  0    (   P      vw  #   /     *� �   $       )%       x3   y  #   #      � _Y�� /�   $       + z   {|   j  �}	� �	 i �  x � 
 � ��	 ���	 � �  � ��	 � � a �	 � � ���	 ��	