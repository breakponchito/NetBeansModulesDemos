����   4"
      1org/openide/nodes/FilterNode$Children$LazySupport updateEntries (I)V	   	 
 this$0 'Lorg/openide/nodes/FilterNode$Children;
      "org/openide/nodes/EntrySupportLazy <init> (Lorg/openide/nodes/Children;)V	     origSupport $Lorg/openide/nodes/EntrySupportLazy;	     LOCK Ljava/lang/Object;  Korg/openide/nodes/FilterNode$Children$LazySupport$FilterDelayedLazySnapshot
     U(Lorg/openide/nodes/FilterNode$Children$LazySupport;Ljava/util/List;Ljava/util/Map;)V  Dorg/openide/nodes/FilterNode$Children$LazySupport$FilterLazySnapshot
  	 " # $ % & %org/openide/nodes/FilterNode$Children original Lorg/openide/nodes/Node;
 ( ) * + , org/openide/nodes/Node getChildren ()Lorg/openide/nodes/Children;
 . / 0 1 2 org/openide/nodes/Children getNodes (Z)[Lorg/openide/nodes/Node;
 " 4 1 5 ()[Lorg/openide/nodes/Node;
 . 7 8 9 getNodesCount (Z)I
 . ; < = 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node;
 " ? @ A 
access$401 S(Lorg/openide/nodes/FilterNode$Children;Ljava/lang/String;)Lorg/openide/nodes/Node;	 C D E F G !org/openide/nodes/NodeMemberEvent sourceEntry "Lorg/openide/nodes/Children$Entry;
  I J K update ()V
  M N O doRefreshEntry %(Lorg/openide/nodes/Children$Entry;)V	  Q R S LOGGER Ljava/util/logging/Logger;	 U V W X Y java/util/logging/Level FINER Ljava/util/logging/Level;
 [ \ ] ^ _ java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z a java/lang/StringBuilder
 ` c  K e updateEntries() 
 ` g h i append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ` k h l -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 ` n o p toString ()Ljava/lang/String;
 [ r s t finer (Ljava/lang/String;)V
 " v w x 
access$300 W(Lorg/openide/nodes/FilterNode$Children;)Lorg/openide/nodes/FilterNode$ChildrenAdapter;
  7	 " { | } MUTEX Lorg/openide/util/Mutex;  3org/openide/nodes/FilterNode$Children$LazySupport$1
 ~ �  � 7(Lorg/openide/nodes/FilterNode$Children$LazySupport;I)V
 � � � � � org/openide/util/Mutex postWriteRequest (Ljava/lang/Runnable;)V � !    origSupport.getNodesCount(): 
 ` � h � (I)Ljava/lang/StringBuilder;
  � � � 
getEntries ()Ljava/util/List; � %    origSupport.getEntries() - size:  � � � � � java/util/List size ()I �  data:  � java/util/ArrayList
 � �   � � � � iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object; �  org/openide/nodes/Children$Entry � Aorg/openide/nodes/FilterNode$Children$LazySupport$FilterNodeEntry
 � �  � X(Lorg/openide/nodes/FilterNode$Children$LazySupport;Lorg/openide/nodes/Children$Entry;)V
 � � � � add (Ljava/lang/Object;)Z
  � � � 
setEntries (Ljava/util/Collection;)V
  � � � isInitialized
  � � K notifySetEntries
  � � O refreshEntry
  � � � entryForNode <(Lorg/openide/nodes/Node;)Lorg/openide/nodes/Children$Entry; � ;org/openide/nodes/FilterNode$Children$FilterChildrenSupport j(Lorg/openide/nodes/FilterNode$Children;Lorg/openide/nodes/Children;Lorg/openide/nodes/EntrySupportLazy;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/nodes/FilterNode$Children$LazySupport; ch Lorg/openide/nodes/Children; MethodParameters createSnapshot S(Ljava/util/List;Ljava/util/Map;Z)Lorg/openide/nodes/EntrySupportLazy$LazySnapshot; entries Ljava/util/List; e2i Ljava/util/Map; delayed Z LocalVariableTypeTable 4Ljava/util/List<Lorg/openide/nodes/Children$Entry;>; fLjava/util/Map<Lorg/openide/nodes/Children$Entry;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;>; StackMapTable � java/lang/Object � /org/openide/nodes/EntrySupportLazy$LazySnapshot � java/lang/Throwable 	Signature �(Ljava/util/List<Lorg/openide/nodes/Children$Entry;>;Ljava/util/Map<Lorg/openide/nodes/Children$Entry;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;>;Z)Lorg/openide/nodes/EntrySupportLazy$LazySnapshot; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; callGetNodes optimalResult hold [Lorg/openide/nodes/Node; � callGetNodesCount name Ljava/lang/String; filterChildrenAdded &(Lorg/openide/nodes/NodeMemberEvent;)V ev #Lorg/openide/nodes/NodeMemberEvent; filterChildrenRemoved filterChildrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V $Lorg/openide/nodes/NodeReorderEvent; count I LOG_ENABLED cha .Lorg/openide/nodes/FilterNode$ChildrenAdapter; ,org/openide/nodes/FilterNode$ChildrenAdapter e origEntries filtEntries Ljava/util/ArrayList; 9Ljava/util/ArrayList<Lorg/openide/nodes/Children$Entry;>; entry createEntryForKey key originalSupport "()Lorg/openide/nodes/EntrySupport; 
access$500 x0 x1 
SourceFile FilterNode.java InnerClasses org/openide/nodes/FilterNode Children LazySupport FilterDelayedLazySnapshot FilterLazySnapshot Entry ChildrenAdapter FilterNodeEntry FilterChildrenSupport LazySnapshot 1org/openide/nodes/EntrySupportLazyState$EntryInfo  'org/openide/nodes/EntrySupportLazyState 	EntryInfo      �        	 
      �  �   Z     *+� *,� *-� �    �      � � 
� � �         � �      � �        �    	 �       � �  �   �     /*� Y:�� � Y*+,� � � Y*+,�  ð:��   & '   ' , '    �      � � '� �   *    / � �     / � �    / � �    / � �  �       / � �    / � �  �    �  �I �C � �    �   �   �   �    � �     �    � 2  �   {     M� *� � !� '� -M*� � 3M,�    �      � � � � � �         � �      � �    � �  �    �  � �    �    � 9  �   C     *� � !� '� 6�    �      � �        � �      � �  �    �   �     �    < =  �   P     *� � !� '+� :W*� +� >�    �   
   � � �        � �      � �  �    �    � �  �   a     +� B� 
*� H� *+� B� L�    �      � � � � �        � �      � �  �     �    �    � �  �   a     +� B� 
*� H� *+� B� L�    �      � �   �        � �      � �  �     �    �    � �  �   =     *� H�    �   
     �        � �      � �  �    �    J K  �   �     L� P� T� Z<� � P� `Y� bd� f*� j� m� q*� � uM,� *� � y>� z� ~Y*� �� ��    �   "    
  ' / 3 < K �   *  <  � �    L � �   
 B � �  /  � �  �    � '� #  �     �       �  �     в P� T� Z=� � P� `Y� bd� f*� j� m� q� � P� `Y� b�� f� �� m� q*� � �N� *� P� `Y� b�� f-� � � ��� f-� j� m� q� �Y-� � � �:-� � :� � � "� � � �:� �Y*� �� �W���*� �*� � �� *� � ���    �   F    
  '  +! D$ L% P& w) �* �+ �, �. �0 �1 �2 �4 �   >  �  G    � � �     � � �  
 � � �  L � �  � J  �     L � �  � J  �    � '� 2 ��  � �� ( �    �    N O  �   F     *� �Y*+� �� ñ    �   
   7 8 �        � �      G  �       �  �   U     *� +� �M� �Y*,� ��    �   
   ; 	< �         � �     	 &  	 
 G  �   	   
  �   /     *� �    �      @ �        � �   �  �   :     *� �    �      � �        �      �        Z  " 	  "         � .  
 ~       �   � " �   ! 