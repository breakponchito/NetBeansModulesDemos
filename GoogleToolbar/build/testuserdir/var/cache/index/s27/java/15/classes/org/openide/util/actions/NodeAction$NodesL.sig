����   4 �
      java/lang/Object <init> ()V	  	 
   *org/openide/util/actions/NodeAction$NodesL chgSFC Z	     chgNSFC	     activatedNodes [Ljava/lang/ref/Reference;  org/openide/nodes/Node
      java/lang/ref/Reference get ()Ljava/lang/Object;	     result  Lorg/openide/util/Lookup$Result;
 ! " # $ % org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; ' ( ) * + java/util/Collection toArray (([Ljava/lang/Object;)[Ljava/lang/Object; - [Lorg/openide/nodes/Node;
 / 0 1 2 3 org/openide/util/Utilities actionsGlobalContext ()Lorg/openide/util/Lookup;
 5 6 7 8 9 org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
 ! ; < = addLookupListener $(Lorg/openide/util/LookupListener;)V
  ? @ A forget (Z)V
 ! C D % allItems ' F G H size ()I ' J K L iterator ()Ljava/util/Iterator; N O P Q  java/util/Iterator next S org/openide/util/Lookup$Item U none
 R W X Y getId ()Ljava/lang/String;
 [ \ ] ^ _ java/lang/String equals (Ljava/lang/Object;)Z
 R a b  getInstance d java/util/ArrayList
 c  N g h i hasNext ()Z k java/lang/ref/WeakReference
 j m  n (Ljava/lang/Object;)V
 c p q _ add
 c F
 c ( 
  v w  update
 y z { | } #org/openide/util/actions/NodeAction 
access$000 ()Ljava/util/Set;  F � java/util/Set
 c �  � (I)V  J � p � java/util/List � J
 y � � i surviveFocusChange	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; � ,org/openide/util/actions/NodeAction$NodesL$1
 � �  � T(Lorg/openide/util/actions/NodeAction$NodesL;Lorg/openide/util/actions/NodeAction;)V
 � � � � 
readAccess (Ljava/lang/Runnable;)V � org/openide/util/LookupListener 	Signature :Lorg/openide/util/Lookup$Result<Lorg/openide/nodes/Node;>; 4[Ljava/lang/ref/Reference<Lorg/openide/nodes/Node;>; Code LineNumberTable LocalVariableTable this ,Lorg/openide/util/actions/NodeAction$NodesL; getActivatedNodes (Z)[Lorg/openide/nodes/Node; i I arr survive r LocalVariableTypeTable StackMapTable MethodParameters 	setActive active context Lorg/openide/util/Lookup; resultChanged !(Lorg/openide/util/LookupEvent;)V item Lorg/openide/util/Lookup$Item; it Ljava/util/Iterator; list Ljava/util/ArrayList; ev Lorg/openide/util/LookupEvent; items Ljava/util/Collection; updateActivatedNodes 8Lorg/openide/util/Lookup$Item<Lorg/openide/nodes/Node;>; /Ljava/util/Iterator<+Lorg/openide/nodes/Node;>; JLjava/util/ArrayList<Ljava/lang/ref/Reference<Lorg/openide/nodes/Node;>;>; QLjava/util/Collection<+Lorg/openide/util/Lookup$Item<Lorg/openide/nodes/Node;>;>; as Ljava/util/List; a %Lorg/openide/util/actions/NodeAction; sfc ;Ljava/util/Iterator<Lorg/openide/util/actions/NodeAction;>; 7Ljava/util/List<Lorg/openide/util/actions/NodeAction;>; � java/lang/Throwable 
SourceFile NodeAction.java InnerClasses NodesL Result Item 0    �  B    �    �               �    �      �   E     *� *� *� �    �      ~ t 	w  �        � �    � �  �   �     [� 9*� � 2*� �� M>,�� ,*� 2� � [S� � ����,�*� M,� 
� � ,�  � � & � ,�    �   & 	  � � � � /� 2� 8� :� ?� �   4   " � �   & � -    [ � �     [ �   ?  �   �     ?  � �  �    �  ,� � �  !O , �    �     � A  �   �     /� .M� *� � "*,� 4� *� *� :� *� >*� >�    �   "   � � � � � $� )� .� �        / � �     / �    + � �  �   	 � $ 5	 �    �    � �  �  �     �*� M,� �*� *� *� � BN6-� E � +-� I � M � R:T� V� Z� � `� 6� R*� �  � I :� cY� e:� f � � jY� M � � l� oW���*� r� � s� t� *� u�    �   N   � � 	� 
� � � � � )� 9� N� Q� V� d� m� w� �� �� �� �   R  9  � �  d A � �  m 8 � �    � � �     � � �   � �    � � �   � �   �   4  9  � �  d A � �  m 8 � �   � � �   � � �  �    � 
 !� F '�  N c#�  �    �    w   �   o     #*� � *� >*� *� � *� >*� �    �      � � � � � � "� �       # � �   �      @ A  �  �     �� xYN» cY� x� ~ � �M� x� � :� f � ,� M � y� � W���-ç 
:-��,� � N-� f � *-� M � y:� �� � �� �Y*� �� ���ӱ   @ C   C G C    �   2   � � � *� >� J� Q� Z� e� n� ~� �� �   H     � �   - � �  e  � �    � � �     � �   J 8 � �  Q 1 � �  �   *     � �   - � �  J 8 � �  Q 1 � �  �   9 �   �  N� �       ��    �  �  N, �    �    �    � �   "   y �  ! 5 �	 R 5 �	 �      