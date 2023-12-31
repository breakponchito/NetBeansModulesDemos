����   4`
      javax/swing/JPanel <init> ()V	  	 
   7org/openide/explorer/propertysheet/WrapperInplaceEditor legacy Ljava/awt/Component;	     listenerAdded Z	     suspendEvents	     listenerList %Ljavax/swing/event/EventListenerList;	     enh CLorg/openide/explorer/propertysheet/editors/EnhancedPropertyEditor;  java/awt/BorderLayout
  
    ! " 	setLayout (Ljava/awt/LayoutManager;)V $ javax/swing/JComponent
  & ' ( getInputMap (I)Ljavax/swing/InputMap; * java/awt/event/KeyEvent
 , - . / 0 javax/swing/KeyStroke getKeyStroke (II)Ljavax/swing/KeyStroke; 2 enter
 4 5 6 7 8 javax/swing/InputMap put ,(Ljavax/swing/KeyStroke;Ljava/lang/Object;)V
  : ; < getActionMap ()Ljavax/swing/ActionMap; > Forg/openide/explorer/propertysheet/WrapperInplaceEditor$EnterKbdAction
 = @  A w(Lorg/openide/explorer/propertysheet/WrapperInplaceEditor;Lorg/openide/explorer/propertysheet/WrapperInplaceEditor$1;)V
 C D E 7 F javax/swing/ActionMap )(Ljava/lang/Object;Ljavax/swing/Action;)V
 H I J K L java/awt/event/FocusEvent 	setSource (Ljava/lang/Object;)V
  N O P fireFocusGained (Ljava/awt/event/FocusEvent;)V
  R S P fireFocusLost
  U V  	removeAll
  X Y Z tryRemoveActionListener (Ljava/awt/Component;)Z
 \ ] ^ _ ` java/awt/Component removeFocusListener !(Ljava/awt/event/FocusListener;)V
 b c d e f java/lang/Object getClass ()Ljava/lang/Class; h addActionListener j java/lang/Class l java/awt/event/ActionListener
 i n o p 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 r s t u v java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; x java/lang/Exception z removeActionListener | java/awt/event/ActionEvent ~ 0org/openide/explorer/propertysheet/InplaceEditor � success
 { �  � ((Ljava/lang/Object;ILjava/lang/String;)V
  � � � 
fireAction (Ljava/awt/event/ActionEvent;)V
  � �  clear � Aorg/openide/explorer/propertysheet/editors/EnhancedPropertyEditor
  � � � getLegacyInplaceEditor ()Ljava/awt/Component; � Center
  � � � add )(Ljava/awt/Component;Ljava/lang/Object;)V
  � � Z tryAddActionListener
 \ � � ` addFocusListener � javax/swing/JComboBox	 � � � � � 5org/openide/explorer/propertysheet/ComboInplaceEditor cbKeyStrokes [Ljavax/swing/KeyStroke;	  � � � mdl 2Lorg/openide/explorer/propertysheet/PropertyModel; � � � � getValue ()Ljava/lang/Object;
  � � Z isAncestorOf � javax/swing/text/JTextComponent � � � � 	getAsText ()Ljava/lang/String;
 � � � � setText (Ljava/lang/String;)V
 � � � � 
isEditable ()Z
 � � � � 	getEditor ()Ljavax/swing/ComboBoxEditor; � � � � � javax/swing/ComboBoxEditor getEditorComponent
 \ � � � 	isShowing � � � L setItem
 � � � L setSelectedItem
 i � � � getName
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level; � Failure resetting legacy editor
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 b � � � toString � � � � getInPlaceCustomEditor	  � � � actionListenerList Ljava/util/List; � java/util/ArrayList
 �  � � � � � java/util/List (Ljava/lang/Object;)Z � � � � remove
 � � � � clone � � �  size ()I � get (I)Ljava/lang/Object; k � actionPerformed	 #javax/swing/event/EventListenerList
  java/awt/event/FocusListener
 � -(Ljava/lang/Class;Ljava/util/EventListener;)V
  �
 �
  ]
 getListenerList ()[Ljava/lang/Object; P focusGained P 	focusLost 	Signature 1Ljava/util/List<Ljava/awt/event/ActionListener;>; F(Lorg/openide/explorer/propertysheet/editors/EnhancedPropertyEditor;)V Code LineNumberTable LocalVariableTable this 9Lorg/openide/explorer/propertysheet/WrapperInplaceEditor; MethodParameters e Ljava/awt/event/FocusEvent; StackMapTable m Ljava/lang/reflect/Method; comp ae Ljava/awt/event/ActionEvent; connect N(Ljava/beans/PropertyEditor;Lorg/openide/explorer/propertysheet/PropertyEnv;)V pe Ljava/beans/PropertyEditor; env 0Lorg/openide/explorer/propertysheet/PropertyEnv; getComponent ()Ljavax/swing/JComponent; getKeyStrokes ()[Ljavax/swing/KeyStroke; getPropertyEditor ()Ljava/beans/PropertyEditor; getPropertyModel 4()Lorg/openide/explorer/propertysheet/PropertyModel; handleInitialInputEvent (Ljava/awt/event/InputEvent;)V Ljava/awt/event/InputEvent; isKnownComponent c reset Ljava/lang/Exception;E java/lang/Throwable setPropertyModel 5(Lorg/openide/explorer/propertysheet/PropertyModel;)V pm setValue o Ljava/lang/Object; supportsTextEntry "(Ljava/awt/event/ActionListener;)V listener Ljava/awt/event/ActionListener; list i I event Ljava/awt/event/FocusListener; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	listeners [Ljava/lang/Object;X 
SourceFile WrapperInplaceEditor.java InnerClasses EnterKbdAction_ 9org/openide/explorer/propertysheet/WrapperInplaceEditor$1      } k        � �        � � �                         !   �     K*� *� *� *� *� *+� *� Y� � *� %
� +1� 3*� 91� =Y*� ?� B�   "   * 
   N  > 	 E  F  K  O  P ( Q 8 R J S#       K$%     K   &        P !   G     +*� G*+� M�   "       X  Y 
 Z#       $%     '( &   '    P !   G     +*� G*+� Q�   "       _  ` 
 a#       $%     '( &   '    �  !   �     3*� � $*� T*� � **� � WW*� *� [*� *� *� �   "   & 	   d  e  g  h  k # l ( o - p 2 q#       3$%  )      � Z !   �     -+� ag� iYkS� mM,� ,+� bY*S� qW�� M�    & * w "       w  y  z % | ' � * ~ + �#       *+    -$%     -,  )    'B w &   ,    Y Z !   �     -+� ay� iYkS� mM,� ,+� bY*S� qW�� M�    & * w "       �  �  � % � ' � * � + �#       *+    -$%     -,  )    'B w &   ,    � !   J     *� {Y*�� �� ��   "   
    �  �#       $%     -. &   -   /0 !   �     6*� � *� �+*� � *+� �� *� �N*-�� �**-� �� -*� ��   "   & 	   �  �  �  �  �   � ' � 0 � 5 �#   *    6$%     612    634    ,  )    &   	1  3   56 !   ,     *�   "       �#       $%   78 !   K     *� �� �� � ���   "       � 
 �  �#       $%  )     9: !   /     *� �   "       �#       $%   ;< !   /     *� ��   "       �#       $%    � � !   4     
*� � � �   "       �#       
$%   => !   5      �   "       �#       $%     '? &   '   @ Z !   :     *+� ��   "       �#       $%     A  &   A   B  !  L     �*� *� � �� *� � �*� � � � �� ]*� � �� S*� � �� �� 3*� � �� �� � � Ǚ 1*� � �� �*� � � � � � *� � �*� � � � �*� � %L� и Ӳ ��+� �*� � M*� ,��    � w   �   � � �   "   F    �  �  � % � / � < � Q � l �  � � � � � � � � � � � � � � � � �#     � 'C    �$%  )    %� FG wYD FG !   >     *+� ��   "   
    �  �#       $%     H � &   H   I L !  D     �*� *� � �� *� � �+� � �� P*� � �� F*� � �� �� .*� � �� �� � � Ǚ $*� � �� �+� � � � *� � �+� �*� � %M� и Ӳ ��,� �*� � N*� -��   m u w  m �   u � �   "   F    �  �  �   � * � 7 � L � b  m	 r
 u v �	 �
 �	 �
 �#      v 'C    �$%     �JK )     � A
G wYD&   J   L � !   k     '*� � �� �*� � �� *� � �� �� ��   "       
  # %#       '$%  )      � � !   T     *� � **� � � � *� �   "         #       $%  )     ! hM !   g     *� �� *� �Y� � �*� �+� � W�   "      $ % ( )#       $%     NO )    &   N   ! zM !   X     *� �� *� �+� � W�   "      , - /#       $%     NO )    &   N     � � !       S*� � �*YN�*� �� -ñ*� �� � �� �M-ç 
:-��>,� � � ,� � k+� ����    )    & )   ) - )   "   .   2 3 8 9 : = $> 0@ <A L@ RC#   4  $ P �  2  QR    S$%     SS.  0 #P � )   % �   bRD�    { �  � � &   S   ! � ` !   p     #*� � *�Y�
� *� +�*+��   "      K L O P "Q#       #$%     #NT )    &   N  U    V   ! _ ` !   M     *� +�*+��   "      Y Z [#       $%     NT &   N  U    V    O P !   �     7*� � �*� �M,�d>�  ,2� ,`2�+� �����   "   "   c d g i j "k 0i 6n#   *   !QR    7$%     7S(   'WX )    � Y� &   S    S P !   �     7*� � �*� �M,�d>�  ,2� ,`2�+� �����   "   "   v w z | } "~ 0| 6�#   *   !QR    7$%     7S(   'WX )    � Y� &   S   Z   [\     = ] ^    