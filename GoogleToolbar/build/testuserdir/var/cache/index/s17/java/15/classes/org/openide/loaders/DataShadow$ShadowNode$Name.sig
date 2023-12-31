����   4 q	      .org/openide/loaders/DataShadow$ShadowNode$Name this$0 +Lorg/openide/loaders/DataShadow$ShadowNode;  OriginalName 
 java/lang/String  PROP_ShadowOriginalName
      org/openide/loaders/DataObject 	getString &(Ljava/lang/String;)Ljava/lang/String;  HINT_ShadowOriginalName
      +org/openide/nodes/PropertySupport$ReadWrite <init> J(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
       )org/openide/loaders/DataShadow$ShadowNode 
access$600 M(Lorg/openide/loaders/DataShadow$ShadowNode;)Lorg/openide/loaders/DataShadow;
 " # $ % & org/openide/loaders/DataShadow 
access$300 B(Lorg/openide/loaders/DataShadow;)Lorg/openide/loaders/DataObject;
  ( ) * getName ()Ljava/lang/String;
  , - . canWrite ()Z 0  java/lang/IllegalAccessException
 / 2  3 ()V
 	 5 6 7 equals (Ljava/lang/Object;)Z
  9 : ; rename (Ljava/lang/String;)V
 " = > ? getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 " A B C 
access$700 �(Ljava/lang/String;Ljava/lang/String;Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;)Lorg/openide/filesystems/FileObject; E java/io/IOException G +java/lang/reflect/InvocationTargetException
 F I  J (Ljava/lang/Throwable;)V
  L M . isRenameAllowed
  O P ; setValue
  R S * getValue .(Lorg/openide/loaders/DataShadow$ShadowNode;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/loaders/DataShadow$ShadowNode$Name; MethodParameters orig  Lorg/openide/loaders/DataObject; ex Ljava/io/IOException; val Ljava/lang/String; StackMapTable 
Exceptions d "java/lang/IllegalArgumentException (Ljava/lang/Object;)V ()Ljava/lang/Object; 	Signature ALorg/openide/nodes/PropertySupport$ReadWrite<Ljava/lang/String;>; 
SourceFile DataShadow.java InnerClasses 
ShadowNode Name o !org/openide/nodes/PropertySupport 	ReadWrite 0             T  U   V     *+� *	� � � �    V      i j m n j p W        X Y   Z      S *  U   8     *� � � !� '�    V      s W        X Y    P ;  U   �     I*� +� � /Y� 1�*� � � !M+,� '� 4� ,+� 8*� � � <,� @W� M� FY,� H��   ; > D  V   * 
  x y | } %~ * ;� >� ?� H� W   *   ! [ \  ? 	 ] ^    I X Y     I _ `  a   	 +B D	 b     / c F Z    _    - .  U   8     *� � � !� K�    V      � W        X Y  A P e  U   3     	*+� 	� N�    V      h W       	 X Y   b     / c F Z    _ A S f  U   /     *� Q�    V      h W        X Y   b     / F  g    h i    j k      " l    m   n p	