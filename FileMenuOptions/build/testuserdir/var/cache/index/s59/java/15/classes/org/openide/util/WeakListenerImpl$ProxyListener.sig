����   4 �
      !org/openide/util/WeakListenerImpl <init> -(Ljava/lang/Class;Ljava/util/EventListener;)V	  	 
   /org/openide/util/WeakListenerImpl$ProxyListener constructors Ljava/util/Map;      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  java/lang/ref/Reference
     ()Ljava/lang/Object;  java/lang/reflect/Constructor
      java/lang/Class getClassLoader ()Ljava/lang/ClassLoader;
 ! " # $ % java/lang/reflect/Proxy getProxyClass <(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class; ' #java/lang/reflect/InvocationHandler
  ) * + getConstructor 3([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
  - . / setAccessible (Z)V 1 java/lang/ref/SoftReference
 0 3  4 (Ljava/lang/Object;)V  6 7 8 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; : java/lang/Object
  < = > newInstance '([Ljava/lang/Object;)Ljava/lang/Object; @ java/lang/NoClassDefFoundError
 ! B C D newProxyInstance b(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;	  F G H proxy Ljava/lang/Object; J java/lang/Exception L java/lang/IllegalStateException
 K N  O (Ljava/lang/Throwable;)V	  Q R S 	equalsMth Ljava/lang/reflect/Method; U equals
  W X Y 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; [ java/lang/NoSuchMethodException
 Z ] ^ _ printStackTrace ()V
 a b c d e java/lang/reflect/Method getDeclaringClass ()Ljava/lang/Class;
  g h i 	getEquals ()Ljava/lang/reflect/Method;
  k U l (Ljava/lang/Object;)Z
 n o p q r java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
 a t u v invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; x java/util/EventObject
  z  { 2(Ljava/util/EventObject;)Ljava/util/EventListener; } +java/lang/reflect/InvocationTargetException
 |  � � getCause ()Ljava/lang/Throwable;	  � � � listenerClass Ljava/lang/Class;
  � � � getName ()Ljava/lang/String;
 � � � � � java/lang/String lastIndexOf (I)I
 � � � � 	substring (I)Ljava/lang/String; � remove
 � � � � concat &(Ljava/lang/String;)Ljava/lang/String; � java/lang/StringBuilder
 � �  _
  � � � toString
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � [
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � ]
 � � � java/util/WeakHashMap
 � �
 � � � � � java/util/Collections synchronizedMap  (Ljava/util/Map;)Ljava/util/Map; 	Signature bLjava/util/Map<Ljava/lang/Class<*>;Ljava/lang/ref/Reference<Ljava/lang/reflect/Constructor<*>;>;>; >(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/EventListener;)V Code LineNumberTable LocalVariableTable 
proxyClass p err  Ljava/lang/NoClassDefFoundError; ref Ljava/lang/ref/Reference; proxyConstructor Ljava/lang/reflect/Constructor; ex Ljava/lang/Exception; this 1Lorg/openide/util/WeakListenerImpl$ProxyListener; c api listener Ljava/util/EventListener; LocalVariableTypeTable Ljava/lang/Class<*>; =Ljava/lang/ref/Reference<Ljava/lang/reflect/Constructor<*>;>; "Ljava/lang/reflect/Constructor<*>; StackMapTable � java/util/EventListener MethodParameters D(Ljava/lang/Class<*>;Ljava/lang/Class<*>;Ljava/util/EventListener;)V e !Ljava/lang/NoSuchMethodException; S(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object; ev Ljava/util/EventObject; x -Ljava/lang/reflect/InvocationTargetException; method args [Ljava/lang/Object; � 
Exceptions � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; removeMethodName name Ljava/lang/String; dot I i obj getImplementator <clinit> 
SourceFile WeakListenerImpl.java InnerClasses ProxyListener      &  
 R S       �    �  G H       �  �       �*,-� � +�  � :� � � � :� =+� � Y+S�  :� Y&S� (:� ,� +� 0Y� 2� 5 W� 9Y*S� ;:� :+� � Y+S*� A:*� E� :� KY� M��  f u x ?  � � I  �   F   � � � '� ,� =� M� S� f� u� x� z� �� �� �� �� �� �   p  = ) � �  u  � H  z  � �   ~ � �  ' k � �  �  � H  � 
 � �    � � �     � � �    � � �    � � �  �   4  = ) � �   ~ � �  ' k � �    � � �    � � �  �   C �      �   G � @ Q ?�  9�      �  I �    �   �   �   �    � 
 h i  �   x     %� P� 9T� Y9S� V� P� K*� \� P�     Z  �      � � � � � !� �       � �   �    \ Z  u �  �  6     Z,� `9� ,� f� *-2� j� m�,*-� s�-� -2� w� -2� w� :*� y:� ,-� s��:� ~�     R |  ! R | " O R | P Q R |  �   .   � 	� � � "� ;� C� H� P� R� T� �   H  ;  � �  C  � H  T  � �    Z � �     Z G H    Z � S    Z � �  �   ( @ w�  w 9�    9 a �  | �     � �    G   �   �   �     �    � �  �   �     1*� �� �L+.� �=+`� �L+$� �>� +`� �L�+� ��    �      � � � � � "� *� �   *    1 � �    ) � �   " � �    � �  �   
 � * � �     �    � �  �   M     #� �Y� �*� �� ��� �*� �� ��� �� ��    �      � �       # � �   �     �    U l  �   S     *� E+� *+� � �    �      � �        � �      � H  �    @ �    �   �     �     �   �   /     *� E�    �      � �        � �   �     �    � _  �   &      � �Y� �� �� �    �      �  �    � �   
    � 
