����   4 N
      java/lang/Object <init> ()V	  	 
   .org/openide/util/NbCollections$CheckedIterator WAITING Ljava/lang/Object;	     next	     it Ljava/util/Iterator;      java/util/Iterator hasNext ()Z     ()Ljava/lang/Object;
      accept (Ljava/lang/Object;)Z
   #  java/util/NoSuchElementException
 " 	  & ' ( $assertionsDisabled Z * java/lang/AssertionError
 )   - .  remove 0 org/openide/util/NbCollections
 2 3 4 5  java/lang/Class desiredAssertionStatus 	Signature Ljava/util/Iterator<*>; (Ljava/util/Iterator;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/util/NbCollections$CheckedIterator; LocalVariableTypeTable 5Lorg/openide/util/NbCollections$CheckedIterator<TE;>; MethodParameters o StackMapTable x TE; ()TE; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> A<E:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Iterator<TE;>; 
SourceFile NbCollections.java InnerClasses CheckedIterator                6    7      ' (      8  9   c     *� *� � *+� �    :       �  �  �  � ;        < =         >        < ?   @           @    A       9   �     ;*� � � �*� �  � **� �  � **� � ����*� � �    :   "    � 
 �  �  � % � 0 � 2 � 9 � ;       ; < =   >       ; < ?   B    %     9   �     ?*� � � *� !� � "Y� $�� %� *� � � � )Y� +�*� L*� � +�    :       �  �  � 1 � 6 � = � ;       ? < =   6 	 C   >       ? < ?   6 	 C D  B     6    E  .   9   J     
*� � , �    :   
    � 	 � ;       
 < =   >       
 < ?   F     G    H   9   B      /� 1� � � %� Y� � �    :   
    �  � B    @  6    I J    K L   
   / M
