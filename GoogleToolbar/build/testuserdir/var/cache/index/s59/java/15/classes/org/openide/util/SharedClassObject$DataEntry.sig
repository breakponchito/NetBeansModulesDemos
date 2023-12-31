����   4 �
      java/lang/Object <init> ()V	  	 
   ,org/openide/util/SharedClassObject$DataEntry count I  java/lang/ref/WeakReference
     (Ljava/lang/Object;)V	     ref Ljava/lang/ref/WeakReference;	     initialized Z	     initializeInProgress	      invalid Ljava/lang/Throwable; " java/lang/StringBuilder
 !  % SCO.DataEntry[ref=
 ! ' ( ) append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  + , - get ()Ljava/lang/Object;
 ! / ( 0 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; 2 ,count=
 ! 4 ( 5 (I)Ljava/lang/StringBuilder; 7 ,initialized=
 ! 9 ( : (Z)Ljava/lang/StringBuilder; < 	,invalid= > ,map=	  @ A B map Ljava/util/HashMap; D ]
 ! F G H toString ()Ljava/lang/String;
  J K L ensureValid '(Lorg/openide/util/SharedClassObject;)V N java/util/HashMap
 M 
  Q R L tryToInitialize
 M T , U &(Ljava/lang/Object;)Ljava/lang/Object;
 W X Y Z - "org/openide/util/SharedClassObject 
access$500
  \ , ] &()Lorg/openide/util/SharedClassObject;
  F ` <unknown object> b java/lang/IllegalStateException
 a d  e (Ljava/lang/String;)V
 a g h i 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;
 W k l m 
access$602 ((Lorg/openide/util/SharedClassObject;Z)Z
 W o p  
initialize r java/lang/Exception
 t F u java/lang/Throwable w  from  y java/lang/LinkageError
 W { | } 
access$600 '(Lorg/openide/util/SharedClassObject;)Z  &You must call super.initialize() from 
  � � � getClass ()Ljava/lang/Class;
 � � � � H java/lang/Class getName � .initialize()
 W � � � 
access$400 ()Ljava/util/logging/Logger;
 � � � � e java/util/logging/Logger warning
  � � � getMap ()Ljava/util/Map; � � � �  java/util/Map clear 	Signature 9Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>; CLjava/lang/ref/WeakReference<Lorg/openide/util/SharedClassObject;>; Code LineNumberTable LocalVariableTable this .Lorg/openide/util/SharedClassObject$DataEntry; isInInitialize ()Z 5(Lorg/openide/util/SharedClassObject;)Ljava/util/Map; obj $Lorg/openide/util/SharedClassObject; StackMapTable MethodParameters [(Lorg/openide/util/SharedClassObject;)Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>; J(Lorg/openide/util/SharedClassObject;Ljava/lang/Object;)Ljava/lang/Object; ret Ljava/lang/Object; key msg Ljava/lang/String; � java/lang/String 
Exceptions e Ljava/lang/Exception; Ljava/lang/LinkageError; increase ()I decrease first J(Lorg/openide/util/SharedClassObject;)Lorg/openide/util/SharedClassObject; s reset 
SourceFile SharedClassObject.java InnerClasses 	DataEntry 0       A B  �    �          �    �                       �   c     %*� *� *� Y� � *� *� *� �    �       # 	& ) * - �       % � �    G H  �   y     O� !Y� #$� &*� � *� .1� &*� � 36� &*� � 8;� &*� � .=� &*� ?� .C� &� E�    �      1 �       O � �     � �  �   /     *� �    �      7 �        � �     � �  �   �     -*+� I*� ?� *� MY� O� ?*� � *� *+� P*� ?�    �      ? A C F G #J (M �       - � �     - � �  �     �    �   �    �   , �  �   �     N*+� I*� ?� *� MY� O� ?N� *� ?,� SN-� &*� � ,� V� �*� *+� P*� ?,� SN-�    �   2   U Y [ \ ^ %a 0b 7c 9f >i Cj Lm �   4    � �    N � �     N � �    N � �  % ) � �  �    �   �   	 �   �     � �  �   ^     **� [� I*� ?� *� MY� O� ?*� ?�    �      t v x { �        � �   �      K L  �   �     **� � %+� +� ^M� _M� aY,� c*� � f� a��    �      � � � � � )� �   *    � �    � �    * � �     * � �  �    �  ��  �     a �    �    R L  �       �*� +� jW+� n*� � uM*,� � aY� !Y� #*� � s� &v� &+� .� E� c*� � f� a�M*,� � aY� !Y� #*� � s� &v� &+� .� E� c*� � f� a�N*� -�+� z� )� !Y� #~� &+� �� �� &�� &� EM� �,� ��     q   L x   �    � �    �   F   � � � � � � � � L� M� R� �� �� �� �� �� �� �   4   4 � �  M 4 � �  �  � �    � � �     � � �  �    W qt xt t, �     a �    �     � �  �   6     *Y� `Z� �    �      � �        � �     � �  �   6     *Y� dZ� �    �      � �        � �     � �  �   {     *� � *� WM,� *� Y+� � +�,�    �      � � � � � �         � �      � �    � �  �    �  W �    �    , ]  �   5     *� � *� W�    �      � �        � �    � L  �   �     (*� [M,� 	,+� �*� *� �� � *� *+� P�    �   "   � � � � � � "� '� �        ( � �     ( � �   # � �  �    �  W �    �    �    � �   
   W � 