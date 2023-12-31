����   4 H
       java/util/AbstractSequentialList <init> ()V	  	 
   'org/openide/filesystems/FileObjectLines fo $Lorg/openide/filesystems/FileObject;  .org/openide/filesystems/FileObjectLineIterator
     >(Lorg/openide/filesystems/FileObjectLines;Ljava/lang/String;)V	     ready 0Lorg/openide/filesystems/FileObjectLineIterator;
     cloneIterator 2()Lorg/openide/filesystems/FileObjectLineIterator;
     next ()Ljava/lang/String;
     ! listIterator ()Ljava/util/ListIterator; # $ % & ' java/util/Iterator hasNext ()Z # )  * ()Ljava/lang/Object; 9(Ljava/lang/String;Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/filesystems/FileObjectLines; encoding Ljava/lang/String; 
Exceptions 5 java/io/IOException MethodParameters (I)Ljava/util/ListIterator; position I ret StackMapTable 	Signature /(I)Ljava/util/ListIterator<Ljava/lang/String;>; size ()I cnt it Ljava/util/Iterator; LocalVariableTypeTable (Ljava/util/Iterator<Ljava/lang/String;>; 6Ljava/util/AbstractSequentialList<Ljava/lang/String;>; 
SourceFile FileObjectLines.java 0                   +  ,   a     *� *,� *� Y*+� � �    -           	 !  " .         / 0      1 2        3     4 6   	 1      !   7  ,   r     *� � M��� ,� W���,�    -       %  &  '  ) .         / 0      8 9    :   ;   	 �   6    8   <    = ! > ?  ,   �     <*� M,� " � ,� ( W�����    -       -  .  /  0  1  3 .         / 0     @ 9    A B  C       A D  ;   
 �  #  <    E F    G