����   4�	      ,org/openide/explorer/view/PropertiesRowModel pcl #Ljava/beans/PropertyChangeListener;	   	 
 outline $Lorg/netbeans/swing/outline/Outline;
     columnForProperty (Ljava/lang/String;)I
     
rowForNode (Lorg/openide/nodes/Node;)I
      java/lang/Object <init> ()V  org/openide/nodes/Node$Property	     prop "[Lorg/openide/nodes/Node$Property;   java/util/WeakHashMap
  	  # $ % nodesListenersCache Ljava/util/WeakHashMap; ' java/lang/String	  ) * + names [Ljava/lang/String;	  - . + descs 0 .org/openide/explorer/view/PropertiesRowModel$1
 / 2  3 1(Lorg/openide/explorer/view/PropertiesRowModel;)V 5 Borg/openide/explorer/view/PropertiesRowModel$OutlineTooltipUpdater
 4 7  8 3(Lorg/openide/explorer/view/PropertiesRowModel$1;)V	  : ; < otu DLorg/openide/explorer/view/PropertiesRowModel$OutlineTooltipUpdater; > .org/openide/explorer/view/PropertiesRowModel$2
 = 2	  A B C nl  Lorg/openide/nodes/NodeListener;
 E F G H I "org/netbeans/swing/outline/Outline removeMouseListener !(Ljava/awt/event/MouseListener;)V
 E K L M removeMouseMotionListener '(Ljava/awt/event/MouseMotionListener;)V
 E O P I addMouseListener
 E R S M addMouseMotionListener
 U V W X Y $org/openide/explorer/view/Visualizer findVisualizer 5(Lorg/openide/nodes/Node;)Ljavax/swing/tree/TreeNode; [ java/util/ArrayList
 Z 
 Z ^ _ ` add (Ljava/lang/Object;)Z b c d e f javax/swing/tree/TreeNode 	getParent ()Ljavax/swing/tree/TreeNode;
 h i j k l java/util/Collections reverse (Ljava/util/List;)V n javax/swing/tree/TreePath
 Z p q r toArray ()[Ljava/lang/Object;
 m t  u ([Ljava/lang/Object;)V
 E w x y getLayoutCache (()Ljavax/swing/tree/AbstractLayoutCache;
 { | } ~  $javax/swing/tree/AbstractLayoutCache getRowForPath (Ljavax/swing/tree/TreePath;)I	  � � � $assertionsDisabled Z � java/lang/AssertionError � java/lang/StringBuilder
 � 
 � � � � append (I)Ljava/lang/StringBuilder; �  must be bellow 
 � � � � -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 � �  � (Ljava/lang/Object;)V
  � � � getDisplayName � javax/swing/JLabel
 � 
 � � � � � org/openide/awt/Mnemonics setLocalizedText )(Ljavax/swing/JLabel;Ljava/lang/String;)V
 � � � � getText
  � � � getShortDescription
  � � � setShortDescription (Ljava/lang/String;)V
 U � � � findNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node; � java/lang/IllegalStateException � )TreeNode must be VisualizerNode but was: 
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � 
 of class 
  � � � getClass ()Ljava/lang/Class;
 � � � � � java/lang/Class getName
 � �  �
  � � � get &(Ljava/lang/Object;)Ljava/lang/Object; � !java/beans/PropertyChangeListener
 � � � � � org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
  � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 � � � � � org/openide/nodes/Node addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V � org/openide/nodes/NodeListener
 � � � � create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;
 � � � � addNodeListener #(Lorg/openide/nodes/NodeListener;)V
  � � � getPropertyFor \(Lorg/openide/nodes/Node;Lorg/openide/nodes/Node$Property;)Lorg/openide/nodes/Node$Property;
  � � � canWrite ()Z
 � � � � getPropertySets '()[Lorg/openide/nodes/Node$PropertySet;
 � � � � � "org/openide/nodes/Node$PropertySet getProperties $()[Lorg/openide/nodes/Node$Property;
  � � ` equals	  � � � ignoreSetValue
   � setValue  java/lang/IllegalAccessException
  processThrowable <(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V	 "java/lang/IllegalArgumentException +java/lang/reflect/InvocationTargetException

 getTargetException ()Ljava/lang/Throwable; java/lang/ThreadDeath
 org/openide/util/Exceptions findLocalizedMessage )(Ljava/lang/Throwable;)Ljava/lang/String;
 � java/lang/Throwable getLocalizedMessage
 � 
getMessage! FMT_ErrorSettingValue
#$%& org/openide/util/NbBundle [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
()* attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;, java/lang/NumberFormatException. FMT_BAD_NUMBER_FORMAT
#01 I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;3 $org/openide/NotifyDescriptor$Message5 org/openide/NotifyDescriptor
27 8 (Ljava/lang/Object;I)V
:;<=> org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;
:@AB notifyLater !(Lorg/openide/NotifyDescriptor;)V
 DEF getValue ()Ljava/lang/Object;H java/lang/Exception
JKL=M org/openide/ErrorManager ()Lorg/openide/ErrorManager;
JOPQ getInstance .(Ljava/lang/String;)Lorg/openide/ErrorManager;
JSTU notify (ILjava/lang/Throwable;)V
  �
 & �
 YEZ &(Ljava/lang/String;)Ljava/lang/Object;
 \] � getValueType_ java/lang/Boolean	^abc TYPE Ljava/lang/Class;	^efg FALSE Ljava/lang/Boolean;
