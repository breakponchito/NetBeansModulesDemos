����   4d  %org/openide/util/actions/SystemAction
      java/lang/Object <init> ()V 
  java/beans/PropertyChangeSupport
 	    (Ljava/lang/Object;)V	      <org/openide/util/actions/CallbackSystemAction$DelegateAction support "Ljava/beans/PropertyChangeSupport;	     delegate /Lorg/openide/util/actions/CallbackSystemAction;
      org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;	     ! weakL #Ljava/beans/PropertyChangeListener;
 # $ % & ' -org/openide/util/actions/CallbackSystemAction getActionPerformer ,()Lorg/openide/util/actions/ActionPerformer;	  ) * + enabled Z -  org/openide/util/Lookup$Template / javax/swing/ActionMap
 , 1  2 (Ljava/lang/Class;)V
 4 5 6 7 8 org/openide/util/Lookup lookup D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;	  : ; < result  Lorg/openide/util/Lookup$Result; > org/openide/util/LookupListener
  @ A B create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;
 D E F G H org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
  J K L resultChanged !(Lorg/openide/util/LookupEvent;)V N java/lang/StringBuilder
 M 
  Q R S toString ()Ljava/lang/String;
 M U V W append -(Ljava/lang/String;)Ljava/lang/StringBuilder; Y 
[delegate=
 M [ V \ -(Ljava/lang/Object;)Ljava/lang/StringBuilder; ^ ]
 M Q
  a b c 
findAction ()Ljavax/swing/Action; e >org/openide/util/actions/CallbackSystemAction$DelegateAction$1
 d g  h q(Lorg/openide/util/actions/CallbackSystemAction$DelegateAction;Ljavax/swing/Action;Ljava/awt/event/ActionEvent;)V
 # j k l asynchronous ()Z
 n o p q r &org/openide/util/actions/ActionInvoker invokeAction H(Ljavax/swing/Action;Ljava/awt/event/ActionEvent;ZLjava/lang/Runnable;)V
 t u v w x java/awt/event/ActionEvent 	getSource ()Ljava/lang/Object; z java/awt/Component
 | } ~  � javax/swing/SwingUtilities getWindowAncestor '(Ljava/awt/Component;)Ljava/awt/Window; � java/awt/Dialog � OpenIDE-Transmodal-Action
 # � � � getValue &(Ljava/lang/String;)Ljava/lang/Object;	 � � � � � java/lang/Boolean TRUE Ljava/lang/Boolean;
 � � � � equals (Ljava/lang/Object;)Z
 # � � � actionPerformed (Ljava/awt/event/ActionEvent;)V	  � � � lastRef Ljava/lang/ref/Reference;
 � � � � x java/lang/ref/Reference get � javax/swing/Action � � � � removePropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V � java/lang/ref/WeakReference
 �  � � � � addPropertyChangeListener � � � l 	isEnabled
 	 �
 	 �
  � *
 	 � � � firePropertyChange (Ljava/lang/String;ZZ)V
 D � � � allInstances ()Ljava/util/Collection;
 � � � � � java/util/Collections emptySet ()Ljava/util/Set; � � � � l java/util/Collection isEmpty
 # � � x getActionMapKey � � � � iterator ()Ljava/util/Iterator; � � � � l java/util/Iterator hasNext � � � x next
 . � � � ((Ljava/lang/Object;)Ljavax/swing/Action; � getMenuPresenter
  � � � isMethodOverridden D(Lorg/openide/util/actions/CallableSystemAction;Ljava/lang/String;)Z
 # � � � ()Ljavax/swing/JMenuItem;
 � � � � � 0org/openide/util/actions/ActionPresenterProvider 
getDefault 4()Lorg/openide/util/actions/ActionPresenterProvider;
 � � � � createMenuPresenter -(Ljavax/swing/Action;)Ljavax/swing/JMenuItem; � getPopupPresenter
 # � � �
 � � � � createPopupPresenter � getToolbarPresenter
 # � � � ()Ljava/awt/Component;
 � � � � createToolbarPresenter *(Ljavax/swing/Action;)Ljava/awt/Component;
  � � � getClass ()Ljava/lang/Class;  java/lang/Class
 � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
	 � java/lang/reflect/Method getDeclaringClass -org/openide/util/actions/CallableSystemAction java/lang/NoSuchMethodException
  printStackTrace java/lang/IllegalStateException Error searching for method   in 
  (Ljava/lang/String;)V 'org/openide/util/actions/Presenter$Menu (org/openide/util/actions/Presenter$Popup *org/openide/util/actions/Presenter$Toolbar! !java/beans/PropertyChangeListener 	Signature 9Lorg/openide/util/Lookup$Result<Ljavax/swing/ActionMap;>; /Ljava/lang/ref/Reference<Ljavax/swing/Action;>; K(Lorg/openide/util/actions/CallbackSystemAction;Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this >Lorg/openide/util/actions/CallbackSystemAction$DelegateAction; a actionContext Lorg/openide/util/Lookup; StackMapTable MethodParameters run Ljava/lang/Runnable; value Ljava/lang/Object; source e Ljava/awt/event/ActionEvent; Ljavax/swing/Action; last listener putValue '(Ljava/lang/String;Ljava/lang/Object;)V key Ljava/lang/String; o 
setEnabled (Z)V b ev Lorg/openide/util/LookupEvent; 
newEnabled #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; action map Ljavax/swing/ActionMap; c Ljava/util/Collection; LocalVariableTypeTable 0Ljava/util/Collection<+Ljavax/swing/ActionMap;>; m Ljava/lang/reflect/Method; ex !Ljava/lang/NoSuchMethodException; d /Lorg/openide/util/actions/CallableSystemAction; nameW java/lang/String finalize 
SourceFile CallbackSystemAction.java InnerClasses DelegateAction Template Result` "org/openide/util/actions/Presenter Menu Popup Toolbar 0    � =         ; < "   #  * +           !    � � "   $   % &   �     Y*� *� 	Y*� � *+� **� � *+� "� � � (*,� ,Y.� 0� 3� 9*� 9=**� 9� ?� =� C*� I�   '   & 	  0 ( 1 2 3 .5 ?6 S7 X8(        Y)*     Y+     Y,- .   ) � *   # 4  �     # 4  /   	+  ,    R S &   M     #� MY� O*� P� TX� T*� � Z]� T� _�   '      <(       #)*    � � &       `*� `M,� !� dY*,+� fN*� +*� � i-� m� ;+� sN-� y� '-� y� {� �� *� �� �:� �� �� �*� +� ��   '   6   B D 	E J $K 'P ,R 7T @V KX VY W] __(   >   01  K 23  , 343    `)*     `56   [+7 .    � ' �� / � /   5   � l &   �     T*� `L+� *� L*� �� � *� �� �� �M+,� ',� ,*� � � *� �Y+� �� �+*� � � +� � �   '   * 
  b d 	e i $k )l -m 7p Cq Mt(        T)*    O+7  $ 087 .    �  �
