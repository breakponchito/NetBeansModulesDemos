����   4 r	      "org/openide/nodes/Children$Keys$KE this$0 !Lorg/openide/nodes/Children$Keys;
  	 
   org/openide/nodes/Children$Dupl <init> ()V	     key Ljava/lang/Object;
     getKey ()Ljava/lang/Object;
      org/openide/nodes/Children$Keys createNodes -(Ljava/lang/Object;)[Lorg/openide/nodes/Node;
       java/util/Collections 	emptyList ()Ljava/util/List; " java/util/LinkedList
 $ % & ' ( java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 ! *  + (Ljava/util/Collection;)V
 - . / 0 1 java/lang/Object toString ()Ljava/lang/String;
 3 4 5 6 7 java/lang/String length ()I
 3 9 : ; 	substring (I)Ljava/lang/String; = java/lang/StringBuilder
 < 	 @ Children.Keys.KE[
 < B C D append -(Ljava/lang/String;)Ljava/lang/StringBuilder; F ,
  H I 7 getCnt
 < K C L (I)Ljava/lang/StringBuilder; N ]
 < . $(Lorg/openide/nodes/Children$Keys;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/nodes/Children$Keys$KE; LocalVariableTypeTable )Lorg/openide/nodes/Children$Keys<TT;>.KE; MethodParameters 6(Lorg/openide/nodes/Children$Keys;Ljava/lang/Object;)V TT; 	Signature (TT;)V nodes *(Ljava/lang/Object;)Ljava/util/Collection; source arr [Lorg/openide/nodes/Node; StackMapTable a D(Ljava/lang/Object;)Ljava/util/Collection<Lorg/openide/nodes/Node;>; s Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; &Lorg/openide/nodes/Children$Dupl<TT;>; 
SourceFile Children.java InnerClasses n org/openide/nodes/Children Keys KE Dupl               P  Q   T     
*+� *� �    R   
   i 	j S       
 T U     
    V       
 T W   X    �   Y  Q   q     *+� *� *,� �    R      n 	o p S         T U               V        T W       Z  X   	 �    [    \  ] ^  Q   �      *� *� � M,� � �� !Y,� #� )�    R      u w x z S          T U       _     ` a  V         T W   b    �  c X    _   [    d  0 1  Q   �     B*� � ,L+� 2P� ++� 2Pd� 8L� <Y� >?� A+� AE� A*� G� JM� A� O�    R      � � � � S       B T U    : e f  V       B T W   b    �  3 g     h    [    i j    k l      m o	   p    m q