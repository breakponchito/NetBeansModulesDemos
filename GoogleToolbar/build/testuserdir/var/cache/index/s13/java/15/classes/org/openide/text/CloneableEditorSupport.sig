����   4�
      'org/openide/text/CloneableEditorSupport checkReload ([Ljavax/swing/JEditorPane;Z)V	   	 
 preventModification Z	     lastSaveTime J	     checkModificationLock Ljava/lang/Object;	    
 inUserQuestionExceptionHandler
     canCloseImpl ()I	     undoRedo "Lorg/openide/awt/UndoRedo$Manager;
    ! " # (org/openide/windows/CloneableOpenSupport open ()V	 % & ' ( ) org/openide/util/Lookup EMPTY Lorg/openide/util/Lookup;
  + , - <init> I(Lorg/openide/text/CloneableEditorSupport$Env;Lorg/openide/util/Lookup;)V
  / , 0 1(Lorg/openide/windows/CloneableOpenSupport$Env;)V 2 org/openide/text/Line$Set	  4 5 6 lineSet [Lorg/openide/text/Line$Set; 8 java/lang/Object
 7 : , #	  < =  LOCK_PRINTING	  ? @ A lastSelected Ljava/lang/ref/Reference; C l
 E F G H I org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V	  K L ) lookup N "org/openide/text/DocumentOpenClose
 M P , Q ,(Lorg/openide/text/CloneableEditorSupport;)V	  S T U 	openClose $Lorg/openide/text/DocumentOpenClose;
  W X Y messageName ()Ljava/lang/String; [ org/openide/text/Line ] FMT_CESLineDisplayName
 Z _ `  getLineNumber
 b c d e f java/lang/Integer valueOf (I)Ljava/lang/Integer;
 h i j k l org/openide/util/NbBundle 
getMessage [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;	  n o p env .Lorg/openide/windows/CloneableOpenSupport$Env; r +org/openide/text/CloneableEditorSupport$Env
  t u v createEditorKit ()Ljavax/swing/text/EditorKit;
 x y z { | 1org/openide/text/CloneableEditorSupportRedirector findRedirect T(Lorg/openide/text/CloneableEditorSupport;)Lorg/openide/text/CloneableEditorSupport;
  ~  � getUndoRedo $()Lorg/openide/awt/UndoRedo$Manager;
  � � � createUndoRedoManager	  � � � positionManager &Lorg/openide/text/PositionRef$Manager; � $org/openide/text/PositionRef$Manager
 � P	  � � 
 annotationsLoaded
  � � � 
getLineSet ()Lorg/openide/text/Line$Set;
 % � � � 
getDefault ()Lorg/openide/util/Lookup; � #org/openide/text/AnnotationProvider
 % � � � 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object; � � � � annotate 7(Lorg/openide/text/Line$Set;Lorg/openide/util/Lookup;)V
 7 � � � getClass ()Ljava/lang/Class;	  � � � warnedClasses Ljava/util/Set; � � � � � java/util/Set add (Ljava/lang/Object;)Z	  � � � ERR Ljava/util/logging/Logger; � java/lang/StringBuilder
 � :
 � � � � Y java/lang/Class getName
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � � should override asynchronousOpen(). See http://bits.netbeans.org/dev/javadoc/org-openide-text/apichanges.html#CloneableEditorSupport.asynchronousOpen
 � � � Y toString
 � � � � � java/util/logging/Logger warning (Ljava/lang/String;)V
   
  � � � asynchronousOpen
  � � � openDocument #()Ljavax/swing/text/StyledDocument; � &org/openide/util/UserQuestionException � )org/openide/text/CloneableEditorSupport$1
 � � , � }(Lorg/openide/text/CloneableEditorSupport;Lorg/openide/text/CloneableEditorSupport;Lorg/openide/util/UserQuestionException;)V
 � � � # runInEDT � java/io/IOException	 � � � � � java/util/logging/Level INFO Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � � � getPropertyChangeSupport $()Ljava/beans/PropertyChangeSupport;
 � � � �   java/beans/PropertyChangeSupport addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 �  removePropertyChangeListener
 � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V	 	
 propertyChangeSupport "Ljava/beans/PropertyChangeSupport;
 � , (Ljava/lang/Object;)V
  prepareDocument ()Lorg/openide/util/Task;
 M openTask	 java/lang/Boolean TRUE Ljava/lang/Boolean; supportsModificationListener !"# javax/swing/text/Document getProperty &(Ljava/lang/Object;)Ljava/lang/Object;
%& � equals( modificationListener
 *+, getListener 4()Lorg/openide/text/CloneableEditorSupport$Listener;./0 putProperty '(Ljava/lang/Object;Ljava/lang/Object;)V2 !javax/swing/text/AbstractDocument
1456 getDocumentFilter #()Ljavax/swing/text/DocumentFilter;8 1org/openide/text/CloneableEditorSupport$DocFilter
7: ,; M(Lorg/openide/text/CloneableEditorSupport;Ljavax/swing/text/DocumentFilter;)V	 =>? 	docFilter 3Lorg/openide/text/CloneableEditorSupport$DocFilter;
1ABC setDocumentFilter $(Ljavax/swing/text/DocumentFilter;)VE javax/swing/text/DocumentFilterGHI addDocumentListener '(Ljavax/swing/event/DocumentListener;)V	7KLM 
origFilter !Ljavax/swing/text/DocumentFilter;OPI removeDocumentListener
 MR " �
 TU � getDocument
 MT
 XY � 
isModified
 [\] cesEnv /()Lorg/openide/text/CloneableEditorSupport$Env; qX	 �`a � FINE
 �cde 
