����   4 G
      java/lang/Object <init> ()V
  	 
   "org/openide/filesystems/FCLSupport 
access$000 ()Ljava/util/Queue;      java/util/Queue poll ()Ljava/lang/Object;  7org/openide/filesystems/FCLSupport$DispatchEventWrapper  java/util/HashSet
  
     dispatchEvent (ZLjava/util/Collection;)V      ! java/util/Set iterator ()Ljava/util/Iterator; # $ % & ' java/util/Iterator hasNext ()Z # ) *  next , java/lang/Runnable + . /  run 1 $org/openide/filesystems/FCLSupport$1 Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/FCLSupport$1; r Ljava/lang/Runnable; dw 9Lorg/openide/filesystems/FCLSupport$DispatchEventWrapper; post Ljava/util/Set; LocalVariableTypeTable %Ljava/util/Set<Ljava/lang/Runnable;>; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile FCLSupport.java EnclosingMethod InnerClasses DispatchEventWrapper   0   +         2   /     *� �    3       � 4        5 6    /   2   �     S� �  � L� Y� M+� +,� � �  � L���,�  N-� " � -� ( � +:� - ���    3   & 	   �  �  �  �  � - � H � O � R � 4   *  H  7 8    S 5 6    G 9 :   ? ; <  =      ? ; >  ?    �   �  #�  @     A    B    C D       E       F
 0      