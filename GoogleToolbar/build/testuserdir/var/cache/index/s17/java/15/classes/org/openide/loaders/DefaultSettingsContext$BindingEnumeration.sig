����   4 N
      java/lang/Object <init> ()V	  	 
   =org/openide/loaders/DefaultSettingsContext$BindingEnumeration fo $Lorg/openide/filesystems/FileObject;
      "org/openide/filesystems/FileObject getAttributes ()Ljava/util/Enumeration;	     en Ljava/util/Enumeration;
     hasMoreElements ()Z    java/util/Enumeration
     ! nextElement ()Ljavax/naming/Binding;  #   $ ()Ljava/lang/Object; & java/lang/String
  ( ) * getAttribute &(Ljava/lang/String;)Ljava/lang/Object; , javax/naming/Binding
 + .  / '(Ljava/lang/String;Ljava/lang/Object;)V
  1 2 ! next 4 javax/naming/NamingEnumeration 	Signature +Ljava/util/Enumeration<Ljava/lang/String;>; '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this ?Lorg/openide/loaders/DefaultSettingsContext$BindingEnumeration; MethodParameters close 
Exceptions A javax/naming/NamingException hasMore name Ljava/lang/String; val Ljava/lang/Object; JLjava/lang/Object;Ljavax/naming/NamingEnumeration<Ljavax/naming/Binding;>; 
SourceFile DefaultSettingsContext.java InnerClasses L *org/openide/loaders/DefaultSettingsContext BindingEnumeration 0    3      5    6         7  8   R     *� *+� *+� � �    9        	  :        ; <         =        >   8   +      �    9       :        ; <   ?     @  B   8   /     *� �    9       :        ; <   ?     @     8   4     
*� �  �    9       :       
 ; <    2 !  8   /     *� �    9       :        ; <   ?     @    !  8   f      *� � " � %L*� +� 'M� +Y+,� -�    9      " # $ :          ; <     C D   
 E F A 2 $  8   /     *� 0�    9       :        ; <   ?     @A   $  8   /     *� �    9       :        ; <    5    G H    I J   
   K M 