����   4 .
      java/util/EventObject <init> (Ljava/lang/Object;)V	  	 
   'org/openide/filesystems/RepositoryEvent 
fileSystem $Lorg/openide/filesystems/FileSystem;	     add Z
     	getSource ()Ljava/lang/Object;  "org/openide/filesystems/Repository serialVersionUID J ConstantValueKݕ�� L(Lorg/openide/filesystems/Repository;Lorg/openide/filesystems/FileSystem;Z)V Code LineNumberTable LocalVariableTable this )Lorg/openide/filesystems/RepositoryEvent; fsp $Lorg/openide/filesystems/Repository; fs MethodParameters getRepository &()Lorg/openide/filesystems/Repository; getFileSystem &()Lorg/openide/filesystems/FileSystem; isAdded ()Z 
SourceFile RepositoryEvent.java !                                 d     *+� *,� *� �           ,  - 
 .  /    *       !      " #     $         %    "   $       & '     2     *� � �           5           !    ( )     /     *� �           <           !    * +     /     *� �           C           !    ,    -