����   4h	      org/openide/awt/PropertyMonitor OBJECT_HASHCODE Ljava/lang/reflect/Method;	   	  OBJECT_EQUALS   
      java/util/Collections emptyMap ()Ljava/util/Map;
     <init> G(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
      java/lang/Object ()V	     listenerType I	    ! " 	listeners Ljava/util/List;	  $ % & type Ljava/lang/Class;	  ( ) * property Ljava/lang/String; , java/lang/StringBuilder
 + 
 + / 0 1 append -(Ljava/lang/String;)Ljava/lang/StringBuilder; 3 Value
 + 5 6 7 toString ()Ljava/lang/String; 9 : ; < = java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; ? Null A java/lang/Boolean
 @ C D E booleanValue ()Z G org/openide/awt/ActionState I #null K 	#non-null	  M N O checkedValue Ljava/lang/Object;
  Q R S initValueAccess ()Ljava/util/function/Function;	  U V W valueFactory Ljava/util/function/Function; Y ChangeListener [ java/lang/String
 ] ^ _ ` a org/openide/awt/GeneralAction 	readClass %(Ljava/lang/Object;)Ljava/lang/Class;	  c d & listenerInterface f Method h ActionProperty j javax/swing/Action
  5
  m  n &(Ljava/lang/Class;Ljava/lang/String;)V	  p q r actionMonitor /Lorg/openide/awt/ContextAction$StatefulMonitor; t "java/lang/IllegalArgumentException v ,Delegate or guard property must be specified
 s x  y (Ljava/lang/String;)V	  { | * 
methodName	  ~  � 
attachedTo Ljava/lang/ref/Reference;
 � � � < � java/lang/ref/Reference ()Ljava/lang/Object;
  � � � data
  � � � clearListeners (Ljava/lang/Object;)V � � � �  -org/openide/awt/ContextAction$StatefulMonitor clear � java/util/ArrayList
 �  � � � � � java/util/List add (Ljava/lang/Object;)Z	  � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINER Ljava/util/logging/Level; � {0}: attaching listener to {1}
 � � � � � java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  � � � addListeners � � � � remove � � � E isEmpty	  � � � weakListener Ljava/util/EventListener;	  � �  refRemoveListener � {0}: adding listener to {1}
 � � � � � java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
 � � � � � java/lang/reflect/Proxy getInvocationHandler 9(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler; � -org/openide/awt/PropertyMonitor$ProxyListener
 � � � � 
access$000 D(Lorg/openide/awt/PropertyMonitor$ProxyListener;Ljava/lang/Object;)V � java/lang/IllegalStateException
 �  � &java/lang/ReflectiveOperationException
 � � � �  java/lang/Exception printStackTrace � � � � removeChangeListener %(Ljavax/swing/event/ChangeListener;)V �
 � � � � 7 java/lang/Class getSimpleName
 � � � � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; � addPropertyChangeListener � !java/beans/PropertyChangeListener � java/lang/NoSuchMethodException � addChangeListener �  javax/swing/event/ChangeListener � java/lang/SecurityException � removePropertyChangeListener � �	  � �  refAddListener
  � �  initListenerReflection
  org/openide/util/WeakListeners propertyChange l(Ljava/beans/PropertyChangeListener;Ljava/lang/String;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
  Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
 	
 change X(Ljavax/swing/event/ChangeListener;Ljava/lang/Object;)Ljavax/swing/event/ChangeListener;
 �  c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Method;Ljavax/swing/event/ChangeListener;)V
 � getClassLoader ()Ljava/lang/ClassLoader; java/util/EventListener
 � newProxyInstance b(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;	 � � proxy � � �
 Z ! charAt (I)C
#$%&' java/lang/Character toUpperCase (C)C
 +) 0* (C)Ljava/lang/StringBuilder;
 Z,-. 	substring (I)Ljava/lang/String;0 is <
 �345 getReturnType ()Ljava/lang/Class;	 @78 & TYPE
 �:; E isEnum	 => & valType	 @A  	refGetter  CDE apply @(Lorg/openide/awt/PropertyMonitor;)Ljava/util/function/Function; C C �IJK size ()I �MNO toArray (([Ljava/lang/Object;)[Ljava/lang/Object;Q #[Ljavax/swing/event/ChangeListener;S javax/swing/event/ChangeEvent
RU  � �WXY stateChanged "(Ljavax/swing/event/ChangeEvent;)V[ java/lang/ref/WeakReference
ZU
 @^_` valueOf (Z)Ljava/lang/Boolean; �b <c (I)Ljava/lang/Object;
 ef � refreshListeners
 hij inspectAction (Ljavax/swing/Action;)ZlmnD = java/util/function/Function
 pq � interpretAsBooleans �t java/util/function/Supplier
 vwx singletonList $(Ljava/lang/Object;)Ljava/util/List; �z{| enabled 0(Ljava/util/List;Ljava/util/function/Supplier;)Z{
 Z� � equals i�� E 	isEnabled i��� getValue &(Ljava/lang/String;)Ljava/lang/Object;	 @��� TRUE Ljava/lang/Boolean;
 @
 � java/util/Collection� � 9 �� java/lang/Number
 ��� � 
isInstance
���K intValue
���� 7 java/beans/PropertyChangeEvent getPropertyName
 ��  update	����� org/openide/util/Lookup EMPTY Lorg/openide/util/Lookup; ���� createContextMonitor J(Lorg/openide/util/Lookup;)Lorg/openide/awt/ContextAction$StatefulMonitor;
 � � $(Lorg/openide/awt/PropertyMonitor;)V
 �� � (Ljava/lang/Throwable;)V� PropertyMonitor@
����� java/lang/System identityHashCode (Ljava/lang/Object;)I
 +� 0� (I)Ljava/lang/StringBuilder;� {� class = 
 ��� 7 getName� , property = � , valtype = � null� , checkval = 
 +� 0� -(Ljava/lang/Object;)Ljava/lang/StringBuilder;� }
 �� = reflectiveGet
 ���� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;�
 �� � getObjectMethod� hashCode KEY_CHECKED_VALUE ConstantValue KEY_LISTEN_INTERFACE KEY_INTERFACE_METHOD KEY_CUSTOM_CHECK KEY_NULL UNINITIALIZED���� NONE     PROPERTY_NAME    PROPERTY_ALL    CHANGE    CUSTOM    	Signature Ljava/lang/Class<TT;>; Ljava/lang/ref/Reference<TT;>; 4Ljava/util/List<Ljavax/swing/event/ChangeListener;>; CLjava/util/function/Function<Ljava/lang/Object;Ljava/lang/Object;>; Code LineNumberTable LocalVariableTable this !Lorg/openide/awt/PropertyMonitor; LocalVariableTypeTable &Lorg/openide/awt/PropertyMonitor<TT;>; MethodParameters +(Ljava/lang/Class<TT;>;Ljava/lang/String;)V b 	keyPrefix Ljava/util/Map; cv o mn customCheck StackMapTable L(Ljava/lang/Class<TT;>;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V getType ()Ljava/lang/Class<TT;>;
 java/lang/Throwable ()TT; d l "Ljavax/swing/event/ChangeListener; start Z TT; stop ex Ljava/lang/Exception; ex2 !Ljava/lang/NoSuchMethodException; ex3 falseGetter 
trueGetter pcl #Ljava/beans/PropertyChangeListener; chl pl /Lorg/openide/awt/PropertyMonitor$ProxyListener; c capitalizedName isGetter 	getGetter getter E()Ljava/util/function/Function<Ljava/lang/Object;Ljava/lang/Object;>; ll ev Ljavax/swing/event/ChangeEvent; prevData (TT;)V instance aFactory Ljava/util/function/Supplier; first Ljava/util/List<+TT;>; 3Ljava/util/function/Supplier<Ljavax/swing/Action;>; L(Ljava/util/List<+TT;>;Ljava/util/function/Supplier<Ljavax/swing/Action;>;)Z a Ljavax/swing/Action; v #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; e other context O(Lorg/openide/util/Lookup;)Lorg/openide/awt/ContextAction$StatefulMonitor<TT;>; name types [Ljava/lang/Class; sb Ljava/lang/StringBuilder; lambda$initValueAccess$2 lambda$initValueAccess$1 lambda$initValueAccess$0 
access$100 ()Ljava/lang/reflect/Method; 
access$200 <clinit> �<T:Ljava/lang/Object;>Ljava/lang/Object;Lorg/openide/awt/ContextAction$StatefulMonitor<TT;>;Ljava/beans/PropertyChangeListener;Ljavax/swing/event/ChangeListener; 
SourceFile PropertyMonitor.java BootstrapMethodsN
OPQRS "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; =V
 WD =Y
 ZC =\
 ]B = InnerClasses` org/openide/awt/ContextAction StatefulMonitor ProxyListenerd %java/lang/invoke/MethodHandles$Lookupf java/lang/invoke/MethodHandles Lookup      � � �   � �   � * �    2 � * �    X � * �    e � * �    g � * �    > �  �   � �  �   � �  �   � �  �   � �  �   � �  �   �  % & �   �  ) *    N O   > &   A     �     �          � �     � �   �  ! " �   �  d &    | *    q r    V W �   �  	            n �   j     *+,
� � �   �   
    �  ��        ��      % &     ) * �       ��      %� �   	 %   )  �   �    �  n  	  **� *� *� *+� #*,� '� +Y� --� .2� .� 4� 8 :� ;� +Y� --� .>� .� 4� 8 :� @� � @� B� H� J:*� L**� P� T� +Y� --� .X� .� 4� 8 ::� Z� 7*� \� b� +Y� --� .e� .� 4� 8 :� Z� 
� Z:� +Y� --� .g� .� 4� 8 :� *� Yi� k� l� o� ,� � sYu� w�*� o*� z�   �   n    �  | 	 �  �  �  � 4 � 9 � U � ] � q � w �  � � � � � � � � � � � � � � � � � � � � � �# �) ��   f 
 U � O   *��    * % &   * ) *   *� *   * �   4 � O  � � O  � � *  � 4 O �      *��    * %�    6 � m   � Z Z 9    A � � h  Z� 5 �    %   )  �   �  �    5 �   A     *� #�   �       ��       ��  �       ��  �     � � �   �     *YL�*� }� *� }� �� +ðM+�,�            �       �  �  ��       ��  �       ��      �  @ B	�     �  �   �     2*� �L+� *+� �*� o� *� o� � *YM�*� },ç N,�-��  " ) ,   , / ,   �   & 	   �  � 	 �  �  �  � " � ' � 1 ��       2��    - O �       2��      �  �      	�   � � �       [=*YN�*� � *� �Y� �� =*� +� � W-ç 
:-��� (*� �N� �� ��� Y*SY-S� �-� *-� ��   ' *   * . *   �   6    �  �  �  �  �  � % � 1 � 5 � : � Q � U � Z ��   *  :   O    [��     [   Y �     :      [��      �  O	� (�       � � �       M=*YN�*� � -ñ*� +� � W*� � � =� *� -ç 
:-��� *� �N-� *-� ��    3    0 3   3 7 3   �   :    �  �  �  �  �  � % � ) � . � : � > � C � G � L ��   *  C 	 O    M��     M   K �     C 	    M��      �  D	� �       � � �  z     �*� �� 
*� �� �� �� ��� Y*SY+S� �*� �    k          h   "   Q   Q   @*� �+� Y*� 'SY*� �S� �W� 6*� �� �� �+� ͧ %*� �+� Y*� �S� �W� � � �Y� ӿ� M,� �*� �*� o� *� o*� � �  & � � � & � � s �   N      & L g	 j x { � � � � � � � � � ��      �     ���     � � O �       ���       <B ��    �    �  �  �    \*� � �L*� b� 7*� #� +Y� -߶ .*� b� � .� 4� �Y*� bS� �L*� � c*� '�  *� #�� �YZSY�S� �L*� � M+� 7*� #�� �Y�S� �L*� � M*� #�� �Y�S� �L*� � 
M*� �M*� �    �            9   O   e*� #�� �YZSY�S� �M� [*� #�� �Y�S� �M� E*� #�� �Y�S� �M� /*� #� +Y� -�� .*� b� � .� 4� �Y*� bS� �M� 
N*� �*+� �*,� ��  F j m � r � � �  � � �  � � � �GJ � �GJ � �   � &  $ % 	' ) * >+ F. M/ e0 j4 m2 n5 r7 �8 �< �9 �: �; �B �? �@ �A �C �E �G �H �JKMNPGVJSKTPUQWVX[Y�   >  �   �  K    \��   Q �   � � �  �      \��     ( 	� < �#B � ^ �B �� # �+B �  � �   H     �   �      ]�       ��      � O �       ��  �    �    � �   H     �   �      b�       ��      � O �       ��  �    �    � � �  �    M*� �� 
*� � �*� �*YM�*� � ,ñ,ç N,�-�� �� ��� Y*SY+S� �*� �    �          �   "   L   k   �***� '+� �YM� �*� �+� Y*� 'SY,S� �W� �**+�YM� �*� �+� Y,S� �W� �**+�YN� �*� �+� Y-S� �W� d�� �Y+*� z*� �*�:*� b�� �Y*� bSYS�:*�Z� ��*� �+� Y*� �S� �W� � �Y� ӿ� 
:*� *� o� *� o*� �     &   ! # &   & ) &   B �4 � B �4 s �14 � �14 s �   ~   f g i j k l !n +q Bs hu wv �w �y �z �{ �} �~ � �� �� ����&�)�1�4�6�;�B�L��   R  t   �   �   � E  & O 6    M��    M � O �      M��        �  D	� <) � WB ��    �    R S �  �     �L*� '� �� +Y� -*� '��"�(*� '�+� .� 4M� +Y� -/� .,� .� 4N� +Y� -1� .,� .� 4:*� #-� � �L� :*� #� � �L+�2:�6� -@� &Z� �9� *� LH� *� LJ� L*�<*+�?*�B  �:*� #i� 
*�F  �*�G  �  X e h � X � � � X � � � �   N   � � 	� -� B� X� e� h� j� x� ~� �� �� �� �� �� �� �� ���   H  j   ~ D &  - �  *  B �! *  X l" *    ���    �#  �       ���     ? � h   � Z Z Z  �� 7 ��    � Z Z Z  �� �   $ �  �  7     _*YM�*� � ,ñ*� *� �H � �L �PL,ç N,�-��RY*�TM+N-�66� -2:,�V ����    ,    ) ,   , / ,   �   * 
  � � � � '� 1� :� P� X� ^��   4  ' %Q  P     _��   1 .%Q  : %&' �       _��     2 �   ]	�   P  �   PRP  �  f � �   �     :*� �M,+� �*� o� *� o� � ,� *,� �+� *+� �*�ZY+�\� }�   �   .   � � 
� � � � � $� (� -� 9��        :��     : � O   5( O �       :��     : �     �  �    �  �   ) � = �   �     *�?+� � ��M�]�      �     s �      � � ��           ��     * O �       ��      M ��   *   {| �  J     x+� � � � 
+�a N+� � � �*-�d-� �*� #i� *-� i�g�*� T-�k :*�o� �,� !*� o� *� o,�r � i�u�y ��   �   :   � � �  � %� )� +� 4� =� I� R� T� _� v��   4    x��     x � "    x+,   c- O  I / O �   *    x��     x �.    x+/   c-     F �  
�  !�   	 �  +  �   0 ij �   �     0+� �}*� '�~� 
+�� �+*� '�� ��� � �   �      � � � � ��       0��     012 �       0��      @�   1   q � �  w     �+� *� LH� ��*�<� *�<�6� *�<@� *� L� ��+���*� L+� k���*� L� Q+��� +���� � � �+� 9� +� 9�� � � ��+��� +����� � ��*� LJ� �*� L� Z� *� L+���*� L+� k���   �   V   � �     + 2 : F M T f m  � � � � � � ��       ���     �3 O �       ���      @ @ @ 
�   3   4 �   }     "+��� *� '� *� '+���~� �*���   �      ! " $ !%�       "��     "56 �       "��      �   5  7    8   XY �   O     *���   �   
   ) *�       ��     9' �       ��  �   9  7    8    � �  &     �*� *� *� *+� #� #*+� '� '*+� L� L*+� � *+�?�?*+� T� T*+�<�<*+� �� �*+� �� �*+� b� b*+� z� z+� o� *� o� *+� o���� � o�   �   J   ,  | 	 � - . / &0 .1 62 >3 F4 N5 V6 ^7 f8 m9 u; �=�       ���     �:� �       ���      � u     �   :   �� �   O     	� Y*���   �      A�       	��     	;� �       	��  �   ;  �   <7    8   �� � �   t     *+� �M� �Y,���      �     � �      I J 	K�      	 	    = *     >?     H ��   	=  >    6 7 �   �     o� +Y� -L+�� .*������ .�� .*� #��� .Ķ .*� '� .ƶ .*�<� 	ȧ 
*�<��� .ʶ .*� L��϶ .W+� 4�   �   "   � � � /� <� Y� f� j��       o��    g@A �       o��     % � L   +  +�    +  + Z7    8  B = �   a     *� '� � �]�   �      ��       ��      O �       ��      @C = �   R     *+� i�g�]�   �      ��       ��      O �       ��  D = �   L     *+�Ѱ   �      ��       ��      O �       ��  EF �         � �   �       6GF �         � �   �       6 H  �   K      +���Գ ��� �YS�ٳ �� �ٳ �   �       7 D E �   IJ   KL     M TUTM TXTM T[T^     �_a � b 
ceg 