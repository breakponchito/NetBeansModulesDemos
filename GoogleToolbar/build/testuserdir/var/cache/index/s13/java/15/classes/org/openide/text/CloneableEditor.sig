����   4|
       org/openide/text/CloneableEditor <init> ,(Lorg/openide/text/CloneableEditorSupport;)V
    	 -(Lorg/openide/text/CloneableEditorSupport;Z)V
      )org/openide/windows/CloneableTopComponent ()V	     componentCreated Z	     cursorPosition I	     CLOSE_LAST_LOCK [Z	     support )Lorg/openide/text/CloneableEditorSupport;
    !  
updateName
  # $  _setCloseOperation & java/awt/Dimension
 % (  ) (II)V
  + , - setMinimumSize (Ljava/awt/Dimension;)V
 / 0 1 2 3 'org/openide/text/CloneableEditorSupport 	getLookup ()Lorg/openide/util/Lookup;
  5 6 7 associateLookup (Lorg/openide/util/Lookup;)V 9  org/openide/windows/TopComponent
  ; < = setCloseOperation (I)V
 / ? @ A cesKit ()Ljavax/swing/text/EditorKit;
 C D E F G org/openide/util/HelpCtx findHelp .(Ljava/lang/Object;)Lorg/openide/util/HelpCtx; I editing.editorwindow
 C K  L (Ljava/lang/String;)V
  N O P canClose ()Z
  R S  componentShowing
  U V  
