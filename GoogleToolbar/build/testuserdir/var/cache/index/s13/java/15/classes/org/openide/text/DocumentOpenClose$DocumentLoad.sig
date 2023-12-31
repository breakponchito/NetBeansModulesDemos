����   4�	      /org/openide/text/DocumentOpenClose$DocumentLoad this$0 $Lorg/openide/text/DocumentOpenClose;
  	 
   java/lang/Object <init> ()V	     reload Z	     $assertionsDisabled  java/lang/AssertionError  !loadDoc cannot be null for reload
     (Ljava/lang/Object;)V	     preReloadInEDT	     ! loadDoc !Ljavax/swing/text/StyledDocument;	  # $ % reloadOpenPanes [Ljavax/swing/JEditorPane;
  '  	  ) *  atomicLockedRun
  , * 	 . / 0 1 2 "org/openide/text/DocumentOpenClose ces )Lorg/openide/text/CloneableEditorSupport;
 4 5 6 7 8 'org/openide/text/CloneableEditorSupport getUndoRedo $()Lorg/openide/awt/UndoRedo$Manager;	  : ;  userQuestionExceptionInReload	 . = > ? lock Ljava/lang/Object;	 . A B C documentStatus !Lorg/openide/text/DocumentStatus;	 E F G H C org/openide/text/DocumentStatus OPENED J java/lang/StringBuilder
 I 	 M Invalid documentStatus=
 I O P Q append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 I S P T -(Ljava/lang/Object;)Ljava/lang/StringBuilder; V  expected OPENED
 I X Y Z toString ()Ljava/lang/String;	 E \ ] C 	RELOADING	 E _ ` C CLOSED b  expected CLOSED	 E d e C LOADING g h i j k javax/swing/text/StyledDocument removeUndoableEditListener +(Ljavax/swing/event/UndoableEditListener;)V
 m n o p   org/openide/awt/UndoRedo$Manager discardAllEdits
 4 r s t createEditorKit ()Ljavax/swing/text/EditorKit;
 4 v w x createStyledDocument ?(Ljavax/swing/text/EditorKit;)Ljavax/swing/text/StyledDocument; z )kit.createDefaultDocument() returned null
 | } ~  � org/openide/text/NbDocument 	runAtomic 8(Ljavax/swing/text/StyledDocument;Ljava/lang/Runnable;)V	  � � � loadIOException Ljava/io/IOException;	  � � � loadRuntimeException Ljava/lang/RuntimeException;
 4 � � � setListeningOnEnv (Z)V �  org/openide/text/UndoRedoManager
 � � �  markSavepoint
 . � � � 
access$000 ()Ljava/util/logging/Logger; � task-addUndoableEditListener
 � � � � � java/util/logging/Logger fine (Ljava/lang/String;)V g � � k addUndoableEditListener
 4 � �  callNotifyUnmodified
 . � � � updateLines %(Ljavax/swing/text/StyledDocument;Z)V	  � �  loadSuccess � &org/openide/util/UserQuestionException
  � � � reloadUQEThrown +(Lorg/openide/util/UserQuestionException;)V
 . � � � 	setDocRef $(Ljavax/swing/text/StyledDocument;)V
 4 � � � setPreventModification	 . � � � activeReloadTask (Lorg/openide/util/RequestProcessor$Task;	 . � � � activeReload 1Lorg/openide/text/DocumentOpenClose$DocumentLoad;	 . � � � activeOpenTask	 . � � � 
activeOpen	 � � � � � java/util/logging/Level FINER Ljava/util/logging/Level;
 � � � � 
isLoggable (Ljava/util/logging/Level;)Z � documentLoad(): reload=
 I � P � (Z)Ljava/lang/StringBuilder; � , documentStatus= � , loadSuccess= � 

 � � � � finer	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;   � � � run G(Lorg/openide/text/DocumentOpenClose$DocumentLoad;)Ljava/lang/Runnable;
 � � � � postReadRequest (Ljava/lang/Runnable;)V � java/lang/RuntimeException
 4 � � � getPositionManager (()Lorg/openide/text/PositionRef$Manager;
 � � � �  $org/openide/text/PositionRef$Manager documentClosed
 4 � � � updateLineSet (Z)Lorg/openide/text/Line$Set;
 4 � � � removeDocListener (Ljavax/swing/text/Document;)V  clearDocument g 	getLength ()I g remove (II)V
 %javax/swing/text/BadLocationException	 � � INFO
 � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V	   skipInputStreamReading java/io/BufferedInputStream
 4 cesEnv /()Lorg/openide/text/CloneableEditorSupport$Env;  +org/openide/text/CloneableEditorSupport$Env inputStream ()Ljava/io/InputStream;
" # (Ljava/io/InputStream;)V
 4%&' loadFromStreamToKit U(Ljavax/swing/text/StyledDocument;Ljava/io/InputStream;Ljavax/swing/text/EditorKit;)V
)*+,  java/io/InputStream close. java/lang/ref/WeakReference
- 
 �123 documentOpened (Ljava/lang/ref/Reference;)V
 456  updateLastSaveTime
 489 � addDocListener	 ;<= reloadCaretOffsets [I? javax/swing/text/Position
ABCDE java/lang/Math min (II)I
AGHE max gJKL createPosition (I)Ljavax/swing/text/Position;N 1org/openide/text/DocumentOpenClose$DocumentLoad$1
MP Q P(Lorg/openide/text/DocumentOpenClose$DocumentLoad;[Ljavax/swing/text/Position;)VS java/lang/IllegalStateException
RU V (Ljava/lang/Throwable;)VX java/io/IOExceptionZ 1org/openide/text/DocumentOpenClose$DocumentLoad$2
Y\ ] 4(Lorg/openide/text/DocumentOpenClose$DocumentLoad;)V g_` � renderb +org/openide/cookies/EditorCookie$Observabled 	reloading
fghij java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
 4lmn firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V	 .pqr RP #Lorg/openide/util/RequestProcessor;
