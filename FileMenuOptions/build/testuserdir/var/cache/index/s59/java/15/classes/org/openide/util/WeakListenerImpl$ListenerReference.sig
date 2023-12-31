����   4
	      3org/openide/util/WeakListenerImpl$ListenerReference name Ljava/lang/String;
  	 
   org/openide/util/BaseUtilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
      java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V	     weakListener #Lorg/openide/util/WeakListenerImpl;
      !org/openide/util/WeakListenerImpl 	getSource ()Ljava/lang/Object;  5org/openide/util/WeakListenerImpl$ListenerReference$1
     ! J(Lorg/openide/util/WeakListenerImpl$ListenerReference;Ljava/lang/Object;)V
  # $ % 
access$102 W(Lorg/openide/util/WeakListenerImpl;Ljava/lang/ref/Reference;)Ljava/lang/ref/Reference;
  ' ( ) 
access$100 >(Lorg/openide/util/WeakListenerImpl;)Ljava/lang/ref/Reference;
 + , - .  java/lang/ref/Reference get 0 java/lang/Class
 2 3 4 5 6 java/lang/Object getClass ()Ljava/lang/Class;
  8 9 : removeMethodName ()Ljava/lang/String;	  < = > LOCK Ljava/lang/Object;	  @ A B 	lastClass Ljava/lang/Class;	  D E F 
lastRemove Ljava/lang/reflect/Method;	  H I  lastMethodName
 K L M N O java/lang/String equals (Ljava/lang/Object;)Z	  Q R B 
lastNClass	  T U F lastNRemove	  W X  lastNMethodName	  Z [ B listenerClass
  ] ^ _ getRemoveMethod Q(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  a b c 
access$300 ()Ljava/util/logging/Logger;	 e f g h i java/util/logging/Level WARNING Ljava/util/logging/Level; k /Can''t remove {0} using method {1}.{2} from {3}
 / m n : getName
 p q r s t java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 v w x y z java/lang/reflect/Method getParameterTypes ()[Ljava/lang/Class;
  | }  getImplementator
 v  � � invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; �   � java/lang/Exception � removePreferenceChangeListener � removeNodeChangeListener � java/lang/StringBuilder
 � �  � ()V � "Problem encountered while calling 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � . � ( � ) on  � 

 � � � : toString
 p � � � warning (Ljava/lang/String;)V � +java/lang/reflect/InvocationTargetException � ,object is not an instance of declaring class
 � � � : 
getMessage
 p � s � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 / � � � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; � java/lang/NoSuchMethodException
 / � � � getDeclaredMethod
 / � � 6 getSuperclass � java/lang/RuntimeException � called get[Declared]Method on  � java/lang/LinkageError
 v � � � getModifiers ()I
 � � � � � java/lang/reflect/Modifier isPublic (I)Z
 v � � 6 getDeclaringClass
 / �
 v � � � setAccessible (Z)V
 2 � � java/lang/Runnable 	Signature Ljava/lang/Class<*>; J(Ljava/lang/Object;Ljava/lang/String;Lorg/openide/util/WeakListenerImpl;)V Code LineNumberTable LocalVariableTable this 5Lorg/openide/util/WeakListenerImpl$ListenerReference; ref MethodParameters requestCleanUp (Ljava/lang/Object;)V source StackMapTable run methodClass 	nameParam 
errMessage showErrMessage Z ex Ljava/lang/Exception; src remove 
methodName LocalVariableTypeTable � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; e !Ljava/lang/NoSuchMethodException; x Ljava/lang/RuntimeException; Ljava/lang/LinkageError; clarray [Ljava/lang/Class; m [Ljava/lang/Class<*>; � W(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Class<*>;)Ljava/lang/reflect/Method; 
access$200 I(Lorg/openide/util/WeakListenerImpl$ListenerReference;)Ljava/lang/String; x0 <clinit> ELjava/lang/ref/WeakReference<Ljava/lang/Object;>;Ljava/lang/Runnable; 
SourceFile WeakListenerImpl.java InnerClasses ListenerReference 0    � 	 
 A B  �    � 
 R B  �    � 
 I    
 X    
 E F   
 U F    = >                  �  �   g     *+� � *-� *,� �    �          �   *     � �      � >              �    �         ! � �  �   s     %*� � �*� � +� *� � Y*+� � "W�    �          $! �       % � �     % � >  �     �    �    � �  �  �  	  *LM*Y:�*� N-� &� -� &� *YL� ñ*� ç :��+� /� +� /:� 	+� 1:-� 7:� ;Y:�*� � #� ?� 8� C� 2� G� J� '� CM�  � P� � S� � V� J� � SMç :��,� �*� � *� /Y-� YS� \M,� *� /YKSY-� YS� \M,� .� `� dj� 2Y-� Y� lSY� lSYSY+S� o�� ;Y:�*� � � ?� G,� C� � P� V,� Sç :��,� u�� ,+� 2Y-� {S� ~W� +*� � �� *� :,+� 2YSY-� {S� ~W� �:�� J� ��� J� {� �Y� ��� �� ��� �� ��� �,� ��� �+� ��� �-� {� �� �:� `� �� �� �� �� J� � 6� `� d� � � ��  	 $ 0   % - 0   0 5 0   [ � �   � � �  HK  KPK  S�� �  �   � 3  $ % ) 	* , !- %1 *2 85 ?7 H9 N; T= [> b? j@ {A �E �F �G �K �N �O �P �R �S �V �WXZ[&\+]0^7`<aAbEdSi\jpl�m�z�o�q�r�s�uvx){ �   z   " �   E  � B �  �  � : �    � � � � � �   * � �   ( � >  & � F  8� �   N� � B  T� �   �     E  � �  N� � �  �   � � !   2 v  2  � 
   2 v  2  ��    2 v   �  /� 3 K 2E �� .�  2E �� C KB �� p � K@�  	  2 v  / K � K  p e�   	  2 v  / K � K  p e K�  �     �   � ^ _  �  �     �:+,-� �:� Y:+,-� �:� :+� �L� 	+2��� 7:� `� d� �Y� ��� �+� l� �� �� �� :� `� d� �� "� ø Ǚ � Ͷ и ǚ 	� ��     �    �   0 �   V �  �   N    � � � � � � � "� -� 0� 2� S� V� X� d� k� �� �� �   R    � �  2 ! � �  X  � �    � � �     � � B    � �     � � �   � � F  �       � � �    � � �  �   4 
�    / K � v  ��  �J �� B �e � �    �   �   �   �      �   /     *� �    �        �        �    �  �   #      � 2Y� ճ ;�    �        �            	        