����   4 n
       org/openide/util/Lookup$Template <init> (Ljava/lang/Class;)V
    	 8(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
      java/lang/Object ()V
     extractType $(Ljava/lang/Class;)Ljava/lang/Class;	     type Ljava/lang/Class;	     id Ljava/lang/String;	     instance Ljava/lang/Object;	    ! " hashCode I
  $ ! % ()I
 ' $ ( java/lang/String
  $
 ' + , - equals (Ljava/lang/Object;)Z
  + 0 java/lang/StringBuilder
 /  3 Lookup.Template[type=
 / 5 6 7 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 / 9 6 : -(Ljava/lang/Object;)Ljava/lang/StringBuilder; < ,id= > 
,instance= @ ]
 / B C D toString ()Ljava/lang/String; 	Signature Ljava/lang/Class<TT;>; TT; Code LineNumberTable LocalVariableTable this "Lorg/openide/util/Lookup$Template; LocalVariableTypeTable 'Lorg/openide/util/Lookup$Template<TT;>; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; MethodParameters (Ljava/lang/Class<TT;>;)V .(Ljava/lang/Class<TT;>;Ljava/lang/String;TT;)V StackMapTable W java/lang/Class .(Ljava/lang/Class<TT;>;)Ljava/lang/Class<TT;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked getType ()Ljava/lang/Class; ()Ljava/lang/Class<TT;>; getId getInstance ()Ljava/lang/Object; ()TT; Ljava/lang/Override; obj t (<T:Ljava/lang/Object;>Ljava/lang/Object; 
SourceFile Lookup.java InnerClasses l org/openide/util/Lookup Template 1       ! "       E    F          E    G 
     H   F     *� �    I   
   J K J        K L   M        K N   O     P     Q       H   \     *+� �    I   
   Q R J        K L         M        K N       F  R       E    S   	  H   �     *� 
**+� � *,� *-� �    I      Y Z [ \ ] J   *     K L                     M         K N       F      G  R             E    T     H   h     +� � +�    I      a J        K L         M        K N       F  U    	@ V R       E    X Y     Z  [[ s \  ] ^  H   A     *� �    I      j J        K L   M        K N   E    _  ` D  H   A     *� �    I      t J        K L   M        K N    a b  H   A     *� �    I      � J        K L   M        K N   E    c  ! %  H   �     G*� � *� �**� � � 
*� � #*� � � 
*� � &`*� � � `� *� �    I      � � � 2� B� J       G K L   M       G K N   U   O K �     � 
    �     �     �       Y     d    , -  H       h+� � �+� M*� ),� )� �*� ,� � �*� � ,� � �*� ,� � *� �*� � ,� � � �*� ,� � .�    I   >   � � 	� � � � &� (� /� 6� 8� F� H� O� \� J        h K L     h e    Z f L  M       h K N   U    	�  @  R    e   Y     d    C D  H   p     4� /Y� 12� 4*� � 8;� 4*� � 4=� 4*� � 8?� 4� A�    I      � J       4 K L   M       4 K N   Y     d    E    g h    i j   
   k m 