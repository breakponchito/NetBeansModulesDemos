����   4 C	      5org/openide/text/EditorSupport$Del$DataNodeListener$1 this$2 5Lorg/openide/text/EditorSupport$Del$DataNodeListener;	   	 
 val$obj  Lorg/openide/loaders/DataObject;
      java/lang/Object <init> ()V
      3org/openide/text/EditorSupport$Del$DataNodeListener 
access$100 Y(Lorg/openide/text/EditorSupport$Del$DataNodeListener;)Lorg/openide/text/CloneableEditor;
      org/openide/loaders/DataObject getNodeDelegate ()Lorg/openide/nodes/Node;  java/beans/BeanInfo
   ! " # $ org/openide/nodes/Node getIcon (I)Ljava/awt/Image;
 & ' ( ) *  org/openide/text/CloneableEditor setIcon (Ljava/awt/Image;)V , java/lang/Runnable X(Lorg/openide/text/EditorSupport$Del$DataNodeListener;Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/text/EditorSupport$Del$DataNodeListener$1; MethodParameters 	Signature run 
SourceFile EditorSupport.java EnclosingMethod : ; propertyChange #(Ljava/beans/PropertyChangeEvent;)V InnerClasses > "org/openide/text/EditorSupport$Del @ org/openide/text/EditorSupport Del DataNodeListener      +  	 
           -  .   C     *+� *,� *� �    /      	 0        1 2         3   	 � 	 4      5   .   D     *� � *� � � � %�    /   
     0        1 2    6    7 8     9 <     = ? A   = B        