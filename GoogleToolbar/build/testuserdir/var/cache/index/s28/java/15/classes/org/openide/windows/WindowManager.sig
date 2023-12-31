����   4�
      java/lang/Object <init> ()V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      !org/openide/windows/WindowManager activeComponent Ljava/lang/ref/Reference;  $org/openide/windows/OnShowingHandler
     ?(Lorg/openide/util/Lookup;Lorg/openide/windows/WindowManager;)V	     	onShowing &Lorg/openide/windows/OnShowingHandler;
       org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
  " # $ lookup %(Ljava/lang/Class;)Ljava/lang/Object;
  & ' ( getDummyInstance %()Lorg/openide/windows/WindowManager;	  * + , dummyInstance #Lorg/openide/windows/WindowManager; . &org/openide/windows/DummyWindowManager
 -  1 )org/openide/windows/TopComponent$Registry	  3 4 5 registry +Lorg/openide/windows/TopComponent$Registry;
  7 8  
initialize
  : ; < componentRegistry -()Lorg/openide/windows/TopComponent$Registry;
  > ? @ createWorkspace E(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/windows/Workspace;
  B C D getActiveComponent $()Lorg/openide/windows/TopComponent;
 F G H I   org/openide/windows/TopComponent componentDeactivated K java/lang/Throwable M java/lang/StringBuilder
 L  P [Winsys] TopComponent 
 L R S T append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  V W X getClass ()Ljava/lang/Class;
 Z [ \ ] ^ java/lang/Class getName ()Ljava/lang/String; ` S throws runtime exception from its componentDeactivated() method.
Please repair it!
 L b c ^ toString
  e f g logThrowable *(Ljava/lang/Throwable;Ljava/lang/String;)V
  i j k setActiveComponent %(Lorg/openide/windows/TopComponent;)V
 F m n  componentActivated p Q throws runtime exception from its componentActivated() method.
Please repair it!
 F r s  componentOpened u L throws exception/error from its componentOpened() method.
Please repair it!
 F w x  componentClosed z L throws exception/error from its componentClosed() method.
Please repair it!
  | } k activateComponent
 F  �  componentShowing � O throws runtime exception from its componentShowing() method.
Please repair it!
 F � �  componentHidden � N throws runtime exception from its componentHidden() method.
Please repair it! � java/lang/ThreadDeath � java/lang/OutOfMemoryError � java/lang/Error
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � � k topComponentOpen
  � � � findMode >(Lorg/openide/windows/TopComponent;)Lorg/openide/windows/Mode;
  � � � topComponentIsOpened %(Lorg/openide/windows/TopComponent;)Z � � � � � org/openide/windows/Mode getTopComponents %()[Lorg/openide/windows/TopComponent;
 � � � � � javax/swing/SwingUtilities getWindowAncestor '(Ljava/awt/Component;)Ljava/awt/Window; � java/awt/Frame
 � � � � getExtendedState ()I
 � � � � setExtendedState (I)V
 � � � �  java/awt/Window toFront
 F � � ^ preferredID
  � � � topComponentID H(Lorg/openide/windows/TopComponent;Ljava/lang/String;)Ljava/lang/String;
 � � � � � java/awt/EventQueue invokeLater (Ljava/lang/Runnable;)V � java/util/ArrayList
 � �  �
 F � � � isOpened ()Z � � � � � java/util/List add (Ljava/lang/Object;)Z � � � � size � � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � #[Lorg/openide/windows/TopComponent;
 � � � � � java/lang/ref/Reference get ()Ljava/lang/Object; � java/io/Serializable PROP_WORKSPACES Ljava/lang/String; ConstantValue � 
workspaces 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; PROP_CURRENT_WORKSPACE � currentWorkspace 
PROP_MODES � modes serialVersionUID Jơ_m�.^ 	Signature =Ljava/lang/ref/Reference<Lorg/openide/windows/TopComponent;>; Code LineNumberTable LocalVariableTable this 
wmInstance StackMapTable .(Ljava/lang/String;)Lorg/openide/windows/Mode; MethodParameters name tc getModes ()Ljava/util/Set; .()Ljava/util/Set<+Lorg/openide/windows/Mode;>; getMainWindow ()Ljava/awt/Frame; updateUI createTopComponentManager Q(Lorg/openide/windows/TopComponent;)Lorg/openide/windows/WindowManager$Component; c getRegistry 3(Ljava/lang/String;)Lorg/openide/windows/Workspace; displayName findWorkspace getWorkspaces "()[Lorg/openide/windows/Workspace; setWorkspaces #([Lorg/openide/windows/Workspace;)V getCurrentWorkspace !()Lorg/openide/windows/Workspace; findTopComponentGroup ;(Ljava/lang/String;)Lorg/openide/windows/TopComponentGroup; addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V l removePropertyChangeListener findComponentManager "Lorg/openide/windows/TopComponent; th Ljava/lang/Throwable; old newTC componentOpenNotify componentCloseNotify message topComponentOpenAtTabPosition &(Lorg/openide/windows/TopComponent;I)V position I topComponentGetTabPosition %(Lorg/openide/windows/TopComponent;)I i mode Lorg/openide/windows/Mode; tcs topComponentClose topComponentRequestActive topComponentRequestVisible topComponentDisplayNameChanged 7(Lorg/openide/windows/TopComponent;Ljava/lang/String;)V "topComponentHtmlDisplayNameChanged htmlDisplayName topComponentToolTipChanged toolTip topComponentIconChanged 5(Lorg/openide/windows/TopComponent;Ljava/awt/Image;)V icon !topComponentActivatedNodesChanged >(Lorg/openide/windows/TopComponent;[Lorg/openide/nodes/Node;)V activatedNodes topComponentDefaultActions 9(Lorg/openide/windows/TopComponent;)[Ljavax/swing/Action; topComponentRequestAttention topComponentMakeBusy &(Lorg/openide/windows/TopComponent;Z)V busy Z topComponentToFront parentFrame Ljava/awt/Frame; state parentWindow Ljava/awt/Window; "topComponentCancelRequestAttention topComponentAttentionHighlight 	highlight findTopComponentID 6(Lorg/openide/windows/TopComponent;)Ljava/lang/String; findTopComponent 6(Ljava/lang/String;)Lorg/openide/windows/TopComponent; tcID invokeWhenUIReady run Ljava/lang/Runnable; isEditorTopComponent isOpenedEditorTopComponent getOpenedTopComponents ?(Lorg/openide/windows/Mode;)[Lorg/openide/windows/TopComponent; allTcs 	openedTcs Ljava/util/List; LocalVariableTypeTable 4Ljava/util/List<Lorg/openide/windows/TopComponent;>; isEditorMode (Lorg/openide/windows/Mode;)Z addWindowSystemListener -(Lorg/openide/windows/WindowSystemListener;)V listener *Lorg/openide/windows/WindowSystemListener; removeWindowSystemListener setRole (Ljava/lang/String;)V roleName isTopComponentMinimized setTopComponentMinimized minimize isTopComponentFloating setTopComponentFloating floating getRole createModeFromXml xml 
removeMode updateModeConstraintsFromXml (Ljava/lang/String;)Z 
SourceFile WindowManager.java InnerClasses Registry� +org/openide/windows/WindowManager$Component 	Component!    �   � �  �    � �     �     �    � �  �    � �     �     �    � �  �    � 
 + ,    � �  �             4 5        B       P     *� *� Y� 	� *� Y*� � �          0  E  J        ,     (    X     � � !� K*� *� � %�      
    S  U       ,  	    �  B  * ' (    =      � )� � -Y� /� )� )�          Y  Z  ]	     �
       � �                       ; <    6     � 0� !� 0�          �        ,   ! <    \     *� 2� *� 2�*� � 6**� 9Z� 2�          �  �  �  �        ,  	      ?    ;     *++� =�          �        ,      �       �     �     �   ? @    	     �     �     �         �     �     �    �     �     �       �   �     �     �     �     �     �  !"      #$    %  &$    %   '    ,     �          �       (        �     �     �    } k   S     w*� A+� �*� AM,� -,� E� &N-� LY� NO� Q,� U� Y� Q_� Q� a� d*+� h*� AN-� /-� l� (:� LY� NO� Q-� U� Y� Qo� Q� a� d�     J J N Q J    B    �  � 	 �  �  �   �   < A F J
 N Q S v   >   ")*  S #)*    w ,     w(   i+(  F 1,( 	   . 	�    F F  J"�    F F F  J$      - k    �     ++� q� &M,� LY� NO� Q+� U� Y� Qt� Q� a� d�      J           *       ")*    + ,     +( 	    G J"      . k    �     8+� v� &M,� LY� NO� Q+� U� Y� Qy� Q� a� d+*� A� *� {�      J       ) - * + */ 20 72       ")*    8 ,     8( 	    G J"       � k    �     ++� ~� &M,� LY� NO� Q+� U� Y� Q�� Q� a� d�      J       : > ; < *?       ")*    + ,     +( 	    G J"       � k    �     ++� �� &M,� LY� NO� Q+� U� Y� Q�� Q� a� d�      J       G K H I *L       ")*    + ,     +( 	    G J"      
 f g    n     $*� �� 
*� �� *� ��� Y� �� �+*� ��         R T V #W       $)*     $/ � 	       	)  /   � k       01    H     *+� ��      
   n o         ,     (    23    	  2   45    �     8*+� �M,� *+� �� �,� � N6-�� -2+� ������      & 	  y z { ~  %� -� 0 6�   4   63    8 ,     8(   278   9 � 	    �  �� 	 ��      : k      ; k      < k      =>    	    ?>    	  @  A>    	  B  CD    	  E  FG    	  H   � �      IJ       � �    	   �   K k    5      �         �        ,     (       LM    ?      �         �         ,     (    NO    	  N   P k    �     1+� �M,� ),� �� ,� �N-� �6~� -�~� �,� ��      & 	  � � 
� � � � #� ,� 0�   4   QR   S3    1 ,     1(   ,TU 	   	 � , �      V k    5      �         �        ,     (       WM    ?      �                  ,     (    XO    	  X   YZ    >     
*++� Ķ ǰ                
 ,     
(      [\    ]   ^ �    =     +� ˱      
   6 7        ,     _`    _   a �    6     �         D        ,     (       b �    6     �         S        ,     (       cd    �     T+� � M� �Y,�� �N,:�66� !2:� ՙ -� � W����--� � � F� � � �         ^ _ ` *a 2b ;` Ae   4  * (    T ,     T78   Me �   Cfg h      Cfi 	    �    � � � �  �    7   jk    6     �         r        ,     78    7    C D    5     *� � �� F�         v        ,    j k    E     *� Y+� 	� �      
   z {        ,      (        lm    5      �         �        ,     no    n   pm    5      �         �        ,     no    n   qr    5      �         �        ,     s �    s   t �    6     �         �        ,     (       uM    ?      �         �         ,     (    vO    	  v   w �    6     �         �        ,     (       xM    ?      �         �         ,     (    yO    	  y   z ^    ,     �         �        ,   {
    6     �         �        ,     | �    |   }k    6     �         �        ,     78    7   ~    6     �         	        ,     | �    |   �   ��     0 F�	� �