isLoggable (Ljava/util/logging/Level;)Z
 gh Y 
documentIDj : saveDocument() started.
 �lm � fineo   redirect to 
 qr # saveDocumentt :  No save performed because cesEnv().isModified() == falsev 1  No save performed because getDocument() == null	 xy 
 isSaving
 7{| # wait~ java/lang/InterruptedException
 ��� saveDocumentImpl %(Ljavax/swing/text/StyledDocument;Z)V
 7�� # 	notifyAll�������� q��� getTime ()Ljava/util/Date;
����� java/util/Date ()J� :  externalMod=
 �� �� (J)Ljava/lang/StringBuilder;�  > prevLST=� % => throw new UserQuestionException()� )org/openide/text/CloneableEditorSupport$2	 ��� mimeType Ljava/lang/String;
�� ,� `(Lorg/openide/text/CloneableEditorSupport;Ljava/lang/String;Ljavax/swing/text/StyledDocument;J)V� ;org/openide/text/CloneableEditorSupport$1MemoryOutputStream� )org/openide/text/CloneableEditorSupport$3
�� ,� �(Lorg/openide/text/CloneableEditorSupport;[ZLjavax/swing/text/StyledDocument;[Lorg/openide/text/CloneableEditorSupport$1MemoryOutputStream;Z[Ljava/io/IOException;)V� beforeSaveRunnable� � javax/swing/text/StyledDocument� java/lang/Runnable� )org/openide/text/CloneableEditorSupport$4
�� ,� .(Lorg/openide/text/CloneableEditorSupport;[Z)V� beforeSaveStart�.� beforeSaveEnd��� # run���� render (Ljava/lang/Runnable;)V�  : Save broken due to IOException
 ��� setLastSaveTime (J)V q��� outputStream ()Ljava/io/OutputStream;
���� writeTo (Ljava/io/OutputStream;)V
���� # java/io/OutputStream close� )org/openide/text/CloneableEditorSupport$5
� P�  : Save to file OK, oldSaveTime: � , 
�� ,�
 �� �� -(Ljava/lang/Object;)Ljava/lang/StringBuilder;� ;: Save failed (lastSaveTime == -1) restoring old save time.
 �� � callNotifyModified	 �� 
 $assertionsDisabled	����� org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
��� � isReadAccess� java/lang/AssertionError� KCloneableEditorSupport.getOpenedPanes() must be called from AWT thread only
�
 ��� getOpenedPanes ()[Ljavax/swing/JEditorPane;� java/util/LinkedList
� :	 �  
allEditors /Lorg/openide/windows/CloneableTopComponent$Ref;
 -org/openide/windows/CloneableTopComponent$Ref getComponents ()Ljava/util/Enumeration;
 	
 getLastSelected 0()Lorg/openide/text/CloneableEditorSupport$Pane; � java/util/Enumeration hasMoreElements � nextElement )org/openide/windows/CloneableTopComponent CloneableEditorSupport.Pane
# getClientProperty ,org/openide/text/CloneableEditorSupport$Pane  getEditorPane ()Ljavax/swing/JEditorPane;" java/awt/Component$ java/awt/Container
#&'( isAncestorOf (Ljava/awt/Component;)Z
�*+ addFirst
� �. java/lang/IllegalStateException0 <No reference to Pane. Please file a bug against openide/text
-2 , �
�45 � isEmpty
�78  size: javax/swing/JEditorPane
�<=> toArray (([Ljava/lang/Object;)[Ljava/lang/Object;@ [Ljavax/swing/JEditorPane;B HCloneableEditorSupport.getRecentPane must be called from AWT thread only
 DE  getRecentPaneG  org/openide/text/CloneableEditor
FIJ � isEditorPaneReady
 LMN afterRedirect -(Lorg/openide/windows/CloneableOpenSupport;)VP +org/openide/cookies/EditorCookie$ObservableR openedPanes
TUVW � java/lang/ref/Reference getY java/lang/ref/WeakReference
X
 \]^ updateLineSet (Z)Lorg/openide/text/Line$Set;	 `ab lineSetLineVector Lorg/openide/text/LineVector;d org/openide/text/LineVector
c :
 gh # print	 jk 
 printing
mnopq java/awt/print/PrinterJob getPrinterJob ()Ljava/awt/print/PrinterJob;
stuvw org/openide/text/NbDocument findPageable 5(Ljavax/swing/text/StyledDocument;)Ljava/lang/Object;y java/awt/print/Pageable
m{|} setPageable (Ljava/awt/print/Pageable;)V
���� !org/openide/text/PrintPreferences getPageFormat 8(Ljava/awt/print/PrinterJob;)Ljava/awt/print/PageFormat;� java/awt/print/Printable
m��� setPrintable 8(Ljava/awt/print/Printable;Ljava/awt/print/PageFormat;)V
m�� � printDialog
mg� java/io/FileNotFoundException� CTL_Bad_File
 ��� notifyProblem *(Ljava/lang/Exception;Ljava/lang/String;)V
����� org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V� $java/awt/print/PrinterAbortException� CTL_Printer_Abort� java/awt/print/PrinterException� EXC_Printer_Problem
���� Y java/lang/Exception getLocalizedMessage
 h� k� I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
���� attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
��� �� org/openide/DialogDisplayer ()Lorg/openide/DialogDisplayer;� &org/openide/NotifyDescriptor$Exception
�� ,�
���� notifyLater !(Lorg/openide/NotifyDescriptor;)V
 �� 
