����   47	      8org/openide/explorer/propertysheet/CustomEditorDisplayer ignoreChanges2 Z	   	 
 remotevEnvListener #Ljava/beans/VetoableChangeListener;	     remoteEnvListener #Ljava/beans/PropertyChangeListener;
     fireStateChanged ()V
      java/lang/Object <init>  4org/openide/explorer/propertysheet/PropertyDisplayer	     updatePolicy I	     ! env 0Lorg/openide/explorer/propertysheet/PropertyEnv;	  # $ % editor Ljava/beans/PropertyEditor;	  ' ( ) customEditor Ljava/awt/Component;	  + ,  ignoreChanges	  . /  editorListener	  1 2 3 envListener FLorg/openide/explorer/propertysheet/CustomEditorDisplayer$EnvListener;	  5 6 7 model 2Lorg/openide/explorer/propertysheet/PropertyModel;	  9 : ; originalValue Ljava/lang/Object;	  = > ? listenerList %Ljavax/swing/event/EventListenerList;	  A B C prop !Lorg/openide/nodes/Node$Property;
  E  F $(Lorg/openide/nodes/Node$Property;)V
 H I J K L .org/openide/explorer/propertysheet/PropertyEnv setChangeImmediate (Z)V
  N O P getPropertyEditor ()Ljava/beans/PropertyEditor; R S T U V java/beans/PropertyEditor getCustomEditor ()Ljava/awt/Component;
  X Y Z getProperty #()Lorg/openide/nodes/Node$Property;
 \ ] ^ O _ ,org/openide/explorer/propertysheet/PropUtils >(Lorg/openide/nodes/Node$Property;)Ljava/beans/PropertyEditor;
  a b c setPropertyEditor (Ljava/beans/PropertyEditor;)V
  e f c detachFromPropertyEditor R h i j supportsCustomEditor ()Z
 l m n o p org/openide/nodes/Node$Property getValueType ()Ljava/lang/Class; r "java/lang/IllegalArgumentException t java/lang/StringBuilder
 s  w #177688: property editor 
 s y z { append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 s } z ~ -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  for property  � - does not support a custom editor; valueType=
 � � � � � java/lang/Class getName ()Ljava/lang/String; � ; PropertyEditorManager says: 
 � � � � �  java/beans/PropertyEditorManager 
