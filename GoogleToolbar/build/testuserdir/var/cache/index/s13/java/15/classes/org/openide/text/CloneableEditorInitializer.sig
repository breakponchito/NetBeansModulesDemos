����   4 
      +org/openide/text/CloneableEditorInitializer setDocument $(Ljavax/swing/text/StyledDocument;)V	   	 
 $assertionsDisabled Z
      javax/swing/SwingUtilities isEventDispatchThread ()Z  java/lang/AssertionError  %Method should only be called from EDT
     <init> (Ljava/lang/Object;)V	     edtRequests Ljava/util/List;
     !   org/openide/text/CloneableEditor isInitializationRunning
  # $  isProvideUnfinishedPane
  & ' ( processPendingEDTRequests ()V	  * + , LOG Ljava/util/logging/Logger;	 . / 0 1 2 java/util/logging/Level FINE Ljava/util/logging/Level;
 4 5 6 7 8 java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z : java/lang/StringBuilder
 9 <  ( > CEI:Will wait() editor=
 9 @ A B append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 D E F G H java/lang/System identityHashCode (Ljava/lang/Object;)I
 9 J A K (I)Ljava/lang/StringBuilder;
 9 M A N (C)Ljava/lang/StringBuilder;
 9 P Q R toString ()Ljava/lang/String;
 4 T U V fine (Ljava/lang/String;)V      � Z [ \ ] ^ java/util/List wait (J)V ` java/lang/InterruptedException
 b c d e f org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V Z h i  isEmpty Z k l m remove (I)Ljava/lang/Object; o java/lang/Runnable n q r ( run Z t u v add (Ljava/lang/Object;)Z
  x y ( notifyEDTRequestsMonitor Z { | ( 	notifyAll
 ~ <  java/lang/Object	  � � � editor "Lorg/openide/text/CloneableEditor;	  � � � ces )Lorg/openide/text/CloneableEditorSupport;	  � � � pane Ljavax/swing/JEditorPane;
 � � � � � 'org/openide/text/CloneableEditorSupport createEditorKit ()Ljavax/swing/text/EditorKit;	  � � � kit Ljavax/swing/text/EditorKit;
  � � ( addLoadingLabel	  � � � RP #Lorg/openide/util/RequestProcessor;
 � � � � � !org/openide/util/RequestProcessor create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;	  � � � task (Lorg/openide/util/RequestProcessor$Task; � java/lang/Thread
 � � � � � &org/openide/util/RequestProcessor$Task setPriority (I)V
  � �  	nextPhase
  � � ( cancelInitialization	  � � � phase 3Lorg/openide/text/CloneableEditorInitializer$Phase;	 � � � � � 1org/openide/text/CloneableEditorInitializer$Phase DOCUMENT_OPEN
 � � � � ordinal ()I
 � � � � values 6()[Lorg/openide/text/CloneableEditorInitializer$Phase;
 � � �  
isRunInEDT � CEI:addEDTRequest(): 
 9 � A � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  � � � addEDTRequest (Ljava/lang/Runnable;)V
 � � � � � !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;	  � � � !processPendingEDTRequestsRunnable Ljava/lang/Runnable;
 � � � � invokeWhenUIReady � CEI:task.schedule(): 
 � � � � schedule	  � � 
 provideUnfinishedPane � CEI:cancelInitialization(): 
  � � � markInitializationFinished (Z)V � -org/openide/text/CloneableEditorInitializer$2
 � �  � 0(Lorg/openide/text/CloneableEditorInitializer;)V
  � � � invokeLater � CEI:finishInitialization():  � java/awt/BorderLayout
 � <
  � � � 	setLayout (Ljava/awt/LayoutManager;)V � javax/swing/JLabel LBL_EditorLoading
 org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 �	  V	  loadingLabel Ljavax/swing/JLabel;
 � � 	setOpaque javax/swing/SwingConstants
 � � setHorizontalAlignment javax/swing/border/EmptyBorder java/awt/Insets
  (IIII)V
  (Ljava/awt/Insets;)V
 �!"# 	setBorder (Ljavax/swing/border/Border;)V
 �%& � 
setVisible( Center
 * u+ )(Ljava/awt/Component;Ljava/lang/Object;)V
 D-./ currentTimeMillis ()J	12345 -org/openide/text/CloneableEditorInitializer$5 <$SwitchMap$org$openide$text$CloneableEditorInitializer$Phase [I
 78  initDocument
 :;   handleUserQuestionExceptionInEDT
 =>  initActionMapInEDT
 @A  initKit
 CD  setKitAndDocumentToPaneInEDT
 FG  #initCustomEditorAndDecorationsInEDT
 IJ  firePaneReadyInEDT
 LM ( initAnnotationsO java/lang/IllegalStateExceptionQ Wrong state: S  for 
N	V java/lang/RuntimeException	 XY , TIMER[ EDT �	 ^_` doc !Ljavax/swing/text/StyledDocument;b javax/swing/text/Documentd streamafgh getProperty &(Ljava/lang/Object;)Ljava/lang/Object;
 �jk R messageNamem Open Editor, phase o , q  [ms]
stuvw java/lang/Long valueOf (J)Ljava/lang/Long;
 4yz{ log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V	 }~ , 
EDITOR_LOG� 5CloneableEditorInitializer.initDocument() Enter Time:
 9� A� (J)Ljava/lang/StringBuilder;�  Thread:
 ���� currentThread ()Ljava/lang/Thread;
 ��� R getName�  ce:[
����� java/lang/Integer toHexString (I)Ljava/lang/String;� ] support:[� ] Name:
 �
 4�z� .(Ljava/util/logging/Level;Ljava/lang/String;)V
 ���� prepareDocument ()Lorg/openide/util/Task;
 ���� openDocument #()Ljavax/swing/text/StyledDocument;
 ���� getPositionManager (()Lorg/openide/text/PositionRef$Manager;� java/lang/ref/WeakReference
� 
����� $org/openide/text/PositionRef$Manager documentOpened (Ljava/lang/ref/Reference;)V�  ces.openDocument() returned null� &org/openide/util/UserQuestionException	 ��� uqe (Lorg/openide/util/UserQuestionException;� java/io/IOException
���� getCause ()Ljava/lang/Throwable;� Not EDT� *CEI:handleUserQuestionExceptionInEDT: uqe=� 
� -org/openide/text/CloneableEditorInitializer$3
�� � �(Lorg/openide/text/CloneableEditorInitializer;Lorg/openide/text/CloneableEditorSupport;Lorg/openide/util/UserQuestionException;)V
����  -org/openide/text/UserQuestionExceptionHandler handleUserQuestionException� 4Null document for non-cancelled initialization. uqe=
 ��� getActionMap ()Ljavax/swing/ActionMap;
��� javax/swing/JEditorPane
����� javax/swing/ActionMap 	setParent (Ljavax/swing/ActionMap;)V� !javax/swing/text/DefaultEditorKit� cut-to-clipboard
 ��� 	getAction ((Ljava/lang/String;)Ljavax/swing/Action;
���� put )(Ljava/lang/Object;Ljavax/swing/Action;)V� copy-to-clipboard� delete� delete-next� paste-from-clipboard� java/util/concurrent/Callable���� call ()Ljava/lang/Object;� java/lang/Exception
����  javax/swing/text/EditorKit 
getActions ()[Ljavax/swing/Action; javax/swing/Action Name getValue &(Ljava/lang/String;)Ljava/lang/Object;

 v java/lang/String equals (org/openide/text/NbDocument$CustomEditor createEditor /(Ljavax/swing/JEditorPane;)Ljava/awt/Component; 	Document: C implementing NbDocument.CustomEditor may not return null component
  setCustomComponent (Ljava/awt/Component;)V
 � wrapEditorComponent *(Ljava/awt/Component;)Ljava/awt/Component;! javax/swing/JScrollPane
 # 
�!& )org/openide/text/NbDocument$CustomToolbar%()* createToolbar 1(Ljavax/swing/JEditorPane;)Ljavax/swing/JToolBar;, B implementing NbDocument.CustomToolbar may not return null toolbar. Nb.Editor.Toolbar.border
0123h javax/swing/UIManager get5 javax/swing/border/Border
7!8 javax/swing/JToolBar: North
�<=> setEditorKit (Ljavax/swing/text/EditorKit;)V@  org/openide/text/QuietEditorPane
?BC � 
setWorking
�E F (Ljavax/swing/text/Document;)V
 HI ( initCustomEditor
 KL ( initDecoration
 N l
 PQ � getCursorPosition
�STU getCaret ()Ljavax/swing/text/Caret;WXYZ � javax/swing/text/Caret setDot
�\]� 	getParent
 _`a shouldRequestFocus (Ljava/awt/Component;)Zc requestFocusInWindow {0}
 4ezf @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 hi  requestFocusInWindowk -org/openide/text/CloneableEditorInitializer$4
j �
 no ( finishInitializationq +org/openide/cookies/EditorCookie$Observables openedPanes
 �uvw firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
 �yz ( ensureAnnotationsLoaded
|}~�  org/openide/windows/TopComponent getRegistry -()Lorg/openide/windows/TopComponent$Registry;����� )org/openide/windows/TopComponent$Registry getActivated $()Lorg/openide/windows/TopComponent;
���]� java/awt/Component ()Ljava/awt/Container;� phase=� 	, editor=
����  java/lang/Class desiredAssertionStatus	  *
��
 4��� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;� &org.openide.text Editor Initialization
 �	Y� java/util/ArrayList
��  �� -org/openide/text/CloneableEditorInitializer$1
� < modalDialog 	Signature &Ljava/util/List<Ljava/lang/Runnable;>; waitForFinishedInitialization %(Lorg/openide/text/CloneableEditor;)V Code LineNumberTable LocalVariableTable ex  Ljava/lang/InterruptedException; StackMapTable� java/lang/Throwable MethodParameters request g(Lorg/openide/text/CloneableEditor;Lorg/openide/text/CloneableEditorSupport;Ljavax/swing/JEditorPane;)V this -Lorg/openide/text/CloneableEditorInitializer; start success nextOrdinal I Ljava/lang/RuntimeException; thread Ljava/lang/String; d Ljavax/swing/text/Document; who Ljava/lang/Object; howLong J now #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value fallthrough Ljava/io/IOException; handler /Lorg/openide/text/UserQuestionExceptionHandler; am Ljavax/swing/ActionMap; paneMap e Ljava/lang/Exception; i key actions [Ljavax/swing/Action;� customComponent Ljava/awt/Component; ce *Lorg/openide/text/NbDocument$CustomEditor; noBorderPane Ljavax/swing/JScrollPane; customToolbar Ljavax/swing/JToolBar; +Lorg/openide/text/NbDocument$CustomToolbar; b Ljavax/swing/border/Border; caret Ljavax/swing/text/Caret; cursorPosition 	actionMap p c active "Lorg/openide/windows/TopComponent; Ljava/lang/Override; 
access$000 Q(Lorg/openide/text/CloneableEditorInitializer;Ljavax/swing/text/StyledDocument;)V x0 x1 <clinit> 
SourceFile CloneableEditorInitializer.java InnerClasses Task Phase� org/openide/text/PositionRef Manager� org/openide/text/NbDocument CustomEditor CustomToolbar�  org/openide/cookies/EditorCookie 
Observable Registry 0  ~  n  ~ ,    + ,    � �   Y ,   � 
      �   �  � �    � �    � �    � �    _`    � �    � �    � �      ��     � 
   	 
    �� �  r     �� � � � � Y� �� YL�*� � +ñ+ç M+�,�*� "� �� %� YL�*� � +ñ� )� -� 3� $� )� 9Y� ;=� ?*� C� I
� L� O� S�  W� Y � M,� a+ç N+�-����   % +   & ( +   + . +   K � � _ A J �   K � �   � � �   �   J    Y  ]  ^ # _ & a 0 d 7 e 8 g ; h A i H j K o W p x s � v � t � u � x�     � ��    � � �  �   $ �  ~D�� �  ~,M _D�� �    �    ' ( �   �     >� YL² � g � � � j � nK� +ç +ç M+�,�*� 	*� p ��Ʊ   # +   & ( +   + . +   �   & 	     �  � ! � & � 0 � 4 � : � = ��       � �   & � �   0 
� �  �   3  �    ~�   n ~  �    ~ ��   n  � 	  � � �   �     � YL² *� s W� w+ç M+�,��            �       �  �  �  �  ��       � �  �    �   n ~ �� �   �    y ( �   e     � YK² � z *ç L*�+��            �       �  �  �  ��    �   ~ ��    � �   l     *� }*+� �*,� �*-� ��   �       �  � 	 �  �  ��   *    ��      � �     � �     � � �    �   �   �    � ( �   �     B<**� �� �� �*� �*� �*� �� �*� �� �*� �W<� *� �� M� *� �,��   + 6   �   6    �  �  �  �  � $ � ) � + � / � 6 � ; � ? � A ��       B��    @� 
 �    � 6   �� ��    �  �  �     �*� �� *� �� �� #*� �� �`<� ¾� *� �2� �� �<*� �� ƙ =� )� -� 3� !� )� 9Y� ;ɶ ?*� �
� L� O� S*� θ Ҳ ض ܧ 5� )� -� 3� !� )� 9Y� ;߶ ?*� �
� L� O� S*� �� �<� *� �� M� *� �,��  3 � �   �   Z    �  �  �  � # � / � 1 � 3 � = � I � g � k � w � � � � � � � � � � � � � � � � � � �       ��    ���   3 �� 
 �    
� � � 5)L�� ��    $  �   /     *� �   �      �       ��     � ( �   �     >� )� -� 3� !� )� 9Y� ;� ?*� �
� L� O� S*� �� � �Y*� � �   �       	 * 2 =�       >��  �    *  o ( �   r     3� )� -� 3� !� )� 9Y� ;�� ?*� �
� L� O� S*� �� �   �        * 2�       3��  �    *  � ( �   � 	    e*� �� �Y� �� �*� �Y ���
*�
�*�
�*�
�Y�Y��� *�
�$*� �*�
'�)�   �   "   " # !$ )% 1& N' V( d)�       e��    r ( �  �    ��,@>�0*� �� �.�     p         /   7   ?   G   O   W   _   g*�6>� h*�9>� `*�<>� X*�?>� P*�B>� H*�E>� @*�H>� 8*�K>� /�NY� 9Y� ;P� ?*� �� �R� ?*� �� ˶ O�T��  *� ��:� a�:� *� ���>�,e7�W� -� 3� � � 	Z� \:*�]:� � c�e :� *� ��i:�W� -� 9Y� ;l� ?*� �� �n� ?� ?p� ?� O� ~YSY�rS�x>� *� �� :	� *� �	�>*� �W>� *� �� :
� *� �
��   � �U  � �   � � �   �al  lnl  {��  ���   �   � 9  - . 0 @2 E3 H5 M6 P8 U9 X; ]< `> e? hA mB pD uE xH |I ~J �M �W �X �Y �P �Q �U �W �X �Y �[ �] �_ �` �a �b �cdegXi\g_kamenlmrnvpyr{t�u�w�x�w�x�z�|�   R  � ��  � k��  � e��  P��  � ���   ���   ���  �� 
 �   � � @+HUI�� 
 �� �  B
� 
aI ~�  ~� A�    �� 	 	      �  �     S�� 	 
       �  �     �    � �[ s� 8  �       ˲|� -� 3� g�|� -� 9Y� ;� ?�,���� ?����� ?�� ?*� �� C��� ?�� ?*� �� C��� ?�� ?*� ���� ?� O��*� ���W**� ���� *� �����Y*�]����� � *�]� � Y�� ��L*+���L+��� 
+��� a�  p � �� p � �� �   R    � � +� >� Q� d� m� p� x� �� �� �� �� �� �� �� �� �� ���      � ��  � ��    ���  �    � p?A�G�� �  ;  �  !     �� � � � � Y�� �*��� V�|� -� 3� &�|� 9Y� ;¶ ?*��� �Ķ ?� O� S��Y**� �*����L+�˙ *��� *� �*�]� ,*� �� � "�NY� 9Y� ;ж ?*��� ˶ O�T�*��� � �   �   .   � � � *� M� ^� e� m� q� �� ���     ^ ��    ���  �    5� �� /
@    �   >     *+�]�   �   
   � ��       ��     _` �   _   >  �   �     d*� ���L*� ���M*� �+,��*� � N*� �-�,�*���,�*���,�*���,�*����    "   �   6   � � � � � � "� (� *� 8� F� T� b��        d��    \��   T�� �    � "  �� � A  �   ~     !*� ��� *� ���� W� L+� a�  
  � �      � 
� � � � ��      ��    !��  �    Z� �� �   �     =+� �*� �� �*� ���M>,�� +,2� �	� ,2������   �   * 
  � � � � � � � 1� 5� ;��   *   "��    =��     =��   &�� �    � 	�� �   �   I ( �  \     �*�]�� q*�]�L*� �+*� �� M*� � N*� �-�,� (�NY� 9Y� ;� ?*�]� �� ?� O�T�*� �,�*� �*� �,�'�)� )� Y*� ��"L*� ��$*� �*� �+�'�)�   " *   �   F   � 
� � � " ' * 0 2 6 [
 c u x � � ��   4  " ��   c��  2 C��  � ��    ���  �    � *   �� �(� % L ( �  &     v*�]�%� n*�]�%L*� �+*� ��' M*� � N*� �-�,� (�NY� 9Y� ;� ?*�]� �+� ?� O�T�-�/�4N,-�6*� �,9�)�   " *   �   :    
   " ' * 0 2  6! [& e' j( u*�   4  " ��   c��  2 C��  e ��    v��  �    � *  % �� 7(�  D  �   �     8*� �*� �*� ��;*� ��?�A*� �*�]�D*� � L*� �+��   & .   �   & 	  - / 3 5 &7 +8 .7 48 69�       8��  �    n� G  �  8     �*�G*�J*� �*�
�M*� ��?�A*� ��O<� *� ��RM,� 
,�V *� ���M,�[N,��,-��**� ��^� �|� -b*� ��d*� ��gW�jY*�l� �*�m�   �   N   = > ? @ B &C +D 3E 7F >I FJ KK PL UQ `R pS xV �` �a�   4  3 ��    ���   & c��  F C��  K >�� �    � >� 9�� J  �   <     *� �r�t�   �   
   g h�       ��   M ( �   6     *� ��x�   �   
   l m�       ��   `a �   �     �{�� M+� +,� �+��L����   �      p 	q r s u w�        ��     ��  	 �� �   
 � 	|
�   �    Q R �   R     (� 9Y� ;�� ?*� �� ��� ?*� �� C� I� O�   �      |�       (��  �    �  �� �   :     *+� �   �       <�       ��     �`  � ( �   �      M��� � � ���|����� )� �Y���� �����W��Y��� ��Y��� ر   �       <  ?  B ! D . F 7 O B Q�    @ �   ��   b  � ��  � �@ �      1    ��� �      ��	%��	j      p��	�|�	�      