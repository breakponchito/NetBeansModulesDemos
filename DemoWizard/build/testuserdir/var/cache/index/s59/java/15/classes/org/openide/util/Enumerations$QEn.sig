����   4 o
      java/lang/Object <init> ()V	  	 
   !org/openide/util/Enumerations$QEn next ,Lorg/openide/util/Enumerations$QEn$ListItem;	     last	     	processor )Lorg/openide/util/Enumerations$Processor;  *org/openide/util/Enumerations$QEn$ListItem
     (Ljava/lang/Object;)V	  	      java/util/Collection iterator ()Ljava/util/Iterator; ! " # $ % java/util/Iterator hasNext ()Z ! '  ( ()Ljava/lang/Object;
  * +  put -  java/util/NoSuchElementException
 , 	  0 1 2 object Ljava/lang/Object; 4 'org/openide/util/Enumerations$QEn$ToAdd
 3 6  7 &(Lorg/openide/util/Enumerations$QEn;)V 9 : ; < = 'org/openide/util/Enumerations$Processor process <(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
 3 ? @  finish B java/util/Enumeration 	Signature 1Lorg/openide/util/Enumerations$QEn$ListItem<TT;>; 1Lorg/openide/util/Enumerations$Processor<TT;TR;>; ,(Lorg/openide/util/Enumerations$Processor;)V Code LineNumberTable LocalVariableTable this #Lorg/openide/util/Enumerations$QEn; p LocalVariableTypeTable +Lorg/openide/util/Enumerations$QEn<TT;TR;>; MethodParameters 4(Lorg/openide/util/Enumerations$Processor<TT;TR;>;)V li o TT; StackMapTable (TT;)V (Ljava/util/Collection;)V e arr Ljava/util/Collection; Ljava/util/Collection<+TT;>; (Ljava/util/Collection<+TT;>;)V hasMoreElements nextElement res toAdd )Lorg/openide/util/Enumerations$QEn$ToAdd; out 1Lorg/openide/util/Enumerations$QEn$ToAdd<TT;TR;>; TR; ()TR; X<T:Ljava/lang/Object;R:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Enumeration<TR;>; 
SourceFile Enumerations.java InnerClasses j org/openide/util/Enumerations QEn ListItem 	Processor ToAdd      A      C    D     C    D     C    E    F  G   t     *� *� *� *+� �    H      o g 	j p q I        J K      L   M        J N      L E  O    L   C    P  +   G   �     2*� � � Y+� M*� ,� *,� � **� Y+� Z� � �    H      w x y z {  | 1~ I        Q     2 J K     2 R 2  M        Q D    2 J N     2 R S  T      O    R   C    U  + V  G   �      +�  M,�   � ,� & N*-� )���    H      � � � � I        W 2      J K       X Y  M        W S      J N       X Z  T    �  !�  O    X   C    [  \ %  G   T     *� � � �    H      � I        J K   M        J N   T    @  ] (  G   �     F*� � � ,Y� .�*� � /L**� � Z� � *� � 3Y*� 5M*� +,� 8 N,� >-�    H   & 	  � � � � &� +� 4� @� D� I   *    F J K    / ^ 2  4  _ `  @  a 2  M   *    F J N    / ^ S  4  _ b  @  a c  T   	 �   C    d  C    e f    g h   "   i k 
   l  9 i m	 3  n 