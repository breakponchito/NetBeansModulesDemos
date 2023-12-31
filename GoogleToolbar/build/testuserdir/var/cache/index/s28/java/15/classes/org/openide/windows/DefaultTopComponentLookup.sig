����   4 �	      -org/openide/windows/DefaultTopComponentLookup PRESENT Ljava/lang/Object;
  	 
   #org/openide/util/lookup/ProxyLookup <init> ()V  java/lang/ref/WeakReference
     (Ljava/lang/Object;)V	     tc Ljava/lang/ref/Reference;  org/openide/util/LookupListener
      org/openide/util/WeakListeners create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;	     ! listener !Lorg/openide/util/LookupListener; # %org/openide/windows/DelegateActionMap
 " %  & (Ljavax/swing/JComponent;)V
 ( ) * + , org/openide/util/lookup/Lookups 	singleton -(Ljava/lang/Object;)Lorg/openide/util/Lookup;	  . / 0 	actionMap Lorg/openide/util/Lookup;
 2 3 4 5 6  org/openide/windows/TopComponent getActivatedNodes ()[Lorg/openide/nodes/Node;
  8 9 : updateLookups ([Lorg/openide/nodes/Node;)V < .org/openide/util/lookup/AbstractLookup$Content
 ; 	 ? &org/openide/util/lookup/AbstractLookup
 > A  B 3(Lorg/openide/util/lookup/AbstractLookup$Content;)V D 9org/openide/windows/DefaultTopComponentLookup$NoNodesPair
 C 	
 ; G H I addPair 0(Lorg/openide/util/lookup/AbstractLookup$Pair;)V K org/openide/util/Lookup
  M N O 
setLookups ([Lorg/openide/util/Lookup;)V	  Q R S 
attachedTo Ljava/util/Map;
 U V W X Y java/util/Collections emptyMap ()Ljava/util/Map; [ java/util/HashMap
 Z ]  ^ (Ljava/util/Map;)V
 ` a b c d org/openide/nodes/Node 	getLookup ()Lorg/openide/util/Lookup; f g h i j java/util/Map remove &(Ljava/lang/Object;)Ljava/lang/Object; f l m n values ()Ljava/util/Collection; p q r s t java/util/Collection iterator ()Ljava/util/Iterator; v w x y z java/util/Iterator hasNext ()Z v | } ~ next ()Ljava/lang/Object; � org/openide/util/Lookup$Result
  � � � removeLookupListener $(Lorg/openide/util/LookupListener;)V � :org/openide/windows/DefaultTopComponentLookup$NoNodeLookup
  �  O
 � �  � /(Lorg/openide/util/Lookup;[Ljava/lang/Object;)V � [Ljava/lang/Object;
 ( � � � fixed .([Ljava/lang/Object;)Lorg/openide/util/Lookup;
 � � � � ~ java/lang/ref/Reference get
 � � � � � java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
 � � � � �  org/openide/util/Lookup$Template getType ()Ljava/lang/Class;
  � � � isNodeQuery
  � � � 
getLookups ()[Lorg/openide/util/Lookup; � java/util/WeakHashMap
 � �  � (I)V
 J � � � lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
  � � � addLookupListener f � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � java/lang/Object
 � 	 	Signature =Ljava/lang/ref/Reference<Lorg/openide/windows/TopComponent;>; JLjava/util/Map<Lorg/openide/util/Lookup;Lorg/openide/util/Lookup$Result;>; %(Lorg/openide/windows/TopComponent;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/windows/DefaultTopComponentLookup; "Lorg/openide/windows/TopComponent; MethodParameters c 0Lorg/openide/util/lookup/AbstractLookup$Content; l (Lorg/openide/util/lookup/AbstractLookup; copy i I res  Lorg/openide/util/Lookup$Result; it Ljava/util/Iterator; arr [Lorg/openide/nodes/Node; lookups [Lorg/openide/util/Lookup; LocalVariableTypeTable 6Ljava/util/Iterator<Lorg/openide/util/Lookup$Result;>; StackMapTable � � � java/lang/Throwable resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; Ljava/lang/Class; Ljava/lang/Class<*>; (Ljava/lang/Class<*>;)Z beforeLookup %(Lorg/openide/util/Lookup$Template;)V t "Lorg/openide/util/Lookup$Template; #Lorg/openide/util/Lookup$Result<*>; %Lorg/openide/util/Lookup$Template<*>; ((Lorg/openide/util/Lookup$Template<*>;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
access$000 <clinit> 
SourceFile DefaultTopComponentLookup.java InnerClasses Content NoNodesPair � +org/openide/util/lookup/AbstractLookup$Pair Pair Result NoNodeLookup Template 0               �    �    !    R S  �    �  / 0      �  �   ~     6*� *� Y+� � **� � � *� "Y+� $� '� -*+� 1� 7�    �       J  L  M  N - P 5 Q �       6 � �     6  �  �        9 :  �  � 	   +� 3� ;Y� =M� >Y,� @N,� CY� E� F*� JY-SY*� -S� L�+�� JM*Y:�*� P� 
� TN� � ZY*� P� \Nç :��6+�� #,+2� _S-� -+2� e W����-� k � o :� u � � { � :*� � ����*Y:�*� Pç :��*� JY� �Y� Y,� �+� �SY+� �� �SY*� -S� L�  ? \ _   _ d _   � � �   � � �    �   j    W  X  Y  Z   [ 3 ] 4 ` : d ? e F f M h Y j g l q m | o � q � l � u � v � w � x � z � { � | � ~  �   p   ( � �    � �  J  � S  Y  � S  j ' � �  � 	 � �  � " � �    � �     � �  : � � �  g � � S  �   *  J  � �  Y  � �  � " � �  g � � �  �   z 4�  �  ��    � � f �  �    � �  �  ��    � � f  �  � �  v� !�    � � f �  ��  �    �    � �  �   ~     *� � �� 2M,� 	*� 7�*,� 1� 7�    �       �  �  �  �  �  � �         � �      � �    � �  �    �  2 �    �   
 � �  �   `     `*� �� *`� �� � �    �       � �        � �   �        � �   �    @ �    �   �    � $ � �  �   �     W*� P� R+� �� �� H*� �M*� �Y,�h� �� P>,�d� *,2+� �:*� � �*� P,2� � W���Ա    �   & 	   �  �  � % � / � 8 � A � P � V � �   4  8  � �  ' / � �   @ � �    W � �     W � �  �     8  � �    W � �  �    � ' �� . �    �   �    � �     �   � ~  �         � �    �       7  �   �   #      � �Y� �� �    �       8  �    � �   2  ; > � 	 C  �  � > �	  J �	 �  �  � J � 