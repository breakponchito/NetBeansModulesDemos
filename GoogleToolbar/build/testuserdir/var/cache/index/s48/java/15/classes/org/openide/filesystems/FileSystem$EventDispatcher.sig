����   4 (
      java/lang/Object <init> ()V
  	 
   2org/openide/filesystems/FileSystem$EventDispatcher dispatch (ZLjava/util/Collection;)V  java/lang/Runnable Code LineNumberTable LocalVariableTable this 4Lorg/openide/filesystems/FileSystem$EventDispatcher; run MethodParameters onlyPriority 
postNotify 	Signature 0(ZLjava/util/Collection<Ljava/lang/Runnable;>;)V setAtomicActionLink :(Lorg/openide/filesystems/EventControl$AtomicActionLink;)V propID 
SourceFile FileSystem.java InnerClasses ! "org/openide/filesystems/FileSystem EventDispatcher $ 5org/openide/filesystems/EventControl$AtomicActionLink & $org/openide/filesystems/EventControl AtomicActionLink                 /     *� �                               5     *� �       
                       	                                    " # % ' 