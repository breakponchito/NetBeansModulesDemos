����   4 A
      java/lang/Object <init> ()V  java/util/HashMap
  
      java/util/Collections synchronizedMap  (Ljava/util/Map;)Ljava/util/Map;	      .org/openide/filesystems/MemoryFileSystem$Entry attrs Ljava/util/Map;	     	entryName Ljava/lang/String;  java/lang/StringBuffer
     [
    ! " append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; $  -> 
  & ' ( toString ()Ljava/lang/String; * ] 
  & 	Signature 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; data [B last Ljava/util/Date; (Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/filesystems/MemoryFileSystem$Entry; MethodParameters sb Ljava/lang/StringBuffer; 
SourceFile MemoryFileSystem.java InnerClasses ? (org/openide/filesystems/MemoryFileSystem Entry 0          ,    -  . /    0 1            2  3   X     *� *� Y� 	� 
� *+� �    4      q l r s 5        6 7         8        ' (  3   t     0� Y� L+� *� � W+#� *� %� W+)� W+� +�    4      w x y $z +{ 5       0 6 7    ( 9 :   ;    < =   
   > @ 