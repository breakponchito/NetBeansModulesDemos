����   4 T
      java/lang/Object <init> ()V
  	 
   java/lang/System currentTimeMillis ()J	      <org/netbeans/swing/tabcontrol/plaf/ChicletWrapper$CacheEntry 	timestamp J	     hash Ljava/lang/Long;
      java/lang/Long
     	longValue
     ! intValue ()I # java/lang/StringBuilder
 "  & CacheEntry: 
 " ( ) * append -(Ljava/lang/String;)Ljava/lang/StringBuilder; , java/util/Date
 + .  / (J)V
 " 1 ) 2 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; 4  hash 
 " 6 ) 7 (J)Ljava/lang/StringBuilder;
 " 9 : ; toString ()Ljava/lang/String; = java/lang/Comparable (Ljava/lang/Long;)V Code LineNumberTable LocalVariableTable this >Lorg/netbeans/swing/tabcontrol/plaf/ChicletWrapper$CacheEntry; MethodParameters equals (Ljava/lang/Object;)Z other o Ljava/lang/Object; StackMapTable hashCode 	compareTo (Ljava/lang/Object;)I 
SourceFile ChicletWrapper.java InnerClasses R 1org/netbeans/swing/tabcontrol/plaf/ChicletWrapper 
CacheEntry 0    <                >  ?   Q     *� *� � *+� �    @       �  �  �  � A        B C         D        E F  ?   �     <+� � +� M,� *� �� � �+� � +� � *� �� � ��    @       �  �  �  � % � : � A        G C    < B C     < H I  J    �  @�  @  D    H        ?   2     *� � �    @       � A        B C    K !  ?   2     *� � �    @       � A        B C    L M  ?   R     +� M*� ,� e��    @   
    �  � A         B C      H I    G C  D    H    : ;  ?   T     *� "Y� $%� '� +Y*� � -� 03� '*� � 5� 8�    @       � A       * B C    N    O P   
   Q S 