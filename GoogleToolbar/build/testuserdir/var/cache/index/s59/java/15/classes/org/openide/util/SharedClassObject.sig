����   4
	      "org/openide/util/SharedClassObject initializeSuper Z	   	 
 PROP_SUPPORT Ljava/lang/Object;	     err Ljava/util/logging/Logger;	     inReadExternal
     warn (Ljava/lang/Throwable;)V	     prematureSystemOptionMutation !Ljava/lang/IllegalStateException;	     waitingOnSystemOption
     ! " java/lang/Object <init> ()V	  $ % & 
firstTrace Ljava/lang/Throwable;	  ( )  systemOption
  + , - getLock ()Ljava/lang/Object;	  / 0 1 values Ljava/util/Map;
  3 4 5 getClass ()Ljava/lang/Class; 7 8 9 : ; java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; = ,org/openide/util/SharedClassObject$DataEntry
 <  7 @ A B put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	  D E F 	dataEntry .Lorg/openide/util/SharedClassObject$DataEntry;
 < H I J increase ()I
 < L M N first J(Lorg/openide/util/SharedClassObject;)Lorg/openide/util/SharedClassObject;	  P M Q $Lorg/openide/util/SharedClassObject;	 S T U V W java/util/logging/Level FINE Ljava/util/logging/Level;
 Y Z [ \ ] java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z _ java/lang/Throwable a First instance created here
 ^ c ! d (Ljava/lang/String;)V
 ^ f g h fillInStackTrace ()Ljava/lang/Throwable;
 j k l m n java/lang/Class getName ()Ljava/lang/String;	  p q 1 instancesBeingCreated 7 s t u containsKey (Ljava/lang/Object;)Z	  w x y alreadyWarnedAboutDupes Ljava/util/Set; { | } ~ u java/util/Set contains { � � u add � java/lang/IllegalStateException � java/lang/StringBuilder
 �  � ,Warning: multiple instances of shared class 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � 	 created.
 � � � n toString
 � c	 S � � W WARNING � First stack trace
 Y � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � K(Run with -J-Dorg.openide.util.SharedClassObject.level=0 for more details.)
 Y � � d warning
  � � " referenceLost
  � � u equals
  � � J hashCode	  � � 
 lock
 � � � � n java/lang/String intern
 < � � J decrease
  � � � clearSharedData ()Z 7 � � ; remove � java/lang/NullPointerException � Tried to pass null key (value=
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � ) to putProperty
 � c
 < � � � isInInitialize � ...setting property here...
 < � � � getMap 5(Lorg/openide/util/SharedClassObject;)Ljava/util/Map;
  � � B putProperty
  � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V � -org.openide.util.SharedClassObject.initialize
 � �	 � � � � � java/lang/Boolean TRUE Ljava/lang/Boolean;
 < � : � J(Lorg/openide/util/SharedClassObject;Ljava/lang/Object;)Ljava/lang/Object;
  � � ; getProperty �  java/beans/PropertyChangeSupport
 � � ! � (Ljava/lang/Object;)V
 � � � � hasListeners (Ljava/lang/String;)Z
 � � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V	  � �  addNotifySuper
  � � " 	addNotify � %You must call super.addNotify() from  � .addNotify()
 � � � � removePropertyChangeListener	    removeNotifySuper
  " removeNotify (You must call super.removeNotify() from  .removeNotify()
 � � /org/openide/util/SharedClassObject$WriteReplace

 ! '(Lorg/openide/util/SharedClassObject;)V
  
findObject 8(Ljava/lang/Class;Z)Lorg/openide/util/SharedClassObject;
 < : &()Lorg/openide/util/SharedClassObject; 6org/openide/util/SharedClassObject$SetAccessibleAction
 ! (Ljava/lang/Class;)V
  java/security/AccessController doPrivileged =(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;" 'java/security/PrivilegedActionException
!$%& getException ()Ljava/lang/Exception;( "java/lang/IllegalArgumentException
* �+ java/lang/Exception
' c
'./0 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;2 Inconsistent state: 
 j45 ; cast
 78 � isSystemOption
:;<=> org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;@  org/openide/util/Lookup$Template
?
:CDE lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
GHIJK org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;MNOP � java/util/Collection isEmptyR 3Making a SystemOption here that is not in lookup...T ,org/openide/util/SharedClassObject$1SOLoader
SV !W h(Lorg/openide/util/Lookup$Result;Lorg/openide/util/SharedClassObject;Ljava/lang/IllegalStateException;)V
GYZ[ addLookupListener $(Lorg/openide/util/LookupListener;)V]  org.openide.options.SystemOption
 j_` 5 getSuperclass
 jbcd getDeclaredConstructor 3([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
fghij java/lang/reflect/Constructor setAccessible (Z)V	 lm  $assertionsDisabledo java/lang/AssertionError
n r java/lang/Integer
qt !u (I)V
qwx J intValue
fz{| newInstance '([Ljava/lang/Object;)Ljava/lang/Object;
 j~ � desiredAssertionStatus� $org/openide/util/SharedClassObject$1
� 
����� 7org/openide/util/lookup/implspi/SharedClassObjectBridge setInstance <(Lorg/openide/util/lookup/implspi/SharedClassObjectBridge;)V� java/util/WeakHashMap
�t� java/util/HashMap
�t� java/util/HashSet
� � "org.openide.util.SharedClassObject
 Y��� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;� java/io/Externalizable serialVersionUID J ConstantValue>�M�Jp� 	Signature PLjava/util/Map<Ljava/lang/Class;Lorg/openide/util/SharedClassObject$DataEntry;>; 6Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>; #Ljava/util/Set<Ljava/lang/String;>; Code LineNumberTable LocalVariableTable de t creating e Ljava/lang/Exception; clazz Ljava/lang/String; this StackMapTable finalize 
Exceptions obj MethodParameters key value 9(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object; notify previous 
initialize supp "Ljava/beans/PropertyChangeSupport; 
noListener msg l #Ljava/beans/PropertyChangeListener;� !java/beans/PropertyChangeListener hasListener callRemoved name oldValue newValue writeExternal (Ljava/io/ObjectOutput;)V oo Ljava/io/ObjectOutput;� java/io/IOException readExternal (Ljava/io/ObjectInput;)V oi Ljava/io/ObjectInput;�  java/lang/ClassNotFoundException writeReplace 7(Ljava/lang/Class;)Lorg/openide/util/SharedClassObject; Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<TT;>; C<T:Lorg/openide/util/SharedClassObject;>(Ljava/lang/Class<TT;>;)TT; ex newEx $Ljava/lang/IllegalArgumentException; )Ljava/security/PrivilegedActionException; action 8Lorg/openide/util/SharedClassObject$SetAccessibleAction; obj2 _obj start r  Lorg/openide/util/Lookup$Result; created create %Lorg/openide/util/Lookup$Result<TT;>; D<T:Lorg/openide/util/SharedClassObject;>(Ljava/lang/Class<TT;>;Z)TT; c createInstancePrivileged i Ljava/lang/Integer; Ljava/lang/reflect/Constructor; 8Ljava/lang/Class<+Lorg/openide/util/SharedClassObject;>; FLjava/lang/reflect/Constructor<+Lorg/openide/util/SharedClassObject;>; ^(Ljava/lang/Class<+Lorg/openide/util/SharedClassObject;>;)Lorg/openide/util/SharedClassObject; reset 
access$002 ((Lorg/openide/util/SharedClassObject;Z)Z x0 x1 
access$100 G(Lorg/openide/util/SharedClassObject;)Ljava/lang/IllegalStateException; 
access$200 
access$102 h(Lorg/openide/util/SharedClassObject;Ljava/lang/IllegalStateException;)Ljava/lang/IllegalStateException; 
access$302 
access$400 ()Ljava/util/logging/Logger; 
access$500 
access$602 
access$600 '(Lorg/openide/util/SharedClassObject;)Z <clinit> 
SourceFile SharedClassObject.java InnerClasses 	DataEntry WriteReplace SetAccessibleAction Template Result SOLoader!   �  �� �   �  	 
    0 1 �   �  q 1 �   �  x y �   �       E F    � 
    M Q    % &    )                    �            m    #  ! " �  �    4*� *� #*� '*� *� *� *� *YL² .*� 2� 6 � <M,� � <Y� >M� .*� 2,� ? W*,� C,� GW*,*� K� O+ç N+�-�*� O� �*� O*� )� � R� X� �� ^Y`� bL+� eW*� O+� #� �*� 2� iL� oYN² o+� r =-ç 
:-��� � k� v+� z � _� v+�  W� �Y� �Y� ��� �+� ��� �� �� �N*� O� #� � � ��*� O� #� �� � �� �� � �-� ��  $ c f   f i f   � � �   � � �   �   � #   �  k 	 r  x  y  z  � $ � 4 � 8 � @ � N � S � X � a � k � r � z � � � � � � � � � � � � � � � � � � � � � � � � � � �  �( �3 ��   H  4 -� F  � � &  � �   2��  � ���  � o�    4� Q  �   S 
� N    <  �      ^� 4�    �    ^�    �  � T*� 
 � " �   3     *� ��   �   
    �  ��       � Q  �     ^  � � �   ,     �   �       ��       � Q    � u �   Z     +� � *� 2+� 2� �� � �   �       ��       � Q     � 
 �    @�   �    � J �   2     *� 2� ��   �       ��       � Q    , - �   U     *� �� **� 2� i� �� �*� ��   �       �  �  ��       � Q  �      � " �   �     7*� *YL�*� C� *� C� �� *� �� � .*� 2� � W+ç M+�,��   . 1   1 4 1   �          ,	 6�       7� Q  �    �  D ^�   � B �   �     w+� #� �Y� �Y� ��� �,� �ö �� �� ſ*� *YN�*� � /+� � (*� � !*� C� ƚ *� � *� �Yɷ �� *� C*� �+,� ? -ð:-��  + o p   p t p   �   "     $ + D Q! ^$ p'�        w� Q     w� 
    w� 
 �    $� 9 Q ^�   	�  �    �� �   �     *+,� �:� *+,� ��   �      > @ A D�   4    � Q     ��    � 
    �    � 
 �    �  �   �  �  �    � ; �   �     5*� *YM��+� ؙ *� C� ƙ 	� ٧ ,ð*� C*+� �,ðN,�-�   # 0   $ / 0   0 3 0   �      M O Q $T 0U�       5� Q     5� 
 �    �   @ �K ^�   �   � " �   4     *� �   �   
   _ `�       � Q    � � �  _     �*� *YN�*� � �� �:� *� � �Y*� �Y:� �W� � � =+� �-ç 
:-��� 9*� �*� �*� � )� �Y� ��� �*� 2� i� ��� �� �N� -� ��   B E   E I E   �   :   i k m o +r :s @t Lv Pw Ux Yz `} ~ ���   >   -��  : �    ��    �� Q     ���  L ;�  �   2 � +   �@�   �    ^�   �  9�   �    � � �  �     �*� *YN�*� � �� �:� -ñ� �6+� �� � � � =-ç 
:-��� D*� � �W*� �*�*� �� +� �Y� �� �*� 2� i� �� �� �N� -� ��    B    ? B   B F B   �   B   � � � � � #� )� =� I� M� V� [� _� f� �� ���   H   *��  # �   = �   � ��    �� Q     ���  I F�  �   7 �    �� @�   �    ^�   �  � D�   �    � " �   4     *� �   �   
   � ��       � Q    " �   4     *� ��   �   
   � ��       � Q    � � �   �     *� � �� �:� +,-�	�   �      � � � ��   4    � Q     ��    � 
    � 
   �� �    �  ��   �  �  �   �� �   5      �   �      ��       � Q     �� �    ��   �   �� �   5      �   �      ��       � Q     �� �    ���   �   � - �   3     	�
Y*��   �      ��       	� Q   	� �   B     *��   �      ��       ��  �       ��  �   �  �   � 	 �  �    K*� i� �YM² .*� 6 � <N-� � -�:6� C� ?�Y*�:�� :� %:�#:�'Y�)�,:		�-W	�6� .*� 6 � <N-� F-�:� ;� 4� #� � �Y� �Y� �1� �*� �� �� ��*�3� ,ð� P�6� H�9�?Y*�A�B:�F�L � +� :� �YQ� �:�SY�U�X� #� � �Y� �Y� �1� �*� �� �� ��*�3� ,ð:
,�
�  ; E H! 
 �D   �CD  DHD   �   � !  � 
� � %� (� 1� ;� E H� J� Q� _� g  j m z ~	 � � � � � �! �# �% �+ �- �.INO8RDS�   �  Q ��  _ �� 	 J  ��  ; 2��  � =� Q  � � Q  �   � 5��  -� F  %� Q  (�    K��    K�  �     � 5��   K��  �   L 
�   <C � $  j  <  !!� � G � � Q$�   j   ^�   	�  �  �   � 8 � �   |     $*� 2L+� \+� i� ؙ �+�^L����   �      Y [ \ ] ` "c�       $� Q    �� �   
 �  j 
   �   :     � � �*� ��   �   
   h i�       � &  �   �   �� �  �    .*� j�aL+�e*� iM�k� � o� �nY�p�� oYN² o,� 6 �q:� o,� �qY�s� �qY�v`�s� ? W-ç 
:-��+� �y� N� oY:² o,� 6 �q:�v� � o,� � W� � o,�qY�vd�s� ? Wç :��+�e-�:� oY:² o,� 6 �q:		�v� � o,� � W� � o,�qY	�vd�s� ? Wç :
�
�+�e�  - e h   h l h   � � �   � � �   o { �   �  #   � � �   �   f   m 	n p q 's -t ;u cv oy {{ �| �~ � �� �� �� �y �{ �| �~ � ��&�+��   >  ; (��  � .��  � .�� 	  .��   	%��  �� �      .��   	%�� �   � � 'f �� '  jf � q  7 ��   jf � q  7 �q� 
  jf �   ^� � 6  q� E ^� �   jf �  ^� , 
 jf �     ^ q  � E ^� �    *�   �  �   � � " �   +      �   �      ��       � Q  �� �   ;     *Z� �   �       5�       � Q     �  �� �   /     *� �   �       5�       � Q  �  �   /     *� �   �       5�       � &  �� �   ;     *+Z� �   �       5�       � Q     �  �� �   ;     *Z� �   �       5�       � Q     �  �� �         � �   �       5� - �         � �   �       5�� �   ;     *Z� �   �       5�       � Q     �  �� �   /     *� �   �       5�       � Q     " �   �      P�}� � �k��Y����� Y� � ��Y%��� .��Y��� o��Y��� v���� �   �       5  8  G $ J 0 T < Y F Z�    @       :  <  
    ?: G:	S  	  �      