����   4 m
      java/lang/Object <init> ()V	  	 
   +org/openide/loaders/DataShadow$CreateShadow name Ljava/lang/String;	     ext	     fo $Lorg/openide/filesystems/FileObject;	     original  Lorg/openide/loaders/DataObject;
     k(Ljava/lang/String;Ljava/lang/String;Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;)V
       !org/openide/filesystems/FileEvent 	firedFrom 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)Z	  " # $ res  Lorg/openide/loaders/DataShadow;
 & ' ( ) * org/openide/loaders/DataShadow 
access$700 �(Ljava/lang/String;Ljava/lang/String;Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;)Lorg/openide/filesystems/FileObject;
 , - . / 0 org/openide/loaders/DataObject find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; 2 -org/openide/loaders/DataShadow$CreateShadow$1
 , 4 5 6 getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 1 8  9 t(Lorg/openide/loaders/DataShadow$CreateShadow;Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;)V
 ; < = > ? org/openide/loaders/FolderList changedDataSystem '(Lorg/openide/filesystems/FileObject;)V
  A B C getClass ()Ljava/lang/Class;
  E F G equals (Ljava/lang/Object;)Z
  I J K hashCode ()I M /org/openide/filesystems/FileSystem$AtomicAction Code LineNumberTable LocalVariableTable this -Lorg/openide/loaders/DataShadow$CreateShadow; MethodParameters isOurs &(Lorg/openide/filesystems/FileEvent;)Z ev #Lorg/openide/filesystems/FileEvent; 	getShadow "()Lorg/openide/loaders/DataShadow; run file obj StackMapTable _ "org/openide/filesystems/FileObject 
Exceptions b java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; Ljava/lang/Object; 
SourceFile DataShadow.java InnerClasses CreateShadow k "org/openide/filesystems/FileSystem AtomicAction      L                       # $         N   �     *� *+� *,� *-� *� �    O      � � 	� � � � P   4     Q R                           S                 T U  N   :     *� Y� � �    O      � P        V W   S    V     X Y  N   /     *� !�    O      � P        Q R    Z   N   �     A*� *� *� *� � %L+� +M,� &� *,� &� !� � 1Y*,� 3,� 7�*� � :�    O      � � �  � +� 9� @  P        A Q R    - [    ( \   ]    � + ^ , `     a c     d    F G  N   W     +� *� @+� @� D� � �    O       P        Q R      \ e  ]    @ S    \   c     d    J K  N   2     *� @� H�    O      	 P        Q R   c     d    f    g h      & i 
 L j l	 1      