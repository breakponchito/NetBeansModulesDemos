����   4 L	      *org/openide/loaders/FilesSet$FilesIterator this$0 Lorg/openide/loaders/FilesSet;
  	 
   java/lang/Object <init> ()V	     first Z	     
itDelegate Ljava/util/Iterator;
     getIteratorDelegate ()Ljava/util/Iterator;      java/util/Iterator hasNext ()Z
   ! " # $ org/openide/loaders/FilesSet 
access$000 D(Lorg/openide/loaders/FilesSet;)Lorg/openide/filesystems/FileObject;  & ' ( next ()Ljava/lang/Object; * "org/openide/filesystems/FileObject  , -  remove
   / 0 1 
access$100 /(Lorg/openide/loaders/FilesSet;)Ljava/util/Set; 3 4 5 6  java/util/Set iterator
  8 ' 9 &()Lorg/openide/filesystems/FileObject; 	Signature :Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; !(Lorg/openide/loaders/FilesSet;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/loaders/FilesSet$FilesIterator; MethodParameters StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <()Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; LLjava/lang/Object;Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; 
SourceFile FilesSet.java InnerClasses FilesIterator 0               :    ;         <  =   J     *+� *� *� *� �    >       � 	 �  �  � ?        @ A   B         =   J     *� � � *� �  �    >       � ?        @ A   C    H  ' 9  =   `     !*� � *� *� � �*� � % � )�    >       �  �  �  � ?       ! @ A   C      -   =   8     
*� � + �    >   
    � 	 � ?       
 @ A   D     E       =   e     &*� � **� � .� 2 � *� � % W*� �    >       �  �  � ! � ?       & @ A   C    ! :    FA ' (  =   /     *� 7�    >       � ?        @ A    :    G H    I J   
     K 