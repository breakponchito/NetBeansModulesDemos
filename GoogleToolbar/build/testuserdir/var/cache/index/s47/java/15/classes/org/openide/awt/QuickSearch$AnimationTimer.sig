����   4 I
      java/lang/Object <init> ()V	  	 
   *org/openide/awt/QuickSearch$AnimationTimer jLabel Ljavax/swing/JLabel;	     findIcon Ljavax/swing/Icon;  javax/swing/Timer  ,org/openide/awt/QuickSearch$AnimationTimer$1
     C(Lorg/openide/awt/QuickSearch$AnimationTimer;Ljavax/swing/JLabel;)V
     #(ILjava/awt/event/ActionListener;)V	     animationTimer Ljavax/swing/Timer;
    ! " 	isRunning ()Z
  $ %  start
  ' (  stop
 * + , - . javax/swing/JLabel setIcon (Ljavax/swing/Icon;)V
 0 1 2 3 4 javax/swing/BorderFactory createEmptyBorder !(IIII)Ljavax/swing/border/Border;
 * 6 7 8 	setBorder (Ljavax/swing/border/Border;)V )(Ljavax/swing/JLabel;Ljavax/swing/Icon;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/awt/QuickSearch$AnimationTimer; MethodParameters startProgressAnimation StackMapTable stopProgressAnimation 
SourceFile QuickSearch.java InnerClasses G org/openide/awt/QuickSearch AnimationTimer 0                        9  :   s     %*� *+� *,� *� Yd� Y*+� � � �    ;      � � 	� � $ <        % = >     %      %    ?   	       @   :   T     *� � *� � � 
*� � #�    ;         <        = >   A      B   :   u     2*� � -*� � � #*� � &*� *� � )*� � /� 5�    ;         #  1" <       2 = >   A    1  C    D E      F H        