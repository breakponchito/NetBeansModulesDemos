����   4 u	      :org/openide/loaders/BrokenDataShadow$BrokenShadowNode$Name this$0 7Lorg/openide/loaders/BrokenDataShadow$BrokenShadowNode;  
BrokenLink 
 java/lang/String  PROP_brokenShadowOriginalName
      org/openide/loaders/DataObject 	getString &(Ljava/lang/String;)Ljava/lang/String;  HINT_brokenShadowOriginalName
      +org/openide/nodes/PropertySupport$ReadWrite <init> J(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
       5org/openide/loaders/BrokenDataShadow$BrokenShadowNode getDataObject "()Lorg/openide/loaders/DataObject; " $org/openide/loaders/BrokenDataShadow
 ! $ % & getUrl ()Ljava/net/URL;
 ( ) * + , java/net/URL toExternalForm ()Ljava/lang/String;
 ( .  / (Ljava/lang/String;)V
 ! 1 2 3 getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 5 6 7 8 9 org/openide/loaders/DataShadow writeOriginal 5(Lorg/openide/filesystems/FileObject;Ljava/net/URL;)V
 ! ; < = 
access$002 D(Lorg/openide/loaders/BrokenDataShadow;Ljava/net/URL;)Ljava/net/URL; ? java/io/IOException A "java/lang/IllegalArgumentException
 > C D , toString
 @ .
 @ G H I 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;
 ! K L M refresh ()V
  O P / setValue
  R S , getValue :(Lorg/openide/loaders/BrokenDataShadow$BrokenShadowNode;)V Code LineNumberTable LocalVariableTable this <Lorg/openide/loaders/BrokenDataShadow$BrokenShadowNode$Name; MethodParameters bds &Lorg/openide/loaders/BrokenDataShadow; u Ljava/net/URL; ex Ljava/io/IOException; newLink Ljava/lang/String; StackMapTable (Ljava/lang/Object;)V 
Exceptions g  java/lang/IllegalAccessException i +java/lang/reflect/InvocationTargetException ()Ljava/lang/Object; 	Signature ALorg/openide/nodes/PropertySupport$ReadWrite<Ljava/lang/String;>; 
SourceFile BrokenDataShadow.java InnerClasses BrokenShadowNode Name s !org/openide/nodes/PropertySupport 	ReadWrite 0             T  U   V     *+� *	� � � �    V      � � � � � � W        X Y   Z      S ,  U   K     *� � � !L+� #� '�    V   
   � � W        X Y     [ \   P /  U   �     >*� � � !M� (Y+� -N,� 0-� 4,-� :W� N� @Y-� B� E-� F� @�,� J�   " % >  V   & 	  � � � � "� %� &� 9� =� W   4    ] ^  &  _ `    > X Y     > a b   3 [ \  c    � %   	 !  > Z    a  A P d  U   3     	*+� 	� N�    V      � W       	 X Y   e     f @ h Z    a A S j  U   /     *� Q�    V      � W        X Y   e     f h  k    l m    n o      ! p    q   r t	