createPane��� getComponent -()Lorg/openide/windows/CloneableTopComponent;
��0 putClientProperty
 ��� createCloneableEditor $()Lorg/openide/text/CloneableEditor;
 ��� initializeCloneableEditor %(Lorg/openide/text/CloneableEditor;)V� 6org/openide/text/CloneableEditorSupport$1SafeAWTAccess
� P
��
����# java/util/Objects requireNonNull  ��� N(Lorg/openide/text/CloneableEditorSupport$1SafeAWTAccess;)Ljava/lang/Runnable;
���� postReadRequest
��� # waitForResult	���� ret I� $org/openide/util/UserCancelException
 �� Y messageSave
 h��� 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle;� javax/swing/JButton� CTL_Save
����� java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;
�2
���� getAccessibleContext )()Ljavax/accessibility/AccessibleContext;� ACSD_CTL_Save
  � %javax/accessibility/AccessibleContext setAccessibleDescription ACSN_CTL_Save
  � setAccessibleName
 CTL_Discard ACSD_CTL_Discard ACSN_CTL_Discard CTL_Discard_Mnemonic
 java/lang/String charAt (I)C
� setMnemonic (C)V org/openide/NotifyDescriptor LBL_SaveFile_Title	 !  CANCEL_OPTION
# ,$ N(Ljava/lang/Object;Ljava/lang/String;II[Ljava/lang/Object;Ljava/lang/Object;)V
�&'( notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;
 7%	+,  CLOSED_OPTION
 ./ � isDocumentLoaded
 M12 � isDocumentLoadedOrLoading
 45 � isDocumentReady
 M78 � isDocumentOpened
 x: {; U(Lorg/openide/text/CloneableEditorSupport;Z)Lorg/openide/text/CloneableEditorSupport;
 => � setMIMEType	 @A � 	listenersC java/util/HashSet
BE ,F (I)V �HI � removeK org/openide/text/PositionRef
 MNO getPositionManager (()Lorg/openide/text/PositionRef$Manager;
JQ ,R J(Lorg/openide/text/PositionRef$Manager;ILjavax/swing/text/Position$Bias;)V
F PU  org/openide/text/UndoRedoManager
T P
 XYZ getInputStream ()Ljava/io/InputStream; q\]Z inputStream_ java/io/ByteArrayOutputStream
^ :
 bcd saveFromKitToStream V(Ljavax/swing/text/StyledDocument;Ljavax/swing/text/EditorKit;Ljava/io/OutputStream;)Vf %javax/swing/text/BadLocationException
eh k Y
-jkl 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;n java/io/ByteArrayInputStream
^pqr toByteArray ()[B
mt ,u ([B)V�wx  	getLength
z{|}~ javax/swing/text/EditorKit write 6(Ljava/io/OutputStream;Ljavax/swing/text/Document;II)V
z��� read 4(Ljava/io/InputStream;Ljavax/swing/text/Document;I)V
 M�� 
reloadTask
����� +org/netbeans/api/editor/mimelookup/MimePath parse A(Ljava/lang/String;)Lorg/netbeans/api/editor/mimelookup/MimePath;
����� -org/netbeans/api/editor/mimelookup/MimeLookup 	getLookup H(Lorg/netbeans/api/editor/mimelookup/MimePath;)Lorg/openide/util/Lookup;
 %� L� %(Ljava/lang/Class;)Ljava/lang/Object;� 
text/plain
z�� � clone� 6org/openide/text/CloneableEditorSupport$PlainEditorKit
� :	 ��� kit Ljavax/swing/text/EditorKit;
 ��� getEditorKit 0(Ljava/lang/String;)Ljavax/swing/text/EditorKit; q�� Y getMimeType
z��� createDefaultDocument ()Ljavax/swing/text/Document;
 ��� createNetBeansDocument >(Ljavax/swing/text/Document;)Ljavax/swing/text/StyledDocument;����� # ,org/openide/windows/CloneableOpenSupport$Env unmarkModified	 ��� LOCAL_CLOSE_DOCUMENT Ljava/lang/ThreadLocal;
�U� java/lang/ThreadLocal
 �� # updateTitles
 �� � isAlreadyModified
 ��� setAlreadyModified (Z)V
 �� � notifyModified	 M��� docRef 0Lorg/openide/text/DocumentOpenClose$DocumentRef;
 ���� documentOpened (Ljava/lang/ref/Reference;)V
 �� # notifyUnmodified
 �� getAnyEditor
 ��� # documentClosed��� # markModified	 M��� RP #Lorg/openide/util/RequestProcessor;� )org/openide/text/CloneableEditorSupport$6
�� ,� T(Lorg/openide/text/CloneableEditorSupport;Lorg/openide/util/UserQuestionException;)V
����� !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;� Could not lock document
 �h
 ��
���� findLocalizedMessage )(Ljava/lang/Throwable;)Ljava/lang/String;
��� �� org/openide/awt/StatusDisplayer #()Lorg/openide/awt/StatusDisplayer;
��� � setStatusText
��  java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
� # beep notifyModified returns false
 �	 �
 .(Ljava/util/logging/Level;Ljava/lang/String;)V	  A lastReusable
T # clear .notifyModified returns true; env.isModified()=�X
 � � (Z)Ljava/lang/StringBuilder;
  # closeDocument
  � getDoc
  � getLock
 M!"# getDocumentStatusLA #()Lorg/openide/text/DocumentStatus;	%&'() org/openide/text/DocumentStatus 	RELOADING !Lorg/openide/text/DocumentStatus;+ ,org/openide/text/EditorSupportLineSet$Closed
* P. %org/openide/text/EditorSupportLineSet
-0 ,1 M(Lorg/openide/text/CloneableEditorSupport;Ljavax/swing/text/StyledDocument;)V
 3�4 (Z)Z
 3
 78 # notifyClosed
 M�	 ;< 
 reloadDialogOpened> FMT_External_change@ title
BCDEF 4org/netbeans/modules/openide/text/AskEditorQuestions askReloadDocument (Ljava/lang/String;)Z
 MHIJ reload ([Ljavax/swing/JEditorPane;)V
 LM reloadDocumentO org/openide/text/FilterDocument
NQ ,R (Ljavax/swing/text/Document;)V
 TU� fireStateChangeEventW document
 Z $org/openide/text/EnhancedChangeEvent
Y\ ,] 7(Ljava/lang/Object;Ljavax/swing/text/StyledDocument;Z)V �7`  javax/swing/event/ChangeListener �<c #[Ljavax/swing/event/ChangeListener;_efg stateChanged "(Ljavax/swing/event/ChangeEvent;)Vij # 
updateName
lmno   org/openide/windows/TopComponent getTabPosition
lq� �
lstF openAtTabPosition
 vw Y messageOpening
yz{ setReference 2(Lorg/openide/windows/CloneableTopComponent$Ref;)V
 }~ 	replaceTc G(Lorg/openide/windows/TopComponent;Lorg/openide/windows/TopComponent;)V
  
 �� Y messageOpened�  
��� getArbitraryComponent
 ��� 
openAtImpl P(Lorg/openide/text/PositionRef;IZ)Lorg/openide/text/CloneableEditorSupport$Pane;	����� "org/openide/text/Line$ShowOpenType 	REUSE_NEW $Lorg/openide/text/Line$ShowOpenType;
 ��� openPane 1(Z)Lorg/openide/text/CloneableEditorSupport$Pane;�� # ensureVisible� 1org/openide/text/CloneableEditorSupport$1Selector
�� ,� y(Lorg/openide/text/CloneableEditorSupport;Lorg/openide/text/CloneableEditorSupport$Pane;Lorg/openide/text/PositionRef;I)V
����� org/openide/util/Task addTaskListener "(Lorg/openide/util/TaskListener;)V	 ��� listener 2Lorg/openide/text/CloneableEditorSupport$Listener;� 0org/openide/text/CloneableEditorSupport$Listener
� P	 �� 
 listeningOnEnv q � q� : Setting new lastSaveTime to 	 �� 
 alreadyModified� : setAlreadyModified from �  to 	 ��� � FINEST� Setting to modified: 
�2
 M��� setDocumentStronglyReferenced
 M�� � getRefDocument� CES: 
 ��� � desiredAssertionStatus	T��� BEGIN_COMMIT_GROUP Ljavax/swing/undo/UndoableEdit;	 �	T��� END_COMMIT_GROUP	 �	T��� MARK_COMMIT_GROUP	 �
� :� 'org.openide.text.CloneableEditorSupport
 ���� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;� org/openide/util/WeakSet
� : EDITOR_MODE ConstantValue� editor 	PROP_PANE 	Signature ,Ljava/lang/ThreadLocal<Ljava/lang/Boolean;>; 3Ljava/util/Set<Ljavax/swing/event/ChangeListener;>; ILjava/lang/ref/Reference<Lorg/openide/text/CloneableEditorSupport$Pane;>; %Ljava/util/Set<Ljava/lang/Class<*>;>; FLjava/lang/ref/Reference<Lorg/openide/windows/CloneableTopComponent;>; 0(Lorg/openide/text/CloneableEditorSupport$Env;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/text/CloneableEditorSupport; -Lorg/openide/text/CloneableEditorSupport$Env; MethodParameters messageHtmlName messageToolTip messageLine +(Lorg/openide/text/Line;)Ljava/lang/String; line Lorg/openide/text/Line; cesKit mgr redirect StackMapTable ensureAnnotationsLoaded act %Lorg/openide/text/AnnotationProvider; lines Lorg/openide/text/Line$Set; clazz Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<*>; doc !Ljavax/swing/text/StyledDocument; e (Lorg/openide/util/UserQuestionException; Ljava/io/IOException; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; #Ljava/beans/PropertyChangeListener; propertyName oldValue newValue addDocListener aDoc #Ljavax/swing/text/AbstractDocument; d Ljavax/swing/text/Document; removeDocListener 
Exceptions ex  Ljava/lang/InterruptedException; myDoc java/lang/Throwable externalMod Ljava/lang/Runnable; prevLST memoryOutputStream >[Lorg/openide/text/CloneableEditorSupport$1MemoryOutputStream; ioException [Ljava/io/IOException; onSaveTasksStarted [Z saveToMemory os Ljava/io/OutputStream; oldSaveTime#%' p Ljavax/swing/JEditorPane; ctc +Lorg/openide/windows/CloneableTopComponent; ed .Lorg/openide/text/CloneableEditorSupport$Pane; ll Ljava/util/LinkedList; en Ljava/util/Enumeration; last 1Ljava/util/LinkedList<Ljavax/swing/JEditorPane;>; DLjava/util/Enumeration<Lorg/openide/windows/CloneableTopComponent;>; other redirectedTo *Lorg/openide/windows/CloneableOpenSupport; setLastSelected 1(Lorg/openide/text/CloneableEditorSupport$Pane;)V findLineVector ()Lorg/openide/text/LineVector; pf Ljava/awt/print/PageFormat; job Ljava/awt/print/PrinterJob; o Ljava/io/FileNotFoundException; &Ljava/awt/print/PrinterAbortException; !Ljava/awt/print/PrinterException; Ljava/lang/Exception; key msg createCloneableTopComponent pane "Lorg/openide/text/CloneableEditor; wrapEditorComponent *(Ljava/awt/Component;)Ljava/awt/Component; editorComponent Ljava/awt/Component; canClose uce &Lorg/openide/util/UserCancelException; safe 8Lorg/openide/text/CloneableEditorSupport$1SafeAWTAccess; bundle Ljava/util/ResourceBundle; 
saveOption Ljavax/swing/JButton; discardOption nd Lorg/openide/NotifyDescriptor; s addChangeListener %(Ljavax/swing/event/ChangeListener;)V "Ljavax/swing/event/ChangeListener; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; removeChangeListener createPositionRef A(ILjavax/swing/text/Position$Bias;)Lorg/openide/text/PositionRef; offset bias  Ljavax/swing/text/Position$Bias; 'Ljavax/swing/text/BadLocationException; tmpDoc baos Ljava/io/ByteArrayOutputStream; stream loadFromStreamToKit U(Ljavax/swing/text/StyledDocument;Ljava/io/InputStream;Ljavax/swing/text/EditorKit;)V Ljava/io/InputStream; mimePath defaultMIMEType createStyledDocument ?(Ljavax/swing/text/EditorKit;)Ljavax/swing/text/StyledDocument; sd callNotifyUnmodified message locked getDocumentHack ask doReload fireDocumentChange closing ls event &Lorg/openide/text/EnhancedChangeEvent; orig "Lorg/openide/windows/TopComponent; pos reuse ce displayMsgOpened 	openReuse P(Lorg/openide/text/PositionRef;II)Lorg/openide/text/CloneableEditorSupport$Pane; Lorg/openide/text/PositionRef; column mode s(Lorg/openide/text/PositionRef;ILorg/openide/text/Line$ShowOpenType;)Lorg/openide/text/CloneableEditorSupport$Pane; openAt O(Lorg/openide/text/PositionRef;I)Lorg/openide/text/CloneableEditorSupport$Pane; t Lorg/openide/util/Task; setListeningOnEnv listen howToReproduceDeadlock40766 
beforeLock lst updateLastSaveTime origModified setPreventModification 
access$001 x0 
access$100 M(Lorg/openide/text/CloneableEditorSupport;)Lorg/openide/awt/UndoRedo$Manager; 
access$200 ,(Lorg/openide/text/CloneableEditorSupport;)I 
access$302 -(Lorg/openide/text/CloneableEditorSupport;Z)Z x1 
access$400 =(Lorg/openide/text/CloneableEditorSupport;)Ljava/lang/Object; 
access$502 -(Lorg/openide/text/CloneableEditorSupport;J)J 
access$500 ,(Lorg/openide/text/CloneableEditorSupport;)J 
access$602 
access$700 G(Lorg/openide/text/CloneableEditorSupport;[Ljavax/swing/JEditorPane;Z)V x2 <clinit> 
SourceFile CloneableEditorSupport.java BootstrapMethods�
����� "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; #� InnerClasses�  org/openide/awt/UndoRedo$Manager� org/openide/awt/UndoRedo Manager Env Set Listener 	DocFilter MemoryOutputStream Ref Pane�  org/openide/cookies/EditorCookie 
Observable 	Exception SafeAWTAccess� javax/swing/text/Position$Bias� javax/swing/text/Position Bias PlainEditorKit� .org/openide/text/DocumentOpenClose$DocumentRef DocumentRef� &org/openide/util/RequestProcessor$Task Task Closed ShowOpenType Selector� %java/lang/invoke/MethodHandles$Lookup� java/lang/invoke/MethodHandles Lookup!     " �� �   � ��   ��   ��   �� �    �� �   �   T U    � �   ��   ��   ��         5 6   k 
    =     � �   A � �   � � @ A �   �      �y 
   < 
   
    L )   � 
    	 
   � 
     
   ab    � 
   >?         � � �   � 
 A �   �� 
   d  ,� �   A     	*+� $� *�   �   
    �  ��       	��     	 o� �    o    , - �   �     D*+� .*� 1YS� 3*� 7Y� 9� ;*� >*� 7Y� 9� B,� D*,� J*� MY*� O� R�   �   & 	   �  �  �  � ! � , � 2 � 7 � C ��        D��     D o�    D C ) �   	 o   C  � Y   X Y   � Y �   ,     �   �      �       ��   h Y �   /     *� V�   �      �       ��  � Y   �� �   I     Z\*� V+� ^`� a� g�   �      .�       ��     �� �   �   \] �   2     *� m� q�   �      9�       ��   � v �   /     *� s�   �      ?�       ��   4  � �   �     $*� wL+� +� }�*� � *� �M*,� *� �   �      G H 	I L M T W�       �     $��    �� �   	 �   0NO �   S     *� �� *� �Y*� �� �*� ��   �      a b e�       ��  �      � # �   �     A*� �� <*� �*� �L� ��� �� � M,� � � ,� � � �N-+*� J� � ���   �      i m o p 2q =r @t�      2     /    A��  �    �  1 ��    � � �   �     /*� �L� �+� � � � �� �Y� �+� Ŷ �ζ ʶ ж ��   �      � � � -��       /��    *       * �    � - �  " # �   �     F*� wL+� +� ٱ*� ڙ 
