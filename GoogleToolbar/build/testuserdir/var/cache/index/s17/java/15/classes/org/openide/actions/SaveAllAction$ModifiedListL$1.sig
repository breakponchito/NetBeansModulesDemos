����   4 ?	      1org/openide/actions/SaveAllAction$ModifiedListL$1 this$1 1Lorg/openide/actions/SaveAllAction$ModifiedListL;
  	 
   java/lang/Object <init> ()V	      /org/openide/actions/SaveAllAction$ModifiedListL this$0 #Lorg/openide/actions/SaveAllAction;
      org/openide/loaders/DataObject getRegistry +()Lorg/openide/loaders/DataObject$Registry;
      'org/openide/loaders/DataObject$Registry getModifiedSet ()Ljava/util/Set;   ! " # $ java/util/Set size ()I
 & ' ( ) * !org/openide/actions/SaveAllAction 
setEnabled (Z)V , java/lang/Runnable 4(Lorg/openide/actions/SaveAllAction$ModifiedListL;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/actions/SaveAllAction$ModifiedListL$1; MethodParameters run StackMapTable 
SourceFile SaveAllAction.java EnclosingMethod : ; stateChanged "(Ljavax/swing/event/ChangeEvent;)V InnerClasses ModifiedListL Registry      +          -  .   >     
*+� *� �    /       x 0       
 1 2     
    3    �  4   .   f     *� � � � �  � � � %�    /   
    z  { 0        1 2   5    Y &�      &  6    7 8     9 <      & =           > 