initialize	  X Y Z pane Ljavax/swing/JEditorPane;
  \ ] P discard _  org/openide/text/QuietEditorPane
 ^  b usedByCloneableEditor
 d e f g h java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
 ^ j k l putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
  n o p getInitializerLock ()Ljava/lang/Object; r +org/openide/text/CloneableEditorInitializer
 q t  u g(Lorg/openide/text/CloneableEditor;Lorg/openide/text/CloneableEditorSupport;Ljavax/swing/JEditorPane;)V	  w x y initializer -Lorg/openide/text/CloneableEditorInitializer;
 q { |  start	 q ~  � edtRequests Ljava/util/List;
 q � � P isProvideUnfinishedPane
 q � �  notifyEDTRequestsMonitor
  � � � cloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport;
 / � � � initializeCloneableEditor %(Lorg/openide/text/CloneableEditor;)V	  � � � customComponent Ljava/awt/Component;
 / � � � createCloneableTopComponent -()Lorg/openide/windows/CloneableTopComponent;
  � �  componentOpened � +org/openide/cookies/EditorCookie$Observable � openedPanes
 / � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
 / � � � getDocument #()Ljavax/swing/text/StyledDocument; � mimeType � � � � � javax/swing/text/Document getProperty &(Ljava/lang/Object;)Ljava/lang/Object; � java/lang/String
 � � � � L +org/netbeans/modules/openide/text/Installer add
 � � � � � javax/swing/JEditorPane setEditorKit (Ljavax/swing/text/EditorKit;)V
 � j
  � �  componentClosed
 / � � � getAnyEditor 0()Lorg/openide/text/CloneableEditorSupport$Pane;
 / � � � close (Z)Z
  � � � 	closeLast
 / N
 / � �  notifyClosed
 / � � � getLastSelected
 / � � � setLastSelected 1(Lorg/openide/text/CloneableEditorSupport$Pane;)V
 / � � � getUndoRedo $()Lorg/openide/awt/UndoRedo$Manager; � java/util/ArrayList
  � � � 
getActions ()[Ljavax/swing/Action;
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 � �  � (Ljava/util/Collection;)V � � � � � java/util/List (Ljava/lang/Object;)Z � Editors/TabActions
 � � � � � org/openide/util/Utilities actionsForPath $(Ljava/lang/String;)Ljava/util/List; � � � � addAll (Ljava/util/Collection;)Z � � � � size ()I � javax/swing/Action �  toArray (([Ljava/lang/Object;)[Ljava/lang/Object; [Ljavax/swing/Action;
   requestFocus
	
 javax/swing/SwingUtilities isDescendingFrom +(Ljava/awt/Component;Ljava/awt/Component;)Z
 java/awt/Component
 �
  P requestFocusInWindow

 �
 !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
  getCurrentWorkspace !()Lorg/openide/windows/Workspace;"#$%& org/openide/windows/Workspace 	getBounds ()Ljava/awt/Rectangle;	()*+  java/awt/Rectangle width	(-.  height0 TopComponentAllowDockAnywhere
 23 � getClientProperty
 56  open
  j	9:;<= org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;? "org/openide/text/CloneableEditor$1
>A B N(Lorg/openide/text/CloneableEditor;Lorg/openide/text/CloneableEditorSupport;)V
9DEF writeAccess (Ljava/lang/Runnable;)V
 /HIJ 
documentID ()Ljava/lang/String;L  
 NOP writeExternal (Ljava/io/ObjectOutput;)V
 /RST cesEnv /()Lorg/openide/text/CloneableEditorSupport$Env;VWXYZ java/io/ObjectOutput writeObject (Ljava/lang/Object;)V
 �\]^ getCaret ()Ljavax/swing/text/Caret;`abc � javax/swing/text/Caret getDot
 ^ef � getLastPosition
hijkJ java/lang/Class getName
mnopq java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	stuvw java/util/logging/Level WARNING Ljava/util/logging/Level;y java/lang/IllegalStateException{ java/lang/StringBuilder
z ~ Pane=
z��� append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
z��� -(Ljava/lang/Object;)Ljava/lang/StringBuilder;� was not initialized yet!
z��J toString
x K
m��� log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V� Caret is null in editor pane=� 	
support=� 
doc=� java/lang/Integer
��  =
  0V��� writeBoolean (Z)V
 ��� readExternal (Ljava/io/ObjectInput;)V���� p java/io/ObjectInput 
readObject� ,org/openide/windows/CloneableOpenSupport$Env���� findCloneableOpenSupport ,()Lorg/openide/windows/CloneableOpenSupport;
��� � intValue��� � 	available��� P readBoolean�  java/io/NotSerializableException� "Serializing component is invalid: 
� K
 �� p writeReplace� java/io/InvalidObjectException� #Deserialized component is invalid: 
� K
 ��  initializeBySupport���� P +org/openide/text/CloneableEditorSupport$Env isValid	 ��  $assertionsDisabled
	�� P isEventDispatchThread� java/lang/AssertionError
� 
 �� P isEditorPaneReadyImpl
 �� P isInitializationRunning	 q��  modalDialog	 ��� LOG Ljava/util/logging/Logger;� iAWT is blocked by modal dialog. Return null from CloneableEditor.getEditorPane. Please report this to IZ.
m��� .(Ljava/util/logging/Level;Ljava/lang/String;)V� support:
����� java/lang/Object getClass ()Ljava/lang/Class;� java/lang/Exception
� � java/io/StringWriter
��� java/io/PrintWriter
�� � (Ljava/io/Writer;)V
���� printStackTrace (Ljava/io/PrintWriter;)V
��
 q  � waitForFinishedInitialization
 5
   requestVisible
h P desiredAssertionStatus
  org.openide.text.CloneableEditor ,org/openide/text/CloneableEditorSupport$Pane HELP_ID Ljava/lang/String; ConstantValue serialVersionUID J�l��j�5 Code LineNumberTable LocalVariableTable this "Lorg/openide/text/CloneableEditor; MethodParameters StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation getPersistenceType Ljava/lang/Override; 
getHelpCtx ()Lorg/openide/util/HelpCtx; kit Ljava/lang/Object; fromKit Lorg/openide/util/HelpCtx; result tmp "Lorg/openide/text/QuietEditorPane;+ java/lang/Throwable running markInitializationFinished success setCustomComponent (Ljava/awt/Component;)V getCursorPosition setCursorPosition createClonedObject d Ljavax/swing/text/Document; ces ask ()Lorg/openide/awt/UndoRedo; actions LocalVariableTypeTable &Ljava/util/List<Ljavax/swing/Action;>; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; requestDefaultFocus getPreferredSize ()Ljava/awt/Dimension; bounds Ljava/awt/Rectangle; wasNull componentActivated preferredID lastPos doc caret Ljavax/swing/text/Caret; out Ljava/io/ObjectOutput; pos p 
ExceptionsQ java/io/IOException env .Lorg/openide/windows/CloneableOpenSupport$Env; os *Lorg/openide/windows/CloneableOpenSupport; 	associate in Ljava/io/ObjectInput; offset firstObject\  java/lang/ClassNotFoundException^ java/io/ObjectStreamException readResolve getComponent isEditorPaneReady isEditorPaneReadyTest getEditorPane ()Ljavax/swing/JEditorPane; ex Ljava/lang/Exception; sw Ljava/io/StringWriter; pw Ljava/io/PrintWriter; ensureVisible <clinit> 
SourceFile CloneableEditor.java InnerClassesq  org/openide/cookies/EditorCookie 
Observable Paneu  org/openide/awt/UndoRedo$Managerw org/openide/awt/UndoRedo Manager Env{ (org/openide/windows/CloneableOpenSupport !          H       Y Z                        � �    x y   ��  �    -       4     *� �      
    W  X                ?     *+� �      
    _  `                        	    �     >*� 
*� *� *�� *+� *� *� "*� %Y

� '� *� *+� .� 4�      .    k  D 	 H  J  l  n  o " p 1 q 5 r = t        >     >      > 6      � =   /     	    6    $     4     *� :�      
    w  x              [ s  � �    /     *� �          �           �    ,     �          �                 !"    �     %*� � >L+� � +� BM,� ,�� CYH� J�          �  �  �  �  �        %    #$   %&     � �C C�  C         O P    ?     *� M<�      
    �  �           '           S     ;     	*� Q*� T�          �  �  �       	           V     �     X*� W� 
*� [� �� ^Y� `L+a� c� i*+� W*� mYM�*� *� qY**� *� W� s� v,ç N,�-�*� v� z�  - H K   K N K      .    �  �  �  � ! � & � - � 2 � F � P � W �       X    A()      � ;   ^� *�   o p    .     � }�          �           � P    �     *� mYL�*� v� � =+ìN+�-�                   �  �  �  �      ,           � �@D*   � P    {     %*� mYL�*� v� *� v� �� � +ìM+�,�          #            �  �   �       %      � �@B*  -�    �     #*� mYM�*� v� *� W� �,ç N,�-��                    �  �  �  �  �  � " �       #     #.      � �G*�    .   �     7     	*� �*� ��      
    �  �       	    /0    >     *+� ��      
    �  �             � �     �    1 �    /     *� �          �           2 =    >     *� �      
    �  �                      3 �    2     *� � ��          �                  �     �     /*� �*� �L+� $+�� �+� �M,� ,�� � � �N-� ��      & 	    		 
    * .   *  *  �   45    /   	 &6      � . /         �     �     _*� W� *� W� �*� Wa� c� �*� mYL�*� �*� W*� +ç M+�,�*� �*� �L+� +�� �+� �� 	+� �W�  # 4 7   7 : 7      >    # $ ' #( () -* 2+ <- @/ E1 I2 Q4 X5 ^7       _   E 6      �   � *� �  /         � P    0     *� Ǭ         ?                  � �    �     P� *� � ʚ �*� YM�*� 3� *� T� 
*� � �,ç N,�-�*� � �*� *� � ��   3 6   6 9 6      .   I J L Q R  S *U 1W ;Y FZ N]       P     P7      � �D*�    7    �8    2     *� � հ         e                  � �    �     6� �Y*� ۸ ߷ �L+� � W+�� � � W++� � � �� � ��         j l m #n       6    '9 � :      '9;              z     2*�*� W� )*� �� *� W*� ��� *� ��� 
*� W��         v x y  z *| 1       2      *<    =    >           P    {     3*�W*� W� (*� �� *� W*� ��� *� ���*� W���         � � � !� )� 1�       3      )<    =    >          ? P    r     .*� �� *� W*� ��� *� ���*� W� *� W���         � � � $� ,�       .      <    =    >          @A    X      ���! L� %Y+�'l+�,l� '�      
   � �            BC         6     t     !*/�1� � <*�4� */�7�         � � � �  �       !    D     	 @�         E     7     	*� *� ѱ      
   � �       	           !     g     *� �L+� �8�>Y*+�@�C�         � � 	� �           6      �  / FJ    `     *� �L+� +�G�K�         � � 	� �           6      �  /        OP       *+�M+*� � *� �Q� �U =*� WN-� �-�[:� �_ =� �-� ^� K-� ^�d6� 6�g�l�r�xY�zY�|}�-����������� =� ^*� � *� � �� :� E�g�l�r�xY�zY�|��-����*� ������������+��Y���U +*��*� � .� � �� �      R   � � � � $� (� . 3 > E N T � � � � � �  �!"   H  N <G   � GH5  . �IJ       KL   �M   $ �N Z    L WV�    V V�� % �`� H� @ �� H`V�    V � VO    P   K          ��   9     v*+��+�� N-��� -��:�� :*� /� +�� ����=*� [� *� *� *� +�� � "+�� 6� *� � **� � .� 4�      B   & * . / 0 "1 +5 87 ?8 D; H< M= V> ^? j@ uC   H   RS  " 	TU  ^ V     v     vWX  8 >Y    jZ$     � + ��   ��  0O    P[   W          � p    c     (*� [� ��Y�zY�|��*�������*���         N O #R       (      #O    ]        _ p    h     )*� [� ��Y�zY�|��*�����ÿ*��*�         ] ^ #` 'b       )      #O    ]  ] P    R     *� � *� �Q�� � � �         j             @ ` �    ,     *�         q           a P    P     �̚ �Ϛ ��Y�Կ*�լ      
   y z               b P    /     *�լ                   � P    I     *� W� *�ؚ � �         �             @ cd        ��̚ �Ϛ ��Y�Կ*� � ��ۙ e�޲r��޲r�zY�|�*� ��g������Y��L��Y���M��Y,��N+-���޲r,�����*� T*��*� W�      >   � � � � #� /� U� ]� h� q� v� �� �� �� ��   *  ] (ef  h gh  q ij    �      � g k     ;     	*�*��         � � �       	          l     A      �� � ��	�l�ޱ      
    3  S    @ m   no   2  �pr	 /s	tvx 	>      � /y	�zy	