����   4 y
      java/lang/Object <init> ()V
  	 
   ,org/openide/util/lookup/InheritanceTree$Node getType ()Ljava/lang/Class;
      java/lang/Class getName ()Ljava/lang/String;	      )org/openide/util/lookup/InheritanceTree$R 	clazzName Ljava/lang/String;	     children Ljava/util/ArrayList;	  	     ! items Ljava/util/Collection; # java/util/LinkedHashSet	  
 " &  ' (Ljava/util/Collection;)V
 ) * + ,  java/io/ObjectInputStream defaultReadObject	  . / 0 l Ljava/lang/ClassLoader;
 2 3 4 5 6 org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; 8 java/lang/ClassLoader
 2 : ; < lookup %(Ljava/lang/Class;)Ljava/lang/Object;
  > ? @ forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;	  B C D clazz Ljava/lang/Class;
  F  G (Ljava/lang/Class;)V
  I J  markDeserialized L java/io/Serializable serialVersionUID J ConstantValue        	Signature Ljava/lang/Class<*>; ELjava/util/ArrayList<Lorg/openide/util/lookup/InheritanceTree$Node;>; ELjava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair;>; 1(Lorg/openide/util/lookup/InheritanceTree$Node;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/util/lookup/InheritanceTree$R; n .Lorg/openide/util/lookup/InheritanceTree$Node; StackMapTable MethodParameters 
readObject (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; 
Exceptions f java/io/IOException h  java/lang/ClassNotFoundException readResolve ()Ljava/lang/Object; l java/io/ObjectStreamException 
SourceFile InheritanceTree.java InnerClasses q 'org/openide/util/lookup/InheritanceTree Node R u +org/openide/util/lookup/AbstractLookup$Pair w &org/openide/util/lookup/AbstractLookup Pair 0    K   M N  O    P 
 / 0        � C D  R    S     R    T    !  R    U    V  W   �     C*� *+� � � *+� � +� � "� 
+� � *+� � $� *� "Y+� � %� $�    X      � � � � (� 3� B� Y       C Z [     C \ ]  ^    � (     
 _    \    ` a  W   u     (+� (� -� � 17� 9� 7� -**� � -� =� A�    X      � � 
� � '� Y       ( Z [     ( b c  ^     d     e g _    b    i j  W   f     "� Y*� A� EL+*� � +*� $� +� H+�    X      � � � �  � Y       " Z [     \ ]  d     k  m    n o      p r   p s  t v x	