����   4z
      org/openide/awt/Actions findKey ((Ljavax/swing/Action;)Ljava/lang/String;
   	 
 nonNullIcon &(Ljavax/swing/Icon;)Ljavax/swing/Icon;
     findHelp 0(Ljavax/swing/Action;)Lorg/openide/util/HelpCtx;
      java/lang/Object <init> ()V  javax/swing/Action  AcceleratorKey     getValue &(Ljava/lang/String;)Ljava/lang/Object;  javax/swing/KeyStroke
    ! " keyStrokeToString +(Ljavax/swing/KeyStroke;)Ljava/lang/String; $ java/lang/StringBuilder
 #  ' java/awt/event/InputEvent
 # ) * + append (C)Ljava/lang/StringBuilder;
 # - . / toString ()Ljava/lang/String;
 1 2 3 4 5 org/openide/util/Utilities isMac ()Z
  7 8 9 getModifiers ()I
  ; < = getMacOSModifiersExText (I)Ljava/lang/String;
 & ? @ = getModifiersExText
  B C 9 
getKeyCode
  E F G 
getKeyChar ()C
 I J K L M java/lang/String valueOf (C)Ljava/lang/String;
  O P = 
getKeyText
 I R S 5 isEmpty
 # U * V -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 X O Y java/awt/event/KeyEvent
  [ \ ] prefixNumpad '(Ljava/lang/String;I)Ljava/lang/String; _ KP_ a key-prefix-numpad
 c d e f g org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 I i j k equals (Ljava/lang/Object;)Z
 I m n o 
startsWith (Ljava/lang/String;)Z
 I q r 9 length
 I t u = 	substring
  w x y connect /(Ljavax/swing/JMenuItem;Ljavax/swing/Action;Z)V
  { | } buttonActionConnectors ()Ljava/util/Collection;  � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � 5 java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; � -org/openide/awt/Actions$ButtonActionConnector � � x � /(Ljavax/swing/JMenuItem;Ljavax/swing/Action;Z)Z � javax/swing/JCheckBoxMenuItem � openide.awt.actionToggle � 'org/openide/awt/Actions$CheckMenuBridge
 � �  � 7(Ljavax/swing/JCheckBoxMenuItem;Ljavax/swing/Action;Z)V � "org/openide/awt/Actions$MenuBridge
 � �  y
 � � � �  org/openide/awt/Actions$Bridge prepare �  org/openide/awt/Actions$MenuItem
 � � � � 	setBridge #(Lorg/openide/awt/Actions$Bridge;)V � "org/openide/awt/DynamicMenuContent � hideWhenDisabled
 � � � � � javax/swing/JMenuItem putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
 � �  � P(Ljavax/swing/JCheckBoxMenuItem;Lorg/openide/util/actions/BooleanStateAction;Z)V
  � x � 3(Ljavax/swing/AbstractButton;Ljavax/swing/Action;)V � � x � 3(Ljavax/swing/AbstractButton;Ljavax/swing/Action;)Z � +org/openide/util/actions/BooleanStateAction � +org/openide/awt/Actions$BooleanButtonBridge
 � �  � L(Ljavax/swing/AbstractButton;Lorg/openide/util/actions/BooleanStateAction;)V
 � �  � � $org/openide/awt/Actions$ButtonBridge
 � �
 � � � javax/swing/AbstractButton � USE_MNEMONICS � always � never	  � � � $assertionsDisabled Z � default � java/lang/AssertionError
 � 
 � � � � � org/openide/awt/Mnemonics setLocalizedText 1(Ljavax/swing/AbstractButton;Ljava/lang/String;)V
  � � � cutAmpersand &(Ljava/lang/String;)Ljava/lang/String;
 � � � � setText (Ljava/lang/String;)V � (&
 I � � � indexOf (Ljava/lang/String;)I
 I � � � charAt (I)C
 I � u � (II)Ljava/lang/String;
 I � � � (I)I �   � java/util/HashMap
 �  � delegate
 � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; displayName iconBase	 noIconInMenu
 L java/lang/Boolean (Z)Ljava/lang/Boolean;
  alwaysEnabled %(Ljava/util/Map;)Ljavax/swing/Action;
 #org/openide/awt/AlwaysEnabledAction create 6(Ljava/util/Map;)Lorg/openide/awt/AlwaysEnabledAction; preferencesNode preferencesKey
  checkbox! key#$ java/util/Map& surviveFocusChange( fallback
 *+, callback 6(Ljava/util/Map;)Lorg/openide/util/ContextAwareAction;
.*/ org/openide/awt/GeneralAction1 type3 selectionType	56789  org/openide/awt/ContextSelection EXACTLY_ONE "Lorg/openide/awt/ContextSelection;	5;<9 ANY
.>?@ context 7(Ljava/util/Map;Z)Lorg/openide/util/ContextAwareAction;?#CDE get &(Ljava/lang/Object;)Ljava/lang/Object;G org/openide/util/Lookup
.IJK bindContext >(Ljava/util/Map;Lorg/openide/util/Lookup;)Ljavax/swing/Action;
.M?,
5 -P "org/openide/awt/InjectorExactlyOne
OR S (Ljava/util/Map;)VU org/openide/awt/InjectorAny
TRX java/lang/IllegalStateExceptionZ no selectionType parameter in 
 #\ *] -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
W_  �a !org/netbeans/api/actions/Openable
cdef / java/lang/Class getNameh %org/openide/awt/ActionDefaultPerfomer
gj k (I)Vm !org/netbeans/api/actions/Viewableo !org/netbeans/api/actions/Editableq !org/netbeans/api/actions/Closables "org/netbeans/api/actions/Printableu Actions/w "java/lang/IllegalArgumentExceptiony )category should not start with Actions/: 
v_	 |}~ FQN Ljava/util/regex/Pattern;
����� java/util/regex/Pattern matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
���� 5 java/util/regex/Matcher matches� 'id must be valid fully qualified name: � /
 I��� replace (CC)Ljava/lang/String;� 	.instance
