����   4 P
      java/util/EventObject <init> (Ljava/lang/Object;)V	  	 
   'org/openide/filesystems/FileStatusEvent files Ljava/util/Set;	     icon Z	     name
      java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
     8(Lorg/openide/filesystems/FileSystem;Ljava/util/Set;ZZ)V  java/util/Set
    ! " 	getSource ()Ljava/lang/Object; $ "org/openide/filesystems/FileSystem
 & ' ( ) * "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem; , 1org/openide/filesystems/FileStateInvalidException  . / 0 contains (Ljava/lang/Object;)Z serialVersionUID J ConstantValue��j�)�UU 	Signature 6Ljava/util/Set<+Lorg/openide/filesystems/FileObject;>; Code LineNumberTable LocalVariableTable this )Lorg/openide/filesystems/FileStatusEvent; fs $Lorg/openide/filesystems/FileSystem; LocalVariableTypeTable MethodParameters _(Lorg/openide/filesystems/FileSystem;Ljava/util/Set<+Lorg/openide/filesystems/FileObject;>;ZZ)V M(Lorg/openide/filesystems/FileSystem;Lorg/openide/filesystems/FileObject;ZZ)V file $Lorg/openide/filesystems/FileObject; )(Lorg/openide/filesystems/FileSystem;ZZ)V isNameChange ()Z isIconChange 
hasChanged '(Lorg/openide/filesystems/FileObject;)Z ex 3Lorg/openide/filesystems/FileStateInvalidException; StackMapTable 
SourceFile FileStatusEvent.java 1       1 2  3    4     6    7                8   �     *+� *,� *� *� �    9       1  2 
 3  4  5 :   4     ; <      = >                    ?         7  @    =            6    A   B  8   c     *+,� � �    9   
    >  ? :   4     ; <      = >     C D              @    =   C           E  8   X     *+� � �    9   
    K  L :   *     ; <      = >              @    =          ) *  8   2     *� � #�    9       R :        ; <    F G  8   /     *� �    9       X :        ; <    H G  8   /     *� �    9       ^ :        ; <    I J  8   �     &*� � +� %*� � � �M�*� +� - �     +  9       f  i  j  l  p :        K L    & ; <     & C D  M   
 @@ + @    C    N    O