tuvwx !org/openide/util/RequestProcessor create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
z{|}~ &org/openide/util/RequestProcessor$Task schedule (I)V� 1org/openide/text/DocumentOpenClose$DocumentLoad$3
� � �(Lorg/openide/text/DocumentOpenClose$DocumentLoad;Lorg/openide/text/CloneableEditorSupport;Lorg/openide/util/UserQuestionException;)V
����  -org/openide/text/UserQuestionExceptionHandler runInEDT
 4�� � fireDocumentChange
 I� ~
 .��� getSimpleName &(Ljava/lang/Object;)Ljava/lang/String;� 	: reload=� 
, loadDoc=� , reloadOpenPanes.length=
 I� P� (I)Ljava/lang/StringBuilder;
����� java/lang/Class desiredAssertionStatus ()Z� java/lang/Runnable '(Lorg/openide/text/DocumentOpenClose;)V Code LineNumberTable LocalVariableTable this MethodParameters b(Lorg/openide/text/DocumentOpenClose;Ljavax/swing/text/StyledDocument;[Ljavax/swing/JEditorPane;)V StackMapTable % kit Ljavax/swing/text/EditorKit; undoRedoManager "Lorg/openide/awt/UndoRedo$Manager; ex� java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 'Ljavax/swing/text/BadLocationException; is Ljava/io/InputStream; offset I i docLen caretPositions [Ljavax/swing/text/Position;� success uqe (Lorg/openide/util/UserQuestionException; handler /Lorg/openide/text/UserQuestionExceptionHandler; sb Ljava/lang/StringBuilder; lambda$run$0 <clinit> 
SourceFile DocumentOpenClose.java BootstrapMethods�
����� "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; �
 ��  InnerClasses DocumentLoad� org/openide/awt/UndoRedo Manager Task� org/openide/text/PositionRef� org/openide/text/Line$Set� org/openide/text/Line Set Env�  org/openide/cookies/EditorCookie 
Observable� %java/lang/invoke/MethodHandles$Lookup� java/lang/invoke/MethodHandles Lookup 0   �           !     �      � �     � �     ;           $ %    <=    *                 
   � �   A     *+� *� *� �   �      < 	= >�       � �  �       � �   �     2*+� *� � � ,� � Y� �*� *� *,� *-� "�   �      @ 	A B "C 'D ,E 1F�        2� �     2   !    2 $ % �    �    . g�  �         $    �  �  d    q*� � *� *� &�*� (� *� (*� +�*� � -� 3L*� 9�*� � <YM�*� � I� � 6*� � @� D� )� Y� IY� KL� N*� � @� RU� N� W� �*� � [� @� F� � 6*� � @� ^� )� Y� IY� KL� N*� � @� Ra� N� W� �*� � c� @,ç N,�-�*� � *� +� f +� l� J*� � <YM�*� � -� qN**� � --� u� � � *� � � Yy� �,ç 
:,��*� (*� *� {*� �� �*� �� ~*� � 
+� l� *� � -� �+� �� 
+� �� �*� � � ��� �*� +� � *� � -� �*� *� � �*� � <YM�*� � D� @,ç 
:,��*� �*� � *� �� �� **� �� �� �*� 9��*� � <YL�*� ��  *� � ^� @*� � �*� � -� �*� � -� �*� � *� � �*� � �� *� � �*� � ø �� ƶ ̙ ?� �� IY� Kж N*� � �ն N*� � @� R׶ N*� �� �ٶ N� W� �+ç 
:+��*� �Ų �*� �  � ��L*+� �*� 9��*� � <YL�*� ��  *� � ^� @*� � �*� � -� �*� � -� �*� � *� � �*� � �� *� � �*� � ø �� ƶ ̙ ?� �� IY� Kж N*� � �ն N*� � @� R׶ N*� �� �ٶ N� W� �+ç 
:+��*� � � �*� �  � � �:*� 9� �*� � <Y:	�*� ��  *� � ^� @*� � �*� � -� �*� � -� �*� � *� � �*� � �� *� � �*� � ø �� ƶ ̙ ?� �� IY� Kж N*� � �ն N*� � @� R׶ N*� �� �ٶ N� W� �	ç :
	�
�*� � � �*� �  � ���  > � �   � � �   �-0  040  ���  ���  ���  ���   "�� ��wz  z~z   "��  ���  �OR  RWR  ���   �  � c  J K L M O P Q !R "W -X 4Y >Z E[ ~] �_ �a �c �e �h �l �o �pqr+s7x<yD{R|Y~`�k�r�y�������������������������������)�0�8�C�K�S�_��������������������������
���%�-�9�u�������������������������������L�Z�a�m�p��   *  &��  -��� � � �   q� �  �   � *� [ m 8	D�� � : D�� (
� .   m  �� � � 4 $� GD�� U �� : $� GD�� U�� 7 
        �   $� GE�� �     �    �    *  �  M    �*� 9� q*� � *� � -� � �*� � -� �W*� � -*� � �*� � A� ��� �*� � � *� *� � � � L� ��+�� *� 9*�� A�Y*� � -�� �!L*� � -*� +*� � -� q�$+�(� 
M+�(,�*� *� � �*� � "*� "� *� � -� �-Y*� �/�0*� � -� �W*� � -�4*� � -*� �7*� � h*�:� a*� � <*�:��>M>*�:�� 4*�:.6�@�F6,*� �I S� 	:,S���ɲ ޻MY*,�O� �*� � -� �� L*�RY+�T� �� 	L*+� ��  D c f	 � � �  @be	  ��	  ��W �   � 0  � � � � '� 5� <� D� P� c� f� g� r� u� z� �� �� �� �� �� �� �� �� �� �� ��� ",5@HT	be
gkq� �'�"�$�'�%�&�(�   f 
 g ��  � '�� H �� g �� 7 :�� , T�� 5 K�� � �� � � �   �� �  �   : ';B	� =  ) �� 0� F�m	� � M	OW     �       r<*� �YY*�[�^ *� � -c�e�e�k*� �o*�s� �*� � ��y<� -*� � �*� � �� M� *� � �*� � �,��   C Z   �   :   + - : (< 6= A> C@ GA OB Z@ _A gB oD qE�       r� �    p�  �    � Z   �� ��    � � �   k     !*� 9�Y**� � -*� �� ���M,���   �      H J ^  b�        !� �     !��   �� �   �    �  �   R     *� �� *� � -*� ���   �      f g i�       � �  �      Y Z �   �     `� IY ȷ�L+*��� N�� N*� � ��� N*� ��� N׶ N*� �� �W*� � *� "� +�� N*� "���W+� W�   �   "   m n #o 2p =q Dr Ks [v�       `� �    U�� �    � [ I�    �  �  �   @     *� � -c�e�e�k�   �      ��       � �   �  �   4      .��� � � �   �      �    @ �   ��    � ����   Z   .�  m�� 	zt�  ��� ���	 4�	M      Y      a��	      ��� 