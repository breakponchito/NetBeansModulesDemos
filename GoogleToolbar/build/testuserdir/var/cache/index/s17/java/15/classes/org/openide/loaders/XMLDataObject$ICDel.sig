����   4 S
      java/lang/Object <init> ()V	  	 
   'org/openide/loaders/XMLDataObject$ICDel obj #Lorg/openide/loaders/XMLDataObject;	     ic $Lorg/openide/cookies/InstanceCookie;      "org/openide/cookies/InstanceCookie instanceName ()Ljava/lang/String;     instanceClass ()Ljava/lang/Class;     instanceCreate ()Ljava/lang/Object;   %org/openide/cookies/InstanceCookie$Of  " # $ 
instanceOf (Ljava/lang/Class;)Z
  
 ' ( ) * $ java/lang/Class isAssignableFrom , java/io/IOException .  java/lang/ClassNotFoundException
  0 1 2 hashCode ()I  0 J(Lorg/openide/loaders/XMLDataObject;Lorg/openide/cookies/InstanceCookie;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/loaders/XMLDataObject$ICDel; MethodParameters 
Exceptions 	Signature ()Ljava/lang/Class<*>; ioe Ljava/io/IOException; cnfe "Ljava/lang/ClassNotFoundException; cls2 Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<*>; StackMapTable (Ljava/lang/Class<*>;)Z equals (Ljava/lang/Object;)Z d Ljava/lang/Object; 
SourceFile XMLDataObject.java InnerClasses P !org/openide/loaders/XMLDataObject ICDel Of                     4  5   Y     *� *+� *,� �    6      K L 	M N 7         8 9               :   	           5   4     
*� �  �    6      R 7       
 8 9       5   4     
*� �  �    6      W 7       
 8 9   ;     + - <    =     5   4     
*� �  �    6      \ 7       
 8 9   ;     + -  # $  5   �     '*� � � *� � +� ! �+*� %� &�M�M�     ! +    $ -  6      ` 
a d !e "g $h %j 7   *  "  > ?  %  @ A    ' 8 9     ' B C  D       ' B E  F    H +B - :    B   <    G  1 2  5   >     *� � /h*� � 3 `�    6      p 7        8 9    H I  5   �     '+� � !+� M,� +� ,� *� � � ��    6      t u v %x 7        J 9    ' 8 9     '  K  F    � # @�   :        L    M N      O Q 
   R	