*� � ,*� �M*� �  M� �Y**,� � � M� �� �,� �   % ( �  % 9 � �   B   � � 	� � � � � !� %� (� )� 3� 6� 9� :� E��   4  ! 	  ) 
  : 
    F��    A�� �    �  K �P �        �  �   A     	*� �+� ��   �   
   � ��       	��     	 C �    C     �   A     	*� �+��   �   
   � ��       	��     	 C �    C    �   W     *� �+,-��   �   
   � 
��   *    ��     �           �          " � � �   S     *�� *� �Y*��*��   �      � � ��       ��  �      �   d     *� wL+� +��*� R��   �      � � 	� ��       ��    �� �    �   R �       z�+� �$� +'*�)�- +�1� %+�1M,�3N*�7Y*-�9�<,*�<�@� *+D� �DM*�7Y*,�9�<+D*�<�- +*�)�F �   �   6   � � � &� +� 0� =� E� H� U� b� o� y��   4  +   0 LM  U LM    z��     z �    (&�      R �   �     ]�+� �$� +'�- *�<� 2+�1� +�1M,*�<�J�@� +D*�<�J�- *�<+*�)�N �   �   .   �    # * / : = M
 R \�      /     ]��     ] �     �       � � �   d     *� wL+� +� ݰ*� R�Q�   �      " # 	$ &�       ��    �� �    �       � U � �   d     *� wL+� +�S�*� R�V�   �      / 0 	1 3�       ��    �� �    �   Y � �   f     *� wL+� +�W�*�Z�^ �   �      ; < 	= ?�       ��    �� �    �   r # �  �    1*� wL� ��_�b=�  � �� �Y� �*�f� �i� ʶ жk+� )�  � �� �Y� �n� �+�f� ʶ жk+�p�*�Z�^ � %�  � �� �Y� �*�f� �s� ʶ жk�*�SN-� %�  � �� �Y� �*�f� �u� ʶ жk�*Y:�*�w� *�z���:� �� �� ���*�wç :��*-�*Y:�*�w*��ç :��� $:*Y:	�*�w*��	ç :
	�
