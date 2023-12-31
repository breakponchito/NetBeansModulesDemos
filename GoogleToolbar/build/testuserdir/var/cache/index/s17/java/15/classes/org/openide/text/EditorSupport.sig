����   4Y  'org/openide/text/CloneableEditorSupport	      org/openide/text/EditorSupport del $Lorg/openide/text/EditorSupport$Del; 
 %org/openide/text/EditorSupport$DelEnv
      )org/openide/loaders/MultiDataObject$Entry getDataObject '()Lorg/openide/loaders/MultiDataObject;
 	    <init> ((Lorg/openide/loaders/MultiDataObject;)V
      org/openide/loaders/OpenSupport S(Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/loaders/OpenSupport$Env;)V   *	     modifiedAppendix Ljava/lang/String;	  ! " # listenToModifs Z % "org/openide/text/EditorSupport$Del	  ' ( ) env .Lorg/openide/windows/CloneableOpenSupport$Env;	  + , - 
allEditors /Lorg/openide/windows/CloneableTopComponent$Ref;
 $ /  0 �(Lorg/openide/text/EditorSupport;Lorg/openide/loaders/DataObject;Lorg/openide/text/CloneableEditorSupport$Env;Lorg/openide/windows/CloneableTopComponent$Ref;)V
 $ 2 3 4 superMessageOpening ()Ljava/lang/String;
 $ 6 7 4 superMessageOpened
 $ 9 : 4 superMessageSave
 $ < = 4 superMessageName
 $ ? @ 4 superMessageToolTip
 $ B C D superUpdateTitles ()V
  F G H prepareDocument ()Lorg/openide/util/Task;
  J K  findDataObject M %org/openide/text/EditorSupport$Editor
 L O  P #(Lorg/openide/loaders/DataObject;)V
 $ R S T superUndoRedoManager $()Lorg/openide/awt/UndoRedo$Manager;
 $ V W D open
 $ Y Z [ close ()Z
 $ ] ^ _ 
superClose (Z)Z
 $ F
 $ b c d openDocument #()Ljavax/swing/text/StyledDocument;
 $ f g d getDocument
 $ i j [ isDocumentLoaded
 $ l m D superSaveDocument
 $ o p q superSaveFromKitToStream V(Ljavax/swing/text/StyledDocument;Ljavax/swing/text/EditorKit;Ljava/io/OutputStream;)V
 $ s t [ 
isModified	  v w x entry +Lorg/openide/loaders/MultiDataObject$Entry;
 $ z { | createPositionRef A(ILjavax/swing/text/Position$Bias;)Lorg/openide/text/PositionRef;
 $ ~  � 
getLineSet ()Lorg/openide/text/Line$Set;
 $ � � � setMIMEType (Ljava/lang/String;)V
 $ � � � superCreateEditorKit ()Ljavax/swing/text/EditorKit;
 $ � � � addChangeListener %(Ljavax/swing/event/ChangeListener;)V
 $ � � � removeChangeListener
 $ � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 $ � � � removePropertyChangeListener
 $ � � D print
 $ � � � superLoadFromStreamToKit U(Ljavax/swing/text/StyledDocument;Ljava/io/InputStream;Ljavax/swing/text/EditorKit;)V
  � � H reloadDocumentTask
 � � � � D org/openide/util/Task waitFinished
 $ � � H superReloadDocument
 $ � � � openAt O(Lorg/openide/text/PositionRef;I)Lorg/openide/text/CloneableEditorSupport$Pane; � � � � � ,org/openide/text/CloneableEditorSupport$Pane getEditorPane ()Ljavax/swing/JEditorPane;
 � � � � � java/awt/Component 	getParent ()Ljava/awt/Container;
 $ � � [ superCanClose
 $ � � � getOpenedPanes ()[Ljavax/swing/JEditorPane;
  � � � modifySaveCookie (Z)V
 $ � � D superNotifyUnmodified
 $ � � [ superNotifyModified
 $ � � D superNotifyClosed
 $ � � � es "()Lorg/openide/text/EditorSupport; � 'org/openide/text/EditorSupport$EntryEnv
 � � � D addSaveCookie
 � � � D removeSaveCookie � +org/openide/cookies/EditorCookie$Observable � org/openide/cookies/OpenCookie � org/openide/cookies/CloseCookie � org/openide/cookies/PrintCookie EDITOR_MODE ConstantValue � editor 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; .(Lorg/openide/loaders/MultiDataObject$Entry;)V Code LineNumberTable LocalVariableTable this  Lorg/openide/text/EditorSupport; MethodParameters messageOpening messageOpened messageSave messageName messageToolTip updateTitles createCloneableTopComponent -()Lorg/openide/windows/CloneableTopComponent; obj  Lorg/openide/loaders/DataObject; 'Lorg/openide/text/EditorSupport$Editor; createUndoRedoManager ask 
Exceptions � java/io/IOException saveDocument saveFromKitToStream doc !Ljavax/swing/text/StyledDocument; kit Ljavax/swing/text/EditorKit; stream Ljava/io/OutputStream; %javax/swing/text/BadLocationException offset I bias  Ljavax/swing/text/Position$Bias; s 
setActions +([Lorg/openide/util/actions/SystemAction;)V actions ([Lorg/openide/util/actions/SystemAction; createEditorKit setModificationListening l "Ljavax/swing/event/ChangeListener; #Ljava/beans/PropertyChangeListener; loadFromStreamToKit Ljava/io/InputStream; reloadDocument G(Lorg/openide/text/PositionRef;)Lorg/openide/text/EditorSupport$Editor; pos Lorg/openide/text/PositionRef; p .Lorg/openide/text/CloneableEditorSupport$Pane; c Ljava/awt/Component; StackMapTable canClose notifyUnmodified notifyModified notifyClosed extract K(Lorg/openide/text/CloneableEditorSupport;)Lorg/openide/text/EditorSupport; ces )Lorg/openide/text/CloneableEditorSupport; add 
access$000 F(Lorg/openide/text/EditorSupport;)Lorg/openide/text/EditorSupport$Del; x0 
SourceFile EditorSupport.java InnerClasses Del DelEnv4 #org/openide/loaders/MultiDataObject Entry7 #org/openide/loaders/OpenSupport$Env Env: ,org/openide/windows/CloneableOpenSupport$Env< (org/openide/windows/CloneableOpenSupport> -org/openide/windows/CloneableTopComponent$Ref@ )org/openide/windows/CloneableTopComponent RefC +org/openide/text/CloneableEditorSupport$Env EditorF  org/openide/awt/UndoRedo$ManagerH org/openide/awt/UndoRedo ManagerK javax/swing/text/Position$BiasM javax/swing/text/Position BiasP org/openide/text/Line$SetR org/openide/text/Line Set Pane EntryEnvW  org/openide/cookies/EditorCookie 
Observable !    � � � �   �   �    � �     �     �       �     �     �    " #        +   �  �        7*+� 	Y+� � � *� *�  *� $Y*+� *� &� 	*� *� .� �    �       F  8  <  H " I 6 M �       7 � �     7 w x  �    w    � 4  �   2     *� � 1�    �       S �        � �    � 4  �   2     *� � 5�    �       Z �        � �    � 4  �   2     *� � 8�    �       c �        � �    � 4  �   2     *� � ;�    �       k �        � �    � 4  �   2     *� � >�    �       s �        � �    � D  �   6     *� � A�    �   
    z  { �        � �    � �  �   _     *� EW*� IL� LY+� NM,�    �       �  � 
 �  � �         � �   
  � �    � �   � T  �   2     *� � Q�    �       � �        � �    W D  �   6     *� � U�    �   
    �  � �        � �    Z [  �   2     *� � X�    �       � �        � �    Z _  �   =     	*� � \�    �       � �       	 � �     	 � #  �    �   ! G H  �   2     *� � `�    �       � �        � �    c d  �   2     *� � a�    �       � �        � �   �     �  g d  �   2     *� � e�    �       � �        � �    j [  �   2     *� � h�    �       � �        � �    � D  �   6     *� � k�    �   
    �  � �        � �   �     �   q  �   W     *� +,-� n�    �   
    � 
 � �   *     � �               �     � �           t [  �   2     *� � r�    �       � �        � �    K   �   2     *� u� �    �       � �        � �    { |  �   H     
*� ,� y�    �      
 �        
 � �     
	
    
  �   		       �  �   2     *� � }�    �       �        � �    � �  �   A     	*� +� ��    �   
     �       	 � �     	   �        �   5      �    �      " �        � �       �      �     �     �    �  �   2     *� � ��    �      ( �        � �    �  �   >     *�  �    �   
   4 5 �        � �      " #  �    "   � �  �   A     	*� +� ��    �   
   < = �       	 � �     	  �       � �  �   A     	*� +� ��    �   
   C D �       	 � �     	  �       � �  �   A     	*� +� ��    �   
   G H �       	 � �     	  �       � �  �   A     	*� +� ��    �   
   K L �       	 � �     	  �       � D  �   6     *� � ��    �   
   P Q �        � �    �  �   W     *� +,-� ��    �   
   ` 
a �   *     � �               �     � �           D  �   6     *� �� ��    �   
   g h �        � �    � H  �   2     *� � ��    �      p �        � �    �  �   �     1*� +� �M,� L� ,� L�,� � N-� L� -� L�-� �N���    �      y 
z { }  $� )� �   *    1 � �     1  
 '     !    �  ��  � �      " [  �   2     *� � ��    �      � �        � �    � �  �   2     *� � ��    �      � �        � �   # D  �   ?     *� �*� � ı    �      � � � �        � �   $ [  �   R     *� � Ǚ 
*� ���    �      � 
� � � �        � �  !     % D  �   6     *� � ʱ    �   
   � � �        � �   &'  �   B     
*� $L+� Ͱ    �   
   � � �       
()        �   (    � �  �   q     #*�  � � *� &� Ѷ ӧ *� &� Ѷ ֱ    �      � � � � "� �       # � �     #* # !    	 �   *  +,  �   /     *� �    �       / �       - �   .   / �     �     �  0   r  $ 1  	 2  356 8 	9;8	=?A 	B 8	 L D 	EGI 	JLN OQS	 � T	 � U 
 �VX	