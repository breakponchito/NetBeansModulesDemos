����   4{
      ,org/openide/explorer/propertysheet/ProxyNode firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
   	 
 fireNodeDestroyed ()V	     original [Lorg/openide/nodes/Node;
     fireShortDescriptionChange '(Ljava/lang/String;Ljava/lang/String;)V
     firePropertySetsChange M([Lorg/openide/nodes/Node$PropertySet;[Lorg/openide/nodes/Node$PropertySet;)V
     setSheet (Lorg/openide/nodes/Sheet;)V
     fireNameChange
     
 fireOpenedIconChange
  " # 
 fireIconChange
  % &  fireDisplayNameChange
  ( ) 
 fireCookieChange	 + , - . / org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;
 1 2 3 4 5 org/openide/nodes/AbstractNode <init> (Lorg/openide/nodes/Children;)V	  7 8 9 displayName Ljava/lang/String;	  ; < 9 shortDescription > <org/openide/explorer/propertysheet/ProxyNode$NodeAdapterImpl
 = @ 4 A 2(Lorg/openide/explorer/propertysheet/ProxyNode;Z)V	  C D E nl  Lorg/openide/nodes/NodeListener;	  G H E pcl
 J K L M N org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
 P Q R S T org/openide/nodes/Node addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V V org/openide/nodes/NodeListener
 J X Y Z create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;
 P \ ] ^ addNodeListener #(Lorg/openide/nodes/NodeListener;)V
 P ` a b 
getHelpCtx ()Lorg/openide/util/HelpCtx;	 d e f g h org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx;
  j 4 k ([Lorg/openide/nodes/Node;)V
 1 m n o createSheet ()Lorg/openide/nodes/Sheet;
  q r s computePropertySets  ()[Lorg/openide/nodes/Sheet$Set;
 u v w x y org/openide/nodes/Sheet put <(Lorg/openide/nodes/Sheet$Set;)Lorg/openide/nodes/Sheet$Set;
  { | } getConcatenatedName (I)Ljava/lang/String;
   � � getOriginalNodes ()[Lorg/openide/nodes/Node; � java/lang/StringBuffer
 � � 4 
 � CTL_List_Delimiter
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 P � � � getDisplayName ()Ljava/lang/String;
 � � � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � MSG_ELLIPSIS
 � � � � toString � CTL_Multiple_Selection � java/lang/Integer���	  � � � originalPropertySets Ljava/util/ArrayList; � java/util/ArrayList
 � � 4 � (I)V
 P � � � getPropertySets '()[Lorg/openide/nodes/Node$PropertySet;
 � � � � add (Ljava/lang/Object;)Z
  � � � getOriginalPropertySets 0([Lorg/openide/nodes/Node;)Ljava/util/ArrayList;
 � � � � isEmpty ()Z � org/openide/nodes/Sheet$Set
 � � � � get (I)Ljava/lang/Object; � %[Lorg/openide/nodes/Node$PropertySet; � java/util/HashSet
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 � � 4 � (Ljava/util/Collection;)V
 � � � � size ()I � � � � � java/util/Set 	retainAll (Ljava/util/Collection;)Z � � � � � � contains
 � � � � � "org/openide/nodes/Node$PropertySet isHidden
 � �
 � � � � getName
 � � � � setName (Ljava/lang/String;)V
 � �
 � � � � setDisplayName
 � � � � getShortDescription
 � � � � setShortDescription � tabName
 � � � � getValue &(Ljava/lang/String;)Ljava/lang/Object; � java/lang/String
 � � � � setValue '(Ljava/lang/String;Ljava/lang/Object;)V
 � � �  getProperties $()[Lorg/openide/nodes/Node$Property;
 � � equals
 � org/openide/nodes/Node$Property
 �
 � �
 
 createProxyProperty {([Lorg/openide/nodes/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/explorer/propertysheet/ProxyNode$ProxyProperty;
 � x D(Lorg/openide/nodes/Node$Property;)Lorg/openide/nodes/Node$Property;
 � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; [Lorg/openide/nodes/Sheet$Set;
 org/openide/util/Utilities compareObjects '(Ljava/lang/Object;Ljava/lang/Object;)Z :org/openide/explorer/propertysheet/ProxyNode$ProxyProperty
 4  %([Lorg/openide/nodes/Node$Property;)V 	MAX_NAMES I ConstantValue    	Signature <Ljava/util/ArrayList<[Lorg/openide/nodes/Node$PropertySet;>; Code LineNumberTable LocalVariableTable i this .Lorg/openide/explorer/propertysheet/ProxyNode; StackMapTable  MethodParameters 	cloneNode ()Lorg/openide/nodes/Node; sheet Lorg/openide/nodes/Sheet; computedSet limit n name Ljava/lang/StringBuffer; delim p arr forWhat LocalVariableTypeTable W([Lorg/openide/nodes/Node;)Ljava/util/ArrayList<[Lorg/openide/nodes/Node$PropertySet;>; cn pkn k j pp <Lorg/openide/explorer/propertysheet/ProxyNode$ProxyProperty; current $Lorg/openide/nodes/Node$PropertySet; res Lorg/openide/nodes/Sheet$Set; props Ljava/util/Set; propsHelpID "[Lorg/openide/nodes/Node$Property; ops firstSet sheets resultSheets copy 2Ljava/util/Set<Lorg/openide/nodes/Node$Property;>; 5Ljava/util/Set<Lorg/openide/nodes/Node$PropertySet;>; 4Ljava/util/ArrayList<Lorg/openide/nodes/Sheet$Set;>;L np propName 
access$000 1(Lorg/openide/explorer/propertysheet/ProxyNode;)V x0 
access$100 U(Lorg/openide/explorer/propertysheet/ProxyNode;Ljava/lang/String;Ljava/lang/String;)V x1 x2 
access$200 
access$300 
access$400 
access$500 J(Lorg/openide/explorer/propertysheet/ProxyNode;Lorg/openide/nodes/Sheet;)V 
access$600 {(Lorg/openide/explorer/propertysheet/ProxyNode;[Lorg/openide/nodes/Node$PropertySet;[Lorg/openide/nodes/Node$PropertySet;)V 
access$700 
access$800 I(Lorg/openide/explorer/propertysheet/ProxyNode;)[Lorg/openide/nodes/Node; 
access$802 b(Lorg/openide/explorer/propertysheet/ProxyNode;[Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node; 
access$900 access$1000 g(Lorg/openide/explorer/propertysheet/ProxyNode;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V Ljava/lang/Object; x3 
SourceFile ProxyNode.java InnerClasses PropertySet NodeAdapterImpl Set Property ProxyPropertyy Eorg/openide/explorer/propertysheet/ProxyNode$DifferentValuesException DifferentValuesException 0  1    !" #   $ B     B � � %   &  D E    H E     8 9    < 9    � 4 k '   �     d*� *� 0*� 6*� :*+� *� =Y*� ?� B*� =Y*� ?� F=+�� .+2*� F+2� I� O+2U*� B+2� W� U� [���ұ   (   6    /  +  ,  0  1 # 2 0 4 8 5 H 6 T 7 Z 6 ] 4 c :)      2 1*"    d+,     d   -    � 2  .  � 0/        a b '   �     .<*� �� "*� 2� _� c� *� 2� _����۲ c�   (       =  >  ? $ = * C)      (*"    .+,  -   
 � !�  01 '   6     � Y*� � i�   (       G)       +,    n o '   �     "*� lL*� pM>,�� +,2� tW����+�   (       K  L 
 N  O  N   R)   *   *"    "+,    23  
 4 -    �  u�    � � '   /     *� �   (       W)       +,    � � '   P     *� 6� **� z� 6*� 6�   (       [  ^  a)       +,  -      | } '       e*� ~M� �Y� �N�� �:6,�� C-,2� �� �W,�d� 
-� �W� ,�d� -�� �� �W� 	����-� ��   (   2    e  f  g  i   j , l 5 m < p K q W s Z i ` w)   >   G*"    e+,     e5"   `6    X78   O9 9 -    �   . � �  "� /   5    � � '   k     '*� ~�� �� ��*� :� **�� z� :*� :�   (       { 	 |  ~   " �)       '+,  -      � � '   �     C*� �� 9� �Y+�� �M>+�� +2� �:,� �W����*� +� *,� �,�*� ��   (   * 
   �  �  �  � " � ) � / � 7 � < � > �)   4  " : �   *"   ,; �    C+,     C<  =      ,;& -    �  �� � /   <  %   >  r s '  L    �*� L+���*+� �M,� �� � ��,� �� �N� �Y-� ÷ �:6,� ̢ $� �Y,� �� �� ÷ ɹ � W���ٻ �Y� � � �:6-��X-2� � �D-2� ڙ �7-2:� �Y� �:� � �� � �� � �� �� �:		� �	� �� �Y� �� ÷ �:
:6,� ̢ t,� �� �:6�� X� � � �:2� � 2� �:� '�� 
� �Y2� �� ÷ ɹ � W��������� �:6�� E
2� � � � -2�� � *+2���	:�W����� �W����� ̽ ����� ��   (   � .   �  � 
 �  �  �  � % � 2 � > � Y � _ � o � y � � � � � � � � � � � � � � � � � � � � � � � � � � � � �! �7 �F �` �f �l �s �~ �� �� �� �� �� �� �� �� �� �� �)   �  5 **" ! ?? 9 7 )@ 9 	 ]A"  `: �  � zB" � CD v JB"  �.EF  �%GH  � � � 9 	 � �IJ 
 � �K 9 s U:L  r\*"  �M �  %�N �  2�OJ  opP �   �+,   �Q  =   *  � �IR 
 �M&  2�OS  opPT -   � � . ��  � �� )�  �!� F � � ��  � ��  �D ��  �G �� *� � � 	U� �   . � � � �  � �   .    '  _  
   �+��:6+�� l*+� �� �� �:6�� L-2� �� 72� �:6		�� "	2�,�� 	2S�	��܄��������Y��   (   6    �  �  �   � + � : � D � O � ^ � h � n � t � z �)   f 
 G 'A" 	 D *VL  # QB"    T: �  
 p*"    �+,     �Q     �W 9    � � 9   };L -   ! � 
U�  �� #U � � � /   Q  W   �  XY '   /     *� '�   (       %)       Z,  [\ '   E     *+,� $�   (       %)        Z,     ] 9    ^ 9 _Y '   /     *� !�   (       %)       Z,  `Y '   /     *� �   (       %)       Z,  a\ '   E     *+,� �   (       %)        Z,     ] 9    ^ 9 bc '   :     *+� �   (       %)       Z,     ]3 de '   E     *+,� �   (       %)        Z,     ] �    ^ � f\ '   E     *+,� �   (       %)        Z,     ] 9    ^ 9 gh '   /     *� �   (       %)       Z,  ij '   ;     *+Z� �   (       %)       Z,     ]  kY '   /     *� �   (       %)       Z,  lm '   P     *+,-� �   (       %)   *    Z,     ] 9    ^n    on  p   qr   2  � Ps	 = t  � uu  Pv	 w x z 