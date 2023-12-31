����   4 �
      org/openide/util/Lookup$Result <init> ()V  java/util/ArrayList
  	      Aorg/openide/explorer/DefaultEMLookup$NoNodeLookup$ExclusionResult 	listeners Ljava/util/List;	     delegate  Lorg/openide/util/Lookup$Result;	     verboten Ljava/util/Map;
     allInstances ()Ljava/util/Collection;      ! java/util/Collection size ()I
  #  $ (I)V  & ' ( iterator ()Ljava/util/Iterator; * + , - . java/util/Iterator hasNext ()Z * 0 1 2 next ()Ljava/lang/Object; 4 5 6 7 8 java/util/Map containsKey (Ljava/lang/Object;)Z : ; < = 8 java/util/List add
  ? @ A 
allClasses ()Ljava/util/Set;
  C D  allItems F org/openide/util/Lookup$Item H org/openide/nodes/Node
 E J K L getType ()Ljava/lang/Class;
 N O P Q R java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
 E T U 2 getInstance : W X . isEmpty
  Z [ \ addLookupListener $(Lorg/openide/util/LookupListener;)V : ^ _ 8 remove
  a b \ removeLookupListener d org/openide/util/LookupEvent
 c f  g #(Lorg/openide/util/Lookup$Result;)V :  j org/openide/util/LookupListener : l m n toArray (([Ljava/lang/Object;)[Ljava/lang/Object; p "[Lorg/openide/util/LookupListener; i r s t resultChanged !(Lorg/openide/util/LookupEvent;)V 	Signature %Lorg/openide/util/Lookup$Result<TT;>; ;Ljava/util/Map<Lorg/openide/nodes/Node;Ljava/lang/Object;>; 3Ljava/util/List<Lorg/openide/util/LookupListener;>; 2(Lorg/openide/util/Lookup$Result;Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this CLorg/openide/explorer/DefaultEMLookup$NoNodeLookup$ExclusionResult; LocalVariableTypeTable HLorg/openide/explorer/DefaultEMLookup$NoNodeLookup$ExclusionResult<TT;>; MethodParameters c(Lorg/openide/util/Lookup$Result<TT;>;Ljava/util/Map<Lorg/openide/nodes/Node;Ljava/lang/Object;>;)V o Ljava/lang/Object; c Ljava/util/Collection; ret TT; Ljava/util/Collection<+TT;>; Ljava/util/List<TT;>; StackMapTable ()Ljava/util/Collection<+TT;>; *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; i Lorg/openide/util/Lookup$Item; #Lorg/openide/util/Lookup$Item<TT;>; <Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; 5Ljava/util/List<Lorg/openide/util/Lookup$Item<TT;>;>; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; l !Lorg/openide/util/LookupListener; � java/lang/Object � java/lang/Throwable ls I ev Lorg/openide/util/LookupEvent; ev2 \<T:Ljava/lang/Object;>Lorg/openide/util/Lookup$Result<TT;>;Lorg/openide/util/LookupListener; 
SourceFile DefaultEMLookup.java InnerClasses � org/openide/util/Lookup Result � 1org/openide/explorer/DefaultEMLookup$NoNodeLookup � $org/openide/explorer/DefaultEMLookup NoNodeLookup ExclusionResult Item 0    i      u    v     u    w     u    x    y  z   �     *� *� Y� 	� 
*+� *,� �    {       �  �  �  �  � |         } ~                        } �       v      w  �   	       u    �     z   �     J*� � L� Y+�  � "M+� % N-� ) � %-� / :*� � 3 � ,� 9 W���,�    {       �  �  � . � < � E � H � |   *  .  � �    J } ~    B � �   4 �      *  .  � �    J } �    B � �   4 � �  �    �   : *'�  u    �  @ A  z   D     *� � >�    {       � |        } ~           } �   u    �  D   z       `*� � BL� Y+�  � "M+� % N-� ) � ;-� / � E:G� I� M� *� � S� 3 � ���,� 9 W���,�    {   & 	   �  �  � 1 � > � O � R � [ � ^ � |   *  1 * � �    ` } ~    X � �   J �      *  1 * � �    ` } �    X � �   J � �  �    �   : *� 4 E�  u    �  [ \  z   �     1*� 
YM�*� 
� V � *� *� Y*� 
+� 9 W,ç N,�-��   ( +   + . +    {       �  �  �  � & � 0 � |       1 } ~     1 � �         1 } �   �    �  �O ��  �    �    b \  z   �     1*� 
YM�*� 
+� ] W*� 
� V � *� *� `,ç N,�-��   ( +   + . +    {       �     & 0 |       1 } ~     1 � �         1 } �   �    � & �D ��  �    �    s t  z  &     S� cY*� eM*� 
Y:�*� 
*� 
� h � i� k � oNç :��6-�� -2,� q ����   - 0   0 5 0    {   "   	 	  * 8 B L R |   >  *  � p  ;  � �    S } ~     S � �  	 J � �  8  � p         S } �   �   3 � 0   c c  �  ��    c c o  � �  �    �    u    � �    � �   "   � �	 � � �   � �  E � �	