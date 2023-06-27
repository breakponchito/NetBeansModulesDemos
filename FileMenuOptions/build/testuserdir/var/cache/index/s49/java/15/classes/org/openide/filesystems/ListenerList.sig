����   4 G
      java/lang/Object <init> ()V	  	 
   $org/openide/filesystems/ListenerList copy Ljava/util/List;  java/util/ArrayList
  	     listenerList  java/lang/NullPointerException
        java/util/List add (Ljava/lang/Object;)Z     remove    ! " isEmpty ()Z
 $ % & ' ( java/util/Collections 	emptyList ()Ljava/util/List;
  *  + (Ljava/util/Collection;)V
  - . ( getAllListeners 	Signature Ljava/util/List<TT;>; Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/ListenerList; LocalVariableTypeTable +Lorg/openide/filesystems/ListenerList<TT;>; listener Ljava/lang/Object; TT; StackMapTable MethodParameters (TT;)Z ()Ljava/util/List<TT;>; hasListeners allListeners 8(Lorg/openide/filesystems/ListenerList;)Ljava/util/List; list X<T:Ljava/lang/Object;>(Lorg/openide/filesystems/ListenerList<TT;>;)Ljava/util/List<TT;>; (<T:Ljava/lang/Object;>Ljava/lang/Object; 
SourceFile ListenerList.java            /    0     /    0       1   ]     *� *� *� Y� � �    2       #  ! 	 $  % 3        4 5   6        4 7   !    1   �     +� � Y� �*� *� +�  �    2       +  ,  /  1 3        4 5      8 9  6        4 7      8 :  ;     <    8   /    = !    1   d     *� *� +�  �    2   
    8  : 3        4 5      8 9  6        4 7      8 :  <    8   /    = ! . (  1   �     +*� �  � � #�*� � *� Y*� � )� *� �    2       A  B  D  E & G 3       + 4 5   6       + 4 7   ;     /    > ! ? "  1   Y     *� �  � � �    2       K 3        4 5   6        4 7   ;    @  @ A  1   Z     *� � #�*� ,�    2       O  P  R 3        B 5   6        B 7   ;     <    B   /    C  /    D E    F