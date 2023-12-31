����   4 �
      java/awt/Polygon <init> ()V	  	 
   /org/netbeans/swing/tabcontrol/plaf/EqualPolygon xpoints [I	     ypoints
      java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V	     npoints I	  		  	  
     ([I[II)V	 ! " # $  java/awt/Rectangle x	 ! & '  width	 ! ) *  y	 ! , -  height
  / 0 1 addPoint (II)V
   4 java/lang/StringBuffer 6 EqualPolygon: 
 3 8  9 (Ljava/lang/String;)V
 3 ; < = append (C)Ljava/lang/StringBuffer;
 3 ? < @ (I)Ljava/lang/StringBuffer;
 3 B C D toString ()Ljava/lang/String;
  F G H arrayHashCode ([I)I
 J K L M N java/util/Arrays equals ([I[I)Z P java/util/HashSet
 J R S T asList %([Ljava/lang/Object;)Ljava/util/List;
 O V  W (Ljava/util/Collection;)V
 O Y Z [ size ()I ] java/awt/Point
 O _ ` a toArray (([Ljava/lang/Object;)[Ljava/lang/Object; c [Ljava/awt/Point;	  e f g 
comparator Ljava/util/Comparator;
 J i j k sort ,([Ljava/lang/Object;Ljava/util/Comparator;)V m @org/netbeans/swing/tabcontrol/plaf/EqualPolygon$PointsComparator
 l o  p 6(Lorg/netbeans/swing/tabcontrol/plaf/EqualPolygon$1;)V 	Signature (Ljava/util/Comparator<Ljava/awt/Point;>; Code LineNumberTable LocalVariableTable this 1Lorg/netbeans/swing/tabcontrol/plaf/EqualPolygon; n MethodParameters (Ljava/awt/Polygon;)V p Ljava/awt/Polygon; (Ljava/awt/Rectangle;)V r Ljava/awt/Rectangle; ([I[I)V moveTo lineTo clone ()Ljava/lang/Object; i sb Ljava/lang/StringBuffer; StackMapTable hashCode o result (Ljava/lang/Object;)Z ox oy Z Ljava/lang/Object;  � java/lang/Object 
sortPoints $([Ljava/awt/Point;)[Ljava/awt/Point; set Ljava/util/HashSet; LocalVariableTypeTable %Ljava/util/HashSet<Ljava/awt/Point;>; <clinit> 
SourceFile EqualPolygon.java InnerClasses PointsComparator � 1org/netbeans/swing/tabcontrol/plaf/EqualPolygon$1 1       f g  q    r      s   3     *� �    t   
    3  4 u        v w       s   �     6*� *�
� *�
� +*� *� �� ,*� *� �� *� �    t       :  =  >  ? ! @ 0 A 5 B u   *    6 v w     6 $     6 *     6 x   y    $   *   x     z  s   I     *+� +� +� � �    t   
    L  M u        v w      { |  y    {     }  s   �     X*�
Y+�  OY+�  +� %`OY+�  +� %`OY+�  O�
Y+� (OY+� (OY+� (+� +`OY+� (+� +`O� �    t   
    Q W V u       X v w     X ~   y    ~     �  s   K     	*+,+�� �    t   
    ]  ^ u        	 v w     	 $     	 *   y   	 $   *    � 1  s   I     *� .�    t   
    g  h u         v w      $      *   y   	 $   *    � 1  s   I     *� .�    t   
    q  r u         v w      $      *   y   	 $   *    � �  s   ?     � Y*� *� *� �� 2�    t       { u        v w    C D  s   �     C� 3Y5� 7L=*� � -+ � :W+*� .� >W+,� :W+*� .� >W����+� A�    t   "    � 
 �  �  � & � - � 8 � > � u       2 �     C v w   
 9 � �  �    �  3� 1  � [  s   <     **� � E**� � E��    t       � u        v w    G H  s   �     =>*� � +.�`=�����    t       �  �  �  �  � u   *    �      v w      �     �   �   
 � �  y    �    M �  s  /     V+*� �+� � I+� M,� N,� :*� -� I� *� � I� � 6,� *� � � ~6��    t   .    �  �  �  �  �  �  � / � < � Q � T � u   >   A { |   < �    6 �   <  � �    V v w     V � �  �   O � 1  � �@�    �  � � �     �  � � �    �   y    �    � �  s   �     &� OY+� Q� UM,� X� \L,+� ^� bL+� d� h+�    t       �  �  �  � $ � u        & v w     & { c    � �  �       � �  y    {    �   s   $      � lY� n� d�    t       �  �    � �     l  � 
 �    