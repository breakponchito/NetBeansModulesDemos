����   4	       org/openide/actions/SaveAsAction isDirty Z
   	 
 refreshListeners ()V
      org/openide/util/Utilities actionsGlobalContext ()Lorg/openide/util/Lookup;
     <init> (Lorg/openide/util/Lookup;Z)V  org/openide/loaders/DataObject  CTL_SaveAsAction
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
   ! "  # javax/swing/AbstractAction (Ljava/lang/String;)V	  % &  isGlobal	  ( ) * context Lorg/openide/util/Lookup; , noIconInMenu	 . / 0 1 2 java/lang/Boolean TRUE Ljava/lang/Boolean;
  4 5 6 putValue '(Ljava/lang/String;Ljava/lang/Object;)V
  8 9 : 
setEnabled (Z)V
  <  
	  > ? @ changeSupport .Ljavax/swing/event/SwingPropertyChangeSupport; B enabled
 D E F G H ,javax/swing/event/SwingPropertyChangeSupport hasListeners (Ljava/lang/String;)Z
  J K 
 refreshEnabled
   M N O 	isEnabled ()Z	  Q R S lkpInfo  Lorg/openide/util/Lookup$Result;
 U V W X Y org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; [ \ ] ^ _ java/util/Collection size ()I [ a b c iterator ()Ljava/util/Iterator; e f g h i java/util/Iterator next ()Ljava/lang/Object; k !org/openide/loaders/SaveAsCapable
  m n o getNewFileName ()Ljava/io/File;
 q r s t o java/io/File getParentFile v java/io/IOException
 q x y z getAbsolutePath ()Ljava/lang/String;
 u !
 } ~  � �  org/openide/filesystems/FileUtil createFolder 4(Ljava/io/File;)Lorg/openide/filesystems/FileObject; � org/openide/NotifyDescriptor � MSG_CannotCreateTargetFolder � LBL_SaveAsTitle � java/lang/Object	 � � � � 	OK_OPTION Ljava/lang/Object;
 � �  � N(Ljava/lang/Object;Ljava/lang/String;II[Ljava/lang/Object;Ljava/lang/Object;)V
 � � � � � org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;
 � � � � notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;
 q � � z getName j � � � saveAs 9(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)V � MSG_SaveAsFailed
 u � � z getLocalizedMessage
  �  � [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
 � � � � � org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 � � � � getClass ()Ljava/lang/Class;
 � � � java/lang/Class
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level SEVERE Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � � � getCurrentFileObject &()Lorg/openide/filesystems/FileObject;
 } � � � toFile 4(Lorg/openide/filesystems/FileObject;)Ljava/io/File;
 � � � � z "org/openide/filesystems/FileObject 
getNameExt
 q ! � javax/swing/JFileChooser
 � <
 � � � # setDialogTitle
 � � � : setMultiSelectionEnabled
 � � � � setSelectedFile (Ljava/io/File;)V
 } � � � "preventFileChooserSymlinkTraversal +(Ljavax/swing/JFileChooser;Ljava/io/File;)V
  � � � getInitialFolderFrom (Ljava/io/File;)Ljava/io/File;
 � � � � setCurrentDirectory
 � � � � � !org/openide/windows/WindowManager %()Lorg/openide/windows/WindowManager;
 � � � � getMainWindow ()Ljava/awt/Frame;
 � � � � showSaveDialog (Ljava/awt/Component;)I
 � � � o getSelectedFile
 q � �  equals (Ljava/lang/Object;)Z MSG_SaveAs_SameFileSelected !MSG_SaveAs_SameFileSelected_Title
 q O exists	 MSG_SaveAs_OverwriteQuestion
   I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; "MSG_SaveAs_OverwriteQuestion_Title	 � � 	NO_OPTION	 � � 
YES_OPTION
  isFromUserDir (Ljava/io/File;)Z
 � o getCurrentDirectory org/openide/actions/SaveAction
 !"# org/openide/util/NbPreferences 	forModule 0(Ljava/lang/Class;)Ljava/util/prefs/Preferences;% lastUsedDir