��� 	 � � �} � � �   � � �   �  	   � �  "%  %*%     �   � '  G H I J 0L 4M 8N UP YQ ZT fU jV �X �Z �[ �\ �] �_ �a �b �d �g �e �f �g �i �j �l �n �o �p �qrnopq-r0s�   4  �    1��   ,��  " � 
  � �	 �   v � 0 $, � )� �  7M}J� �    � 7 � B�  
  �     7 � �    �       � �� �  �    "*� B!��� ^*�Z�� ��7!�� I� 5� �� �Y� �*�f� ��� ����� �!���� ʶ жk��Y**��+�����:� �:�:��Y*+��:+��� ��:		� >��Y*��:
+�
�� +��� 	�� 2� +�� � +�� 2� 0� '� ��_� �Y� �*�f� �¶ ʶ �2� �2�:
*� 7*���*�Z�� :
2
��
��:
+��Y*�׹� � 7� �� �Y� �*�f� �ض ���ڶ ʻ�Y�ܶ޶ жk**�Z�� ����*� ��� /�  � �� �Y� �*�f� �� ʶ жk*��*��W
� Q
�Ч I:*� ��� /�  � �� �Y� �*�f� �� ʶ жk*��*��W
� 
���� ��  ���   �   � 4  v w x y "z &{ X~ h� n� t� y� �� �� �� �� �� �� �� �� �� �� �� �� ������%�0�9�>�A�OS	�����������	!�   �   M   � ,�  
  "��    "	   " � 
  !   n�"#  t�$%  y�&'  ��(   ���  	
)* 
+  �   D � X� � m 	 �,-.��  .� q�;
L� -
	�      ��   	  �  �� �       �� ��� ��Y����*� wL+� +�����Y��M*���N*�:-� � �-� �:��:� �� 
