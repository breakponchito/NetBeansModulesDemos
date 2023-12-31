����   4 �
      -org/openide/util/actions/CallableSystemAction <init> ()V  )org/openide/actions/WorkspaceSwitchAction
 
     org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle;  WorkspacesItems
      java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;  org/openide/util/HelpCtx
     (Ljava/lang/Class;)V  org/openide/awt/JMenuPlus
  
    ! " getName ()Ljava/lang/String;
 $ % & ' ( org/openide/awt/Mnemonics setLocalizedText 1(Ljavax/swing/AbstractButton;Ljava/lang/String;)V * javax/swing/JMenu
 ) , - . setHorizontalTextPosition (I)V
 ) 0 1 . setHorizontalAlignment
  3 4 5 getIcon ()Ljavax/swing/Icon;
 ) 7 8 9 setIcon (Ljavax/swing/Icon;)V
 ;   < java/lang/Class
  > ? @ setHelpIDString -(Ljavax/swing/JComponent;Ljava/lang/String;)V
 B C D E F !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager; H java/util/Hashtable
 G J  . L org/openide/windows/Workspace
 B N O P getCurrentWorkspace !()Lorg/openide/windows/Workspace;
 B R S T getWorkspaces "()[Lorg/openide/windows/Workspace;
  V W X attachWorkspace �(Lorg/openide/windows/Workspace;[Lorg/openide/windows/Workspace;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljavax/swing/JMenu;)V
 G Z [ \ get &(Ljava/lang/Object;)Ljava/lang/Object; ^  javax/swing/JRadioButtonMenuItem
 ] ` a b setSelected (Z)V
  d e f getWorkspacePoolListener �(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;[Lorg/openide/windows/Workspace;Ljavax/swing/JMenu;)Ljava/beans/PropertyChangeListener;
 B h i j addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V	  l m n $assertionsDisabled Z p java/lang/AssertionError
 o  s +org/openide/actions/WorkspaceSwitchAction$1
 r u  v x(Lorg/openide/actions/WorkspaceSwitchAction;Ljava/util/Hashtable;Ljava/util/Hashtable;[Lorg/openide/windows/Workspace;)V x +org/openide/actions/WorkspaceSwitchAction$2
 w z  { �(Lorg/openide/actions/WorkspaceSwitchAction;[Lorg/openide/windows/Workspace;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljavax/swing/JMenu;)V
 ]  K ~  " getDisplayName
  � � � createActionListener �(Ljavax/swing/JRadioButtonMenuItem;[Lorg/openide/windows/Workspace;Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/awt/event/ActionListener;
 ] � � � addActionListener "(Ljava/awt/event/ActionListener;)V
 G � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  � � � createNameListener G(Ljavax/swing/JRadioButtonMenuItem;)Ljava/beans/PropertyChangeListener; K h
 ) � � � add 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
 G � � \ remove
 ) � � � (Ljavax/swing/JMenuItem;)V � +org/openide/actions/WorkspaceSwitchAction$3
 � �  � P(Lorg/openide/actions/WorkspaceSwitchAction;Ljavax/swing/JRadioButtonMenuItem;)V
 ; � � � desiredAssertionStatus ()Z Code LineNumberTable LocalVariableTable this +Lorg/openide/actions/WorkspaceSwitchAction; 
getHelpCtx ()Lorg/openide/util/HelpCtx; getMenuPresenter ()Ljavax/swing/JMenuItem; i I menu Ljavax/swing/JMenu; pool #Lorg/openide/windows/WindowManager; menu2Workspace Ljava/util/Hashtable; workspace2Menu workspace2Listener currentDeskRef  [Lorg/openide/windows/Workspace; 
workspaces curItem "Ljavax/swing/JRadioButtonMenuItem; LocalVariableTypeTable ULjava/util/Hashtable<Ljava/awt/event/ActionListener;Lorg/openide/windows/Workspace;>; XLjava/util/Hashtable<Lorg/openide/windows/Workspace;Ljavax/swing/JRadioButtonMenuItem;>; ULjava/util/Hashtable<Lorg/openide/windows/Workspace;Ljava/awt/event/ActionListener;>; StackMapTable � performAction menuItem MethodParameters pcl1 #Ljava/beans/PropertyChangeListener; 	workspace Lorg/openide/windows/Workspace; listener Ljava/awt/event/ActionListener; detachWorkspace t(Lorg/openide/windows/Workspace;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/util/Hashtable;Ljavax/swing/JMenu;)V item <clinit> 
SourceFile WorkspaceSwitchAction.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked deprecation InnerClasses !      m n        �   /     *� �    �       - �        � �    ! "  �   5     � 	� �    �       / �        � �    � �  �   4     
� Y� �    �       3 �       
 � �    � �  �  �  	   �� Y� L+*� � #+� ++� /+*� 2� 6+� :� =� AM� GY
� IN� GY
� I:� GY
� I:� K:,� MS,� Q:6�� *2-+� U����2� Y� ]:� 	� _,*-+� c� g+�    �   ^    :  ;  <  =  > " ? + A / C 9 F D I O L U M ] P c R n S  R � W � Y � Z � ^ � _ � ^ � b �   f 
 f  � �    � � �    � � �  / � � �  9 w � �  D l � �  O a � �  U [ � �  c M � �  �  � �  �      9 w � �  D l � �  O a � �  �   + � f 	  ) B G G G � �  � �  ]  �   �   F     � k� � oY� q��    �   
    g  h �        � �   �      � �  �   _     � rY*-,� t�    �       o �   4     � �      � �     � �     � �     � �  �    �  �  �  �   e f  �   ~     � wY*+,-� y:�    �   
    �  � �   H     � �      � �     � �     � �     � �     � �    � �  �    �  �  �  �  �    W X  �    	   `� ]Y� |:+� } � #� :� =*,-� �:� �+� �W+� �W-+� �W+*� �� � � �W�    �   .    � 	 �  �  � * � 1 � : � C � K � W � _ � �   \ 	   ` � �     ` � �    ` � �    ` � �    ` � �    ` � �    ` � �  	 W � �  * 6 � �  �    �   �   �   �   �   �     � �  �   �     *,+� Y� ]:,+� �W-+� Y� �W+� �W� ��    �       � 
 �  �  � " � ) � �   H    * � �     * � �    * � �    * � �    * � �    * � �  
   � �  �    �   �   �   �   �    � �  �   >     
� �Y*+� ��    �       � �       
 � �     
 � �  �    �   �   �   4      � �� � � k�    �       + �    @  �    � �     �     �   �     �  �[ s �s � �     r       w       �      