'()*+ java/util/prefs/Preferences put '(Ljava/lang/String;Ljava/lang/String;)V
-./01  org/openide/windows/TopComponent getRegistry -()Lorg/openide/windows/TopComponent$Registry;34567 )org/openide/windows/TopComponent$Registry getActivated $()Lorg/openide/windows/TopComponent;
-9:  	getLookup
<=>?@ org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 BC � getPrimaryFileE 	user.home
GHIJK java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
'MNO get 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 qQR O isDirectoryT netbeans.user
VWXY H java/lang/String 
startsWith
  [\] addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  _`] removePropertyChangeListener	bcdef org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;h "org/openide/actions/SaveAsAction$1
gj k %(Lorg/openide/actions/SaveAsAction;)V
bmno 
readAccess (Ljava/lang/Runnable;)Vq "org/openide/actions/SaveAsAction$2
pj
tuvwx org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;z org/openide/util/LookupListener| "org/openide/actions/SaveAsAction$3
{j
t�� create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;�  org/openide/util/Lookup$Template
�� � (Ljava/lang/Class;)V
<�?� D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result;
 ���� isEditorTopComponent %(Lorg/openide/windows/TopComponent;)Z
 U�� Y allItems	 ��  $assertionsDisabled
���� O javax/swing/SwingUtilities isEventDispatchThread� java/lang/AssertionError� )this shall be called just from AWT thread
�� � (Ljava/lang/Object;)V	 ��� registryListener #Ljava/beans/PropertyChangeListener;3_	 ��� lookupListener !Lorg/openide/util/LookupListener;
 U��� removeLookupListener $(Lorg/openide/util/LookupListener;)V
 ��� createRegistryListener %()Ljava/beans/PropertyChangeListener;3[
 ��� createLookupListener #()Lorg/openide/util/LookupListener;
 U��� addLookupListener
 ��� O desiredAssertionStatus� #org/openide/util/ContextAwareAction 	Signature ELorg/openide/util/Lookup$Result<Lorg/openide/loaders/SaveAsCapable;>; Code LineNumberTable LocalVariableTable this "Lorg/openide/actions/SaveAsAction; MethodParameters '()Lorg/openide/util/ContextAwareAction; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; actionPerformed (Ljava/awt/event/ActionEvent;)V targetFolder Ljava/io/File; error Lorg/openide/NotifyDescriptor; ioE Ljava/io/IOException; 	newFolder $Lorg/openide/filesystems/FileObject; #Lorg/openide/loaders/SaveAsCapable; newFile e Ljava/awt/event/ActionEvent; inst Ljava/util/Collection; LocalVariableTypeTable <Ljava/util/Collection<+Lorg/openide/loaders/SaveAsCapable;>;� java/awt/event/ActionEvent nd currentFile currentFileObject chooser Ljavax/swing/JFileChooser; initialFolder origFile dob  Lorg/openide/loaders/DataObject; tc "Lorg/openide/windows/TopComponent; strLastUsedDir Ljava/lang/String; parent res file 	nbUserDir createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; actionContext listener tpl "Lorg/openide/util/Lookup$Template; isEditorWindowActivated GLorg/openide/util/Lookup$Template<Lorg/openide/loaders/SaveAsCapable;>; 
_isEnabled 
access$000 x0 
access$102 &(Lorg/openide/actions/SaveAsAction;Z)Z x1 <clinit> 
SourceFile SaveAsAction.java InnerClasses Result Registry Template 0    �   ) *    R S �   �  &         ��   ��  �       
 �   7     	*� � �   �   
    E  F�       	��      �   �     .*� � *� $*� *+� '*� $*+� -� 3*� 7�   �   "    I  ?  @  J  K  L ( M - N�        .��     . ) *    . &  �   	 )   &   	�� �          � Y� ;�   �       U  N O �   d     $*� � *� =� *� =A� C� *� I*� L�   �       Z  [  \  ^�       $��  �    �    �   �� �    
    �*� *� P� TM,� Z � �,� ` � d � jN*� l:� �:� p:� � uY� w� {�� |:� 5:� �Y�� �� � �Y� �S� �� �:� �� �W�-� �� � � /:�� �� �� �� �W*� �� �� �� �� ñ  3 T W u � � � u �   r    b  c  d  e $ f * g 0 i 3 k : l @ m M n T y W o Y p a q h r  w � x � | � � � } � ~ � � � � �  � ~ � � � ��   f 
 : ��   
��  Y 0��  � *��  3 ���  $ � ��  * ���    ���     ���   ��� �      ��� �   B � M  � [ j q � q  � 	  � [ j q �  u1O u� +�   �    n o �  � 
   7LM*� �N-� -� �L+M+� � qY-� Ϸ �L� �Y� �:�� � �� �+� +� �+� p� �*+� �:� 
� �+:� �� � �� �� �L+� � �+� �� 7� �Y� � � �Y� �S� �� �:� �� �W���+�� I� �Y+� ��
� � �Y�SY�S�� �:�� �� �� � ��Z*,�� �:�$� w�&+�   �   � '   �  �  � 	 �  �  �  �  � & � / � ; � A � F � L � U � \ � b � i � l � { � } � � � � � � � � � � � � � � � � � � � � � � � � � � � �$ �5 ��   f 
 � 	��  �� $ %�   7��   5��  3��  	.��  /��  \ ���  l ��� �   ( 
� & q q �� . ��  q�  q<� I  � � �   �     '�,�2 L+� +�8�;� M,� ,�A��   �       � 	 �  �  �   � % ��       
��    '��   	 �� �    � %-  � � �   �     _� qYD�F� �M+� M+� pN*-�� >�$,� w�L:� qY� �M,�� 
,�P� � qYD�F� �M� -M,�   �   .    �  �  �  �   � 2 � < � J � X � [ � ] ��   4  2 &��   E��    _��     _��   Q�� �    � J q qV� � �   �    �   t     !+� �� qYS�F� �M+� w,� w�U�   �       �  �  �  ��        !��     !��   �� �    �   �   �� �   >     
� Y+� �   �       ��       
��     
� * �   �   !\] �   F     
*+�Z*� �   �       �  � 	 ��       
��     
�� �   �  �    �   !`] �   P     *+�^�a�gY*�i�l�   �       �   �       ��     �� �   �  �    �   �� �   A     �pY*�r�,�s�   �        �       ��   �� �   @     y�{Y*�}*� P�~�y�   �      �       ��    K 
 �       e*� P� ��Yj��L**� '+��� P�,�2 L+� � �+��� � =**� P� *� P��� Z � � � � 7*� �   �   "       &  ;! _" d#�   *   ��    e��   & ?��  ; *�  �      �� �   . � -@�    -  �    -    	 
 �  ]     ���� ��� ��Y����*� P� ��Yj��L**� '+��� P*� =� *� =A� C� >*� $� *��� �,*���� *��*��� Q*� P*����*��� >*��� **�����,*���� *��� **����*� P*����*� I�   �   N   & ) , (- 40 H1 W2 c3 h5 p6 {7 �: �; �< �? �@ �A �C �E�     ( ��    ���  �     ( �� �   
   � O �   /     *� L�   �      I�       ��  �k �   /     *� �   �       ;�       ��  �� �   ;     *Z� �   �       ;�       ��     �   � 
 �   4      ��� � ���   �       ;�    @ �   �    2  U<	3-	g      p      {      �< 