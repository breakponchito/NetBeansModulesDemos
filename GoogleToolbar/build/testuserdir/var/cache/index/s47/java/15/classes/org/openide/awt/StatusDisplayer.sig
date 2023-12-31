����   4 [
      java/lang/Object <init> ()V	  	 
   org/openide/awt/StatusDisplayer INSTANCE !Lorg/openide/awt/StatusDisplayer;
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;  'org/openide/awt/StatusDisplayer$Trivial
     &(Lorg/openide/awt/StatusDisplayer$1;)V  "java/lang/IllegalArgumentException  java/lang/StringBuilder
   " Invalid importance value: 
  $ % & append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ( % ) (I)Ljava/lang/StringBuilder;
  + , - toString ()Ljava/lang/String;
  /  0 (Ljava/lang/String;)V
  2 3 0 setStatusText 5 !org/openide/awt/StatusDisplayer$1
 4 7  8 6(Lorg/openide/awt/StatusDisplayer;Ljava/lang/String;)V IMPORTANCE_ANNOTATION I ConstantValue  � IMPORTANCE_INCREMENTAL_FIND  � IMPORTANCE_FIND_OR_REPLACE    IMPORTANCE_ERROR_HIGHLIGHT  � Code LineNumberTable LocalVariableTable this #()Lorg/openide/awt/StatusDisplayer; StackMapTable getStatusText MethodParameters text >(Ljava/lang/String;I)Lorg/openide/awt/StatusDisplayer$Message; Ljava/lang/String; 
importance addChangeListener %(Ljavax/swing/event/ChangeListener;)V l removeChangeListener <clinit> 
SourceFile StatusDisplayer.java InnerClasses Trivial Y 'org/openide/awt/StatusDisplayer$Message Message!       9 :  ;    <  = :  ;    >  ? :  ;    @  A :  ;    B 
          C   3     *� �    D   
    6  7 E        F    )  G  C   Z      )� � "� � � � � � � Y� � � �    D       =  >  @  A % E H    % I -   3 0  J    K    3 L  C   �     .� � Y� Y�  !� #� '� *� .�*+� 1� 4Y*+� 6�    D       t  u  v $ w E        . F      . K M    . N :  H     J   	 K  N   O P  J    Q   R P  J    Q    S   C         � �    D       3  T    U V       W  4       X  Z	