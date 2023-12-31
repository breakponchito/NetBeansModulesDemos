����   4 �
      java/lang/Object <init> ()V	  	 
   )org/openide/windows/TopComponent$Replacer tc "Lorg/openide/windows/TopComponent;
     getClass ()Ljava/lang/Class;
      java/lang/Class getName ()Ljava/lang/String;
      java/io/ObjectOutputStream writeObject (Ljava/lang/Object;)V
     ! "  org/openide/windows/TopComponent writeExternal (Ljava/io/ObjectOutput;)V
 $ % & ' ( java/io/ObjectInputStream 
readObject ()Ljava/lang/Object; * java/lang/String
 , - . / 0 org/openide/util/Utilities 	translate &(Ljava/lang/String;)Ljava/lang/String;
 2 3 4 5 6 org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; 8 java/lang/ClassLoader
 2 : ; < lookup %(Ljava/lang/Class;)Ljava/lang/Object;
  > ? @ getClassLoader ()Ljava/lang/ClassLoader;
  B C D forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
  F G H getDeclaredConstructor 3([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
 J K L M N java/lang/reflect/Constructor setAccessible (Z)V
 J P Q R newInstance '([Ljava/lang/Object;)Ljava/lang/Object;
  T U V readExternal (Ljava/io/ObjectInput;)V
  X Y Z findReadResolveMethod -(Ljava/lang/Class;)Ljava/lang/reflect/Method;
 \ ] ^ _ ` java/lang/reflect/Method getExceptionTypes ()[Ljava/lang/Class; b java/io/ObjectStreamException
  d e f equals (Ljava/lang/Object;)Z
 \ h i  getReturnType
 \ K
 \ l m n invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; p java/io/InvalidObjectException r java/lang/StringBuilder
 q  u �TopComponent.readResolve() cannot return null. See http://www.netbeans.org/issues/show_bug.cgi?id=27849 for more info. TopComponent:
 q w x y append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 q { x | -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 q ~   toString
 o �  � (Ljava/lang/String;)V � java/lang/Exception � +java/lang/reflect/InvocationTargetException
 � � � � getTargetException ()Ljava/lang/Throwable; � java/io/IOException
 � ~ � java/lang/Throwable
 � �
 � � � � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � readResolve
  � � � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; � java/lang/NoSuchMethodException
  � � � getDeclaredMethod
  � �  getSuperclass � java/io/Serializable serialVersionUID J ConstantValue��D���md %(Lorg/openide/windows/TopComponent;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/windows/TopComponent$Replacer; MethodParameters (Ljava/io/ObjectOutputStream;)V oos Ljava/io/ObjectOutputStream; 
Exceptions �  java/lang/ClassNotFoundException (Ljava/io/ObjectInputStream;)V unresolvedTc result [Ljava/lang/Class; loader Ljava/lang/ClassLoader; tcClass Ljava/lang/Class; con Ljava/lang/reflect/Constructor; resolveMethod Ljava/lang/reflect/Method; th Ljava/lang/Throwable; exc Ljava/lang/Exception; ois Ljava/io/ObjectInputStream; name Ljava/lang/String; StackMapTable � i !Ljava/lang/NoSuchMethodException; clazz params 
SourceFile TopComponent.java InnerClasses Replacer 0    �   � �  �    � �        �  �   F     
*� *+� �    �      
  	 �       
 � �     
    �         �  �   S     +*� � � � *� +� �    �         �        � �      � �  �     � � �    �    ' �  �  �  
  1+� #� )M,� +M� 17� 9� 7N-� *� � =N,-� A:� � E:� I*� � O� � � I� :� I�*� +� S� W:� �� [:�� sa2� c� g� g� c� Z� j*� :**� � � k� � *� � � oY� qY� st� v� z� }� ��� j� :	� j	�� <N-:� �� � �� �:� �� 	� ��� �Y� �� �� �� ���  > N W   W Y W   � � �   � � �    � � �  �   � %     ! " %% -) 8* >- N/ T0 W/ _0 b2 j5 q7 v9 }; �= �? �C �D �F �G �N �O �N �O �b �S �T �WX\]a0c �   p  � 7 �   } w � �   � � �  - � � �  8 � � �  q � � �  � 5 � �  � 8 � �   1 � �    1 � �  ) � �  �   V 
� % ) 7� 1   $ ) 7  J  �
� } \ �H �� 
   $ )  B ��  � ��  �     � � �    �    � (  �   /     *� �    �      g �        � �   �     a 
 Y Z  �   �     <L� M*�,� �L� +N*:� "� �,� �L� :� �:���+�     � " + . �  �   .   n o s � t w "z +} .~ 0w :� �   4   $ � �   ' � �    < � �    : � �   5 � �  �   % �    \ �  ��  � W ��  �    �    �    � �   
    � 