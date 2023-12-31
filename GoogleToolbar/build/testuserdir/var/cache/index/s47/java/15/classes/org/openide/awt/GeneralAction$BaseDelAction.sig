����   4q
      java/lang/Object <init> ()V	  	 
   +org/openide/awt/GeneralAction$BaseDelAction map Ljava/util/Map;	     key Ljava/lang/Object;	     fallback Ljavax/swing/Action;
      org/openide/awt/GlobalManager findManager ;(Lorg/openide/util/Lookup;Z)Lorg/openide/awt/GlobalManager;	     global Lorg/openide/awt/GlobalManager;
   ! " # $ org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;	  & ' ( weakL #Ljava/beans/PropertyChangeListener;	  * + , async Z	 . / 0 1 2 org/openide/awt/GeneralAction LOG Ljava/util/logging/Logger;	 4 5 6 7 8 java/util/logging/Level FINER Ljava/util/logging/Level; : 'Action {0}: Attaching propchange to {1}
 < = > ? @ java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V B C D E F javax/swing/Action addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V  I J K L M java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
 O P Q R S org/openide/util/Utilities actionsGlobalContext ()Lorg/openide/util/Lookup;	 U V W X Y java/lang/Boolean TRUE Ljava/lang/Boolean; [ surviveFocusChange
 U ] ^ _ equals (Ljava/lang/Object;)Z a asynchronous
  c  d S(Ljava/util/Map;Ljava/lang/Object;Lorg/openide/util/Lookup;Ljavax/swing/Action;ZZ)V f java/lang/StringBuilder
 e 
  i j k toString ()Ljava/lang/String;
 e m n o append -(Ljava/lang/String;)Ljava/lang/StringBuilder; q [key=
 e s n t -(Ljava/lang/Object;)Ljava/lang/StringBuilder; v , map= x ]
 e i	  { | , $assertionsDisabled
 ~  � � � java/awt/EventQueue isDispatchThread ()Z � java/lang/AssertionError
 � 
  � � � 
findAction ()Ljavax/swing/Action;
 � � � � � &org/openide/util/actions/ActionInvoker invokeAction H(Ljavax/swing/Action;Ljava/awt/event/ActionEvent;ZLjava/lang/Runnable;)V B � � � 	isEnabled	  � � � support "Ljava/beans/PropertyChangeSupport; �  java/beans/PropertyChangeSupport
 � �  � (Ljava/lang/Object;)V
 � C � .Action {0}: Adding global listener for key {1}
  � � � registerListener B(Ljava/lang/Object;Lorg/openide/awt/GeneralAction$BaseDelAction;)V
 � � � F removePropertyChangeListener
 � � � � hasListeners (Ljava/lang/String;)Z
  � � � unregisterListener � /Action {0}: Removed global listener for key {1}	  � �  attrs � java/util/HashMap
 � 
  � � � getValue &(Ljava/lang/String;)Ljava/lang/Object; I � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 � � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V I � � _ containsKey
 . � � � extractCommonAttribute I(Ljava/util/Map;Ljavax/swing/Action;Ljava/lang/String;)Ljava/lang/Object; B �
 � � � L � javax/swing/ActionMap ((Ljava/lang/Object;)Ljavax/swing/Action; B � � enabled
 � � � � (Ljava/lang/String;ZZ)V
  � � � findGlobalAction � ,org/openide/awt/GeneralAction$DelegateAction
  � � � 	isSurvive
 � c � #org/openide/util/ContextAwareAction � � � � createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action;
  � � � copyDelegate \(Ljavax/swing/Action;Lorg/openide/util/Lookup;)Lorg/openide/awt/GeneralAction$BaseDelAction;
 � �  � (Ljava/util/Map;)V I � � � entrySet ()Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; � java/util/Map$Entry �  � getKey java/lang/String � � � I � putIfAbsent

 k java/beans/PropertyChangeEvent getPropertyName
 ]	 4 8 FINE 1Action {0}: got property change from fallback {1}

 � getOldValue

 � getNewValue
  hashCode ()I I B	 � 
  ]	 � 	 I ]	 �  B ]
