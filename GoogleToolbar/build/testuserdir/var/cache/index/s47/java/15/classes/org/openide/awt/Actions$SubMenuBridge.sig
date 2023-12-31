����   4 �
      "org/openide/awt/Actions$MenuBridge <init> /(Ljavax/swing/JMenuItem;Ljavax/swing/Action;Z)V	  	 
   %org/openide/awt/Actions$SubMenuBridge single Ljavax/swing/JMenuItem;	     multi Ljavax/swing/JMenu;  javax/swing/Action  Name     getValue &(Ljava/lang/String;)Ljava/lang/Object;  java/lang/String
       org/openide/awt/Actions setMenuText 2(Ljavax/swing/AbstractButton;Ljava/lang/String;Z)V
  " # $ prepareMargins .(Ljavax/swing/JMenuItem;Ljavax/swing/Action;)V & java/util/ArrayList
 % (  ) ()V	  + , - currentOnes Ljava/util/List;	  / 0 1 model &Lorg/openide/awt/Actions$SubMenuModel;
 3 4 5 6 7 java/awt/EventQueue isDispatchThread ()Z 9 java/lang/IllegalStateException ; %This must happen in the event thread!
 8 =  > (Ljava/lang/String;)V
 8 @ A ) printStackTrace
  C D > updateState
  F G H synchMenuPresenters 4([Ljavax/swing/JComponent;)[Ljavax/swing/JComponent; J K L M ) java/util/List clear O P Q R S $org/openide/awt/Actions$SubMenuModel getCount ()I
  C J V W X add (Ljava/lang/Object;)Z
 Z [ \ ] ^ javax/swing/JMenuItem 
setEnabled (Z)V	  ` a b action Ljavax/swing/Action;  d e 7 	isEnabled O g h i 
getHelpCtx (I)Lorg/openide/util/HelpCtx;
  k l m 
access$000 0(Ljavax/swing/Action;)Lorg/openide/util/HelpCtx;
  o p q associateHelp 5(Ljavax/swing/JComponent;Lorg/openide/util/HelpCtx;)V
 s t u v ) javax/swing/JMenu 	removeAll
 x y z { | org/openide/awt/Mnemonics setLocalizedText 1(Ljavax/swing/AbstractButton;Ljava/lang/String;)V O ~  � getLabel (I)Ljava/lang/String;
 s � � S getItemCount
 s � � ) addSeparator
 Z (
  � � $ 	updateKey � *org/openide/awt/Actions$ISubActionListener
 � �  � *(ILorg/openide/awt/Actions$SubMenuModel;)V
 Z � � � addActionListener "(Ljava/awt/event/ActionListener;)V
 s � W � 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
 s [ J � � S size J � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Ljavax/swing/JComponent;	 � � � � � org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx;
 � � � X equals
 � � � � 	getHelpID ()Ljava/lang/String;
 � � � � setHelpIDString -(Ljavax/swing/JComponent;Ljava/lang/String;)V �  javax/swing/event/ChangeListener � "org/openide/awt/DynamicMenuContent 	Signature )Ljava/util/List<Ljavax/swing/JMenuItem;>; h(Ljavax/swing/JMenuItem;Ljavax/swing/JMenu;Ljavax/swing/Action;Lorg/openide/awt/Actions$SubMenuModel;Z)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/awt/Actions$SubMenuBridge; one more popup Z MethodParameters stateChanged "(Ljavax/swing/event/ChangeEvent;)V ev Ljavax/swing/event/ChangeEvent; StackMapTable changedProperty Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getMenuPresenters ()[Ljavax/swing/JComponent; help item label i I count items cnt comp Ljavax/swing/JComponent; 
SourceFile Actions.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses 
MenuBridge SubMenuBridge SubMenuModel ISubActionListener 0    � �   0 1    , -  �    �              �  �   �     B*+-� *+� *,� *� -�  � � +-� !,-� !*� %Y� '� **� .�    �   & 	  B C D E &F +G 0H ;I AJ �   >    B � �     B �     B �     B a b    B 0 1    B � �  �    �   �   a   0   �    � �  �   X     � 2� � 8Y:� <� ?�    �      P Q U �        � �      � �  �     �    �    D >  �   >     *+� B�    �   
   Y [ �        � �      � �  �    �   �     �    � �  �   0     *� E�    �      ` �        � �    G H  �  ?  	  �*� *� I *� .� N =� !*� T*� **� � U W*� � Y�>� K*� T*� **� � U W*� *� _� c � Y*� .� f N**� -� *� _� j� -� n� �*� **� � U W*� � r*� *� _�  � � w>*� .� N 66� �*� .� } :� *� � �� � >� n� *� � �>� ZY� �:� w� *� _� �� �Y*� .� �� �*� .� f :*� *� _� j� � n*� � �W**� *� _� j� n���W*� � �*� **� *� � � Z� � � ��    �   � %  d 	e g h i *k 5l :m ?n Mo ]q hr s �t �u �w �y �z �| �} �� �� �� �� �� �� ���
��%�2�I�S�b|h�p� �   f 
 h  � �  � U �  2 ! � �  � � � �  � � � �  � � � �  � � � �   � � �    � � �  v � �  �   � � 5� E   � �   Z�     � �   Z �� � 9� & @�  Z� 0 	  �  Z �   Z�  	  �  Z �   Z �� � �  �    �    p q  �   z     &,� ,� �� �� ,� �� +,� �� �� +� ��    �      � �  � %� �        & � �     & � �    & � �  �      �   	 �   �    �    � �     �     �   �   "    � 
   �  O  �	 �  � 
