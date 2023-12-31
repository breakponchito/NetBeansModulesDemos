����   4 �	      org/openide/loaders/DataNode$4 val$obj  Lorg/openide/loaders/DataObject;
  	 
   +org/openide/nodes/PropertySupport$ReadWrite <init> J(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
      org/openide/loaders/DataObject getName ()Ljava/lang/String;
     canWrite ()Z   java/lang/IllegalAccessException
     ()V  "java/lang/IllegalArgumentException
  
    ! " rename (Ljava/lang/String;)V $ java/io/IOException
 # & '  getLocalizedMessage
 # ) *  
getMessage
 , - . / 0 java/lang/String equals (Ljava/lang/Object;)Z 2 org/openide/loaders/DataNode 4 MSG_renameError
 6 7 8 * 9 org/openide/util/NbBundle [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
 ; < = > ? 0org/netbeans/modules/openide/loaders/UIException annotateUser a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Date;)V A +java/lang/reflect/InvocationTargetException
 @ C  D (Ljava/lang/Throwable;)V
  F G  isRenameAllowed I suppressCustomEditor	 K L M N O java/lang/Boolean TRUE Ljava/lang/Boolean;
  Q R S getValue &(Ljava/lang/String;)Ljava/lang/Object;
  U V " setValue
  X R  j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this  Lorg/openide/loaders/DataNode$4; name Ljava/lang/String; type Ljava/lang/Class; displayName shortDescription LocalVariableTypeTable %Ljava/lang/Class<Ljava/lang/String;>; MethodParameters msg ex Ljava/io/IOException; val StackMapTable 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; key (Ljava/lang/Object;)V ()Ljava/lang/Object; 	Signature ALorg/openide/nodes/PropertySupport$ReadWrite<Ljava/lang/String;>; 
SourceFile DataNode.java EnclosingMethod y z createNameProperty C(Lorg/openide/loaders/DataObject;)Lorg/openide/nodes/Node$Property; InnerClasses } !org/openide/nodes/PropertySupport 	ReadWrite � org/openide/nodes/Node$Property � org/openide/nodes/Node Property                Y  Z   t     *� *+,-� �    [      � \   4     ] ^      _ `     a b     c `     d `  e        a f  g    _   a   c   d     R   Z   2     *� � �    [      � \        ] ^    V "  Z       h*� � � Y� �+� � Y� �*� +� � DMN,� %� ,� %,� (� +� 13*� � +� 5N� ,� %N,-� :� @Y,� B��   # & #  [   F        # &	 '
 ) 1 > F J Q V ^ g \   *  ) > h `  ' @ i j    h ] ^     h k `  l    J #�  # ,�  m       @ g    k       Z   2     *� � E�    [       \        ] ^   n     o    R S  Z   X     H+� +� � J�*+� P�    [      " 	# % \        ] ^      p `  l     g    p   n     o  A V q  Z   3     	*+� ,� T�    [      � \       	 ] ^   m       @ g    k A R r  Z   /     *� W�    [      � \        ] ^   m      @  s    t u    v w    1 x {             | ~	  � �	