����   4 a
      3org/netbeans/swing/tabcontrol/plaf/TabControlButton <init> 1(ILorg/netbeans/swing/tabcontrol/TabDisplayer;Z)V
  	 
   javax/swing/ToolTipManager sharedInstance ()Ljavax/swing/ToolTipManager;
     registerComponent (Ljavax/swing/JComponent;)V  *org/netbeans/swing/tabcontrol/TabDisplayer  maximize
      Porg/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory$MaximizeRestoreButton getTabDisplayer .()Lorg/netbeans/swing/tabcontrol/TabDisplayer;
       :org/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory 
access$000 B(Lorg/netbeans/swing/tabcontrol/TabDisplayer;)Ljava/awt/Component;
  " # $ getContainerWinsysInfo >()Lorg/netbeans/swing/tabcontrol/WinsysInfoForTabbedContainer;
 & ' ( ) * :org/netbeans/swing/tabcontrol/WinsysInfoForTabbedContainer inMaximizedMode (Ljava/awt/Component;)Z
  , - . getButtonId ()I 0 )org/netbeans/swing/tabcontrol/plaf/Bundle
 2 3 4 5 6 java/util/ResourceBundle 	getBundle .(Ljava/lang/String;)Ljava/util/ResourceBundle; 8 Tip_Maximize_Window
 2 : ; < 	getString &(Ljava/lang/String;)Ljava/lang/String; > Tip_Restore_Window 0(Lorg/netbeans/swing/tabcontrol/TabDisplayer;Z)V Code LineNumberTable LocalVariableTable this RLorg/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory$MaximizeRestoreButton; 	displayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer; 
showBorder Z toolTipManager Ljavax/swing/ToolTipManager; MethodParameters getTabActionCommand 0(Ljava/awt/event/ActionEvent;)Ljava/lang/String; e Ljava/awt/event/ActionEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
winsysInfo <Lorg/netbeans/swing/tabcontrol/WinsysInfoForTabbedContainer; retValue I 
currentTab Ljava/awt/Component; StackMapTable Z java/awt/Component getToolTipText ()Ljava/lang/String; 
SourceFile TabControlButtonFactory.java InnerClasses MaximizeRestoreButton            ?  @   e     *+� � N-*� �    A      < = > ? B   *     C D      E F     G H    I J  K   	 E   G    L M  @   7     �    A      C B        C D      N O  K    N   P     Q    - .  @   �     (<*� � M,� *� � !N-� -,� %� <�    A   "   H I 
J K L M $N &S B   *    R S    ( C D    & T U  
  V W  X   	 � & Y P     Q    [ \  @   Y     *� +� /� 17� 9�/� 1=� 9�    A      X Y Z B        C D   X     P     Q    ]    ^ _   
    ` 
