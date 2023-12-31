����   4 m  org/openide/nodes/Node	      org/openide/nodes/Node$1 this$0 Lorg/openide/nodes/Node;	  
   val$ch Lorg/openide/nodes/Children;
      java/lang/Object <init> ()V	     	hierarchy
      org/openide/nodes/Children isInitialized ()Z	     LEAF
    ! " snapshot ()Ljava/util/List;
  $ %  
detachFrom ' ( ) * + java/util/List size ()I
  - . / getSnapshotIdxs (Ljava/util/List;)[I
 1 2 3 4 " java/util/Collections 	emptyList
  6 7 8 fireSubNodesChangeIdx H(Z[ILorg/openide/nodes/Children$Entry;Ljava/util/List;Ljava/util/List;)V
  : ; < attachTo (Lorg/openide/nodes/Node;)V
  > ? + getNodesCount A leaf
 C D E F G java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
  I J K fireOwnPropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V M java/lang/Runnable 7(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;)V Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/Node$1; MethodParameters 	Signature run idxs [I Ljava/util/List; prevSnapshot 	wasInited Z wasLeaf LocalVariableTypeTable *Ljava/util/List<Lorg/openide/nodes/Node;>; StackMapTable b java/lang/String 
SourceFile 	Node.java EnclosingMethod g h setChildren (Lorg/openide/nodes/Children;)V InnerClasses k  org/openide/nodes/Children$Entry Entry      L              N  O   C     *+� *,� 	*� �    P      � Q        R S         T   	 �  U      V   O  6    L*� � � =*� � � � � >� � *� � � L*� � � #+� ++� & � "*� � � +� ,:*� � 0+� 5*� *� 	� *� � *� � 9� J� F*� � � � 9*� � � =W*� � � :� & � � ,:*� � 5*� � � � � � %*� @� B*� � � � � � B� H�    P   V   � � �  � (� 3� =� J� T� Z� i� t� �� �� �� �� �� �� � � Q   H  Z  W X  �  W X  �  ! Y    R S    Z Y   � [ \    � ] \  ^     �  ! _   Z _  `   X 
�  '@� 5� cQ�     ' �    '   a C�     '   a C  c    d e     f i            j  l