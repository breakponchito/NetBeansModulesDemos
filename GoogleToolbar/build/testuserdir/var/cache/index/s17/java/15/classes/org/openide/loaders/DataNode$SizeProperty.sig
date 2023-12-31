����   4 L	      )org/openide/loaders/DataNode$SizeProperty this$0 Lorg/openide/loaders/DataNode;  size	 
     java/lang/Long TYPE Ljava/lang/Class;  	PROP_size
      org/openide/loaders/DataObject 	getString &(Ljava/lang/String;)Ljava/lang/String;  	HINT_size
      *org/openide/nodes/PropertySupport$ReadOnly <init> J(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
   ! " # $ org/openide/loaders/DataNode getDataObject "()Lorg/openide/loaders/DataObject;
  & ' ( getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 * + , - . "org/openide/filesystems/FileObject getSize ()J
 
 0  1 (J)V
  3 4 5 getValue ()Ljava/lang/Long; !(Lorg/openide/loaders/DataNode;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/loaders/DataNode$SizeProperty; MethodParameters ()Ljava/lang/Object; 
Exceptions @  java/lang/IllegalAccessException B +java/lang/reflect/InvocationTargetException 	Signature >Lorg/openide/nodes/PropertySupport$ReadOnly<Ljava/lang/Long;>; 
SourceFile DataNode.java InnerClasses SizeProperty J !org/openide/nodes/PropertySupport ReadOnly 0             6  7   K     *+� *� 	� � � �    8      Z [ \ 9        : ;   <      4 5  7   ?     � 
Y*� � � %� )� /�    8      _ 9        : ;  A 4 =  7   /     *� 2�    8      X 9        : ;   >     ? A  C    D E    F G        H   I K	