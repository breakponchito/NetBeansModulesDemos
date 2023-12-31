����   4
      java/lang/Object <init> ()V	  	 
   %org/openide/loaders/ConnectionSupport entry +Lorg/openide/loaders/MultiDataObject$Entry;	     types ,[Lorg/openide/cookies/ConnectionCookie$Type;  java/util/LinkedList
  	     	listeners Ljava/util/LinkedList;
     testSupported .(Lorg/openide/cookies/ConnectionCookie$Type;)V      ! )org/openide/cookies/ConnectionCookie$Type isPersistent ()Z
 # $ % & ' )org/openide/loaders/MultiDataObject$Entry getFile &()Lorg/openide/filesystems/FileObject; ) EA-OpenIDE-Connection
 + , - . / "org/openide/filesystems/FileObject getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
  1 2 3 iterator ()Ljava/util/Iterator; 5 6 7 8 ! java/util/Iterator hasNext 5 : ; < next ()Ljava/lang/Object; > *org/openide/loaders/ConnectionSupport$Pair
 = @ A B getType -()Lorg/openide/cookies/ConnectionCookie$Type;  D E F equals (Ljava/lang/Object;)Z
 = H I J getNode ()Lorg/openide/nodes/Node; L java/io/IOException
 N O P Q R java/lang/Class getName ()Ljava/lang/String;
 T U V W X java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 Z [ \ ] ^ java/util/logging/Level WARNING Ljava/util/logging/Level;
 T ` a b log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V 5 d e  remove
 g D h org/openide/nodes/Node
 g j k l 	getHandle !()Lorg/openide/nodes/Node$Handle;
 = n  o M(Lorg/openide/cookies/ConnectionCookie$Type;Lorg/openide/nodes/Node$Handle;)V
 = q  r F(Lorg/openide/cookies/ConnectionCookie$Type;Lorg/openide/nodes/Node;)V
  t u F add
 + w x y setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V  D	  | } ~ typesSet Ljava/util/Set; � java/util/HashSet
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
  �  � (Ljava/util/Collection;)V
 � � � � � java/util/Collections unmodifiableSet  (Ljava/util/Set;)Ljava/util/Set;
 � @ � *org/openide/cookies/ConnectionCookie$Event
  � � < clone
  � � � size ()I  � � � overlaps .(Lorg/openide/cookies/ConnectionCookie$Type;)Z � -org/openide/cookies/ConnectionCookie$Listener
 g � � � 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; � � � � notify /(Lorg/openide/cookies/ConnectionCookie$Event;)V � "java/lang/IllegalArgumentException � java/lang/ClassCastException
 � � � � emptySet ()Ljava/util/Set;
  �  � (I)V
  t � java/io/InvalidObjectException  � � R toString
 � �  � (Ljava/lang/String;)V � $org/openide/cookies/ConnectionCookie EA_LISTENERS Ljava/lang/String; ConstantValue 	Signature <Ljava/util/Set<Lorg/openide/cookies/ConnectionCookie$Type;>; DLjava/util/LinkedList<Lorg/openide/loaders/ConnectionSupport$Pair;>; Z(Lorg/openide/loaders/MultiDataObject$Entry;[Lorg/openide/cookies/ConnectionCookie$Type;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/loaders/ConnectionSupport; MethodParameters register list n Lorg/openide/nodes/Node; e Ljava/io/IOException; pair ,Lorg/openide/loaders/ConnectionSupport$Pair; type +Lorg/openide/cookies/ConnectionCookie$Type; listener 
persistent Z it Ljava/util/Iterator; LocalVariableTypeTable BLjava/util/Iterator<Lorg/openide/loaders/ConnectionSupport$Pair;>; StackMapTable 
Exceptions 
unregister getTypes >()Ljava/util/Set<Lorg/openide/cookies/ConnectionCookie$Type;>; getRegisteredTypes ()Ljava/util/List; p i I 	typesList CLjava/util/LinkedList<Lorg/openide/cookies/ConnectionCookie$Type;>; ?()Ljava/util/List<Lorg/openide/cookies/ConnectionCookie$Type;>; 	fireEvent $Ljava/lang/IllegalArgumentException; Ljava/lang/ClassCastException; l /Lorg/openide/cookies/ConnectionCookie$Listener; ev ,Lorg/openide/cookies/ConnectionCookie$Event; � java/lang/Throwable listenersFor <(Lorg/openide/cookies/ConnectionCookie$Type;)Ljava/util/Set; set Ljava/util/HashSet; -Ljava/util/HashSet<Lorg/openide/nodes/Node;>; t 
SourceFile ConnectionSupport.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses � #org/openide/loaders/MultiDataObject Entry Type Pair org/openide/nodes/Node$Handle Handle Event Listener	 org/openide/nodes/Node$Cookie Cookie !    �   � �  �    (            } ~  �    �     �    �    �  �   h     *� *+� *,� *� Y� � �    �       8  9 	 :  <  = �         � �               �   	       ! � r  �  S  	   �*+� +�  >� *� � "(� *� :� 	*� :� � Y� :� 0:� 4 � Z� 9 � =:+� ?� C � =� G:�  :� M� S� Y� _� c ���,� f� � c ������� � =Y+,� i� m� � =Y+,� p� sW� *� � "(� v�  c j m K  �   f    N  P  S  T $ V * Y / [ 8 b ? c I d U f c i j q m k o m � n � p � s � v � w � } � ~ � � � � � � �   p  !  �   j  � �  o  � �  �  � �  U H � �    � � �     � � �    � � �   � � �  * � �   ? � � �  �      !  � �  * � � �  ? � � �  �   \ � $�  �  5� -    g  5 =  K�  g� T �     g  5   = �     K �   	 �   �   ! � r  �  �  	   �*+� +�  >� *� � "(� *� :� 	*� :� �� 0:� 4 � I� 9 � =:+� ?� z � ,� G:� :� c ���,� f� � c ������� *� � "(� v�  [ b e K  �   ^    �  �  �  � $ � * � / � 0 � 7 � A � M � [ � b � e � g � n � q � z � � � � � � � � � � � �   p  !  �   b  � �  g 
 � �  q  � �  M 7 � �    � � �     � � �    � � �   � � �  * p �   7 c � �  �   ; 	� $�  �  5� -    g  5 =  K�  g�  �     K �   	 �   �    � �  �   \     !*� {� *� Y*� � �� �� �� {*� {�    �       �  �  � �       ! � �   �     �    �  � �  �       a� Y� L*� M>� N� *� � "(� *� M,� � ,,� 0:� 4 � � 9 � =:+� ?� sW�������+�    �   2    �  �  �  �  � ) � - � 0 � L � V � Y � _ � �   4  L 
 � �   P � �    a � �    Y �    T �   �      Y � �   T � �  �    �   �  5� "�  �    �  � �  �  #  
   �*Y:�+� �N-�  6� *� � "(� *� M� *� M,� ñ,� �� Mç :��,� �6,� 0:� 4 � c� 9 � =:� ?+� �� � � C� G�� �� �:� #+� � � :	� c � :	� c � :� c ���� ,� �� *� � "(,� v� :�   6 E   7 B E   E J E   � � � � � � � � � � � K � � � K  �   �     �  � 
 �  �  � * � / � 7 � ? � M � S � Y  c o � � � � �	 �
 � � � � � � � � � � � � �   �  '  �   /  �   
 ; � �   3 � �  �  � � 	 �  � � 	 � % � �  �  � �  o Q � �    � � �     � � �  M � �   M � � �  M � � �  S � � �  Y � � �  �   *  '  � �  /  � �  M � � �  Y � � �  �   � � *   �     �    �     �    �      ��    �    �  5� E 	  �   5 = �  �K �� B K� ] K �    �   ! � �  �  |     q+�  � *� � "(� *� M� *� M,� � ��,� 0N� Y� �:-� 4 � /-� 9 � =:+� ?� � � � G� �W� :����  [ f i K  �   :   ' 	( * !- )/ .0 92 B3 M4 [6 f9 i7 k; n= �   H    �   M  � �    q � �     q � �  ! P �   . C � �  9 8 � �  �   *    � �  ! P � �  . C � �  9 8 � �  �   3 �  �  5 � /     5  =  K�  �    �       �   �     /=*� �� +*� 2� � � ����� �Y+� � � ��    �      F G H F !K �        � �    / � �     / � �  �   
 � �  �     � �    �    �    � �     �     �   �   :  # �   �	 =   g	 � � 	 � �	 g
	