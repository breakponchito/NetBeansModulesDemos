����   4 �
      java/lang/Object <init> ()V	  	 
   *org/openide/loaders/DefaultSettingsContext dobj  Lorg/openide/loaders/DataObject;  java/util/Hashtable
  	     env Ljava/util/Hashtable;
     getRelativeName '(Ljavax/naming/Name;)Ljava/lang/String;
      org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;
    ! " # "org/openide/filesystems/FileObject getAttribute &(Ljava/lang/String;)Ljava/lang/Object; % &javax/naming/NameAlreadyBoundException ' java/lang/StringBuilder
 & 
 & * + , append -(Ljava/lang/String;)Ljava/lang/StringBuilder; .  = 
 & 0 + 1 -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 & 3 4 5 toString ()Ljava/lang/String;
 $ 7  8 (Ljava/lang/String;)V
  : ; < setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V > java/io/IOException @ javax/naming/NamingException
 ? 7
 ? C D E setRootCause (Ljava/lang/Throwable;)V
  G H I parse '(Ljava/lang/String;)Ljavax/naming/Name;
  K L M bind ((Ljavax/naming/Name;Ljava/lang/Object;)V O +javax/naming/OperationNotSupportedException
 N  R .
  T U V list 5(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration; X !javax/naming/InvalidNameException Z name cannot be null
 W 7 ] ^ _ ` a javax/naming/Name size ()I c name cannot be empty ] e f g get (I)Ljava/lang/String;
 i j k l m java/lang/String equals (Ljava/lang/Object;)Z o subcontexts unsupported:  q =org/openide/loaders/DefaultSettingsContext$BindingEnumeration
 p s  t '(Lorg/openide/filesystems/FileObject;)V
  v U w 4(Ljava/lang/String;)Ljavax/naming/NamingEnumeration;
  y z { lookup '(Ljavax/naming/Name;)Ljava/lang/Object;
  } ~ { 
lookupLink
  � � M rebind � ->
  � � � rename )(Ljavax/naming/Name;Ljavax/naming/Name;)V
  � � � unbind (Ljavax/naming/Name;)V � "javax/naming/NameNotFoundException
 � 
 ? � � � setResolvedName
 ?  � javax/naming/CompositeName
 � 7 ] � � � isEmpty ()Z ] � � � getAll ()Ljava/util/Enumeration; � � � � � java/util/Enumeration hasMoreElements � � � � nextElement ()Ljava/lang/Object; � ..
  3
 & � + � (C)Ljava/lang/StringBuilder; � javax/naming/Context � javax/naming/NameParser #(Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/loaders/DefaultSettingsContext; MethodParameters addToEnvironment 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; propName Ljava/lang/String; propVal Ljava/lang/Object; 
Exceptions ne Ljavax/naming/NamingException; ex Ljava/io/IOException; name Ljavax/naming/Name; obj attrName fo $Lorg/openide/filesystems/FileObject; attrVal StackMapTable close composeName ;(Ljavax/naming/Name;Ljavax/naming/Name;)Ljavax/naming/Name; prefix 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; createSubcontext +(Ljavax/naming/Name;)Ljavax/naming/Context; *(Ljava/lang/String;)Ljavax/naming/Context; destroySubcontext getEnvironment ()Ljava/util/Hashtable; getNameInNamespace getNameParser .(Ljavax/naming/Name;)Ljavax/naming/NameParser; -(Ljava/lang/String;)Ljavax/naming/NameParser; I listBindings 	Signature M(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration<Ljavax/naming/Binding;>; L(Ljava/lang/String;)Ljavax/naming/NamingEnumeration<Ljavax/naming/Binding;>; removeFromEnvironment oldName newName oldAttrName newAttrName '(Ljava/lang/String;Ljava/lang/String;)V item rel en Ljava/util/Enumeration; retValue 
SourceFile DefaultSettingsContext.java InnerClasses BindingEnumeration 0    � �            !   �  �   U     *� *+� *� Y� � �    �       '  ( 	 )  * �        � �         �        � �  �   @     �    �       - �         � �      � �     � �  �     ? �   	 �   �    L M  �  )     p*+� N*� � :-� :� #� $Y� &Y� (-� )-� )� /� 2� 6�-,� 9� ,:� ?Y� &Y� (-� )-� ),� /� 2� A:� B�  < C F =  �   .    1  2  3  4  5 < 9 C = F : H ; h < o > �   R  h  � �  H ' � �    p � �     p � �    p � �   j � �   a � �   Y � �  �    � < i  I =( �     ? �   	 �   �    L <  �   M     **+� F,� J�    �   
    A 
 B �         � �      � �     � �  �     ? �   	 �   �    �   �   +      �    �       E �        � �   �     ?  � �  �   F     � NY� P�    �       I �         � �      � �     � �  �     ? �   	 �   �    � �  �   F     � NY� P�    �       N �         � �      � �     � �  �     ? �   	 �   �    � �  �   <     � NY� P�    �       S �        � �      � �  �     ? �    �    � �  �   <     � NY� P�    �       X �        � �      � �  �     ? �    �    � �  �   <     � NY� P�    �       ] �        � �      � �  �     ? �    �    � 8  �   <     � NY� P�    �       b �        � �      � �  �     ? �    �    � �  �   /     *� �    �       f �        � �   �     ?  � 5  �   -     Q�    �       k �        � �   �     ?  � �  �   6     *�    �       o �        � �      � �  �     ? �    �    � �  �   6     *�    �       s �        � �      � �  �     ? �    �    U w  �   >     
**+� F� S�    �       w �       
 � �     
 � �  �     ? �    �    U V  �   �     a+� � WYY� [�+� \ =� � WYb� [�� Q+� d � h� � WY� &Y� (n� )+� /� 2� [�� pY*� � � r�    �       {  }  ~ #  7 � R � �        a � �     a � �   L ` �  �   	 �  �     ? �    �    � V  �   :     *+� S�    �       � �        � �      � �  �     ? �    �   �    �  � w  �   :     *+� u�    �       � �        � �      � �  �     ? �    �   �    �  z #  �   >     
**+� F� x�    �       � �       
 � �     
 � �  �     ? �    �    z {  �   T     *+� M*� � ,� �    �   
    �  � �         � �      � �    � �  �     ? �    �    ~ #  �   >     
**+� F� |�    �       � �       
 � �     
 � �  �     ? �    �    ~ {  �   :     *+� x�    �       � �        � �      � �  �     ? �    �    � M  �   �     C*+� N*� � :-,� 9� ,:� ?Y� &Y� (+� /-� ),� /� 2� A:� B�     =  �   "    �  �  �  �  �  � ; � B � �   H  ;  � �   ' � �    C � �     C � �    C � �   = � �   4 � �  �    �    ]  i   =( �     ? �   	 �   �    � <  �   M     **+� F,� �    �   
    � 
 � �         � �      � �     � �  �     ? �   	 �   �    � #  �   6     �    �       � �        � �      � �  �     ? �    �    � �  �  i  	   �*+� N*,� :*� � :� :� $� $Y� &Y� (� )-� )� /� 2� 6�-� :� 9-� 9� ,:� ?Y� &Y� (+� /�� ),� /� 2� A:� B�  E ] ` =  �   :    �  �  �  �  � $ � E � M � V � ] � ` � b � � � � � �   \ 	 �  � �  b ' � �    � � �     � � �    � � �   � � �   } � �   t � �   k � �  �   # � E   ] ] i i    Z =( �     ? �   	 �   �    � �  �   Q     **+� F*,� F� ��    �   
    �  � �         � �      � �     � �  �     ? �   	 �   �    � 8  �   B     
**+� F� ��    �   
    � 	 � �       
 � �     
 � �  �     ? �    �    � �  �   �     J*+� M*� � N-,� � � �Y� �:+� ��-,� 9� :� ?Y� �:+� �� B�  ( . 1 =  �   6    �  �  �  �  � % � ( � . � 1 � 3 � < � B � I � �   H   	 � �  <  � �  3  � �    J � �     J � �   D � �   < � �  �    � ( i H = �     ? �    �    H I  �   X     +� � WYY� [�� �Y+� ��    �   
    �  � �        � �      � �  �     �     ? �    �       �  ;     �+� � WYY� [�+� � � � WYb� [�M+� � N-� � � e,� F-� � � i:Q� h� ����� h� � WY� &Y� (n� )+� /� 2� [�M���� WY� &Y� (n� )+� /� 2� [�,�    �   :    �  � ! � # � * � 3 � 7 � B � O � Y � t � w � z � � � �   4  B 5 � �    � � �     � � �  # t � �  * m � �  �    �  i �� $ i$�  �     ? �    �    4 5  �   ]     %*� �L� &Y� (+� )[� �*� � /]� �� 2�    �   
     �       % � �      � �   �    � �   
  p  � 