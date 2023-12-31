����   4 �
      java/lang/Object <init> ()V	  	 
   /org/openide/util/SharedClassObject$WriteReplace object $Lorg/openide/util/SharedClassObject;
     getClass ()Ljava/lang/Class;	     clazz Ljava/lang/Class;
      java/lang/Class getName ()Ljava/lang/String;	     name Ljava/lang/String;
   ! " #  java/io/ObjectOutputStream defaultWriteObject
 % & ' ( ) "org/openide/util/SharedClassObject writeExternal (Ljava/io/ObjectOutput;)V
 + , - .  java/io/ObjectInputStream defaultReadObject 0  java/lang/ClassNotFoundException
 / 2  3 (Ljava/lang/String;)V
 / 
 % 6 7 8 
findObject 8(Ljava/lang/Class;Z)Lorg/openide/util/SharedClassObject;
 % : ; < 
access$302 ((Lorg/openide/util/SharedClassObject;Z)Z
 % > ? @ readExternal (Ljava/io/ObjectInput;)V
  B C D findReadResolveMethod -(Ljava/lang/Class;)Ljava/lang/reflect/Method;
 F G H I J java/lang/reflect/Method setAccessible (Z)V
 F L M N invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; P java/lang/Exception R java/lang/StringBuilder
 Q  U 	Skipping 
 Q W X Y append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 Q [ X \ -(Ljava/lang/Object;)Ljava/lang/StringBuilder; ^  resolution:
 Q ` a  toString
 % c d e 
access$400 ()Ljava/util/logging/Logger;	 g h i j k java/util/logging/Level WARNING Ljava/util/logging/Level;
 m n o p q java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V s readResolve
  u v w getDeclaredMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  y z { accept 6(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method; } java/lang/NoSuchMethodException
   �  getSuperclass
 F � � � getExceptionTypes ()[Ljava/lang/Class; � java/io/ObjectStreamException
  � � � equals (Ljava/lang/Object;)Z
 F � �  getReturnType � java/io/Serializable serialVersionUID J ConstantValuem����X 	Signature 8Ljava/lang/Class<+Lorg/openide/util/SharedClassObject;>; '(Lorg/openide/util/SharedClassObject;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/util/SharedClassObject$WriteReplace; MethodParameters writeObject (Ljava/io/ObjectOutputStream;)V oos Ljava/io/ObjectOutputStream; 
Exceptions � java/io/IOException 
readObject (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; StackMapTable � java/lang/Throwable ()Ljava/lang/Object; banner ex Ljava/lang/Exception; resolved resolveMethod Ljava/lang/reflect/Method; i result LocalVariableTypeTable Ljava/lang/Class<*>; [Ljava/lang/Class; 	candidate 
SourceFile SharedClassObject.java InnerClasses WriteReplace 0    �   � �  �    �     �    �      �        �  �   a     *� *+� *+� � **� � � �    �      � � 	� � � �        � �         �        � �  �   I     +� *� +� $�    �      � � � �        � �      � �  �     � �    �    � �  �   �     \+� **� � *� � � /Y*� � 1�� /Y� 4�**� � 5� *� � 9W*� +� =*� � 9W� M*� � 9W,��  ; C O    �   6   � � � � � &� 2� ;� C� L� O� Y� [� �       \ � �     \ � �  �   	 h � �     � / �    �    s �  �  8     n*� L*� � � AM,� [,� E,*� � � KN,� E-�N� QY� ST� V*� � � Z]� V� _:� b� f-� l,� E� :,� E�+�   & - O  & b   - Z b   b d b    �   >   � � � � � &� +� -� .� N� Z� _� b� i� l� �   4  N  �   . , � �    n � �    i �    ^ � �  �    � -   % F  Ot �	 �     � 
 C D  �   �     +L*M,� $,r� � t� xL+� � � N,� ~M���+�      |  �   & 	  � � � � �    � !� ) �       % �     +      ) � �  �      % � �  �    �  F B | �  �       
 z {  �   {     **� '*� �L+�� �+2� �� *� �� �� *��    �        	  & ( �     	  � �    * � �   �    ( �    �    �    � �   
   % � 