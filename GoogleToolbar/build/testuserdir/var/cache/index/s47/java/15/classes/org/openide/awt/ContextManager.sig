����   4�	      org/openide/awt/ContextManager LOG Ljava/util/logging/Logger;	   	 
 CACHE Ljava/util/Map;
     initSelectionAll "()Lorg/openide/util/Lookup$Result;
     <init> (Lorg/openide/util/Lookup;)V	     lookup Lorg/openide/util/Lookup;
      java/lang/Object ()V  java/util/HashMap
  	    ! 
 	listeners	  # $ 
 SURVIVE & (org/openide/awt/ContextManager$LookupRef
 %  ) * + , - java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; / java/lang/ref/Reference
 . 1 , 2 ()Ljava/lang/Object; 4 -org/openide/awt/ContextManager$SurviveManager
 3 6  7 >(Lorg/openide/util/Lookup;Lorg/openide/awt/ContextManager$1;)V 9 *org/openide/awt/ContextManager$GMReference
 8 ;  < N(Lorg/openide/awt/ContextManager;Lorg/openide/awt/ContextManager$LookupRef;Z)V ) > ? @ put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; ) B C - remove
  E F G findLSet 8(Ljava/lang/Class;)Lorg/openide/awt/ContextManager$LSet;
 I J K L M org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
  O P Q createResult B(Lorg/openide/util/Lookup$Result;)Lorg/openide/util/Lookup$Result; S #org/openide/awt/ContextManager$LSet
 R U  V 4(Lorg/openide/util/Lookup$Result;Ljava/lang/Class;)V
 R X Y Z add "(Lorg/openide/awt/ContextAction;)Z	 \ ] ^ _ ` org/openide/awt/ContextAction 
selectMode "Lorg/openide/awt/ContextSelection;	 b c d e `  org/openide/awt/ContextSelection ALL	  g h i selectionAll %Lorg/openide/awt/ContextManager$LSet;
 R k C l (Ljava/lang/Object;)Z
 R n o p isEmpty ()Z
 R r s t 
