����   4 b
      ,org/openide/awt/GlobalManager$SurviveManager <init> (Lorg/openide/util/Lookup;)V
  	 
   org/openide/awt/GlobalManager =(Lorg/openide/util/Lookup;Lorg/openide/awt/GlobalManager$1;)V  java/util/ArrayList
     ()V
      javax/swing/ActionMap allKeys ()[Ljava/lang/Object;
      java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
      addAll (Ljava/util/Collection;)Z
  " #   	removeAll
  
  & ' ( get ((Ljava/lang/Object;)Ljavax/swing/Action;
  * + , put )(Ljava/lang/Object;Ljavax/swing/Action;)V
  . / 0 iterator ()Ljava/util/Iterator; 2 3 4 5 6 java/util/Iterator hasNext ()Z 2 8 9 : next ()Ljava/lang/Object; Code LineNumberTable LocalVariableTable this .Lorg/openide/awt/GlobalManager$SurviveManager; context Lorg/openide/util/Lookup; MethodParameters 	isSurvive #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; newMap G(Ljavax/swing/ActionMap;Ljavax/swing/ActionMap;)Ljavax/swing/ActionMap; toRem [Ljava/lang/Object; all o Ljava/lang/Object; i I allK prev Ljavax/swing/ActionMap; old Ljava/util/ArrayList; merged LocalVariableTypeTable )Ljava/util/ArrayList<Ljava/lang/Object;>; StackMapTable I x0 x1 !Lorg/openide/awt/GlobalManager$1; 
SourceFile GlobalManager.java InnerClasses SurviveManager a org/openide/awt/GlobalManager$1 0            ;   ?     *+� �    <   
    �  � =        > ?      @ A  B    @    C 6  ;   ,     �    <       � =        > ?   D     E    F G  ;  �     �� Y� N+� 1+� :� &-� � W,� ,� :� -� � !W� Y� $:,� 3,� :� (6�� 2:,� %� )����-� -:� 1 � � 7 :+� %� )����    <   V    �  �  �  �  � ! � % � + � 0 � : � C � G � M � R � ] � d � q � w � � � =   p  +  H I   ( J I  d  K L  U " M N  M * O I  �  K L    � > ?     � P Q    � F Q   � R S  C ` T Q  U      � R V  W    � : �   X� !�  2� " B   	 P   F   D     E       ;   D     *+� �    <       � =         > ?      Y A     Z [   \    ] ^       _  `      