I ��  �  � � &   A     	*� +� ��   '   
   x y(       	)*     	9 ! /   9    � � &   A     	*� +� ��   '   
   | }(       	)*     	9 ! /   9   :; &   ?      �   '      �(        )*     <=    >3 /   	<  >    � � &   =     	*� +� ��   '      �(       	)*     	<= /   <   ?@ &   5      �   '      �(       )*     A + /   A    K L &   {     !*� �=*� (� *� �*� (� �*� (�   '      � � � �  �(        !)*     !BC   D + .    �  /   B    E &   >     *� I�   '   
   � �(       )*     FG /   F    b c &   �     V*� 9� *� 9� �� � �L+� � � 9*� � �M+� � N-� � � !-� � � .:,� �:� �����   '   & 	  � � � &� A� I� N� Q� T�(   4  I H7  A IJ  & .<3    V)*    AKL M      AKN .    B ��  �  �#�   � � &   X     **� ط ڙ *� � ް� �*� �   '      � � �(       )*  .      � � &   X     **� � ڙ *� � ��� �*� �   '      � � �(       )*  .      � � &   X     **� � ڙ *� � ��� �*� ��   '      � � �(       )*  .      � � &   �     H+� �,� ��N-�
� � �N-��Y� MY� O� T,� T� T+� Z� _��      '      � � � � "�(   4   OP   *QR    H)*     HST    HU= .    � @�    
V /   	S  U   X  &   x     %*� �� � *� �� �� �L+� +*� � � �   '      � � � $�(       %)*    87 .    I ��  � Y   Z[   :   #\  , 4]  D 4^	 d      _a	_b	_c	