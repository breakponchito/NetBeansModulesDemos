����   4 �
      )org/openide/util/NbCollections$CheckedSet acceptEntry (Ljava/lang/Object;)Z
  	 
   java/util/AbstractSet <init> ()V	     rawSet Ljava/util/Set;	     type Ljava/lang/Class;	     strict Z
      java/lang/Class 
isInstance  java/lang/ClassCastException ! java/lang/StringBuilder
   	
   $ % & append -(Ljava/lang/Object;)Ljava/lang/StringBuilder; (  was not a 
   * % + -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  - . / getName ()Ljava/lang/String;
   1 2 / toString
  4  5 (Ljava/lang/String;)V 7 +org/openide/util/NbCollections$CheckedSet$1 9 : ; < = java/util/Set iterator ()Ljava/util/Iterator;
 6 ?  @ B(Lorg/openide/util/NbCollections$CheckedSet;Ljava/util/Iterator;)V B C D E F java/util/Iterator hasNext ()Z B H I J next ()Ljava/lang/Object;
  L M N cast &(Ljava/lang/Object;)Ljava/lang/Object; 9 P Q  add 9 S T  contains V java/io/Serializable serialVersionUID J ConstantValue        	Signature Ljava/lang/Class<TE;>; $(Ljava/util/Set;Ljava/lang/Class;Z)V Code LineNumberTable LocalVariableTable this +Lorg/openide/util/NbCollections$CheckedSet; LocalVariableTypeTable 0Lorg/openide/util/NbCollections$CheckedSet<TE;>; MethodParameters )(Ljava/util/Set;Ljava/lang/Class<TE;>;Z)V o Ljava/lang/Object; StackMapTable ()Ljava/util/Iterator<TE;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; size ()I c I it Ljava/util/Iterator; Ljava/util/Iterator<*>; TE; (TE;)Z Ljava/lang/SuppressWarnings; value 	unchecked 
access$000 @(Lorg/openide/util/NbCollections$CheckedSet;Ljava/lang/Object;)Z x0 x1 H<E:Ljava/lang/Object;>Ljava/util/AbstractSet<TE;>;Ljava/io/Serializable; 
SourceFile NbCollections.java InnerClasses � org/openide/util/NbCollections 
CheckedSet 0    U   W X  Y    Z          \    ]         ^  _   �     *� *+� *,� *� �    `       �  � 	 �  �  � a   *     b c                     d        b e       ]  f             \    g     _   �     A+� �*� +� � �*� � (� Y�  Y� "+� #'� )*� � ,� )� 0� 3��    `       �  �  �  �  �  � ? a       A b c     A h i  d       A b e   j    + f    h    < =  _   N     � 6Y**� � 8 � >�    `       a        b c   d        b e   \    k l     m    n o  _   �     *<*� � 8 M,� A � *,� G � �������    `          " ( a        * b c    ( p q    r s  d       * b e     r t  j   
 �  B l     m    Q   _   b     *� *� +� K� O �    `       a        b c      h i  d        b e      h u  f    h   \    v l     m   w  x[ s y  T   _   X     *� *� +� K� R �    `      # a        b c      h i  d        b e   f    h   l     m   z {  _   :     *+� �    `       � a        | c      } i   \    ~     � �      � �  6      