�:� N� :� ���� #�!� $�#� �#�!�%� ,�)� 
,�,W� �-Y/�1���p,�3� � ,,�6�9�;�?�   �   b   ( * + #, (/ 00 82 >3 G4 R5 _7 l8 s; x> �@ �A �D �F �G �I �K �L �N �P�   R  � ?/0  R |12  _ o34    ���    ���  0 �56  8 �78  > �94      0 �5:  8 �7; �   3 �  � �� 4� 9&� � 

M?  E  �  	     �� ��� ��YA���*� wL+� +�C�*���M*�N,� � �,� �:��:� �� 
�:� w:-� !-�!� \�#� T�#-�!�%� E�F� �F�H� � :-�F� -�F�H� � :� � :� �� �-Y/�1���G�   �   r   ] _ ` #a (d 0f 5g >h Ii Vk cl jo op rq �s �t �u �v �x �y �z �} �� �� �� �� �� ���   H  r n/0  I �12  V �34    ���    ���  0 �78  5 �94      0 �7; �   , �  � � 4� +9� � 
 MN �   �     =*+�K+� �  +� M*,� >� >*,� R� R*,� 3� 3*�� *�Q��   �   & 	  � � � � � !� )� 0� <��       <�    =��     ==> �    )�   =         
 �   M     *� >� � *� >�S��   �      ��       ��  �    I ?@ �   E     *�XY+�Z� >�   �   
   � ��       ��      @4 �    @    � � �   b     *� wL+� +� ��*�[�   �      � � 	� ��       ��    �� �    �   AB �   �     ,*� ;YL�*�_� 
*�_+ð*�cY�e�_*�_+ðM+�,�    '    & '   ' * '   �      � � � �  � '��       ,��  �    �  7Q h # �  
    ,*� wL+� +�f�*� ;YM�*�i� ,ñ*�i,ç N,�-��lM*� ݸrN-�x� ,-�x�z� ,�~:,-����,��� ,��*� ;YM�*�i,ç 
:,��� �M,���*� ;YM�*�i,ç 
:,��� �M,��*� ;YM�*�i,ç 
:,��� iM,���*� ;YM�*�i,ç 
:,��� FM,���*� ;YM�*�i,ç 
:	,�	�� #:
*� ;Y:�*�iç :��
��    )    & )   ) , )   n u x   x | x   . g �� � � �   � � �   . g � � � � �   � � �   . g �� � � �   � � �   . g �� � �     . g   � �   � �   � �   � �      %      �   � 2  � � 	� � � � � � $� .� 2� :� A� L� R� \� c� g� n� s� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������(�+��   \ 	 R 
CD  2 5EF  : -G   � 
H  � 
  � 
I  � 
J   ,��   '�� �   � �  �  7I� � m 7� 
�     7 � B��     7 � B ��     7 � B��     7 � B��     7 � B�             7 � �       
�� �   j      +*����M*,��W����Y*�����   �      � � � ��         
K      L�   M� �   	
  L   N� �   ^     *�W*��L+�� +��+�� �   �      
  
 �       ��   
 O4  � �   H     *��L*+��+�   �        
�       ��    3P  QR �   6     +�   �      3�       ��     ST �   S   U � �  H     o*�Z�^ � d��Y*��L��� 
+�ҧ )��+Y��W��  ��+�ާ M� �� �,� ��+�� �+��� *�p� M�M,����  6 : =} \ ` c� \ ` f � �   V   = e f g %j 6l :p =m >n Io Ks Rt Tw \y `� cz d{ f| g} k m��   4  >   d VW  g 
   XXY    o��  �    � %�W}N�B ��           �  � 
    �*��L��M��Y,���N-��,����-��,����Y,	���:��,�����,��,�����Y+,��� 7Y-SYSY�S-�":���%:��)� �*�)� �-�)� ��   �   F   � � � � (� 6� F� U� d� t� }� �� �� �� �� �� ���   H    ���    �M�   �Z[   �\]  F �^]  � /_`  � %�  �     � �  ��� 7  
 / � �   d     *� wL+� +�-�*� R�0�   �      � � 	� ��       ��    �� �    �    5 � �   d     *� wL+� +�3�*� R�6�   �      � � 	� ��       ��    �� �    �   > � �   v     *�9M,� 	,+�<�*+���   �      � � 
