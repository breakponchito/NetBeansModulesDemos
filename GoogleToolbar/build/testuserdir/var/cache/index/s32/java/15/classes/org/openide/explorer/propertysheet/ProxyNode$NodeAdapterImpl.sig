����   4 �  org/openide/nodes/Node	      <org/openide/explorer/propertysheet/ProxyNode$NodeAdapterImpl this$0 .Lorg/openide/explorer/propertysheet/ProxyNode;
 
     org/openide/nodes/NodeAdapter <init> ()V	     nodeListener Z
     nodePropertyChange #(Ljava/beans/PropertyChangeEvent;)V
     realPropertyChange
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String; ! cookie
 # $ % & ' java/lang/String equals (Ljava/lang/Object;)Z
 ) * + , - ,org/openide/explorer/propertysheet/ProxyNode 
access$000 1(Lorg/openide/explorer/propertysheet/ProxyNode;)V / displayName	 ) 1 / 2 Ljava/lang/String;
  4 5 6 getOldValue ()Ljava/lang/Object;
 ) 8 9  getDisplayName
 ) ; < = 
access$100 U(Lorg/openide/explorer/propertysheet/ProxyNode;Ljava/lang/String;Ljava/lang/String;)V ? icon
 ) A B - 
access$200 D 
openedIcon
 ) F G - 
access$300 I name
 ) K L  getName
 ) N O = 
access$400 Q propertySets
 ) S T U getPropertySets '()[Lorg/openide/nodes/Node$PropertySet;
 ) W X Y createSheet ()Lorg/openide/nodes/Sheet;
 ) [ \ ] 
access$500 J(Lorg/openide/explorer/propertysheet/ProxyNode;Lorg/openide/nodes/Sheet;)V
 ) _ ` a 
access$600 {(Lorg/openide/explorer/propertysheet/ProxyNode;[Lorg/openide/nodes/Node$PropertySet;[Lorg/openide/nodes/Node$PropertySet;)V c shortDescription
 ) e f  getShortDescription
 ) h i = 
access$700 k leaf m 
parentNode
 ) o p q 
access$800 I(Lorg/openide/explorer/propertysheet/ProxyNode;)[Lorg/openide/nodes/Node;
 s t u v w java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 y z { | 6 org/openide/nodes/NodeEvent 	getSource ~  � � � java/util/List indexOf (Ljava/lang/Object;)I � java/util/HashSet
 � �  � (Ljava/util/Collection;)V
 � � � ' remove
 � � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Lorg/openide/nodes/Node;
 ) � � � 
access$802 b(Lorg/openide/explorer/propertysheet/ProxyNode;[Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node;
 � � � � size ()I
 ) � � - 
access$900
 � � � � � "org/openide/nodes/Node$PropertySet getProperties $()[Lorg/openide/nodes/Node$Property;
 � K � org/openide/nodes/Node$Property
  � � 6 getNewValue
 ) � � � access$1000 g(Lorg/openide/explorer/propertysheet/ProxyNode;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V 2(Lorg/openide/explorer/propertysheet/ProxyNode;Z)V Code LineNumberTable LocalVariableTable this >Lorg/openide/explorer/propertysheet/ProxyNode$NodeAdapterImpl; b MethodParameters propertyChange pce  Ljava/beans/PropertyChangeEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; old %[Lorg/openide/nodes/Node$PropertySet; nm nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V set Ljava/util/HashSet; ev Lorg/openide/nodes/NodeEvent; idx I LocalVariableTypeTable -Ljava/util/HashSet<Lorg/openide/nodes/Node;>; j ps "[Lorg/openide/nodes/Node$Property; i pss exists � � 
SourceFile ProxyNode.java InnerClasses NodeAdapterImpl PropertySet Property    
                �  �   K     *+� *� 	*� �    �      � 	� � �        � �      �   �   	  �    �   �   _     *� � *+� � *+� �    �      � � � � �        � �      � �  �     �    �   �     �       �  �     �+� M ,� "� *� � (� �.,� "� #*� � 0*� +� 3� #*� � 7� :� �>,� "� *� � @� �C,� "� *� � E� �H,� "� *� +� 3� #*� � J� M� jP,� "� +*� � RN*� *� � V� Z*� -*� � R� ^� 9b,� "� *� +� 3� #*� � d� g� j,� "� � l,� "� �    �   V   � � � � !� )� A� J� T� ]� g� p� �� �� �� �� �� �� �� �� �� �   *  �  � �    � � �     � � �   � � 2  �    	�  #( 0  �    �    � �  �   �     Y*� � n� r+� x� � } =� ?� �Y*� � n� r� �N-+� x� �W*� -� � �� �� �W-� �� 
*� � ��    �   "   �    . 7 J Q X	 �   *  . * � �    Y � �     Y � �   B � �  �     . * � �  �    � X �    �       �  ;     o+� M*� � RN66-�� ?� :-2� �:6��  � 2� �,� "� 6���ބ���� *� +� +� 3+� �� ��    �   6        ( 8 G J P V [ n �   R  + % � �  ( ( � �   C � �    o � �     o � �   j � 2   b � �   _ �   �   & �     # �  �  �� �  �    �    �    � �      ) �  �  �	 �  �	