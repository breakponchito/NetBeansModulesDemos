����   4X
      java/lang/Object <init> ()V	  	 
   7org/openide/explorer/propertysheet/PropertySetModelImpl expanded [Z  java/util/ArrayList
  	     fds Ljava/util/List;	     
comparator Ljava/util/Comparator;	     sets %[Lorg/openide/nodes/Node$PropertySet;	     setCount I	  ! " # event :Lorg/openide/explorer/propertysheet/PropertySetModelEvent; % "org/openide/nodes/Node$PropertySet
  ' ( ) setPropertySets (([Lorg/openide/nodes/Node$PropertySet;)V + , - . / java/util/List size ()I + 1 2 3 get (I)Ljava/lang/Object; 5 java/beans/FeatureDescriptor + 7 8 9 indexOf (Ljava/lang/Object;)I
  ; < = getFeatureDescriptor !(I)Ljava/beans/FeatureDescriptor; ? org/openide/nodes/Node$Property
  A B C firePendingChange (Z)V + E F  clear
  H I  init
  K L C 
fireChange
 N O P Q R javax/swing/SwingUtilities isEventDispatchThread ()Z
  T U ) 
resetArray
 N W X Y invokeLater (Ljava/lang/Runnable;)V
  [ \  run
  ^ _  initExpandable
  a b  	initPlain
 $ d e f getProperties $()[Lorg/openide/nodes/Node$Property; h java/lang/NullPointerException j @Null is not a legal return value for PropertySet.getProperties()
 g l  m (Ljava/lang/String;)V
 o p q r s java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V
 u v w x y java/util/Arrays sort ,([Ljava/lang/Object;Ljava/util/Comparator;)V
  { | } propsToList 4([Lorg/openide/nodes/Node$Property;)Ljava/util/List; +  � � addAll (Ljava/util/Collection;)Z	 � � � � � ,org/openide/explorer/propertysheet/PropUtils hideSingleExpansion Z � CTL_PropertiesNoMnemonic
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 $ � � � getDisplayName ()Ljava/lang/String;
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z + � � � add	 � � � � � 0org/openide/explorer/propertysheet/PropertySheet 	forceTabs + � � � remove	  � � � filterHiddenProperties
 > � � R isHidden
 u � � � asList %([Ljava/lang/Object;)Ljava/util/List;	  � � � 
closedSets Ljava/util/Set; � � � � � java/util/Set contains
  � � � 	lookupSet !(Ljava/beans/FeatureDescriptor;)I � "java/lang/IllegalArgumentException � Cannot expand a property.
 � l � 8org/openide/explorer/propertysheet/PropertySetModelEvent
  � B � (IIIZ)V
 4 � � � � � + � � � (ILjava/util/Collection;)Z + � � 3
  � L � (III)V
 � � � � putSavedClosedSetNames (Ljava/util/Set;)V	  � �  listenerList
 � �  � (Ljava/lang/Object;)V + � � � iterator ()Ljava/util/Iterator;
  � � � getEvent <()Lorg/openide/explorer/propertysheet/PropertySetModelEvent;	 � � �  type	 � � �  start	 � � �  end	 � � � � 
reordering � � � � R java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; � ;org/openide/explorer/propertysheet/PropertySetModelListener � � � � pendingChange =(Lorg/openide/explorer/propertysheet/PropertySetModelEvent;)V � �  � wholesaleChange � � boundedChange  netbeans.ps.showHiddenProperties
	
 java/lang/Boolean 
getBoolean (Ljava/lang/String;)Z java/util/HashSet
  (I)V
 � getSavedClosedSetNames ()[Ljava/lang/String; �  3org/openide/explorer/propertysheet/PropertySetModel java/lang/Runnable 	Signature #Ljava/util/Set<Ljava/lang/String;>; 0Ljava/util/List<Ljava/beans/FeatureDescriptor;>; 9Ljava/util/Comparator<Lorg/openide/nodes/Node$Property;>; OLjava/util/List<Lorg/openide/explorer/propertysheet/PropertySetModelListener;>; Code LineNumberTable LocalVariableTable this 9Lorg/openide/explorer/propertysheet/PropertySetModelImpl; ps StackMapTable  MethodParameters getCount index fd Ljava/beans/FeatureDescriptor; 
isProperty (I)Z setComparator (Ljava/util/Comparator;)V c LocalVariableTypeTable <(Ljava/util/Comparator<Lorg/openide/nodes/Node$Property;>;)V p "[Lorg/openide/nodes/Node$Property; i pcount props l4 result 3Ljava/util/List<Lorg/openide/nodes/Node$Property;>; W([Lorg/openide/nodes/Node$Property;)Ljava/util/List<Lorg/openide/nodes/Node$Property;>;  
isExpanded !(Ljava/beans/FeatureDescriptor;)Z set toggleExpanded setIndex 	eventType len 1Ljava/util/List<+Ljava/beans/FeatureDescriptor;>; addPropertySetModelListener @(Lorg/openide/explorer/propertysheet/PropertySetModelListener;)V listener =Lorg/openide/explorer/propertysheet/PropertySetModelListener; removePropertySetModelListener curr Ljava/util/Iterator; getComparator ()Ljava/util/Comparator; getSetCount <clinit> 
SourceFile PropertySetModelImpl.java InnerClassesU org/openide/nodes/Node PropertySet Property      	 
 � �    � �                        � �           �     � " #          o     )*� *� *� Y� � *� *� *� *�  �       "    K  A 	 B  C  E  F # I ( L!       )"#     )    �     7*� *� *� Y� � *� *� *� *�  +� � $L*+� &�       .    N  A 	 B  C  E  F # I ( O , P 1 S 6 T!       7"#     7$  %    � 1  &  '   $   ( /    4     
*� � * �           W!       
"#    < =    h     "� *� � * � �*� � 0 � 4�           [  \  _!       ""#     ")  %    '   )    8 �    ?     *� +� 6 �           c!       "#     *+ '   *   ,-    =     	*� :� >�           g!       	"#     	)  '   )   ./    �     %+*� � *� @*+� *� � D *� G*� J�           k  l  m  n  o  p $ r!       %"#     %0  1       %0 %    $'   0     2  ( )    �     W*+� � +�� +� � $L*� � $� M� *� $� *+� S*� � D *� V�*� @*+� *+� S*� G*� Z�       >    u  w  x  { $ } , ~ 1  : � > � ? � D � I � N � R � V �!       W"#     W   %    I �   &  ''        \     4     *� J�       
    �  �!       "#    I     `     *� � D *� � 
*� ]� *� `�           � 	 �  �  �  �!       "#  %      b    a     �*� � �<=*� �� &*� 2� cN-� � gYi� k�-�`<����� >M>6*� �� &*� 2� c:,�� n�`>����,*� � t*� *,� z� ~ W�       N    �  �  � 
 �  �  � # � - � 2 � 8 � = � ? � L � X � c � i � o � w � � �!   R   34   ,5   X 34  B -5     �"#   
 }6   = J74  ? H8  %    � �  9� 
� 	9� ,  _    {     �*� � *� �� �=*� �� �� �� >*� �� "*� �� B�� �*� 2� �� �� ,*� *� 2� � W� � �� *� *� 2� � W*� 3� B*� 2� cL+� � gYi� k�+�� *� *+� z� ~ W� *� *� 2� � W���U�       R    �  �  �  � ! � 7 � @ � C � I � \ � b � r � { � � � � � � � � � � � � � � �!      � 534   �5     �"#  %   * 
 �  6�    9  �      �   | }    �     9� �� /� Y� M>+�� +2� �� ,+2� � W���� +� �M,�       "    �  �  �  �  � ) � 2 � 7 �!   4   5    $:     9"#     934  7 :  1      $:;  7 :; %    �  +� � �  +'   3     <  U )    �     E+�=*� � *� �� 
*�� >+�� %*� � �+2� �� � � � T���۱           �  �  �  � " � > � D �!   *   (5     E"#     E     B .  %   5 � � �   & =�    & =� '        � �    l     *� � *� � �M,+� 6 ��             !       8     "#     *+ %    '   *   >?    j     *+� �=� �*� 3�             !        "#     @+   )  %    � '   @   A   �     �*� :M,� >� � �Y�� ��*,� �>*� 3� � 6**� 2� c� z:� * 6*� *� 3� � T*``� �*� 3� � �,� ƹ � W� � �,� ƹ � W*� 3� *� `� � W� !`6� *� � � W�����*``� β �� ѱ       R        - < E! Y# g% p& �( �+ �, �. �/ �. �3 �4 �5!   R  � 5     �"#     �)    �*+   �B   - �C   < �7   E �D  1     < �7E %   I 
�  4� @� +   4 + =�     4 + ='� � '   )   FG    g     *� �� *� Y� � �*� �+� � W�          8 9 < =!       "#     HI %    '   H   JG    X     *� �� *� �+� � W�          @ A C!       "#     HI %    '   H    � �    S     *�  � *� �Y*� ص  *�  �          H I L!       "#  %      B �        a*� �� �*� չ � :*� �� �*�  � �*�  � �*�  � �*�  � �� � � � � � �:*�  � � ��߱       2   R S V X Y #Z +[ 3\ <^ F_ R` `b!   H  R KI    a"#     a �     a �     a �     a � �   N5L %   
 � 3 �#'    �   �   �   �    L C    �     C*� �� �*� չ � M*� �� �*�  � �,� � � ,� � � �N-*�  � � ���       & 	  g h k m n "p +q 5r Bt!   *  5 KI    C"#     C � �   15L %   
 �  �'    �    B C    �     C*� �� �*� չ � M*� �� �*�  � �,� � � ,� � � �N-*�  � � ���       & 	  y z }  � "� +� 5� B�!   *  5 KI    C"#     C � �   15L %   
 �  �'    �    L �    �     X*� �� �*� �� �*�  � �*�  � �*�  � �*� չ � :� � � � � � �:*�  � ��߱       .   � � � � �  � (� 3� =� I� W�!   >  I KI    X"#     X �     X �     X �   3 %5L %   
 � * �#'    �   �   �   MN    /     *� �          �!       "#   O /    /     *� �          �!       "#   P     [      ,�� � � ��Y�� �� ��� �� W�           6  ;  > + ?%    @ Q   RS     $TV	 >TW	