����   4 B
      java/lang/Object <init> ()V	  	 
   $org/openide/loaders/DataShadow$OrigL shadow Ljava/lang/ref/Reference;  java/lang/ref/WeakReference
     (Ljava/lang/Object;)V
      java/lang/ref/Reference get ()Ljava/lang/Object;  org/openide/loaders/DataShadow  org/openide/loaders/DataObject  valid
    ! " # java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
 % & ' ( ) java/lang/String equals (Ljava/lang/Object;)Z
  + , - 
access$400 #(Lorg/openide/loaders/DataShadow;)V / !java/beans/PropertyChangeListener 	Signature ;Ljava/lang/ref/Reference<Lorg/openide/loaders/DataShadow;>; Code LineNumberTable LocalVariableTable this &Lorg/openide/loaders/DataShadow$OrigL;  Lorg/openide/loaders/DataShadow; MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; StackMapTable 
SourceFile DataShadow.java InnerClasses OrigL      .       0    1    -  2   V     *� *� *� Y+� � �    3      � � 	� � 4        5 6       7  8        9 :  2   x      *� � � M,� +� � $� ,� *�    3      � � � � 4          5 6       ; <     7  =    �   8    ;    >    ? @   
    A 
