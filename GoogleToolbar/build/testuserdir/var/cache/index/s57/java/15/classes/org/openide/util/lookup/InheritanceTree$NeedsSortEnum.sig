����   4 [
      java/util/LinkedList <init> ()V
  	 
   5org/openide/util/lookup/InheritanceTree$NeedsSortEnum add (Ljava/lang/Object;)Z	     en Ljava/util/Enumeration;      java/util/Enumeration hasMoreElements ()Z
     isEmpty
     poll ()Ljava/lang/Object;  ,org/openide/util/lookup/InheritanceTree$Node	  ! " # children Ljava/util/ArrayList;
  % & ' addAll (Ljava/util/Collection;)Z	  ) * + items Ljava/util/Collection; -  . java/util/Collection
 0 1 2 3 4 java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration;
  6 7  
ensureNext 9  java/util/NoSuchElementException
 8   < =  nextElement ? +org/openide/util/lookup/AbstractLookup$Pair
  A = B /()Lorg/openide/util/lookup/AbstractLookup$Pair; 	Signature FLjava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair;>; 1(Lorg/openide/util/lookup/InheritanceTree$Node;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/util/lookup/InheritanceTree$NeedsSortEnum; n .Lorg/openide/util/lookup/InheritanceTree$Node; MethodParameters n2 StackMapTable �Ljava/util/LinkedList<Lorg/openide/util/lookup/InheritanceTree$Node;>;Ljava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair;>; 
SourceFile InheritanceTree.java InnerClasses U 'org/openide/util/lookup/InheritanceTree NeedsSortEnum Node Y &org/openide/util/lookup/AbstractLookup Pair 0          C    D    E  F   G     *� *+� W�    G      � � 
� H        I J      K L  M    K    7   F   �     W*� � *� �  � �*� � �*� � L+�  � *+�  � $W+� (� +� (� , � *+� (� /� ���    G   * 
  � � � � � &� -� 6� I� T� H     & . N L    W I J   O     �  �      F   /     *� 5�    G      � H        I J    = B  F   W     *� 5� � 8Y� :�*� � ; � >�    G      � � � H        I J   O    A =   F   /     *� @�    G      � H        I J    C    P Q    R S      T V   T W  > X Z	