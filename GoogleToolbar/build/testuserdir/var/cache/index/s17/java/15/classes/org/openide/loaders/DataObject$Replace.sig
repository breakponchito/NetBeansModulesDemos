����   4 A
      java/lang/Object <init> ()V	  	 
   &org/openide/loaders/DataObject$Replace obj  Lorg/openide/loaders/DataObject;
      org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;	     fo $Lorg/openide/filesystems/FileObject;
      java/io/ObjectInputStream defaultReadObject  java/io/FileNotFoundException
  
    ! " find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; $ java/io/Serializable serialVersionUID J ConstantValue�It��S� #(Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/loaders/DataObject$Replace; MethodParameters readResolve ()Ljava/lang/Object; 
readObject (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; StackMapTable 
Exceptions : java/io/IOException <  java/lang/ClassNotFoundException 
SourceFile DataObject.java InnerClasses Replace 0    #       �      % &  '    (    *  +   R     *� *+� *+� � �    ,      � � 	� � -        . /         0        1 2  +   /     *� �    ,      � -        . /    3 4  +   l     +� *� � � Y� �**� � � �    ,      � � � � � -        . /      5 6  7     8     9 ; 0    5    =    > ?   
    @ 