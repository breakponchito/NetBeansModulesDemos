����   4
      org/openide/awt/ContextAction <init> �(Lorg/openide/awt/ContextAction$Performer;Lorg/openide/awt/ContextSelection;Lorg/openide/util/Lookup;Ljava/lang/Class;ZLorg/openide/awt/ContextAction$StatefulMonitor;)V	  	 
   org/openide/awt/StatefulAction first Z	     checkValueMonitor /Lorg/openide/awt/ContextAction$StatefulMonitor;
     updateStateProperties ()V
     
wasEnabled ()Z	     LOG Ljava/util/logging/Logger;	     ! " java/util/logging/Level FINE Ljava/util/logging/Level; $ Action {0} disabled, unchecked
 & ' ( ) * java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V , javax/swing/Action . SwingSelectedKey
 0 1 2 3 4 java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
  6 7 8 putValue '(Ljava/lang/String;Ljava/lang/Object;)V
  : ;  fetchStateValue	  = >  selValue @ 4Action {0}: old check state {1}, new check state {2} B java/lang/Object
 & D ) E A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  G H I firePropertyChange ;(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V K L M N O -org/openide/awt/ContextAction$StatefulMonitor getType ()Ljava/lang/Class;	  Q R S global  Lorg/openide/awt/ContextManager;	  U V W type Ljava/lang/Class;	  Y Z [ 
selectMode "Lorg/openide/awt/ContextSelection;   ] ^ _ apply A(Lorg/openide/awt/StatefulAction;)Ljava/util/function/BiFunction;
 a b c d e org/openide/awt/ContextManager 
runEnabled U(Ljava/lang/Class;Lorg/openide/awt/ContextSelection;Ljava/util/function/BiFunction;)Z  ]
  h i j hashCode ()I
 l m n i o java/util/Objects (Ljava/lang/Object;)I
  q r s equals (Ljava/lang/Object;)Z
 l u r v '(Ljava/lang/Object;Ljava/lang/Object;)Z
 x q y java/lang/String	  { | " FINER ~ Action {0} state: {1}
  � � � getValue &(Ljava/lang/String;)Ljava/lang/Object; K � � � createContextMonitor J(Lorg/openide/util/Lookup;)Lorg/openide/awt/ContextAction$StatefulMonitor;	  � �  enableMonitor	  � � � 	performer )Lorg/openide/awt/ContextAction$Performer;
 a � �  	isSurvive
  �  � �(Lorg/openide/awt/ContextAction$Performer;Lorg/openide/awt/ContextSelection;Lorg/openide/util/Lookup;Ljava/lang/Class;ZLorg/openide/awt/ContextAction$StatefulMonitor;Lorg/openide/awt/ContextAction$StatefulMonitor;)V � VCreated context Stateful instance: {0} from {1}, check monitor {2}, enable monitor {3}
  � �  
clearState K � �  clear
 a � � � unregisterListener 3(Ljava/lang/Class;Lorg/openide/awt/ContextAction;)V K � � � removeChangeListener %(Ljavax/swing/event/ChangeListener;)V
  � �  stopListeners
  � �  startListeners
 a � � � registerListener K � � � addChangeListener  � � � get q(Lorg/openide/awt/StatefulAction;Lorg/openide/util/Lookup$Provider;Ljava/util/List;)Ljava/util/function/Supplier; K � � � enabled 0(Ljava/util/List;Ljava/util/function/Supplier;)Z
 � � � � � 'org/openide/awt/ContextAction$Performer delegate F(Lorg/openide/util/Lookup$Provider;Ljava/util/List;)Ljava/lang/Object;
 � � � � � java/util/Collections singletonList $(Ljava/lang/Object;)Ljava/util/List;  � Code LineNumberTable LocalVariableTable this  Lorg/openide/awt/StatefulAction; actionContext Lorg/openide/util/Lookup; surviveFocusChange valueMonitor LocalVariableTypeTable %Lorg/openide/awt/StatefulAction<TT;>; MethodParameters nowState oldState StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; hash I obj Ljava/lang/Object; other #Lorg/openide/awt/StatefulAction<*>; key Ljava/lang/String; createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; checkMon 	enableMon a Ljavax/swing/Action; c � java/lang/Class lambda$fetchStateValue$3 G(Ljava/util/List;Lorg/openide/util/Lookup$Provider;)Ljava/lang/Boolean; all Ljava/util/List; 
everything "Lorg/openide/util/Lookup$Provider; lambda$fetchStateValue$2 lambda$fetchStateValue$1 lambda$fetchStateValue$0 	Signature :<T:Ljava/lang/Object;>Lorg/openide/awt/ContextAction<TT;>; 
SourceFile StatefulAction.java BootstrapMethods �
 � � � � � "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; � 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; �
   � � �
  � � ()Ljava/lang/Object;
 	 � �
  � � InnerClasses 	Performer StatefulMonitor  org/openide/util/Lookup$Provider org/openide/util/Lookup Provider %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles Lookup 0            >            �  �   �     *+,-� *� *� �    �       1  -  2  3 �   R     � �      � �     Z [     � �     V W     �      �      �   �        � �   �    �   Z   �   V   �   �   �        �   �     a*� *� � � � #*� %*-� /� 5�*� 9<*� <=*� <� � ?� AY*SY� /SY� /S� C*-� /� /� F�    �   6    7  8  9  : ! ; " = ' > , ? 1 @ D A O @ R C ` D �        a � �   ' : �   , 5 �   �       a � �   �    " �     �    ;   �   �     D*� *� � J +� *� P*� T*� X*� \  � `�*� P*� � J *� X*� f  � `�    �       G  H  I ) O �       D � �   �       D � �   �    )  i j  �   b     *� g<ah*� � k`<�    �       W  X  Y �        � �     � �  �        � �   �     �    r s  �   �     !*+� p� �+� M*� ,� � t� ��    �       f  g 
 i  j  k  m �        ! � �     ! � �    � �  �       ! � �     � �  �   	 
�   �    �   �     �    � �  �   �     4-+� w� (� � z}� AY*SY*� <� /S� C*� <� /�*+� �    �       r 	 s  t # s & v . x �       4 � �     4 � �  �       4 � �   �    . �    �   �     �    � �  �   � 	    c*� +� � M*� �� � *� �+� � N� Y*� �*� X+*� T*� P� �-,� �:� � �� AYSY*SY,SY-S� C�    �       }  ~ !  6 � @ � ` � �   4    c � �     c � �   X �   ! B �   @ # � �  �       c � �   �    �  KI K �    �   �     �     �   �   R     *� �*� � � �    �       �  �  � �        � �   �        � �   �     �    �   �   �     0*� � J L++� *� P*� � J *� �*� *� � *� ��    �       � 
 �  � ! � + � / � �       0 � �   
 & � W  �       0 � �   �    � ! � �     �    �   �   �     ?*� �*� � J L++� *� P*� � J *� �*� � **� 9� <*� *� � �    �   "    �  �  �  � % � , � 4 � > � �       ? � �    1 � W  �       ? � �   �   	 � % � �     �   � �  �   f     *� +*,+� �  � � � /�    �       P �         � �      � �     � �  �        � �   � �  �   ]     *� �+,� �� +�    �       P �         � �      � �     � �  �        � �   � �  �   y     !*� *� �,+� �� �*,+� �  � � � /�    �       J 
 K  J �        ! � �     ! � �    ! � �  �       ! � �   � �  �   ]     *� �+,� �� +�    �       L �         � �      � �     � �  �        � �    �    � �    � �   *  �  � � �  � �  � 
   "  �   K 	 