�����  org/openide/filesystems/FileUtil getConfigObject 7(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
���� getConfigFile 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
����� "org/openide/awt/AcceleratorBinding setAccelerator ;(Ljavax/swing/Action;Lorg/openide/filesystems/FileObject;)V� !org/openide/util/HelpCtx$Provider���� 
getHelpCtx ()Lorg/openide/util/HelpCtx;	����� org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx;
����� java/awt/Container getComponents ()[Ljava/awt/Component;� javax/swing/JComponent� menubridgeresizehack
���E getClientProperty
 ��� � updateState
 ���k setHorizontalTextPosition
 ���k setHorizontalAlignment� javax/swing/JMenu
 ���� (Ljavax/swing/KeyStroke;)V	 ��� GET 5Lorg/openide/awt/Actions$ButtonActionConnectorGetter;
���� } 3org/openide/awt/Actions$ButtonActionConnectorGetter all
c�� 5 desiredAssertionStatus� |(?:\p{javaJavaIdentifierStart}\p{javaJavaIdentifierPart}*)(?:[.](?:\p{javaJavaIdentifierStart}\p{javaJavaIdentifierPart}*))*
���� compile -(Ljava/lang/String;)Ljava/util/regex/Pattern;
�  ACTION_VALUE_VISIBLE Ljava/lang/String; ConstantValue� openide.awt.actionVisible ACTION_VALUE_TOGGLE 
IDENTIFIER� :(?:\p{javaJavaIdentifierStart}\p{javaJavaIdentifierPart}*) Code LineNumberTable LocalVariableTable this Lorg/openide/awt/Actions; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; i Ljavax/swing/Icon; MethodParameters ;(Lorg/openide/util/actions/SystemAction;)Ljava/lang/String; action 'Lorg/openide/util/actions/SystemAction; Ljavax/swing/Action; stroke Ljavax/swing/KeyStroke; StackMapTable modifiersEx I buf Ljava/lang/StringBuilder; macOS 	modifText keyText keyCode ret nonNumpadCode REPLACABLE_PREFIX 	usePrefix nonNumpadName B(Ljavax/swing/JMenuItem;Lorg/openide/util/actions/SystemAction;Z)V item Ljavax/swing/JMenuItem; popup bac /Lorg/openide/awt/Actions$ButtonActionConnector; b  Lorg/openide/awt/Actions$Bridge; Ljavax/swing/JCheckBoxMenuItem; -Lorg/openide/util/actions/BooleanStateAction; F(Ljavax/swing/AbstractButton;Lorg/openide/util/actions/SystemAction;)V button Ljavax/swing/AbstractButton; setMenuText 2(Ljavax/swing/AbstractButton;Ljava/lang/String;Z)V text useMnemonic msg result Z(Ljava/awt/event/ActionListener;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/swing/Action; Ljava/awt/event/ActionListener; map Ljava/util/HashMap; LocalVariableTypeTable 9Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>; Ljava/util/Map; _(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/swing/Action; s(Ljava/lang/String;Ljavax/swing/Action;ZLjava/lang/String;Ljava/lang/String;Z)Lorg/openide/util/ContextAwareAction; 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; fo �(Ljava/lang/Class;ZZLorg/openide/util/ContextAwareAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/openide/util/ContextAwareAction; Ljava/lang/Class; single %Lorg/openide/util/ContextAwareAction; Ljava/lang/Class<*>;* #org/openide/util/ContextAwareAction 	Signature �(Ljava/lang/Class<*>;ZZLorg/openide/util/ContextAwareAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/openide/util/ContextAwareAction; lkp Lorg/openide/util/Lookup; Ljava/lang/Object; inject :(Ljava/util/Map;)Lorg/openide/awt/ContextAction$Performer; t =(Ljava/util/Map;)Lorg/openide/awt/ContextAction$Performer<*>; 	performer forID :(Ljava/lang/String;Ljava/lang/String;)Ljavax/swing/Action; category id path a def $Lorg/openide/filesystems/FileObject;> "org/openide/filesystems/FileObject 
Exceptions !prepareMenuBridgeItemsInContainer (Ljava/awt/Container;)V cop Ljavax/swing/JComponent; bridge $Lorg/openide/awt/Actions$MenuBridge; c Ljava/awt/Container; comps [Ljava/awt/Component;I prepareMargins .(Ljavax/swing/JMenuItem;Ljavax/swing/Action;)V 	updateKey J()Ljava/util/Collection<+Lorg/openide/awt/Actions$ButtonActionConnector;>; 
access$000 x0 
access$100 
access$200 <clinit> 
SourceFile Actions.java InnerClasses ButtonActionConnector CheckMenuBridge 
MenuBridge Bridge MenuItem BooleanButtonBridge ButtonBridge Provider ButtonActionConnectorGettera org/openide/awt/Actions$SubMenu SubMenud +org/openide/awt/Actions$ToolbarToggleButton ToolbarToggleButtong %org/openide/awt/Actions$ToolbarButton ToolbarButtonj (org/openide/awt/Actions$CheckboxMenuItem CheckboxMenuItemm %org/openide/awt/Actions$SubMenuBridge SubMenuBridgep *org/openide/awt/Actions$ISubActionListener ISubActionListeners $org/openide/awt/Actions$SubMenuModel SubMenuModelv 'org/openide/awt/ContextAction$Performerx org/openide/awt/ContextAction 	Performer !      �� �   � �� �    � �� �   � }~   ��   � �   %    �   /     *� �   �       a�       ��  �    �    �   
 	 
 �   ,     �   �       i�       ��  �   �   	 � �   /     *� �   �       z�       ��  �   �   
   �   t     *� �*�  � L+� �+� �   �       �  �  �  �  �  ��       ��    �� �   	 �  �   �   
 < = �   �     L� #Y� %L �~� +#� (W" ~� +#%� (W@~� +!� (W ~� +#� (W+� ,�   �   * 
   �  �  �  �   � ( � / � 7 � ? � G ��       L��    D�� �    �  #�   �   	 ! " �   �     k� 0<� *� 6� :� 
*� 6� >M*� A� *� D� H� 
*� A� NN,� Q� 2� � #Y� %,� T-� T� ,�� #Y� %,� T+� (-� T� ,�-�   �   .    �  �  �  �  � ! � 3 � : � > � Q � i ��   *    k��    g� �   Q��  3 8�� �    � F I�  IF I�  I�   �   
 P = �   �     O� WL+� G�    C   �   �   <      (   2+(� ZL� +%� ZL� +'� ZL� 
+&� ZL+�   �   .    �  � 	 � ( � / � 2 � 9 � < � C � F � M ��       O �    J� �    � ( I			�       
 \ ] �   �     S^M`� bN� W:*� h� � #Y� %-� T*� T� ,�*^� l� � #Y� %-� T*^� p� s� T� ,�*�   �   "    �  �  �  �  � - � 6 � Q ��   4    S!�     S�   P�   H�   B� �    � - I I I#�   	!     	 x �   I     *+� v�   �   
    �  ��             ��    	 � �     �  	  �    �    �   	 x y �        ~� z� ~ N-� � � -� � � �:*+� � � ����*� �� +��  � � �Y*� �+� �N� � �Y*+� �N-� �*� �� *� �-� �*�+��  � ��   �   2     * +
 . @ Q \ ` g o }�   >   
  N     ~     ~��    ~	 �  \ " �    � 	 �!� "� 
 ��     �  	   	 x � �   `     � �Y*+� �N-� ��   �      " # $�   *         �    	 �    �     �  	  �    �    �   	 x � �   `     � �Y*+� �N-� ��   �      / 0 1�   *         ��    	 �    �     �  	   	 x �   >     *+� ��   �   
   : ;�            �� �   	  �  �    �    �   	 x � �       w� z� ~ M,� � � ,� � � �N-*+� � � ����+� �� � �Y*+� �� �M� %+��  � � �Y*+� �M� � �Y*+� �M,� �*�+��  � ɱ   �   2   X Y 'Z (\ +^ 2_ B` Ma Zc de hf vg�   >   
  ?   W     w     w��  d  �    � 	 �� � 	 ��   	  �   	 x � �   U     � �Y*+� �M,� ��   �      n 
o p�             �  
  �   	  �   	 �   �     P̸ bN�-� h� =� (�-� h� =� � Қ �-� h� � �Y� ڿ� *+� ۧ *+� � �   �   * 
  | } ~  � $� ;� ?� G� O��   *    P     P�    P �   H� �    �  I�         �    �    �   	 � � �  4     �*� �*M*� �<� :`*� p� 0*`� �)� $� #Y� %*� � T*`� s� T� ,M� \*&� �<� *M� L*� pd� *� �M� 8�*``� � h� *M� !� #Y� %*� � T*`� s� T� ,M,�   �   B   � � � 	� � "� *� K� R� V� [� e� o� �� �� ���        ��    ���  	 �� �    � C I�      	 �   �     9� �Y� �:�*� W+� W,� W�
� W��   �      � 	� � � &� 3��   4    9 �     9�    9�    9	 �  	 0      	 0 �    �      	    �   /     *��   �      ��         �      	  �   �     E� �Y� �:*� W+� W,� W-� W�
� W��   �      " 	# $ % '& 1' ?(�   >    E�     E�    E�    E�    E	 �  	 <      	 < �           	    �   /     *��   �      ,�         �      	+! �   �     _� �Y� �: *�" W%�
�" W'+�" W-�" W�" W�
�" W�)�   �   "   d 	e f $g 0h <i Ij Yk�   H    _!�     _(�    _& �    _�    _�    _	 �  	 V      	 V" �   !  (  &      	   +, �   /     *�-�   �      n�       #  �   #   	?$ �  �  	   �� �Y� �: �" W%�
�" W�-�" W0*�" W2� 	�4� �:�" W�" W�" W�
�" W�=�   �   * 
  $ 	% & %' 0( <) T* a+ n, ~-�   \ 	   �1%     �& �    �& �    � �'    �!�    ��    ��    �	 �  	 |        �1(   	 |" �   I � K 	c) I I I# # I�  	c) I I I# # I �   !1  &  &   �  !      	  +   , ? �   }     !*A�B L+�F� +�FM*,�H�*�L�   �      0 
1 2 3 5�       -.    !#   
 ?/ �    �  �   #   01 �   �     R*2�B L�4�N+� h� �OY*�Q��:�N+� h� �TY*�V��WY� #Y� %Y� T*�[� ,�^�   �      9 
: ;  = -> 6@�       R#   
 H2/ �   	 �   �   # +   3 41 �   �     �*0�B � IL+`�b� h� �gY�i�+l�b� h� �gY�i�+n�b� h� �gY�i�+p�b� h� �gY�i�+r�b� h� �gY�i��WY+�^�   �   2   C D E #G 0H 9J FK OM \N eP rQ {S�       �#    w1� �    � # I�   # +   3 	56 �  5     �*t� l� �vY� #Y� %x� T*� T� ,�z��{+���� �vY� #Y� %�� T+� T� ,�z�� #Y� %t� T*� T�� T+.-��� T�� T� ,M,��� N-� �,��:� 	-��-�   �   2   f 
g &i 3j Ol {m �n �o �q �r �s �u�   4    �7�     �8�  { #9�  � :�  � ;< �    &(� ; I � =?    v�   	7  8   
   �   P     *��� *���� ����   �      } ~ ��       :�  �    �   :   @A �   �     ;*��L=+�� 0+2��� !+2��N-���� �:� 	�����б   �   & 	  � � � � � )� .� 4� :��   4   BC  ) DE   3��    ;FG    6HI �    � J,� �   F   KL �   G     *��*�ñ   �      � � 
��            �� �   	  �   ML �   \     *�ƚ *+�  � �ȱ   �      � � ��            �� �    �   	  �   
 | } �         �˶ϰ   �      �+   NO  �   /     *� �   �       L�       P�  Q 
 �   /     *� �   �       L�       P�  R  �   /     *� �   �       L�       P�   S  �   O      $�Ԛ � � �׸ٳ{��Y�ݳ˱   �       L x ��    @ T   UV   �  � W	 � X  � Y 
 � Z
 � [ 	 � \ 
 � ] 
��^	� _ ` b 	c e 	f h 	i k 	l n o q 
r t	uwy 