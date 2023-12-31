����   4 �
      #org/openide/util/actions/NodeAction <init> ()V  ;org/openide/util/actions/CookieAction$CookiesChangeListener
  
   *(Lorg/openide/util/actions/CookieAction;)V	      %org/openide/util/actions/CookieAction listener =Lorg/openide/util/actions/CookieAction$CookiesChangeListener;  cookies
     getProperty &(Ljava/lang/Object;)Ljava/lang/Object;  [Ljava/lang/Class;
     cookieClasses ()[Ljava/lang/Class;
     ! putProperty 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  # $ % setNodes ([Lorg/openide/nodes/Node;)V
  ' ( ) doEnable ([Lorg/openide/nodes/Node;)Z + :org/openide/util/actions/CookieAction$CookieDelegateAction
 * -  . C(Lorg/openide/util/actions/CookieAction;Lorg/openide/util/Lookup;)V
  0 1 2 resolveSupported ([Lorg/openide/nodes/Node;)I
  4 5 6 mode ()I
  8 9  
getCookies ;  org/openide/util/Lookup$Template
 : =  > (Ljava/lang/Class;)V
 @ A B C D org/openide/nodes/Node 	getLookup ()Lorg/openide/util/Lookup;
 F G H I J org/openide/util/Lookup 
lookupItem B(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Item; PROP_COOKIES Ljava/lang/String; ConstantValue MODE_ONE I    	MODE_SOME    MODE_ALL    MODE_EXACTLY_ONE    MODE_ANY    serialVersionUID JS���!n� Code LineNumberTable LocalVariableTable this 'Lorg/openide/util/actions/CookieAction; 	Signature ()[Ljava/lang/Class<*>; ret StackMapTable enable activatedNodes [Lorg/openide/nodes/Node; MethodParameters createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; actionContext Lorg/openide/util/Lookup; 	supported templ "Lorg/openide/util/Lookup$Template; cookie Ljava/lang/Class; n Lorg/openide/nodes/Node; LocalVariableTypeTable %Lorg/openide/util/Lookup$Template<*>; Ljava/lang/Class<*>; [Ljava/lang/Class<*>; h 
SourceFile CookieAction.java InnerClasses CookiesChangeListener CookieDelegateAction Template � org/openide/util/Lookup$Item Item!       K L  M      N O  M    P  Q O  M    R  S O  M    T  U O  M    V  W O  M    X  Y Z  M    [           ]   ?     *� *� Y*� 	� �    ^   
    4  O _        ` a   5 6      b    c  9   ]   u     *� � L+� +�*� L*+� W+�    ^       b 
 d  e  h  i  k _        ` a   
  d   e    �   b    c  f )  ]   ^     +�� �*� +� "*+� &�    ^       w  x  |   _        ` a      g h  e     i    g    j k  ]   >     
� *Y*+� ,�    ^       � _       
 ` a     
 l m  i    l     ( )  ]   �     B*+� /=� �*� 3>~� (~� 	+�� ~� 	+�� ~� +�� � �    ^       �  � 
 �  �  � _   *    B ` a     B g h   < n O   1 5 O  e    � � @ i    g    1 2  ]  o     e=*� 7N+:�66� M2:-:�6	6

	� .
2:� :Y� <:� ?� E� 	�� 	�
��ф����    ^   .    �  �  �   � 9 � D � Q � T � W � ] � c � _   H  D  o p  9  q r    = s t    e ` a     e g h   c d O   ^    u      D  o v  9  q w   ^  x  e   P �    y  y  �    y  y @   +�    y  y  �  i    g    z    { |   "    }  *  ~  : F   � F �	