����   4 [	      7org/openide/loaders/DataNode$LazyFilesSet$FilesIterator this$1 +Lorg/openide/loaders/DataNode$LazyFilesSet;
  	 
   java/lang/Object <init> ()V	     first Z	     
itDelegate Ljava/util/Iterator;
     getIteratorDelegate ()Ljava/util/Iterator;      java/util/Iterator hasNext ()Z	   ! " # $ )org/openide/loaders/DataNode$LazyFilesSet this$0 Lorg/openide/loaders/DataNode;
 & ' ( ) * org/openide/loaders/DataNode 
access$100 @(Lorg/openide/loaders/DataNode;)Lorg/openide/loaders/DataObject;
 , - . / 0 org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;  2 3 4 next ()Ljava/lang/Object; 6 "org/openide/filesystems/FileObject  8 9  remove
   ; < = access$1700 .(Lorg/openide/loaders/DataNode$LazyFilesSet;)V
   ? @ A access$1800 <(Lorg/openide/loaders/DataNode$LazyFilesSet;)Ljava/util/Set; C D E F  java/util/Set iterator
  H 3 0 	Signature :Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; Code LineNumberTable LocalVariableTable this 9Lorg/openide/loaders/DataNode$LazyFilesSet$FilesIterator; MethodParameters StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <()Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; LLjava/lang/Object;Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; 
SourceFile DataNode.java InnerClasses LazyFilesSet FilesIterator 0               I    J         =  K   J     *+� *� *� *� �    L       	�   M        N O   P         K   J     *� � � *� �  �    L       M        N O   Q    H  3 0  K   f     '*� � *� *� � � %� +�*� � 1 � 5�    L          M       ' N O   Q      9   K   8     
*� � 7 �    L   
    	 M       
 N O   R     S       K   p     -*� � $*� � :**� � >� B � *� � 1 W*� �    L         ! (# M       - N O   Q    ( I    TA 3 4  K   /     *� G�    L      � M        N O    I    U V    W X       & Y     Z 