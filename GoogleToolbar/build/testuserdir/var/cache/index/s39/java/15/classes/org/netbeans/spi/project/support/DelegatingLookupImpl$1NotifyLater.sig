����   4 L	      Borg/netbeans/spi/project/support/DelegatingLookupImpl$1NotifyLater this$0 7Lorg/netbeans/spi/project/support/DelegatingLookupImpl;
  	 
   java/lang/Object <init> ()V  java/util/ArrayList
  		     pending Ljava/util/List;      java/util/List add (Ljava/lang/Object;)Z     iterator ()Ljava/util/Iterator;    ! " # java/util/Iterator hasNext ()Z  % & ' next ()Ljava/lang/Object; ) java/lang/Runnable ( + ,  run . java/util/concurrent/Executor 	Signature &Ljava/util/List<Ljava/lang/Runnable;>; :(Lorg/netbeans/spi/project/support/DelegatingLookupImpl;)V Code LineNumberTable LocalVariableTable this DLorg/netbeans/spi/project/support/DelegatingLookupImpl$1NotifyLater; MethodParameters execute (Ljava/lang/Runnable;)V command Ljava/lang/Runnable; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; notifyCollectedEvents r tmp LocalVariableTypeTable StackMapTable 
SourceFile DelegatingLookupImpl.java EnclosingMethod G 5org/netbeans/spi/project/support/DelegatingLookupImpl I  
doDelegate InnerClasses NotifyLater      -       /    0         1  2   M     *+� *� *� Y� � �    3   
    g 	 h 4        5 6         7    �  8 9  2   D     *� +�  W�    3   
    l  m 4        5 6      : ;  7    :   <     =    >   2   �     .*� L*� +�  M,�  � ,� $ � (N-� * ���    3       p  q 
 r $ s * t - u 4      $  ? ;    . 5 6    ) @   A      ) @ 0  B    �   �   C    D E    F H J   
     K  