findEditor .(Ljava/lang/Class;)Ljava/beans/PropertyEditor; � ; search path is: 
 � � � � getEditorSearchPath ()[Ljava/lang/String;
 � � � � � java/util/Arrays toString '([Ljava/lang/Object;)Ljava/lang/String; � ; CCL: 
 � � � � � java/lang/Thread currentThread ()Ljava/lang/Thread;
 � � � � getContextClassLoader ()Ljava/lang/ClassLoader;
 s � � �
 q �  � (Ljava/lang/String;)V R � � � getValue ()Ljava/lang/Object; � java/lang/Exception
 H 
 � � � � � :org/openide/explorer/propertysheet/EditorPropertyDisplayer findFeatureDescriptor V(Lorg/openide/explorer/propertysheet/PropertyDisplayer;)Ljava/beans/FeatureDescriptor;
 H � � � setFeatureDescriptor !(Ljava/beans/FeatureDescriptor;)V
  � � � setPropertyEnv 3(Lorg/openide/explorer/propertysheet/PropertyEnv;)V � 3org/openide/explorer/propertysheet/ExPropertyEditor � � � � 	attachEnv
  � � c attachToPropertyEditor
  � � � detachFromEnv
  � � � getUpdatePolicy ()I
  � � � attachToEnv
  � � � getEnvListener H()Lorg/openide/explorer/propertysheet/CustomEditorDisplayer$EnvListener;
 H � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 H � � � addVetoableChangeListener &(Ljava/beans/VetoableChangeListener;)V
 � � � � 	findBeans K(Lorg/openide/explorer/propertysheet/PropertyDisplayer;)[Ljava/lang/Object;
 H � � � setBeans ([Ljava/lang/Object;)V
 H � � � removePropertyChangeListener
 H � � � removeVetoableChangeListener
  � � � getEditorListener %()Ljava/beans/PropertyChangeListener; R � R � � Gorg/openide/explorer/propertysheet/CustomEditorDisplayer$EditorListener
 � �  � y(Lorg/openide/explorer/propertysheet/CustomEditorDisplayer;Lorg/openide/explorer/propertysheet/CustomEditorDisplayer$1;)V � Dorg/openide/explorer/propertysheet/CustomEditorDisplayer$EnvListener
 � �
  � � � getEnteredValue
 l �
  equals (Ljava/lang/Object;)Z
	
 java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 java/util/logging/Level WARNING Ljava/util/logging/Level;
 log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 l j canRead � 0org/openide/explorer/propertysheet/PropertyModel R setValue (Ljava/lang/Object;)V  Eorg/openide/explorer/propertysheet/ProxyNode$DifferentValuesException
"#$%& 8org/openide/explorer/propertysheet/PropertyDialogManager notify (Ljava/lang/Throwable;)V
 ()* getPropertyEnv 2()Lorg/openide/explorer/propertysheet/PropertyEnv;
 \,-. updatePropertyEditor D(Ljava/beans/PropertyEditor;Ljava/lang/Object;)Ljava/lang/Exception;	 H01 ; STATE_NEEDS_VALIDATION
 H34 � getState	 H67 ; STATE_VALID
 H9:; silentlySetState 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;	=>?@A java/lang/System err Ljava/io/PrintStream;C   result of silent set state: 
EFGH � java/io/PrintStream printlnJ Error setting value
LMNOP org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;	 HRS ; STATE_INVALID	UVWXY java/lang/Boolean FALSE Ljava/lang/Boolean;
 [\] getModel 4()Lorg/openide/explorer/propertysheet/PropertyModel;
 \_`a noDlgUpdateProp a(Lorg/openide/explorer/propertysheet/PropertyModel;Ljava/beans/PropertyEditor;)Ljava/lang/Object;c +java/lang/reflect/InvocationTargetExceptione  java/lang/IllegalAccessException
 lgh � getDisplayName
 \jkl findLocalizedMessage M(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;	UnoY TRUE
U
 rs  fireActionPerformedu 4org/openide/explorer/propertysheet/NodePropertyModel
tw x 7(Lorg/openide/nodes/Node$Property;[Ljava/lang/Object;)V
  S{ Gorg/openide/explorer/propertysheet/editors/EnhancedCustomPropertyEditorz}~ � getPropertyValue�  Attempting to validate env� java/lang/IllegalStateException� FMT_CannotUpdateProperty
����� org/openide/util/NbBundle 
getMessage [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
 �� V getComponent� java/awt/Container
 ��� 
setEnabled (Ljava/awt/Container;Z)V
���� L java/awt/Component
���� getComponents ()[Ljava/awt/Component;� javax/swing/JScrollBar
��� L setFocusable� javax/swing/JComponent� dontEnableMe
���� getClientProperty &(Ljava/lang/Object;)Ljava/lang/Object;
U�� j booleanValue
��� #javax/swing/event/EventListenerList
� � java/awt/event/ActionListener
���� add -(Ljava/lang/Class;Ljava/util/EventListener;)V
���� remove� java/awt/event/ActionEvent� userChangedValue
�� � ((Ljava/lang/Object;ILjava/lang/String;)V
���� getListenerList ()[Ljava/lang/Object;���� actionPerformed (Ljava/awt/event/ActionEvent;)V�  javax/swing/event/ChangeListener� javax/swing/event/ChangeEvent
�� ���� stateChanged "(Ljavax/swing/event/ChangeEvent;)V� =org/openide/explorer/propertysheet/PropertyDisplayer_Editable Code LineNumberTable LocalVariableTable this :Lorg/openide/explorer/propertysheet/CustomEditorDisplayer; MethodParameters V(Lorg/openide/nodes/Node$Property;Lorg/openide/explorer/propertysheet/PropertyModel;)V mdl setUpdatePolicy (I)V i StackMapTable type Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<*>;� java/lang/Throwable commit ex Ljava/lang/Exception; e iae $Ljava/lang/IllegalArgumentException; msg Ljava/lang/String; entered 	exception res result� java/lang/String 
Exceptions setModel 5(Lorg/openide/explorer/propertysheet/PropertyModel;)V isModifiedValueLegal ise !Ljava/lang/IllegalStateException; legal isValueModified refresh reset enabled 
custEditor val ignore c Ljava/awt/Container; comp [Ljava/awt/Component; setEnteredValue o setActionCommand getActionCommand addActionListener "(Ljava/awt/event/ActionListener;)V listener Ljava/awt/event/ActionListener; removeActionListener event Ljava/awt/event/ActionEvent; 	listeners [Ljava/lang/Object; addChangeListener %(Ljavax/swing/event/ChangeListener;)V "Ljavax/swing/event/ChangeListener; removeChangeListener Ljavax/swing/event/ChangeEvent; setRemoteEnvListener l setRemoteEnvVetoListener vl 
access$200 =(Lorg/openide/explorer/propertysheet/CustomEditorDisplayer;)V x0 
access$300 _(Lorg/openide/explorer/propertysheet/CustomEditorDisplayer;)Ljava/beans/PropertyChangeListener; 
access$400 _(Lorg/openide/explorer/propertysheet/CustomEditorDisplayer;)Ljava/beans/VetoableChangeListener; 
access$500 =(Lorg/openide/explorer/propertysheet/CustomEditorDisplayer;)Z 
access$502 >(Lorg/openide/explorer/propertysheet/CustomEditorDisplayer;Z)Z x1 
SourceFile CustomEditorDisplayer.java InnerClasses EnvListener/ org/openide/nodes/Node Property EditorListener3 :org/openide/explorer/propertysheet/CustomEditorDisplayer$15 ,org/openide/explorer/propertysheet/ProxyNode DifferentValuesException 0   �        B C      !    $ %    ( )     ,     /     2 3    6 7    : ;    > ?              	 
   +   F �   �     K*� *� *� *� "*� &*� **� -*� 0*� 4*� 8*� <*� *� *� *+� @�   �   B    K  5 	 7  8  9  :  ; " < ' = , > 1 C 6 D ; G @ H E L J M�       K��     K B C �    B    � �   Q     *+� D*,� 4�   �       P  Q 
 R�        ��      B C    � 7 �   	 B  �   �� �   z     *� *� � *� � � � G�   �       U  W  X  Z�       ��     �  �    Y H�      H�   �    U V �   T     *� &� **� M� Q � &*� &�   �       ]  ^  a�       ��  �       O P �   R     *� "� **� W� [� `*� "�   �       f  g  j�       ��  �      b c �  �     �*� "� **� "� d*� **+� "+� �+� g � f*� @� kM� qY� sY� uv� x+� |� x*� @� |�� x,� �� x�� x,� �� |�� x� �� �� x�� x� �� �� |� �� ��*+� � � 8� M� HY� �M,*� �� �*,� �+� Ù +� �,� � *+� �*� *� N*� *-��  � � � �  � �   �   j    n  o  s  v  y  z & { . | T ~ `  k � y � � � � � � � � � � � � � � � � � � � � � � � � � � � � ��   *  . [��  � #   !    ���     � $ % �     . [�� �    � tL � � % H� G��    $    � � �   �     /*� � **� � �*+� +� +*� �� � � G*+� ұ   �       �  �  �  �  � ) � . ��       /��     /   ! �    U H�     H  H�         � � �   Y     +*� ն �+*� ն �+*� � �   �       �  �  �  ��       ��        ! �         � � �   M     +*� ն �+*� ն �   �       �  �  ��       ��        ! �         � c �   C     +*� � � �   �   
    � 
 ��       ��      $ % �    $    f c �   C     +*� � � �   �   
    � 
 ��       ��      $ % �    $    � � �   T     *� -� *� �Y*� �� -*� -�   �       �  �  ��       ��  �      � � �   T     *� 0� *� �Y*� �� 0*� 0�   �       �  �  ��       ��  �     � j �  �  	  �*� **� ML*� �M,� ,*� W� �� >*� *�� GN� ���-�*� W�� +*� 4� � � :� 
:�!6*� *�*�'N+,�+:� ~-� z�/-�2�� m--W�5,�8:�<� sY� uB� x� x� ��D� A�5-�2�� 4� qYI� �:�KW-W�Q-�2�� --W�Q�8W��T:� F*�Z+�^:*+� � � 8� �� �� 
� �:�b� �d� � ��!� 8� q� 	� q��!� qYI� �:,*� W�f�i�KW��m�p6� *�q6*� *�:*� *�   # - � > W Z > W _ �   #�   * i�   q��  ���   �   � :   �  � 
 �  � ! � #1 ( � * � - � . � > � H � W � Z � \ � _ � a � f � i1 n � q � v � } � � � � � � � � � � � � � � � � �+2BJOW]b n!t$z"}!�%�)�+�,�/�1�/�1�2�   z  a ��  . C��  � %��  � ^�� n ��  
� $ %  �� ;  v-   !  }&��  �� ; � �    ���  �   [ � * R B �� ) �BD �� 
� �   R  H �� q  � � 4 &� �    ��     q  \] �   T     *� 4� �tY*� W�v�*� 4�   �      6 7 9�       ��  �      �� �   >     *+� 4�   �   
   > ?�       ��     � 7 �   �   )* �   /     *� �   �      B�       ��   � V �   /     *�y�   �      F�       ��    � � �   �     (*� ML*� &�z� *� &�z�| M� 
+� � M,�   �      J M N P &S�   *   � ;    (��    # $ %  & � ; �    �  R�    Y Z �   /     *� @�   �      W�       ��    � � �   /     *� �   �      [�       ��   � � �  �     �<M*� MN*� � ^*� �2*� W�Q� � <�<�D� i*� W�/*� �2�� T*� *� W�5*� ��8M,� � <� 3-�z� ,-�z�| :-� � :<*� W�f�iM� ,� �-� � *� W�f��M,�  } � �� �   V   _ ` a 	d e (g 1i Jj ^m ko rp }s �w �t �u �v �z �| �} �| ���   >  � ��  } � ;    ���    ��    ���  	 � $ % �   - � &� R@>@�   � R  ��  � j �   �     L*� ML+� � *� 8� � =� 1+�z� *+�z�| N-� -*� 8�=� *� 8� � =�   �   "   � � � #� -� 1� =� J��   *  - � ;    L��    G $ %   4�  �    �  R@� % 
@�   �  �   +      �   �      ��       ��   �  �   �     -**� W� � 8*� M*� 8� � L� ���+��      � �      � � � � � ,��      ��    -��  �    [ � � L �   z     *����M,��� *,����,���   �      � � � � ��        ��     �    � ) �    � ��   �   �� �  >     �+��N6-�� o-2��� -2��� -2����-2��� ?6-2��� !-2������U:� 
��6� *-2��������+���   �   B   � � � � $� /� 9� <� F� X� ]� d� i� u� {� ���   H  X  Y  < 9    s�     ���     �    ��    | �    � 
� 4� � �   	  �    �   B     
*� M+�+W�   �   
   � 	��       
��     
 ; �      	 � �   5      �   �      ��       ��      � �       
 � �   ,     �   �      ��       ��   ! �   g     *� <� *��Y��� <*� <�+���   �      � � � ��       ��      �    �      ! �   D     *� <�+���   �   
   � ��       ��      �      s  �   �     F��Y*����L*� <� �*� <��M,�d>�  ,2�� ,`2��+�� �����   �   & 	  � � � �  ( 1 ? E�   *  $ !�     F��    7   ' �    � �� �  ! �   g     *� <� *��Y��� <*� <�+���   �         �       ��      �    �      ! �   D     *� <�+���   �   
    �       ��      �         �   �     @��Y*��L*� <� �*� <��M,�d>�  ,2Ȧ ,`2��+�� �����   �   & 	  " 	$ % ( * "+ +, 9* ?/�   *   !�     @��   	 7   ' �    � �� �    � �   >     *+� �   �   
   3 4�       ��       �        � �   >     *+� �   �   
   7 8�       ��      
 �      �   /     *� �   �       4�        �  !" �   /     *� �   �       4�        �  #$ �   /     *� �   �       4�        �  %& �   /     *� �   �       4�        �  '( �   ;     *Z� �   �       4�        �     )   *   +,   *  � -  l.0	 � 1 2    46 