� � � ��        ��     a�   �� �    �  �   a   !bc �   i      *�?� *�BY�D�?*�?+� � W�   �      � � � ��        ��       Cd �    �    C  e    f    g   !hc �   X     *�?� *�?+�G W�   �      � � ��       ��      Cd �    �    C  e    f    g   ij �   L     �JY*�L,�P�   �      ��        ��     k�    lm �   	k  l   �� �   3     	�FY*�S�   �      �       	��   �� �   5      �   �      �       ��     �P �   �    � � �   3     	�TY*�V�   �      �       	��   YZ �       e*� wL+� +�W�*�SM,� *�Z�[ ��^Y�`N*,*� s-�a� &:� �� �� �-Y�g�1�i�-��mY-�o�s�  ) 3 6e �   6   . / 	0 7 9 : != )@ 3F 6A 8D DE YH�   4  8 !
n    e��    `��   Ro	  ) <pq �   % �  � ��    �^ e"     � cd �   Z     ,-++�v �y�   �   
   Y Z�   *    ��     	    ��    r*      �e�     �  r   st �   T     -,+��   �   
   j k�   *    ��     	    ru    ��      �e�     r  �   M �   2     *� R���   �      s�       ��   	�� �   �     B*����L+z���zM,� �����L+z���zM,� ,���z� 
