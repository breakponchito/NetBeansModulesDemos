����   4 e
      java/lang/Object <init> ()V	  	 
   0org/openide/loaders/MultiDataObject$EntryReplace file $Lorg/openide/filesystems/FileObject;
      java/io/ObjectInputStream defaultReadObject
      org/openide/loaders/DataObject find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject;  #org/openide/loaders/MultiDataObject
     getPrimaryFile &()Lorg/openide/filesystems/FileObject;
     ! equals (Ljava/lang/Object;)Z
  # $ % getPrimaryEntry -()Lorg/openide/loaders/MultiDataObject$Entry;	  ' ( ) entry +Lorg/openide/loaders/MultiDataObject$Entry;
  + , - findSecondaryEntry Q(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject$Entry; / java/io/InvalidObjectException
  1 2 3 toString ()Ljava/lang/String;
 . 5  6 (Ljava/lang/String;)V 8 /org/openide/loaders/DataObjectNotFoundException
 7 : ; 3 
getMessage = java/io/Serializable serialVersionUID J ConstantValue�32����� '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/loaders/MultiDataObject$EntryReplace; fo MethodParameters 
readObject (Ljava/io/ObjectInputStream;)V e m %Lorg/openide/loaders/MultiDataObject; obj  Lorg/openide/loaders/DataObject; ex 1Lorg/openide/loaders/DataObjectNotFoundException; ois Ljava/io/ObjectInputStream; StackMapTable X )org/openide/loaders/MultiDataObject$Entry 
Exceptions [ java/io/IOException ]  java/lang/ClassNotFoundException readResolve ()Ljava/lang/Object; 
SourceFile MultiDataObject.java InnerClasses EntryReplace Entry 0    <   > ?  @    A      � ( )      C  D   F     
*� *+� �    E      � � 	� F       
 G H     
 I   J    I    K L  D       c+� *� � M,� � B,� N*� -� � � *-� "� &� $-*� � *:� � .Y,� 0� 4�*� &� M� .Y,� 9� 4��   R U 7  E   :   � � � � � &� 1� ;� @� L� R� U� V� b� F   >  ;  M )   : N O   F P Q  V  R S    c G H     c T U  V    � 1  �  W� B 7 Y     Z \ J    T    ^ _  D   /     *� &�    E      � F        G H    `    a b       c  W  d