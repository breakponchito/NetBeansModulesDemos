����   4 B
      java/lang/Object <init> ()V	  	 
   org/openide/util/Pair first Ljava/lang/Object;	     second  Pair[%s,%s]
      java/lang/String format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
     equals (Ljava/lang/Object;)Z
     hashCode ()I
  !  " '(Ljava/lang/Object;Ljava/lang/Object;)V 	Signature TFirst; TSecond; Code LineNumberTable LocalVariableTable this Lorg/openide/util/Pair; LocalVariableTypeTable (Lorg/openide/util/Pair<TFirst;TSecond;>; MethodParameters (TFirst;TSecond;)V ()Ljava/lang/Object; 	()TFirst; 
()TSecond; toString ()Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; other 	otherPair Lorg/openide/util/Pair<**>; StackMapTable res I of =(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openide/util/Pair; l<First:Ljava/lang/Object;Second:Ljava/lang/Object;>(TFirst;TSecond;)Lorg/openide/util/Pair<TFirst;TSecond;>; E<First:Ljava/lang/Object;Second:Ljava/lang/Object;>Ljava/lang/Object; 
SourceFile 	Pair.java 1          #    $     #    %    "  &        *� *+� *,� �    '          ! 	 "  # (         ) *               +         ) ,       $      %  -   	     #    .   /  &   A     *� �    '       * (        ) *   +        ) ,   #    0   /  &   A     *� �    '       2 (        ) *   +        ) ,   #    1  2 3  &   T     � Y*� SY*� S� �    '       7 (        ) *   +        ) ,   4     5       &   �     Y+*� �+� � �+� M*� � ,� � 7� *� ,� � � &*� � ,� � � *� ,� � � � �    '   "    <  =  ?  @  B  C M D X C (        Y ) *     Y 6    D 7 *  +       Y ) ,    D 7 8  9    �  @ -    6  4     5       &   �     5<h*� � � 
*� � `<h*� � � 
*� � `<�    '       I  J  K 3 L (       5 ) *    2 : ;  +       5 ) ,   9   * �    �    P�     4     5   	 < =  &   Z     
� Y*+�  �    '       Y (       
       
    +       
  $     
  %  -   	     #    >  #    ? @    A