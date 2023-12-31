����   4�	      5org/openide/explorer/propertysheet/CustomEditorAction invoker ?Lorg/openide/explorer/propertysheet/CustomEditorAction$Invoker;
  	 
   javax/swing/AbstractAction <init> ()V	     modelRef Ljava/lang/ref/WeakReference;  javax/swing/Action  	SmallIcon
      ,org/openide/explorer/propertysheet/PropUtils getCustomButtonIcon ()Ljavax/swing/Icon;
     putValue '(Ljava/lang/String;Ljava/lang/Object;)V
     ! B(Lorg/openide/explorer/propertysheet/CustomEditorAction$Invoker;)V # java/lang/ref/WeakReference
 " %  & (Ljava/lang/Object;)V
  ( ) * 
isLoggable (Ljava/lang/Class;)Z , java/lang/StringBuilder
 + 	 / CustomEditorAction invoked 
 + 1 2 3 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 + 5 2 6 -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 + 8 9 : toString ()Ljava/lang/String;
  < = > log &(Ljava/lang/Class;Ljava/lang/String;)V @ A B C D =org/openide/explorer/propertysheet/CustomEditorAction$Invoker allowInvoke ()Z F 	Invoker ( @ H I J getClass ()Ljava/lang/Class; L ) allowInvoke() returned false.  Aborting.
 " N O P get ()Ljava/lang/Object; R 0org/openide/explorer/propertysheet/PropertyModel @ T U V getSelection  ()Ljava/beans/FeatureDescriptor; X org/openide/nodes/Node$Property Z Cant invoke custom editor on  \ ' it is null or not a Property.Aborting.
 ^ _ ` a  org/openide/util/Utilities disabledActionBeep
  c d e getPropertyEditor >(Lorg/openide/nodes/Node$Property;)Ljava/beans/PropertyEditor; g 3org/openide/explorer/propertysheet/ExPropertyEditor i 6Editor is an ExPropertyEditor, attaching a PropertyEnv k .org/openide/explorer/propertysheet/PropertyEnv
 j 	
 j n o p setFeatureDescriptor !(Ljava/beans/FeatureDescriptor;)V r -org/openide/explorer/propertysheet/SheetTable t env.setBeans to  @ v w x getReusablePropertyEnv :()Lorg/openide/explorer/propertysheet/ReusablePropertyEnv;
 z { | } ~ 6org/openide/explorer/propertysheet/ReusablePropertyEnv getBeans ()[Ljava/lang/Object;
 j � � � setBeans ([Ljava/lang/Object;)V f � � � 	attachEnv 3(Lorg/openide/explorer/propertysheet/PropertyEnv;)V � � � � D java/beans/PropertyEditor supportsCustomEditor � %Cant invoke custom editor for editor  � 0 - it returns false from supportsCustomEditor(). @ � � � getCursorChangeComponent ()Ljava/awt/Component; � java/awt/Cursor
 � � � � getPredefinedCursor (I)Ljava/awt/Cursor;
 � � � � � java/awt/Component 	setCursor (Ljava/awt/Cursor;)V @ � � P getPartialValue � � � P getValue
 � 8 � java/lang/Object � � � : 	getAsText
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z � Borg/openide/explorer/propertysheet/PropUtils$DifferentValuesEditor � � � � 	setAsText (Ljava/lang/String;)V � Eorg/openide/explorer/propertysheet/ProxyNode$DifferentValuesException � java/lang/Exception � 4org/openide/explorer/propertysheet/NodePropertyModel
 � �  � 7(Lorg/openide/nodes/Node$Property;[Ljava/lang/Object;)V � 2org/openide/explorer/propertysheet/ExPropertyModel � � � V getFeatureDescriptor
 � � � � : java/beans/FeatureDescriptor getDisplayName � title
 W � � � &(Ljava/lang/String;)Ljava/lang/Object; � FMT_CUSTOM_DLG_NOPROPNAME_TITLE @ � � : getBeanName
 � � � � � org/openide/util/NbBundle 
getMessage I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; � FMT_CUSTOM_DLG_TITLE
 � � � � [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String; � 8org/openide/explorer/propertysheet/PropertyDialogManager � PS_EditorTitle �  
 W � � J getValueType
 � �  � �(Ljava/lang/String;ZLjava/beans/PropertyEditor;Lorg/openide/explorer/propertysheet/PropertyModel;Lorg/openide/explorer/propertysheet/PropertyEnv;)V
 � � � � getComponent � Gorg/openide/explorer/propertysheet/editors/EnhancedCustomPropertyEditor
 W � � D canWrite @ � � D wantAllChanges
 j � � D isChangeImmediate � 7org/openide/explorer/propertysheet/CustomEditorAction$1
 � �  � �(Lorg/openide/explorer/propertysheet/CustomEditorAction;Lorg/openide/explorer/propertysheet/PropertyModel;Ljava/beans/PropertyEditor;Ljava/lang/String;Lorg/openide/explorer/propertysheet/PropertyDialogManager;)V �  addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 � 	getDialog ()Ljava/awt/Window; 7org/openide/explorer/propertysheet/CustomEditorAction$2

  �(Lorg/openide/explorer/propertysheet/CustomEditorAction;Lorg/openide/explorer/propertysheet/PropertyDialogManager;Ljava/awt/Window;Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyEditor;Ljava/awt/Component;)V javax/swing/JDialog
 getAccessibleContext )()Ljavax/accessibility/AccessibleContext;
 � %javax/accessibility/AccessibleContext setAccessibleName
 � : getShortDescription
 � setAccessibleDescription
 !" java/awt/Window addWindowListener "(Ljava/awt/event/WindowListener;)V$ java/awt/Frame
# @'(  editorOpening
 *+, addExternallyEdited $(Lorg/openide/nodes/Node$Property;)V
./0 
setVisible (Z)V
 23, removeExternallyEdited
56789 org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V 	Signature QLjava/lang/ref/WeakReference<Lorg/openide/explorer/propertysheet/PropertyModel;>; Code LineNumberTable LocalVariableTable this 7Lorg/openide/explorer/propertysheet/CustomEditorAction; MethodParameters t(Lorg/openide/explorer/propertysheet/CustomEditorAction$Invoker;Lorg/openide/explorer/propertysheet/PropertyModel;)V mdl 2Lorg/openide/explorer/propertysheet/PropertyModel; StackMapTable actionPerformed (Ljava/awt/event/ActionEvent;)V cur Ljava/awt/Cursor; fdName Ljava/lang/String; jd Ljavax/swing/JDialog; ex Ljava/lang/Exception; partialValue Ljava/lang/Object; suppliedTitle pdm :Lorg/openide/explorer/propertysheet/PropertyDialogManager; shouldListen Z pcl #Ljava/beans/PropertyChangeListener; w Ljava/awt/Window; wl Ljava/awt/event/WindowListener; ae Ljava/awt/event/ActionEvent; refd fd Ljava/beans/FeatureDescriptor; p !Lorg/openide/nodes/Node$Property; editor Ljava/beans/PropertyEditor; env 0Lorg/openide/explorer/propertysheet/PropertyEnv; curComp Ljava/awt/Component;k java/awt/event/ActionEventm java/lang/Classo !java/beans/PropertyChangeListenerq java/awt/event/WindowListeners java/lang/Throwable 
access$000 x(Lorg/openide/explorer/propertysheet/CustomEditorAction;)Lorg/openide/explorer/propertysheet/CustomEditorAction$Invoker; x0 
SourceFile CustomEditorAction.java InnerClasses Invoker| org/openide/nodes/Node Property DifferentValuesEditor� ,org/openide/explorer/propertysheet/ProxyNode DifferentValuesException                :   ;    ! <   \     *� *� *+� *� � �   =       3  0 	 4  5  6>       ?@        A        B <   x     *+� ,� *� "Y,� $� �   =       9  ; 	 =  ?>        ?@           CD E    �    @ Q  A   	   C   FG <  .    �� '� � +Y� -.� 0+� 4� 7� ;*� � ? � 1� '� (� +Y� -E� 0*� � G � 4K� 0� 7� ;�*� � *� � M� Q� M*� � S N-� W� 
-� W� :� ,� '�  � +Y� -Y� 0-� 4[� 0� 7� ;� ]�� b::� f� s� '� 
h� ;� jY� l:-� m*� � q� ?� '� &� +Y� -s� 0*� � u � y� 4� 7� ;*� � u � y� � f� � � � � -� '� !� +Y� -�� 0� 4�� 0� 7� ;� ]�*� � � :� � �:� �*� � � :� =� � � � �� � � �� � �� � �� � � 
:	� :	,� � �Y� �� ,:		� �� "	� �� � � 	� �� � � �:
� :
˶ �� �:� ]-� ��  �
� *� � � � 
� է ;-� �*� � � � �� *� � � � �*� � � -� Ƹ ݧ :� �Y�� � � � �	� �:� �� � (� �  *� � � � � � �� � 6� � � �Y*	� �:� � � �:�Y*�	:�� 1�:��-�� �-���� �#� �#�%*� �& �)�-�1� 
:�4� "� �� �� :� � �� ��� ��� ���� �s�� ����  ���   =  � a   B  C   F , G 4 H F J V H Y N Z Q p T z V � Y � Z � [ � b � d � g � j � l � m � n � q � r � t � u � v w v {/ ; �E �M �k �n �o �z � �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �  �% �, �0 �C �I �h �p �y � �� �� �� �� �� �� �� �� �� �� � � �"*1 ;"B#N&U'`(j+s.x/~0�3�1�2�6�7�6�7�9�:>   � � HI  JK 
1 $LM � NO ��PQ ��CD 	yJK 
 mRK �
 �K � �ST � �UV � �WX  YZ " k[\   �?@    �]^  pB_D  z8`a  �'bc  ��de  ��fg z8hi E  � / 8 @ Q�  Q �@ W� + W�   � j� C/�  �� + �B �D �@ Q� ( Q�  �� ,  j Q � W � j � � Q � � l ��   j Q � W � j � � Q � � l � �A ��   j Q � W � j � � Q � � � ��l ��   j Q � W � j � � Q � � � ��l � �� ? �@� 
On� n� Fp� 	[ ��   j Q � W � j �  Pr�   j Q � W � j �           r  �   j Q � W � j �  A   ]  tu <   /     *� �   =       .>       v@   w   xy   2  @ z W{}	 � ~  ��  �            