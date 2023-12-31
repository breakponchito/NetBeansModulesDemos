����   4 d	       org/openide/loaders/DataShadow$1 val$trg $Lorg/openide/filesystems/FileObject;	   	 
 val$name Ljava/lang/String;	     val$obj  Lorg/openide/loaders/DataObject;	    
 val$ext
      java/lang/Object <init> ()V
      "org/openide/filesystems/FileObject isData ()Z
    ! " # org/openide/loaders/DataObject getName ()Ljava/lang/String;
 % & ' ( ) java/lang/String replace (CC)Ljava/lang/String;
 + , - . /  org/openide/filesystems/FileUtil findFreeFileName \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  1 2 3 
createData J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  5 6 7 getPrimaryFile &()Lorg/openide/filesystems/FileObject;
  9 : ; toURL ()Ljava/net/URL;
 = > ? @ A org/openide/loaders/DataShadow 
access$000 5(Lorg/openide/filesystems/FileObject;Ljava/net/URL;)V
  C D 7 run F &org/openide/util/Mutex$ExceptionAction k(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Lorg/openide/loaders/DataObject;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this "Lorg/openide/loaders/DataShadow$1; MethodParameters 	Signature fo baseName n StackMapTable 
Exceptions U java/io/IOException ()Ljava/lang/Object; X java/lang/Exception `Ljava/lang/Object;Lorg/openide/util/Mutex$ExceptionAction<Lorg/openide/filesystems/FileObject;>; 
SourceFile DataShadow.java EnclosingMethod ^ _ writeOriginal �(Ljava/lang/String;Ljava/lang/String;Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;)Lorg/openide/filesystems/FileObject; InnerClasses b org/openide/util/Mutex ExceptionAction      E      	 
        
       G  H   D     *+� *,� *-� *� *� �    I      % J        K L   M     	   N      D 7  H   �     a*� � � *� L� B*� � )*� � :_� $/_� $N*� -*� � *M� *� M*� ,*� � 0L+*� � 4� 8� <+�    I   * 
  ( 
) , . // <0 ?1 D3 Q5 _6 J   >    O   /  P 
  <  Q 
  D  Q 
    a K L   Q  O   R    ,�   %�       S     TA D V  H   /     *� B�    I      % J        K L   S     W  N    Y Z    [ \    = ] `            E a c	