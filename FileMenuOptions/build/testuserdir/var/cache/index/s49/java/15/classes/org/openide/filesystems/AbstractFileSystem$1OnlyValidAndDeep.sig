����   4 W	      <org/openide/filesystems/AbstractFileSystem$1OnlyValidAndDeep this$0 ,Lorg/openide/filesystems/AbstractFileSystem;
  	 
   java/lang/Object <init> ()V
      java/lang/ref/Reference get ()Ljava/lang/Object;  &org/openide/filesystems/AbstractFolder
     subfiles +()[Lorg/openide/filesystems/AbstractFolder;  java/lang/ref/WeakReference
     (Ljava/lang/Object;)V    ! " # java/util/Collection add (Ljava/lang/Object;)Z
  % & ' isValid ()Z
  ) * + process U(Ljava/lang/ref/Reference;Ljava/util/Collection;)Lorg/openide/filesystems/FileObject; - 'org/openide/util/Enumerations$Processor /(Lorg/openide/filesystems/AbstractFileSystem;)V Code LineNumberTable LocalVariableTable this >Lorg/openide/filesystems/AbstractFileSystem$1OnlyValidAndDeep; MethodParameters i I arr )[Lorg/openide/filesystems/AbstractFolder; obj Ljava/lang/ref/Reference; toAdd Ljava/util/Collection; file (Lorg/openide/filesystems/AbstractFolder; LocalVariableTypeTable CLjava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>; [Ljava/util/Collection<Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>;>; StackMapTable 8 E "org/openide/filesystems/FileObject 	Signature �(Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>;Ljava/util/Collection<Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>;>;)Lorg/openide/filesystems/FileObject; <(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object; �Ljava/lang/Object;Lorg/openide/util/Enumerations$Processor<Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>;Lorg/openide/filesystems/FileObject;>; 
SourceFile AbstractFileSystem.java EnclosingMethod N *org/openide/filesystems/AbstractFileSystem P Q existingFileObjects A(Lorg/openide/filesystems/AbstractFolder;)Ljava/util/Enumeration; InnerClasses OnlyValidAndDeep U org/openide/util/Enumerations 	Processor      ,          .  /   >     
*+� *� �    0      ! 1       
 2 3     
    4    �  * +  /   �     E+� � N-� :-� :6�� ,� Y2� �  W����-� $� -� ��    0   "   # % & ) * 0) 6- C0 1   >   ! 5 6   1 7 8    E 2 3     E 9 :    E ; <   = = >  ?       E 9 @    E ; A  B    �   C�  
@ D�   4   	 9   ;   F    GA * H  /   4     
*+� ,� (�    0      ! 1       
 2 3   4   	 9  ;   F    I J    K L    M O R        S   , T V	