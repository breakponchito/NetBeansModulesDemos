����   4 Z
      java/lang/Object <init> ()V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      2org/openide/nodes/FilterNode$PropertyChangeAdapter fnRef Ljava/lang/ref/Reference;
      java/lang/ref/Reference get ()Ljava/lang/Object;  org/openide/nodes/FilterNode
     propertyChange A(Lorg/openide/nodes/FilterNode;Ljava/beans/PropertyChangeEvent;)V
    ! " # java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
  % &  getOldValue
  ( )  getNewValue
  + , - firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V / java/util/HashSet
 .  2 3 4 5 6 java/util/Set addAll (Ljava/util/Collection;)Z 2 8 9 : add (Ljava/lang/Object;)Z < !java/beans/PropertyChangeListener 	Signature 9Ljava/lang/ref/Reference<Lorg/openide/nodes/FilterNode;>; !(Lorg/openide/nodes/FilterNode;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/nodes/FilterNode$PropertyChangeAdapter; fn Lorg/openide/nodes/FilterNode; MethodParameters #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; StackMapTable checkDormant C(Ljava/beans/PropertyChangeListener;Ljava/util/Set;)Ljava/util/Set; ret Ljava/util/Set; l #Ljava/beans/PropertyChangeListener; in LocalVariableTypeTable 4Ljava/util/Set<Ljava/beans/PropertyChangeListener;>; �(Ljava/beans/PropertyChangeListener;Ljava/util/Set<Ljava/beans/PropertyChangeListener;>;)Ljava/util/Set<Ljava/beans/PropertyChangeListener;>; 
SourceFile FilterNode.java InnerClasses PropertyChangeAdapter !    ;      =    >    ?  @   M     *� *� Y+� 	� �    A      J K L B        C D      E F  G    E     H  @   s     *� � � M,� �*,+� �    A      R T U X Y B         C D      I J    E F  K    �   G    I       @   S     +,� ,� $,� '� *�    A   
   a b B         C D      E F     I J  G   	 E   I    L M  @   �     4*� � .*� � � � !� .Y� 0M+� ,+� 1 W,*� 7 W,�+�    A      e f g  h (j 0k 2m B        N O    4 P Q     4 R O  S       N T    4 R T  K    � ( 2� 	 G   	 P   R   =    U  V    W X   
    Y 