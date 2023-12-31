����   4 f
      java/util/Objects requireNonNull &(Ljava/lang/Object;)Ljava/lang/Object;
  	 
   )org/openide/loaders/MultiDataObject$Entry <init> L(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)V
      "org/openide/loaders/FileEntry$Numb stdBehaving ()V
     getFile &()Lorg/openide/filesystems/FileObject;
     isLocked ()Z  java/io/IOException  org/openide/loaders/FileEntry
   ! " # $ org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle; & EXC_SharedAccess
 ( ) * + , java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;
  .  / (Ljava/lang/String;)V
  1 2 3 takeLock $()Lorg/openide/filesystems/FileLock;
 5 6 7 8 9 "org/openide/filesystems/FileObject delete %(Lorg/openide/filesystems/FileLock;)V
 ; < = >   org/openide/filesystems/FileLock releaseLock serialVersionUID J ConstantValue�����Y� Code LineNumberTable LocalVariableTable this $Lorg/openide/loaders/FileEntry$Numb; obj %Lorg/openide/loaders/MultiDataObject; fo $Lorg/openide/filesystems/FileObject; MethodParameters isImportant copy \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; f suffix Ljava/lang/String; rename 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; name 
Exceptions move lock "Lorg/openide/filesystems/FileLock; StackMapTable ] java/lang/Throwable createFromTemplate 
SourceFile FileEntry.java InnerClasses c #org/openide/loaders/MultiDataObject Entry Numb 1       ? @  A    B      D   N     *+Y� W,� �    E   
    �  � F         G H      I J     K L  M   	 I   K    N   D   ,     �    E       � F        G H    O P  D   @     �    E       � F         G H      Q L     R S  M   	 Q   R    T U  D   >     *� �    E   
    �  � F        G H      V S  W      M    V    X P  D   H     *� �    E   
    �  � F         G H      Q L     R S  W      M   	 Q   R    8   D   3     *� �    E   
      F        G H   W          D   �     E*� � �*� � � Y� %� '� -�*� 0L*� +� 4+� +� :� M+� +� :,��  & . 9    E   2     
  ! & . 2 9 > B D F       E G H   &  Y Z  [    �    ;  \�  \�  W       ^ P  D   @     �    E       F         G H      Q L     V S  M   	 Q   V    _    ` a      b d   e 