access$100 ((Lorg/openide/awt/ContextManager$LSet;)V
  v w p 	isSurvive
  y z M 
findResult
  | } ~ isEnabledOnData V(Lorg/openide/util/Lookup$Result;Ljava/lang/Class;Lorg/openide/awt/ContextSelection;)Z
  � � � listFromResult 2(Lorg/openide/util/Lookup$Result;)Ljava/util/List; � $org/openide/awt/ContextManager$LkpAE
 � �  � D(Lorg/openide/awt/ContextManager;Ljava/util/List;Ljava/lang/Class;)V
 � � � � � 'org/openide/awt/ContextAction$Performer enabled 5(Ljava/util/List;Lorg/openide/util/Lookup$Provider;)Z
 � � �  detach � � � � @ java/util/function/BiFunction apply � java/lang/Boolean
 � � � p booleanValue
  � � ~ isEnabledOnDataImpl	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level; � 'isEnabledOnData(result, {0}, {1}) = {2}
 � � � � valueOf (Z)Ljava/lang/Boolean;
 � � � � � java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V	 � � � � �  org/openide/awt/ContextManager$1 +$SwitchMap$org$openide$awt$ContextSelection [I
 b � � � ordinal ()I � java/util/HashSet
 � � � � � org/openide/util/Lookup$Result allItems ()Ljava/util/Collection;
 � �  � (Ljava/util/Collection;)V � � � � � java/util/Collection size � n �  org/openide/util/Lookup$Provider �  org/openide/util/Lookup$Template
 � �  � (Ljava/lang/Class;)V
 � � � � allInstances � � � � iterator ()Ljava/util/Iterator; � � � � p java/util/Iterator hasNext � � � 2 next � � � � 	getLookup ()Lorg/openide/util/Lookup;
 I � � � 
lookupItem B(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Item;	 R � � � result  Lorg/openide/util/Lookup$Result;
 � � � � � java/util/Collections unmodifiableList "(Ljava/util/List;)Ljava/util/List;
 � � � � actionPerformed Q(Ljava/awt/event/ActionEvent;Ljava/util/List;Lorg/openide/util/Lookup$Provider;)V � java/util/LinkedHashSet
 � � � java/util/ArrayList
 � �  � (I)V �  addAll (Ljava/util/Collection;)Z java/util/List
 � 
 � 	 	
 $assertionsDisabled Z
 l java/lang/Thread 	holdsLock java/lang/AssertionError
 
 p java/lang/Class desiredAssertionStatus	  org/openide/awt/GeneralAction 	Signature vLjava/util/Map<Lorg/openide/awt/ContextManager$LookupRef;Ljava/lang/ref/Reference<Lorg/openide/awt/ContextManager;>;>; GLjava/util/Map<Ljava/lang/Class;Lorg/openide/awt/ContextManager$LSet;>; ILorg/openide/awt/ContextManager$LSet<Lorg/openide/util/Lookup$Provider;>; Code LineNumberTable LocalVariableTable this  Lorg/openide/awt/ContextManager; MethodParameters findManager <(Lorg/openide/util/Lookup;Z)Lorg/openide/awt/ContextManager; map lr *Lorg/openide/awt/ContextManager$LookupRef; ref Ljava/lang/ref/Reference; g context survive LocalVariableTypeTable ;Ljava/lang/ref/Reference<Lorg/openide/awt/ContextManager;>; StackMapTable3 java/lang/Throwable 
clearCache Z(Lorg/openide/awt/ContextManager$LookupRef;Lorg/openide/awt/ContextManager$GMReference;Z)V ,Lorg/openide/awt/ContextManager$GMReference; registerListener 3(Ljava/lang/Class;Lorg/openide/awt/ContextAction;)V existing type Ljava/lang/Class; a Lorg/openide/awt/ContextAction; %Lorg/openide/util/Lookup$Result<TT;>; *Lorg/openide/awt/ContextManager$LSet<TT;>; Ljava/lang/Class<TT;>; $Lorg/openide/awt/ContextAction<TT;>; S<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/openide/awt/ContextAction<TT;>;)V unregisterListener 	isEnabled _(Ljava/lang/Class;Lorg/openide/awt/ContextSelection;Lorg/openide/awt/ContextAction$Performer;)Z all Ljava/util/List; enabler )Lorg/openide/awt/ContextAction$Performer; e Ljava/util/List<+TT;>; /Lorg/openide/awt/ContextAction$Performer<-TT;>; �<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/openide/awt/ContextSelection;Lorg/openide/awt/ContextAction$Performer<-TT;>;)Z 
runEnabled U(Ljava/lang/Class;Lorg/openide/awt/ContextSelection;Ljava/util/function/BiFunction;)Z callback Ljava/util/function/BiFunction; lLjava/util/function/BiFunction<Ljava/util/List<+TT;>;Lorg/openide/util/Lookup$Provider;Ljava/lang/Boolean;>; �<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Lorg/openide/awt/ContextSelection;Ljava/util/function/BiFunction<Ljava/util/List<+TT;>;Lorg/openide/util/Lookup$Provider;Ljava/lang/Boolean;>;)Z res v<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Result<TT;>;Ljava/lang/Class<TT;>;Lorg/openide/awt/ContextSelection;)Z 	instances Ljava/util/Collection; prov "Lorg/openide/util/Lookup$Provider; items template "Lorg/openide/util/Lookup$Template; ;Ljava/util/Collection<Lorg/openide/util/Lookup$Item<TT;>;>; DLorg/openide/util/Lookup$Result<Lorg/openide/util/Lookup$Provider;>; 'Lorg/openide/util/Lookup$Template<TT;>; X<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lorg/openide/awt/ContextManager$LSet<TT;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked lset S<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; b<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Result<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; {(Ljava/awt/event/ActionEvent;Lorg/openide/awt/ContextAction$Performer;Ljava/lang/Class;Lorg/openide/awt/ContextSelection;)V Ljava/awt/event/ActionEvent; perf �<T:Ljava/lang/Object;>(Ljava/awt/event/ActionEvent;Lorg/openide/awt/ContextAction$Performer<-TT;>;Ljava/lang/Class<TT;>;Lorg/openide/awt/ContextSelection;)V nt arr Ljava/util/ArrayList; col tmp Ljava/util/Collection<TT;>; Ljava/util/ArrayList<TT;>; Ljava/util/Collection<+TT;>; S<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Result<TT;>;)Ljava/util/List<+TT;>; F()Lorg/openide/util/Lookup$Result<Lorg/openide/util/Lookup$Provider;>; 
access$200 ;(Lorg/openide/awt/ContextManager;)Lorg/openide/util/Lookup; x0 x1 "Lorg/openide/awt/ContextManager$1; 
access$400 B(Lorg/openide/awt/ContextManager;)Lorg/openide/util/Lookup$Result; 
access$500 ()Ljava/util/Map; 
access$600 ()Ljava/util/logging/Logger; <clinit> 
SourceFile ContextManager.java InnerClasses Result 	LookupRef SurviveManager GMReference LSet LkpAE 	Performer Provider Template� org/openide/util/Lookup$Item Item� /org/openide/awt/ContextManager$NeverEmptyResult NeverEmptyResult              	 
      $ 
      ! 
           h i    	
          U     *� *� Y� � *+� �           A  B  C  D!       "#        $       	%&   p     �� YM�� 	� "� � N� %Y*� ':-� ( � .:� � � 0� :� 6� � 3Y*� 5� � Y*� :� 8Y� ::-� = W,ð:,��   z {   {  {       .    G  H  I  J + K > L C M ] N k O v Q { R!   >   g' 
   ]()  + P*+  > =,#    �-      �.
 /      g'  + P*0 1   8 �  B )�   ) % .G �  G �   I  2$   	-  .   45    �     7� YN�� 	� "� � :*� ( +� *� A W-ç 