^ �	^jkg TRUE
 �mn � desiredAssertionStatusp #org/netbeans/swing/outline/RowModel 	Signature TLjava/util/WeakHashMap<Lorg/openide/nodes/Node;Ljava/beans/PropertyChangeListener;>; Code LineNumberTable LocalVariableTable this .Lorg/openide/explorer/view/PropertiesRowModel; 
setOutline '(Lorg/netbeans/swing/outline/Outline;)V StackMapTable MethodParameters al Ljava/util/ArrayList; tp Ljavax/swing/tree/TreePath; row I n Lorg/openide/nodes/Node; tn Ljavax/swing/tree/TreeNode; LocalVariableTypeTable 2Ljava/util/ArrayList<Ljavax/swing/tree/TreeNode;>; getColumnClass (I)Ljava/lang/Class; column #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getColumnCount ()I getColumnName (I)Ljava/lang/String; Ljava/lang/String; l Ljavax/swing/JLabel; (ILjava/lang/String;)V descr getRawColumnName getValueFor '(Ljava/lang/Object;I)Ljava/lang/Object; p node Ljava/lang/Object; 
cacheEntry theRealProperty !Lorg/openide/nodes/Node$Property; isCellEditable (Ljava/lang/Object;I)Z j props i propSets %[Lorg/openide/nodes/Node$PropertySet;�  setIgnoreSetValue (Z)V setValueFor ((Ljava/lang/Object;ILjava/lang/Object;)V ex "Ljava/lang/IllegalAccessException; $Ljava/lang/IllegalArgumentException; -Ljava/lang/reflect/InvocationTargetException; value msg 	throwable Ljava/lang/Throwable; title newValue locMsg d Lorg/openide/NotifyDescriptor; setProperties %([Lorg/openide/nodes/Node$Property;)V newProperties getValueFromProperty x Ljava/lang/Exception; property propName getPropertyValue '(Ljava/lang/String;I)Ljava/lang/Object; toggleBooleanProperty $(Lorg/openide/nodes/Node$Property;)V val e1 6Lorg/openide/nodes/Node$Property<Ljava/lang/Boolean;>; 9(Lorg/openide/nodes/Node$Property<Ljava/lang/Boolean;>;)V 
access$000 I(Lorg/openide/explorer/view/PropertiesRowModel;Lorg/openide/nodes/Node;)I x0 x1 
access$100 C(Lorg/openide/explorer/view/PropertiesRowModel;Ljava/lang/String;)I 
access$200 T(Lorg/openide/explorer/view/PropertiesRowModel;)Lorg/netbeans/swing/outline/Outline; 
access$400 S(Lorg/openide/explorer/view/PropertiesRowModel;)Ljava/beans/PropertyChangeListener; <clinit> 
SourceFile PropertiesRowModel.java InnerClasses Property OutlineTooltipUpdater PropertySet Message     o 
       	 
    $ % q   r  * +    . +          ; <     B C    � �   � �       s   �     T*� *� � *� Y� !� "**� �� &� (**� �� &� ,*� /Y*� 1� *� 4Y� 6� 9*� =Y*� ?� @�   t   & 	   �  :  <  = # > / B ; _ G a S �u       Tvw   xy s   �     3*� � *� *� 9� D*� *� 9� J*+� +*� 9� N+*� 9� Q�   t       �  �  �  � " � * � 2 �u       3vw     3 	 
 z    {    	      s   �     I+� TM,� A� ZY� \N,� -,� ]W,� a M���-� g� mY-� o� s:*� � v� z6��   t   .    �  � 	 �  �  �  � % � ) � 6 � D � G �u   >   6|}  6 ~  D ��    Ivw     I��   D�� �      6|� z    �  b Z� !{   �   �� s   7     �   t       �u       vw     �� {   �  �    �   �� s   0     *� ��   t       �u       vw  �    �   �� s   �     c� �� /*� �� &� �Y� �Y� �� ��� �*� �� �� �� ��*� (2� $*� 2� �M� �Y� �N-,� �*� (-� �S*� (2�   t       � 2 � ; � E � M � R � \ �u   *  E ��  M ��    cvw     c�� z    2){   �  �    �    �� s   �     c� �� /*� �� &� �Y� �Y� �� ��� �*� �� �� �� ��*� ,2� $*� 2� �M� �Y� �N-,� �*� ,-� �S*� ,2�   t       � 2 � ; � E � M � R � \ �u   *  E ��  M ��    cvw     c�� z    2){   �    �� s   �     D� �� /*� �� &� �Y� �Y� �� ��� �*� �� �� �� ��*� 2,� �*� ,S�   t       � 2 � < � C �u        Dvw     D��    D�� z    2{   	�  �   �� s   >     
*� 2� ��   t       u       
vw     
�� {   �   �� s  5     �+� �N-� -� �Y� �Y� ��� �+� ��� �+� �� �� �� �� ſ*� "-� �� �:� 3*� -� �:*� "-� �W-� ��*� @-� �� �:-� �*-*� 2� �:�   t   2     	 3	 @
 E O Z ` o u �u   R  O &�   o � C    �vw     ���    ���   ���  @ E�   � �� z    � 3 �� A �{   	�  �  �    �   �� s   �     M+� �N-� -� �Y� �Y� ��� �+� ��� �+� �� �� �� �� ſ*-*� 2� �:� 	� ��   t        	 3 @ E Ku   4    Mvw     M��    M��   H��  @ �� z    � 3 ��  {   	�  �  �    �    � � s   �     C+� �N6-�� 5-2� �:6�� ,2� �� 	2���������   t   & 	  $ & ' ) #* /+ 5) ;& A0u   H    ��   #�    9��    Cvw     C��    C �   >�� z    � �� �� � {   	�       �� s   >     *� ��   t   
   6 7u       vw      � � {    �   �� s  �     �*� �� �+� �:� -� �Y� �Y� ��� �+� ��� �+� �� �� �� �� ſ**� 2� �:-� �� 3:� �-�� #:� �-�� :�� �-��  K Q T K Q d K Q t
 t   F   ? @ C D E =G KI QP TJ VK aP dL fM qP tN vO �Qu   \ 	 V ��  f ��  v ��    �vw     ���    ���    ���   w��  K :�� z   , � 4 ��      �  OO
{   �  �  �  �    �   
 s  +     w*�� *��*�N-� $*�*��  ,+�":*�'W� *�+� *-,�/�'W*�:�  ,+�":�2Y�6:�9�?�   t   >   X Y \ ^ _  a ,c 3d =f Ki Qj Vk bo np vqu   H  , ��    w��     w��    w��   f��  Q &��  n 	�� z    � ) &�  &{   �  �  �   �� s   ^     *+� **� �� &� (**� �� &� ,�   t      t u v wu       vw     �  {   �   	� � s   �     $*� � *� L+�C�M�I� ��N,�R�    G t   & 	  � � � � � � � � "�u       ��    �    $��  z    �     G� {   �      s   �     %=*� �� *� 2�V+�W� ������   t      � � � � #�u       !��    %vw     %�� z   
 � � {   �    �� s   I     *� 2+�X�   t      �u        vw     ��    �� {   	�  �    � � s   /     *� �   t      �u       vw   	�� s   �     M*�[^� *�[�`� ;*� � �*�C�^L�d+�h� *�i� �� 
*�d� �� L�I+�R�   ? BG t   .   � � � � $� .� 8� ?� B� C� L�u      $ �g  C 	��    M��  �       M��  z    � ^� BG	{   �  q   ��� s   :     *+� �   t       8u       �w     �� �� s   :     *+� �   t       8u       �w     �� �� s   /     *� �   t       8u       �w  �� s   /     *� �   t       8u       �w   �  s   4      �l� � � ��   t       8z    @ �   ��   2   ��	 /       4 � 
 =       � ��	24� 	