����   4 O
      java/lang/Object <init> ()V
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  -org/openide/awt/Actions$ButtonActionConnector
     lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	      3org/openide/awt/Actions$ButtonActionConnectorGetter result  Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
    ! " resultChanged !(Lorg/openide/util/LookupEvent;)V	  $ % & all Ljava/util/Collection;
  ( ) * allInstances ()Ljava/util/Collection; , - . / 0 java/util/Collection iterator ()Ljava/util/Iterator; 2 3 4 5 6 java/util/Iterator hasNext ()Z 8 org/openide/util/LookupListener 	Signature QLorg/openide/util/Lookup$Result<Lorg/openide/awt/Actions$ButtonActionConnector;>; HLjava/util/Collection<+Lorg/openide/awt/Actions$ButtonActionConnector;>; Code LineNumberTable LocalVariableTable this 5Lorg/openide/awt/Actions$ButtonActionConnectorGetter; J()Ljava/util/Collection<+Lorg/openide/awt/Actions$ButtonActionConnector;>; ev Lorg/openide/util/LookupEvent; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile Actions.java InnerClasses K org/openide/awt/Actions ButtonActionConnector Result ButtonActionConnectorGetter 0    7      9    :  % &  9    ;       <   X     *� *� � � *� *� *� �    =      � � � � � >        ? @    % *  <   /     *� #�    =      � >        ? @   9    A  ! "  <   W     **� � '� #*� #� + � 1 W�    =      � � � >        ? @      B C  D    B   E     F    G    H I      J L	   M	  J N 