����   4 j
      java/lang/Object <init> ()V  	 
   java/util/Set isEmpty ()Z	      6org/openide/util/lookup/AbstractLookup$NotifyListeners evAndListeners Ljava/util/ArrayList;  java/util/ArrayList
       iterator ()Ljava/util/Iterator;      java/util/Iterator hasNext    ! " next ()Ljava/lang/Object; $ (org/openide/util/lookup/AbstractLookup$R
 # & ' ( collectFires (Ljava/util/Collection;)V
  	
   , org/openide/util/LookupEvent . org/openide/util/LookupListener - 0 1 2 resultChanged !(Lorg/openide/util/LookupEvent;)V 4 java/lang/RuntimeException	 6 7 8 9 : &org/openide/util/lookup/AbstractLookup LOG Ljava/util/logging/Logger;	 < = > ? @ java/util/logging/Level WARNING Ljava/util/logging/Level;
 B C D E F java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V H java/lang/Runnable 	Signature )Ljava/util/ArrayList<Ljava/lang/Object;>; (Ljava/util/Set;)V Code LineNumberTable LocalVariableTable result *Lorg/openide/util/lookup/AbstractLookup$R; this 8Lorg/openide/util/lookup/AbstractLookup$NotifyListeners; allAffectedResults Ljava/util/Set; LocalVariableTypeTable -Lorg/openide/util/lookup/AbstractLookup$R<*>; ;Ljava/util/Set<Lorg/openide/util/lookup/AbstractLookup$R;>; StackMapTable MethodParameters >(Ljava/util/Set<Lorg/openide/util/lookup/AbstractLookup$R;>;)V shallRun run x Ljava/lang/RuntimeException; ev Lorg/openide/util/LookupEvent; l !Lorg/openide/util/LookupListener; it Ljava/util/Iterator; 
SourceFile AbstractLookup.java InnerClasses NotifyListeners R 0    G      I    J    K  L   �     D*� +�  � 	*� �*� Y� � +�  M,�  � ,�  � #N-*� � %���    M   & 	  � � � � � � 8� @� C� N      8  O P    D Q R     D S T  U     8  O V    D S W  X    �      �  �  Y    S   I    Z  [   L   L     *� � *� � )� � �    M      � N        Q R   X    @  \   L   �     A*� � *L+�  � 2+�  � +M+�  � -N-,� / � :� 5� ;� A��˱  % , / 3  M   * 
       % , / 1 =	 @
 N   4  1  ] ^   " _ `  %  a b    A Q R    9 c d  X   " �  � &    + -  3�   e    f g      6 h  # 6 i 