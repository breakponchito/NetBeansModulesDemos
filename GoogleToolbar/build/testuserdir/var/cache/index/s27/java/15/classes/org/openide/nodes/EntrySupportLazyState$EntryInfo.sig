����   4 �  /org/openide/nodes/EntrySupportLazyState$NodeRef
      1org/openide/nodes/EntrySupportLazyState$EntryInfo <init> {(Lorg/openide/nodes/EntrySupportLazy;Lorg/openide/nodes/Children$Entry;ILorg/openide/nodes/EntrySupportLazyState$NodeRef;)V
 
     java/lang/Object ()V	     lazy $Lorg/openide/nodes/EntrySupportLazy;	     entry "Lorg/openide/nodes/Children$Entry;	     index I	     refNode 1Lorg/openide/nodes/EntrySupportLazyState$NodeRef;
      N(Lorg/openide/nodes/Node;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;)V
  "  # b(Lorg/openide/nodes/EntrySupportLazy;Lorg/openide/nodes/Children$Entry;ILorg/openide/nodes/Node;)V	 % & ' ( ) "org/openide/nodes/EntrySupportLazy LOCK Ljava/lang/Object;
  + , - getNode -(ZLjava/lang/Object;)Lorg/openide/nodes/Node;
  / 0 1 lock ()Ljava/lang/Object;
  3 4 1 get 6 org/openide/nodes/Node	  8 9 : creatingNodeThread Ljava/lang/Thread;
 < = > ? @ java/lang/Thread currentThread ()Ljava/lang/Thread; B ,org/openide/nodes/EntrySupportLazy$DummyNode
 A 
 
 E F  wait H java/lang/InterruptedException
 J K L M N java/util/Collections 	emptyList ()Ljava/util/List; P Q R S T  org/openide/nodes/Children$Entry nodes *(Ljava/lang/Object;)Ljava/util/Collection; V java/lang/RuntimeException
 X Y Z [ \ org/openide/nodes/NodeOp warning (Ljava/lang/Throwable;)V ^ _ ` a b java/util/Collection isEmpty ()Z ^ d e f size ()I	 % h i j LOGGER Ljava/util/logging/Logger;	 l m n o p java/util/logging/Level FINE Ljava/util/logging/Level; r 2Number of nodes for Entry: {0} is {1} instead of 1
 t u v w x java/lang/Integer valueOf (I)Ljava/lang/Integer;
 z { | } ~ java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V ^ � � � iterator ()Ljava/util/Iterator; � � � � 1 java/util/Iterator next
 
 � �  	notifyAll
  �  � &()Lorg/openide/nodes/EntrySupportLazy;	 % � � � children Lorg/openide/nodes/Children;
 5 � � � assignTo  (Lorg/openide/nodes/Children;I)V	 � � � � � org/openide/nodes/Children parent Lorg/openide/nodes/Node;
 5 � � � fireParentNodeChange 3(Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)V	  � � � $assertionsDisabled Z � java/lang/AssertionError � java/lang/StringBuilder
 �  � 'When first asked for it has to be set: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � (I)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 � �  � (Ljava/lang/Object;)V � EntryInfo for entry: 
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � , node:  � 'org/openide/nodes/EntrySupportLazyState
 � � � � b java/lang/Class desiredAssertionStatus I(Lorg/openide/nodes/EntrySupportLazy;Lorg/openide/nodes/Children$Entry;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/nodes/EntrySupportLazyState$EntryInfo; MethodParameters 
changeNode M(Lorg/openide/nodes/Node;)Lorg/openide/nodes/EntrySupportLazyState$EntryInfo; node StackMapTable changeIndex 6(I)Lorg/openide/nodes/EntrySupportLazyState$EntryInfo; $()Lorg/openide/nodes/Children$Entry; ()Lorg/openide/nodes/Node; ex Ljava/lang/RuntimeException; creating Ljava/util/Collection; ch refresh source LocalVariableTypeTable 0Ljava/util/Collection<Lorg/openide/nodes/Node;>; � java/lang/Throwable currentNode isHidden getIndex #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile EntrySupportLazyState.java InnerClasses NodeRef 	EntryInfo Entry 	DummyNode 0  
                          9 :   � �      �  �   N     *+,� � �    �   
    �  � �         � �               �   	           �   �     *� 	*+� *,� *� *� �    �       �  � 	 �  �  �  � �   4     � �                           �                  #  �   �     "*� 	*+� *,� *� *� Y*� � �    �       �  � 	 �  �  � ! � �   4    " � �     "      "      "      "  �  �                 � �  �   v     1+� � Y*� *� *� +� !�� Y*� *� *� *� � �    �       �  �  � �       1 � �     1 � �  �     �    �    � �  �   I     � Y*� *� *� � �    �       � �        � �         �         �  �   /     *� �    �       � �        � �     �  �   /     *� �    �       � �        � �    0 1  �   2     *� � $�    �       � �        � �    , �  �   1     *� *�    �       � �        � �    , -  �  �    6*� .Y:�� *� *� � *� � 2� 5N-� -ð*� 7� '*� 7� ;� � AY� Cð*� .� D� :� *� ;� 76ç :��� I:� *� ,� O :� 
:� W*� .Y:�� $*� � *� � 2� 5N-� -ðç�C� ] � � AY� CN� A� c � &� g� kq� 
Y*� SY� c � sS� y�  � � � 5N*� Y-*� � � *� 7*� .� �ç :��� �:	*� .Y:
�� $*� � *� � 2� 5N-� -
ð
ç��� ] � � AY� CN� A� c � &� g� kq� 
Y*� SY� c � sS� y�  � � � 5N*� Y-*� � � *� 7*� .� �
ç :
��	�*� �� �:-� �-� �� �-�  K R U G  . j   / J j   K g j   j o j   | � � U � �7   � �7   �47  7<7   w �B  Lk�  lo�  r��  ���  BDB    �   D   �  �  �  �  �  � & � * � /  6 @ K R U W Z	 a
 d r w | � � � � � � � � � �  �" �# �% �& �( &+- .%/*012?3BLQXcgl r"|#�%�&�(�&�+�-�.�/�0�2�3�4�678 �   �  & 	 � �  �  � �  � 	 � �  �  � �  $ � � ?  � � c 	 � � �  � � � $ � � �  � �   � �  w� S � �  � �    � �     � �    � )  �     w� S �  �  $  �   
I G	E �� �    
  ^  U� ' 
-�    
 5 ^ 
  �    
  ^ 
  ��    
 5 ^  �    
  ^  �� )   
  ^    � 
  -�    
 5 ^    � 
  �    
  ^    � 
  ��  
  
 5 ^    �  �    
 5 ^   �   	 �   �     � �  �   |     $*� .YL�*� � � *� � 2� 5+ðM+�,�        "     �      @ A B �       $ � �   �    �  
I 5B �  � b  �   D     *� �� � �    �      F �        � �   �    @  � f  �   g     0� �� (*� � !� �Y� �Y� ��� �*� � �� �� ��*� �    �   
   M +N �       0 � �   �    +  � �  �   z     4� �Y� ��� �*� � ��� �*� � � *� � 2� 5� �� ��    �      S �       4 � �   �    c �� 	    � 5 �     �    �   �   4      ��  � � ��    �       � �    @  �    � �   "   � �   � �  P � � A % � 