��Y���   �      � � � � !� ,��        Bv�    : L )   /�� �    � , %zFz�   v    u v �   �     8*��� *���*��� **������� *�Z�� L*+����*���   �      � � � � !� +� 3��     + w�    8��  �     xy �   �     *+����M,�*��� 
*��� *�Z�� �� ,�   �      � � (��        *��     *��   "z	 �   1 �   z� ��   z� � 7�   �   � # �   \     *� m�� ������$� *���   �      � 	� � ��       ��  �     � � �       [*� YL�*��� +ì*� � +ì*��+ç M+�,�*�ǚ *� YL�*��+ç N+�-��*�L*� R�ʶ��    '     '    $ '   ' * '   : A D   D G D   �   :   � � � � � � "� ,� 3� :� ?� I� K� Y��       [��  �   $ �  7
I� �    7 �  { # �   �     3*� YL�*��� +ñ*��+ç M+�,�*��*��� 
*�L�ر                 �   & 	  � � � � �  � $� +� 2 �       3��  �    �  7I�  � � �  B     �<*� m�� *� YM�*��� *��,ç N,�-�� wM*YN�*� � *� �޻�Y*,���W-ç 
:-��<� ��_�,� � 8M� ��_�,� �N,��,�� ,��N� ,��N-� 
��-��<� ���� ��_����*��� ��_�b� (� ��_� �Y� �� �*� m� �� ж�     #   # & #    ( + � 0 N Q   Q U Q    ( j � �   � "        (F + , 0 7 < L1 X3 Z4 gF j5 k7 x9 z; �< �> �A �B �E �H �I �J �K �O �P �R �S �U�   4  , ;  z %|�  k 4
    ���    �} 
 �   B �  7D� B ��   � 7D� �     �� " �
� : 8 # �   <     
*� �*��   �      ] ^ 	_�       
��   ~ � �   /     *��   �      d�       ��   � � �   /     *� J�   �      k�       ��    ]^ �   �     b*�YM�*� 32� � *� 32,ð*�� *� R� �$� *� 3�*Y*�,S� *� 3�-Y**��/S*� 32,ðN,�-�    ]    \ ]   ] ` ]   �   & 	  u v w z ({ 1} B T� ]��       b��     b 
 �    �  7H�      �4 �   �     *� wM,� 	,�2�*�5� �*�6�   �      � � 	� � � � ��        ��      
   �� �   	 �  	�             # �   6     *� R�9�   �   
   � ��       ��      �  h     l*�Y:�*�Nç :��� >*�:� 7=-?�� ��:*�:�A� =*�:� :*�:�� *� R+�G*�KW�            > H P   P R P   �   J   � � � � &� /� 4� 9� >� F� H� M� P� W� Z� ^� f� k��   >   	  9 !M�    l��     lR@    l� 
   Q	 �   6 �   ?  7 �   ?�  � ,G� 	�   	R  �   
�� �   P     *��� *����NY*�P�   �      � � ��         �    �      �� �   �      *+�S*V� +� � � +�X�   �      � � 
� � � ��         ��      W	     � 
 �   ^ �   �  �    �   7�   �   7�    �   7 7�   	W  �   U� �  H  	   h*�?� c�YY*+�[N*Y:�*�?*�?�^ �_�a �b:ç :��:�66� 2:-�d ����   4 7   7 < 7   �   & 	  � � � � 1� ?� Y� a� g��   H  1 �c  Y  Cd   U��  ? (�c    h��     hW	    h� 
 �   D � 7  �Y  7 �   �Yb  � b�   �  �   	W  �   � # �   �     R*���L+� � C+� �M,��N-� ,�� ,�N-� -�h � �-Y/�1�����   �   .   � � � � &� 1� 6� :� C� N� Q��   *   3G2  & (
4    R��    J78       J7; �    � � -� 
 
~ �   Z     *�k=*�pW+�r�   �        
 �        ��      "�   �� �   	�   "   �� �  �     �M>*�Y:�*��M,� <*�u:� ����*�W*��M,�� ,��,�� *���x>ç :��,�� :� 5� 1��S�:� �|� ���XY�Z�� ��� *��:� �:����,�   Q T   T Y T   �   v            ( - 2 ? L" N$ \' d( l) w* |+ �- �/ �0 �1 �4 �5 �7 �8 �; �>�   R   3M�  w  92  � M�    ���     �� 
   ��4   �� 
  d Y12 �   8 
� (   7  � %E� � )� � � �   �    � �  ,     p*����L+� �+��M,� ,�+�� +��*���N-� � 5-� �L+��M,� ,�+�� +���-Y/�1��   �   J   F H I L N O Q &R +U 3W <X FY Q[ U\ W^ ^_ cb nf�   *  3 =78    p��    h12   W
4      3 =7; �    � � � #
 �� �   h     � 	��*+���   �   
   l m�   *    ��     ��    ��    �� �    �   � � �  e    f    g   �� �   j     -��� 	��*+���   �   
   q r�   *    ��     ��    ��    �� �    �   � � �   �� �   F     *+���   �      }�        ��     ��    �� �   	� �  �� �   �     <*� w:� +���*��:*�:�� ��Y*+�����   �   "   � � � � � !� (� 9��   H    <��     <��    <��    <� 
   6��   !
4  ! �� �    �  �   � � �    � �   /     *���   �      ��       ��   +, �   S     *��� *��Y*����*���   �      � � ��       ��  �      �� �   �     /*��� )*��� *�Z*�)�� � *�Z*�)�� �   �      � � � � !� .��       /��     /� 
 �    !�   �    �� �   5      �   �      ��       ��     � 
 �   �   �� �   �     D� ��_�b� 5� �� �Y� �*�f� ��� ���ڶ ʻ�Y�ܶ޶ жk*� �   �        > C�       D��     D�  �    >�   �   � # �   ?     **�Z�� ���ı   �   
   
 �       ��   � � �   /     *���   �      �       ��   �� �  0     �*��� �� ��_�b� k*� YN�*��=-ç 
:-��� �� �Y� �*�f� ��� ���� ��� жk� �����Y� �Y� ��� ��� з�� �*��*� R���   " %   % ) %   �   * 
        , W | � ��   *    � 
  , P� 
    ���     �� 
 �   $ � %    7 �     � O�   �   �� �   >     *� �   �   
   " #�       ��      	 
 �    	     � �   2     *� R�ð   �      &�       ��    � Y �   B     � �Y� �ƶ �*� R�޶ а   �      +�       ��        � Q �   /     *� �   �       f�       ��  �� �   /     *� �   �       f�       ��  �� �   /     *� �   �       f�       ��  �� �   ;     *Z� �   �       f�       ��     � 
 �� �   /     *� �   �       f�       ��  �� �   ;     *]� �   �       f�       ��     �  �� �   /     *� �   �       f�       ��  �� �   ;     *Z� �   �       f�       ��     � 
 �� �   E     *+� �   �       f�        ��     �@    � 
  � # �   �      K�Ț � ��˳ϲгӲԳ׻�Y�س�ٸ۳ ���Y�� ��XY�Z��   �   "    f  t  x  ~ " � , � 5 � ? �    @ �   ��    � ����   � ��� 	 q �	� �	 1 Z�	 �J�  �      � � 7 � �      �  �  �      �      �      � 	 �	O��	�� �  �  ��� � � � M� �      ��� *-� � Z�@�  �  ��� 