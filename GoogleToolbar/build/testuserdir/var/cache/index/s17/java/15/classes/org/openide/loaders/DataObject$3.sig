����   4 9	       org/openide/loaders/DataObject$3 this$0  Lorg/openide/loaders/DataObject;	   	 
 
val$result ![Lorg/openide/loaders/DataObject;	     val$f  Lorg/openide/loaders/DataFolder;	     val$name Ljava/lang/String;	     val$ext
      java/lang/Object <init> ()V
      ! org/openide/loaders/DataObject handleCopyRename f(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/loaders/DataObject; # /org/openide/filesystems/FileSystem$AtomicAction �(Lorg/openide/loaders/DataObject;[Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this "Lorg/openide/loaders/DataObject$3; MethodParameters 	Signature run 
Exceptions / java/io/IOException 
SourceFile DataObject.java EnclosingMethod 4 ! 
copyRename InnerClasses 7 "org/openide/filesystems/FileSystem AtomicAction      "  	 
                       $  %   T      *+� *,� *-� *� *� *� �    &      � '         ( )          *    � 	    +      ,   %   H     *� *� *� *� *� � S�    &   
   � � '        ( )   -     .  0    1 2     3 5            " 6 8	