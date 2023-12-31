����   4 �	      $org/openide/explorer/DefaultEMLookup PRESENT Ljava/lang/Object;
  	 
   #org/openide/util/lookup/ProxyLookup <init> ()V	     tc &Lorg/openide/explorer/ExplorerManager;  org/openide/util/LookupListener
      org/openide/util/WeakListeners create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;	     listener !Lorg/openide/util/LookupListener;
     ! " org/openide/util/lookup/Lookups 	singleton -(Ljava/lang/Object;)Lorg/openide/util/Lookup;	  $ % & 	actionMap Lorg/openide/util/Lookup;
  ( ) * propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
 , - . / 0 $org/openide/explorer/ExplorerManager addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 , 2 3 4 getSelectedNodes ()[Lorg/openide/nodes/Node;
  6 7 8 updateLookups ([Lorg/openide/nodes/Node;)V : org/openide/nodes/Node < org/openide/util/Lookup	  > ? @ 
attachedTo Ljava/util/Map;
 B C D E F java/util/Collections emptyMap ()Ljava/util/Map; H java/util/HashMap
 G J  K (Ljava/util/Map;)V
 9 M N O 	getLookup ()Lorg/openide/util/Lookup; Q R S T U java/util/Map remove &(Ljava/lang/Object;)Ljava/lang/Object; Q W X Y values ()Ljava/util/Collection; [ \ ] ^ _ java/util/Collection iterator ()Ljava/util/Iterator; a b c d e java/util/Iterator hasNext ()Z a g h i next ()Ljava/lang/Object; k org/openide/util/Lookup$Result
 j m n o removeLookupListener $(Lorg/openide/util/LookupListener;)V q 1org/openide/explorer/DefaultEMLookup$NoNodeLookup
  s  t ([Lorg/openide/util/Lookup;)V
 p v  w 5(Lorg/openide/util/Lookup;[Lorg/openide/nodes/Node;)V y [Ljava/lang/Object;
  { | } fixed .([Ljava/lang/Object;)Lorg/openide/util/Lookup;
   � t 
setLookups
 � � � � � java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
 � � � � �  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;
  � � � isNodeQuery
  � � � 
getLookups ()[Lorg/openide/util/Lookup; � java/util/WeakHashMap
 � �  � (I)V
 ; � � � lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
 j � � o addLookupListener Q � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � selectedNodes
 � � � � � java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
 � � � i getNewValue � [Lorg/openide/nodes/Node; � java/lang/Object
 � 	 � !java/beans/PropertyChangeListener 	Signature JLjava/util/Map<Lorg/openide/util/Lookup;Lorg/openide/util/Lookup$Result;>; @(Lorg/openide/explorer/ExplorerManager;Ljavax/swing/ActionMap;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/explorer/DefaultEMLookup; map Ljavax/swing/ActionMap; MethodParameters copy i I res  Lorg/openide/util/Lookup$Result; it Ljava/util/Iterator; arr lookups [Lorg/openide/util/Lookup; LocalVariableTypeTable 6Ljava/util/Iterator<Lorg/openide/util/Lookup$Result;>; StackMapTable � � java/lang/Throwable resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; c Ljava/lang/Class; Ljava/lang/Class<*>; (Ljava/lang/Class<*>;)Z beforeLookup %(Lorg/openide/util/Lookup$Template;)V t "Lorg/openide/util/Lookup$Template; %Lorg/openide/util/Lookup$Template<*>; ((Lorg/openide/util/Lookup$Template<*>;)V #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; 
access$000 <clinit> 
SourceFile DefaultEMLookup.java InnerClasses Result NoNodeLookup Template 0     �                  ? @  �    �  % &      �  �   �     1*� *+� **� � � *,� � #+*+� '� +*+� 1� 5�    �       <  > 	 ?  @  B ( D 0 E �        1 � �     1      1 � �  �   	    �    7 8  �  x 	    �+� � 9L+�� ;M*Y:�*� =� 
� AN� � GY*� =� INç :��6+�� #,+2� LS-� -+2� P W����-� V � Z :� ` � � f � j:*� � l���*Y:�*� =ç :��*� ;Y� pY� Y,� r+� uSY+� x� zSY*� #S� ~�   1 4   4 9 4   � � �   � � �    �   Z    K  L 	 O  S  T  U " W . Y < [ F \ Q ^ U ` ` [ f d } e � f � g � i � j � k � m � n �   \ 	   � @  .  � @  ? ' � �  � 	 � �  s " � �    � � �     � � �   � � �  < � � @  �   *    � �  .  � �  s " � �  < � � �  �   z 	�  �  ��    � � Q �  �    � �  �  ��    � � Q  �  � �  a� !�    � � Q �  ��  �    �    � �  �   D     **� � 1� 5�    �   
    r  s �        � �      � �  �    �   
 � �  �   `     9*� �� *9� �� � �    �       z �        � �   �        � �   �    @ �    �   �    � $ � �  �   �     W*� =� R+� �� �� H*� �M*� �Y,�h� �� =>,�d� *,2+� �:*� � �*� =,2� � W���Ա    �   & 	   ~    � % � / � 8 � A � P � V � �   4  8  � �  ' / � �   @ � �    W � �     W � �  �       W � �  �    � ' �� . �    �   �    �  ) �  �   Z     �+� �� *+� �� �� 5�    �       � 	 �  � �        � �      � �  �     �    �   � i  �         � �    �       (  �   �   #      � �Y� �� �    �       )  �    � �     j ; �	 p  �  � ; � 