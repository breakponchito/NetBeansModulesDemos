����   4 S	      "org/openide/loaders/DataObject$2Op this$0  Lorg/openide/loaders/DataObject;	   	 
 val$df  Lorg/openide/loaders/DataFolder;
      java/lang/Object <init> ()V
      org/openide/loaders/DataObject 	getFolder "()Lorg/openide/loaders/DataFolder;
     equals (Ljava/lang/Object;)Z
     getPrimaryFile &()Lorg/openide/filesystems/FileObject;	    ! " old $Lorg/openide/filesystems/FileObject;
  $ % & 
handleMove F(Lorg/openide/loaders/DataFolder;)Lorg/openide/filesystems/FileObject;
  ( ) * item +()Lorg/openide/loaders/DataObjectPool$Item;
 , - . / 0 'org/openide/loaders/DataObjectPool$Item changePrimaryFile O(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObjectPool$Item;
  2 3 4 
access$400 L(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataObjectPool$Item;)V 6 /org/openide/filesystems/FileSystem$AtomicAction C(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/loaders/DataObject$2Op; MethodParameters 	Signature run mf StackMapTable 
Exceptions D java/io/IOException 
SourceFile DataObject.java EnclosingMethod I J move #(Lorg/openide/loaders/DataFolder;)V InnerClasses Op N "org/openide/loaders/DataObjectPool Item Q "org/openide/filesystems/FileSystem AtomicAction      5    ! "   	 
           7  8   C     *+� *,� *� �    9      J :        ; <         =   	 � 	 >      ?   8   �     G*� � � �*� *� � � � �**� � � *� *� � #L*� *� � '+� +� 1�    9      M N Q (R 4S FT :       G ; <   4  @ "  A     B     C  E    F G     H K        L   , M O  5 P R	