'()* � java/lang/Class desiredAssertionStatus, !java/beans/PropertyChangeListener 	Signature 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; Code LineNumberTable LocalVariableTable this -Lorg/openide/awt/GeneralAction$BaseDelAction; actionContext Lorg/openide/util/Lookup; StackMapTable8 org/openide/util/Lookup MethodParameters &(Ljava/util/Map;Ljavax/swing/Action;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; a listener first putValue '(Ljava/lang/String;Ljava/lang/Object;)V s Ljava/lang/String; value oldK java/lang/Throwable ret 
setEnabled (Z)V b updateState 2(Ljavax/swing/ActionMap;Ljavax/swing/ActionMap;Z)V 
prevAction 
nowEnabled 	nowAction sup prev Ljavax/swing/ActionMap; now fire prevEnabled f entry Ljava/util/Map$Entry; other LocalVariableTypeTable ;Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>; #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; k I m d .Lorg/openide/awt/GeneralAction$DelegateAction; obj <clinit> 
SourceFile GeneralAction.java InnerClasses BaseDelAction DelegateAction Entry      B+ 	                 + ,         � �     ' (     �  -   . | ,      d /       W*� *+� *,� *� *-� � **� � %*� )� &� -� 39� Y*SYS� ;*� %� A �   0   .   < = 	> ? @ A (B .C 3D KG VI1   H    W23     W      W      W45    W      W [ ,    W + , 6    � V   I 7 B  9         4      [   +    : /   � 	    .*++G� H � N,� T+Z� H � \� T+`� H � \� b�   0      L N 
O Q "R *L -T1        .23     .      .   9   	        j k /   Y     /� eY� g*� h� lp� l*� � ru� l*� � rw� l� y�   0      Y1       /23  ;    <   => /   �     (� z� � }� � �Y� ��*� �M,� ,+*� )� ��   0      _ ` a b 'd1        (23     (?@   A  6   	 �  B9   ?   � � /   u     (� z� � }� � �Y� ��*� �L+� � 	+� � �   0      g h i1       (23    A  6    �  BE ! E F /   �     J=*� �� *� �Y*� �� �=*� �+� �� )� -� 3�� Y*SY*� S� ;*� *� *� ��   0   & 	  m n 	o p r s #t =u Iw1        J23     JB (   HC , 6    � 19   B   ! � F /   �     F*� �� A*� �+� �*� �� �� .*� *� *� �� -� 3�� Y*SY*� S� ;*� ��   0      z { | } &~ @ E�1       F23     FB ( 6    � E9   B   DE /  m     Z*� �� *� �Y� �� �*Y:�*� �Nç :��:-� 
*+� �:*� �+,� � W-� -+� ,� � ��    "   " ' "   0   2   � � � � � *� -� 1� 8� D� H� Y�1   >   F �    Z23     Z G    ZH   * 0F �  - -I  6   u �       J�     �  �  �     �   � �      �   �  9   	   H    � � /   �     D*� �� *� �+� � � *� �+� H �*� *+� �M,� ,�*� �N-� � 
-+� � �   0      � � � )� -� /� 4�1   *    D23     D G  ) L   4 A  6    �  �  BF 9       MN /   5      �   0      �1       23     O , 9   O    PQ /  �     �*� � �6+� 2+*� � �:� #� � � � � 6*� %� � ,� p,*� � �:� *� %� A � � 6� *� � *� � � � � 6� 
*� �� :� � �� � � ѱ   0   J   � � � � � � � 3� >� B� L� Q� \� h� �� �� �� ��1   f 
  %R   e S ,  L cT   � -S ,  � U �    �23     �VW    �XW    �Y ,   �Z , 6   e � ' B@� � ) B@� 
@ ��    � � B �  ��     � � B �  �� 9   V  X  Y    � � /   c     *� *� � �L+� 
*� � +�   0   
   � �1       23    A  6    �  B@ B  � � /   [     � �Y*� *� ,+*� � �*� )� ܰ   0      �1        23     [     45 9   	[  4    � � /  -     �*� M,� ݙ ,� �+� � M*,+� �N*� �� `-� �� -� �Y*� �� � �� G*� �� � � � :� � � -� � � �:-� �� � �� � W���-�   0   .   � � � � � %� ,� >� d� � ��1   4  d \]    �23     �45   [    f^3 _     d \` 6    �  B� & �  �� 39   4    #a /   �     O�+�	�� E� -�� Y*SY*� S� ;*YN�*� �M-ç 
:-��,� ,�+�+�� ��  + 2 5   5 9 5   0   "   � � '� +� 0� <� @� N�1   *  0 U �  < U �    O23     Obc 6   ) � 5  
   J�   
 �  � 9   b    /   �     J*� � %� 
*� �<*� � � *� � =*� � � *� � >xx``�   0      � � *� @�1   *    J23    6de  *  fe  @ 
[e 6    F� H� H;    <    ^ _ /   �     `+*� �+� י S+� �M*� � *� ,� �!� �*� � *� ,�"�# � �*� � *� ,�$�% � ���   0   2   � � �    ( * A C Z	 \ ^1       Kgh    `23     `i  6    � " �� 9   i  ;    <   j  /   4      .�&� � � z�   0      #6    @ k   lm      .n  � .o  � Ip	