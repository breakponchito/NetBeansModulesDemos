����   4
      org/openide/nodes/NodeAdapter <init> ()V	  	 
   org/openide/nodes/ChildrenArray entrySupport 'Lorg/openide/nodes/EntrySupportDefault;	      %org/openide/nodes/EntrySupportDefault children Lorg/openide/nodes/Children;	     nodes [Lorg/openide/nodes/Node;
     justComputeNodes ()[Lorg/openide/nodes/Node;
       org/openide/nodes/Node 
reassignTo @(Lorg/openide/nodes/Children;Lorg/openide/nodes/ChildrenArray;)V
  " # $ registerChildrenArray %(Lorg/openide/nodes/ChildrenArray;Z)V	  & ' ( map Ljava/util/Map; * + , - . java/util/Map remove &(Ljava/lang/Object;)Ljava/lang/Object; 0 java/lang/StringBuilder
 / 
 3 4 5 6 7 *org/openide/nodes/EntrySupportDefault$Info toString ()Ljava/lang/String;
 / 9 : ; append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 / = : > (C)Ljava/lang/StringBuilder;
 @ A B C D java/lang/System identityHashCode (Ljava/lang/Object;)I
 F G H I J java/lang/Integer toHexString (I)Ljava/lang/String;
 / 4	  M N O LOGGER Ljava/util/logging/Logger;	 Q R S T U java/util/logging/Level FINE Ljava/util/logging/Level;
 W X Y Z [ java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z ] 	nodesFor(
  _ ` a logInfo @(Lorg/openide/nodes/EntrySupportDefault$Info;)Ljava/lang/String; c ) on 
 e f g h i java/lang/Thread currentThread ()Ljava/lang/Thread;
 / k : l -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 W n o p finer (Ljava/lang/String;)V	  r s t $assertionsDisabled Z v java/lang/AssertionError x Should be already initialized
 u z  { (Ljava/lang/Object;)V } java/util/WeakHashMap
 |   � (I)V * � � . get � java/util/Collection �   map size= * � � � size ()I
 / � : � (I)Ljava/lang/StringBuilder; � , nodes= � Cannot find nodes for  �  in 	 3 � � � entry "Lorg/openide/nodes/Children$Entry; � � �  �  org/openide/nodes/Children$Entry *(Ljava/lang/Object;)Ljava/util/Collection; � java/lang/RuntimeException
 � � � � � org/openide/nodes/NodeOp warning (Ljava/lang/Throwable;)V
 � � � � � java/util/Collections 	emptyList ()Ljava/util/List; � Null returned by  �  ( � � � � getClass ()Ljava/lang/Class;
 � � � � 7 java/lang/Class getName � )
 W � � p � �	 3 � � � length I * � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; �   created nodes= �   leaving nodesFor(
 � 4 � java/lang/Object �   
  � � � getChildren ()Lorg/openide/nodes/Children;
 � � � � desiredAssertionStatus ()Z
 W � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; 	Signature mLjava/util/Map<Lorg/openide/nodes/EntrySupportDefault$Info;Ljava/util/Collection<Lorg/openide/nodes/Node;>;>; Code LineNumberTable LocalVariableTable this !Lorg/openide/nodes/ChildrenArray; StackMapTable � org/openide/nodes/Children i clear /(Lorg/openide/nodes/EntrySupportDefault$Info;)V info ,Lorg/openide/nodes/EntrySupportDefault$Info; MethodParameters isInitialized nodesFor E(Lorg/openide/nodes/EntrySupportDefault$Info;Z)Ljava/util/Collection; ex Ljava/lang/RuntimeException; 
hasToExist IS_LOG Ljava/util/Collection; LocalVariableTypeTable 0Ljava/util/Collection<Lorg/openide/nodes/Node;>; _(Lorg/openide/nodes/EntrySupportDefault$Info;Z)Ljava/util/Collection<Lorg/openide/nodes/Node;>; useNodes E(Lorg/openide/nodes/EntrySupportDefault$Info;Ljava/util/Collection;)V list _(Lorg/openide/nodes/EntrySupportDefault$Info;Ljava/util/Collection<Lorg/openide/nodes/Node;>;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile ChildrenArray.java InnerClasses Info Entry 0                 ' (  �    �  N O   s t        �   3     *� �    �   
    /  0 �        � �    � �  �   J     *� � � 
*� � �    �       3 �        � �   �    F �     �   �     W*� � �*� � E**� � � <*� �� *� 2*� � *� ����*� **� �� � � !*� �    �   & 	   9  ; 	 >  ?  A & D 7 A = H R J �        � �    W � �   �   , 	� � �      �         �   �   U     *� � *� *� *� !�    �       O  P  U  W �        � �   �       - �  �   D     *� %+� ) W�    �   
    Z  [ �        � �      � �  �    �    � �  �   B     *� � � �    �       _ �        � �   �    @  ` a  �   Z     &� /Y� 1+� 2� 8[� <+� ?� E� 8]� <� K�    �       c �       & � �     & � �  �    �   ! � �  �  �    �� L� P� V>� +� L� /Y� 1\� 8*+� ^� 8b� 8� d� j� K� m*� %� $� q� � � uYw� y�*� |Y� ~� %*� %+� � � �:� .� L� /Y� 1�� 8*� %� � � ��� 8� j� K� m� Ĳ q� .� *� uY� /Y� 1�� 8+� j�� 8*� %� j� K� y�+� �� � :� :� �� �:� =� �:� L� /Y� 1�� 8+� �� j�� 8+� �� � � �� 8�� 8� K� �+� � � �*� %+� � W� � L� /Y� 1ƶ 8� j� K� m� +� L� /Y� 1ȶ 8*+� ^� 8b� 8� d� j� K� m�  � � � �  �   j    k 
 l  m 6 o = p Q q ^ s m u q v � y � z � | � � � } � ~ �  � � � � � �, �7 �D �H �b �f �� � �   >  � 
 � �   � � �    � � �   � � t  
� � t  m$  �  �     m$  �  �    
� 6� = �5N �>5+ �   	 �   �   �    � ! � �  �   �     +*� %� *� |Y� ~� %+,� � � �*� %+,� � W�    �       �  �  �  � * � �        + � �     + � �    + � �  �       + � �  �     �   	 �   �   �    �  6 7  �   H     � /Y� 1*� ʶ 8Ͷ 8*� ϶ j� K�    �       � �        � �   �     �    �   �   C      � Ӛ � � q� �� ׳ L�    �   
    #  , �    @  �    � �     3    � �