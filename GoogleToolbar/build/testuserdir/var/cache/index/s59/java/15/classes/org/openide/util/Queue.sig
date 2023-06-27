����   4 =
      java/lang/Object <init> ()V  java/util/LinkedList
  	      org/openide/util/Queue queue Ljava/util/LinkedList;
     add (Ljava/lang/Object;)Z
     notify
     isEmpty ()Z
     wait  java/lang/InterruptedException
  ! " # removeFirst ()Ljava/lang/Object; 	Signature Ljava/util/LinkedList<TT;>; Code LineNumberTable LocalVariableTable this Lorg/openide/util/Queue; LocalVariableTypeTable Lorg/openide/util/Queue<TT;>; put (Ljava/lang/Object;)V o Ljava/lang/Object; TT; MethodParameters (TT;)V get StackMapTable ()TT; (<T:Ljava/lang/Object;>Ljava/lang/Object; 
SourceFile 
Queue.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; !          $    %      &   P     *� *� Y� 	� 
�    '   
       " (        ) *   +        ) ,   ! - .  &   f     *� 
+� W*� �    '       ( 	 )  * (        ) *      / 0  +        ) ,      / 1  2    /   $    3 ! 4 #  &   �     *� 
� � *� ���L���*� 
�  �  
     '       3 
 5  7  6  7  = (        ) *   +        ) ,   5     P  $    6  $    7 8    9 :     ;     <  