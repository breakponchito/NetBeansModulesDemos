����   4 C	      1org/openide/loaders/DataNode$LastModifiedProperty this$0 Lorg/openide/loaders/DataNode;  lastModified 
 java/util/Date  PROP_lastModified
      org/openide/loaders/DataObject 	getString &(Ljava/lang/String;)Ljava/lang/String;  HINT_lastModified
      *org/openide/nodes/PropertySupport$ReadOnly <init> J(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
       org/openide/loaders/DataNode getDataObject "()Lorg/openide/loaders/DataObject;
  " # $ getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 & ' (  ) "org/openide/filesystems/FileObject ()Ljava/util/Date;
  + , ) getValue !(Lorg/openide/loaders/DataNode;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/loaders/DataNode$LastModifiedProperty; MethodParameters ()Ljava/lang/Object; 
Exceptions 7  java/lang/IllegalAccessException 9 +java/lang/reflect/InvocationTargetException 	Signature >Lorg/openide/nodes/PropertySupport$ReadOnly<Ljava/util/Date;>; 
SourceFile DataNode.java InnerClasses LastModifiedProperty A !org/openide/nodes/PropertySupport ReadOnly 0             -  .   J     *+� *	� � � �    /      f g h 0        1 2   3      , )  .   8     *� � � !� %�    /      k 0        1 2  A , 4  .   /     *� *�    /      d 0        1 2   5     6 8  :    ; <    = >       ?   @ B	