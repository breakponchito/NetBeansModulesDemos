����   4 �  -org/openide/util/WeakSet$SharedKeyWeakHashMap	      org/openide/util/WeakSet PRESENT Ljava/lang/Object;
 
     java/util/AbstractSet <init> ()V
     (IF)V	     m /Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;	     
loadFactor F
     keySet ()Ljava/util/Set;	     ! s Ljava/util/Set;?@  
   % & ' ( ) java/util/Collection size ()I
 + , - . / java/lang/Math max (II)I
  1 2 3 addAll (Ljava/util/Collection;)Z
  5 6  clear
  &
  9 : ; isEmpty ()Z
  = > ? containsKey (Ljava/lang/Object;)Z
  A B C remove &(Ljava/lang/Object;)Ljava/lang/Object;
  9
  F G H resize (I)V
  J K L 
access$000 W(Lorg/openide/util/WeakSet$SharedKeyWeakHashMap;Ljava/lang/Object;[Z)Ljava/lang/Object; N O P Q R java/util/Set iterator ()Ljava/util/Iterator; N T U V toArray ()[Ljava/lang/Object; N X U Y (([Ljava/lang/Object;)[Ljava/lang/Object; N [ \ ] toString ()Ljava/lang/String; N _ ` ) hashCode N b c ? equals N e f 3 containsAll N h i 3 	removeAll N k l 3 	retainAll n [Z
 p q r s  java/io/ObjectOutputStream defaultWriteObject
  T
 p v w x writeObject (Ljava/lang/Object;)V
 z { | }  java/io/ObjectInputStream defaultReadObject
 z  � � 
readObject ()Ljava/lang/Object; � [Ljava/lang/Object;
 � � � � � java/lang/Object clone
  & � $java/lang/CloneNotSupportedException � java/lang/IllegalStateException �  base class doesn't support clone
 � �  � *(Ljava/lang/String;Ljava/lang/Throwable;)V � java/lang/Boolean
 � �  � (Z)V � java/lang/Cloneable � java/io/Serializable 	Signature GLorg/openide/util/WeakSet$SharedKeyWeakHashMap<TE;Ljava/lang/Boolean;>; Ljava/util/Set<TE;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value BooleanConstructorCall serialVersionUID J ConstantValue"�PE�� Code LineNumberTable LocalVariableTable this Lorg/openide/util/WeakSet; initialCapacity I LocalVariableTypeTable Lorg/openide/util/WeakSet<TE;>; MethodParameters (Ljava/util/Collection;)V Ljava/util/Collection; Ljava/util/Collection<+TE;>; (Ljava/util/Collection<+TE;>;)V Ljava/lang/Override; contains o element-type-mismatch StackMapTable newCapacity add e modified TE; (TE;)Z ()Ljava/util/Iterator<TE;>; a [TT;  <T:Ljava/lang/Object;>([TT;)[TT; $EqualsWhichDoesntCheckParameterClass c Ljava/util/Collection<*>; (Ljava/util/Collection<*>;)Z putIfAbsent (TE;)TE; (Ljava/io/ObjectOutputStream;)V stream Ljava/io/ObjectOutputStream; 
Exceptions � java/io/IOException (Ljava/io/ObjectInputStream;)V object Ljava/io/ObjectInputStream; arr �  java/lang/ClassNotFoundException nws &Ljava/lang/CloneNotSupportedException; 
access$300 <clinit> ]<E:Ljava/lang/Object;>Ljava/util/AbstractSet<TE;>;Ljava/lang/Cloneable;Ljava/io/Serializable; 
SourceFile WeakSet.java 	unchecked InnerClasses SharedKeyWeakHashMap � org/openide/util/WeakSet$1 !  
  � �  �    �    � �   !  �    �     �     �  �[ s �       � �  �    �      �   �     "*� 	*� Y$� � *$� **� � � �    �       J  K  L  M ! N �        " � �     " � �    "    �       " � �   �   	 �        H  �   R     *"� #�    �   
    X  Y �        � �      � �  �        � �   �    �       �   I     	*"� #�    �   
    `  a �       	 � �   �       	 � �     �  �   w     *+� $ �"n�`� *"� #*+� 0W�    �       m  o  p �        � �        �  �        � �        �  �        �    �  6   �   D     *� � 4�    �       s �        � �   �        � �   �     �    ( )  �   D     *� � 7�    �       u �        � �   �        � �   �     �    : ;  �   D     *� � 8�    �       w �        � �   �        � �   �     �    � ?  �   O     	*� +� <�    �       z �       	 � �     	 �   �       	 � �   �    �   �     �   �  �[ s �  B ?  �   e     *� +� @� � � �    �       } �        � �      �   �        � �   �    @ �    �   �     �   �  �[ s �  G H  �   g     *� D� *� � E�    �       �  �  � �        � �      � �  �        � �   �     �    �    � ?  �   x     �YTM*� +,� IW,3�    �       �  �  � �         � �      �     � n  �        � �      � �  �    �   �    � �     �    Q R  �   F     
*� � M �    �       � �       
 � �   �       
 � �   �    � �     �    U V  �   F     
*� � S �    �       � �       
 � �   �       
 � �   �     �    U Y  �   [     *� +� W �    �       � �        � �      � �  �        � �      � �  �    �   �    � �     �    \ ]  �   F     
*� � Z �    �       � �       
 � �   �       
 � �   �     �    ` )  �   F     
*� � ^ �    �       � �       
 � �   �       
 � �   �     �    c ?  �   j     +*� *� +� a � � �    �       � �        � �      �   �        � �   �    @ �    �   �     �   �  �[ s �  f 3  �   [     *� +� d �    �       � �        � �      � �  �        � �      � �  �    �   �    � �     �    i 3  �   [     *� +� g �    �       � �        � �      � �  �        � �      � �  �    �   �    � �     �    l 3  �   [     *� +� j �    �       � �        � �      � �  �        � �      � �  �    �   �    � �     �    � C  �   ]     *� +� m� I�    �       � �        � �      �   �        � �      � �  �    �   �    �  w �  �   [     +� o+*� t� u�    �       �  �  � �        � �      � �  �        � �   �     � �    �    � �  �   �     S+� y+� ~� �M*� Y,�*� � � ,N-�66� -2:*� � m� IW����**� � � �    �   "    �  �  �  � 3 � A � G � R � �   *  3  �     S � �     S � �   G � �  �       S � �   �    � &   z � �  �   �     � � �    �    � �  �   �     :*� �� L+� Y*� �*� � � ++� � � +*� 0W+�L� �Y�+� ��    - . �  �       �  �  � & � , � . � / � �       & � �  /  � �    : � �   �      & � �    : � �   �    n � �     �   � �  �         � �    �       7  �   �   $      � �Y� �� �    �       <  �    � �    � �     �  �[ s � �       �  �    