:-���   , /   / 3 /           V  W  X ! Y * [ 6 \!   *   ' 
    7()     7*6    7.
 /      ' 1    �  B )D2� $   (  *  .   78   >     e� YN�*+� D:� ***� +� H� N:� RY+� T:*� +� = W,� WW,� [� a� *� W*� f,� WW-ç 
:-���   Z ]   ] a ]       2    _  `  a  b   c , d 9 f @ i J j O k X m d n!   4     � �   K9 i    e"#     e:;    e<= /   *     �>   K9?    e:@    e<A 1    � 9  R� D2� $   	:  <     B C8   7     n� YN�*+� D:� ",� jW� m� *� +� A W� q,� [� a� )*� f� "*� f,� jW*� f� m� *� u� *� f-ç 
:-���   c f   f j f       6    q  r  s  t  u ! v , w 1 z B { K | \ } a � m �!   *   T9 i    n"#     n:;    n<= /       T9?    n:@    n<A 1    � 1  R� /D2� $   	:  <     B  w p    ,     �           �!       "#   DE   	     C*+� x:*+,� {6-� .� !*� :-� �Y*+� �� �6� -� -� ��       & 	   �  �  �  �  � " � 5 � < � @ �!   H  " FG    C"#     C:;    C _ `    CHI   < � �   2J
 /   *  " FK    C:@    CHL   < �> 1   
 � 8 �$   :   _  H     M NO    �     <*+� x:*+,� {6� &*� :-� �Y*+� �� � � �� �6�           �  �  �  �  � 9 �!   H   FG    <"#     <:;    < _ `    <PQ   5 � �   +J
 /   *   FK    <:@    <PR   5 �> 1   	 � 9 �$   :   _  P     S  } ~    �     +*+,-� �6� � ��� Y,SY-SY� �S� ��           � 	 � ( �!   4    +"#     + � �    +:;    + _ `  	 "T
 /       + �>    +:@ $    �  :   _     U  � ~   �  	  @� �-� �.�     6             >   P   û �Y+� �� �:� � � � �+� �� � � � �+� �� � � �*� ˶ H:+� �� � � �� � � �� �Y,� �:� ҹ � :� � � #� � � �:� � � �� �����+� �� � � �*� ˶ H:+� �� � � �� � � �� �Y,� �:� ҹ � :� � � #� � � �:� � � �� ������       n    � ( � 5 � F � X � d � f � q � � � � � � � � � � � � � � � � � � � � � � � � � � � �( �7 �9 �< �> �!   p  5 VW  � XY  q ZZ �  � 8[\ ( XY  � ZZ �  8[\   @"#    @ � �   @:;   @ _ ` /   H  5 V]  q ZZ^  � 8[_  � ZZ^  8[_   @ �>   @:@ 1   B (�  �@�  @ � "  ��  � �&� � � "  ��  � �&� � $    �  :   _     U   F G    �     � YM�*� +� ( � R,ðN,�-�                    �  �  �!       "#     :; /       :@ 1    �     2$   :     `a    b c[ sd  z M    �     *+� DM,� ,� �N� *� +� HN-�           �  � 
 �  �  �!   4    � �    "#     :;   e i    � � /   *    �>    :@   e?    �> 1    �  R�  �$   :    f  P Q    H     +�           �!       "#     T � /       T> $   T     g  �h    �     %*-� x:*� :,+� �� �Y*-� �� �             $!   H    %"#     %Ji    %jI    %:;    % _ `    � �   FG /   *    %jL    %:@    �>   FK $   J j  :  _     k  � �   a     _+� �M� �Y,� �N-� � ,� � � � �Y-� � � �:-� � WM,�� ,�:� � �Y�:,�W:�       2       , 5 8 ? H Q X \!   R  , lW  E FG  Q mn    _"#     _ � �   ZoW   QpW  \ FG /   H  , lq  E FK  Q mr    _ �>   Zos   Qpq  \ FK 1    � 8 � �� $    �     t       �     >�� � �� �Y��*� f� *� ˶ HL*� RY+˷ T� f*� f� �              (! 6#!     (  � �    >"#  /     (  �^ 1       uvw    /     *� �           7!       x#     7    D     *+� �           7!        "#     x     yz {|    /     *� �           7!       x#  }~          � �           7�          � �           7 �     Z      +�� � ��� � Y� � � Y� � "�           7  8  :   ;1    @ �   ��   b  � I�	 % �  3 �  �     8 �  R �  � �  � \�  � I�	 � I� � I�	� � 