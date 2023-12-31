����   46
      org/openide/actions/PasteAction getClipboard #()Ljava/awt/datatransfer/Clipboard;
   	 
 findActionFromMap -(Ljavax/swing/ActionMap;)Ljavax/swing/Action;
      -org/openide/util/actions/CallbackSystemAction <init> ()V	     globalModel 1Lorg/openide/actions/PasteAction$ActSubMenuModel;  /org/openide/actions/PasteAction$ActSubMenuModel
     (Lorg/openide/util/Lookup;)V
     
initialize
      
setEnabled (Z)V " Paste
 $ % & ' ( org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; * org/openide/util/HelpCtx
 ) ,  - (Ljava/lang/Class;)V / 'org/openide/resources/actions/paste.gif 1 org/openide/awt/Actions$SubMenu
  3 4 5 model 3()Lorg/openide/actions/PasteAction$ActSubMenuModel;
 0 7  8 Q(Lorg/openide/util/actions/SystemAction;Lorg/openide/awt/Actions$SubMenuModel;Z)V : .org/openide/actions/PasteAction$DelegateAction
 9 <  = =(Lorg/openide/actions/PasteAction;Lorg/openide/util/Lookup;)V ? !javax/swing/text/DefaultEditorKit A paste-from-clipboard
 C D E F G java/awt/event/ActionEvent 	getSource ()Ljava/lang/Object; I 'org/openide/util/datatransfer/PasteType
  K L M getPasteTypes ,()[Lorg/openide/util/datatransfer/PasteType;
  O P Q &findActionFromActivatedTopComponentMap ()Ljavax/swing/Action; S 	delegates U V W X Y javax/swing/Action getValue &(Ljava/lang/String;)Ljava/lang/Object; [ *[Lorg/openide/util/datatransfer/PasteType; ] [Ljavax/swing/Action; U _ ` a actionPerformed (Ljava/awt/event/ActionEvent;)V c (org/openide/actions/PasteAction$ActionPT
 C e f g getActionCommand ()Ljava/lang/String;
 b i  j >(Lorg/openide/util/datatransfer/PasteType;Ljava/lang/String;)V
 l m n o p java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
 l r s  beep
 u v w x g java/lang/Class getName
 z { | } ~ java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level INFO Ljava/util/logging/Level; � GNo paste types available when performing paste action. ActionEvent: {0}
 z � � � log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	  � � [ types
  � �   checkStateChanged
 � � � � �  org/openide/windows/TopComponent getRegistry -()Lorg/openide/windows/TopComponent$Registry; � � � � � )org/openide/windows/TopComponent$Registry getActivated $()Lorg/openide/windows/TopComponent;
 � � � � getActionMap ()Ljavax/swing/ActionMap;
 � � � � � javax/swing/ActionMap get ((Ljava/lang/Object;)Ljavax/swing/Action;
 � � � � � org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; � java/awt/datatransfer/Clipboard
 � � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 l � �  getSystemClipboard �  org.openide.windows.TopComponent
 u � � � forName %(Ljava/lang/String;)Ljava/lang/Class; �
 u � � � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; � java/lang/Object
 � � � � � java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � )org.openide.windows.TopComponent$Registry � � -org/openide/explorer/ExplorerManager$Provider � � � � getExplorerManager (()Lorg/openide/explorer/ExplorerManager; �  java/lang/ClassNotFoundException � %java/lang/ExceptionInInitializerError � java/lang/LinkageError � java/lang/SecurityException � java/lang/NoSuchMethodException �  java/lang/IllegalAccessException � "java/lang/IllegalArgumentException � +java/lang/reflect/InvocationTargetException	 � � � � WARNING
 z � � � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V Code LineNumberTable LocalVariableTable this !Lorg/openide/actions/PasteAction; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
getHelpCtx ()Lorg/openide/util/HelpCtx; iconResource getMenuPresenter ()Ljavax/swing/JMenuItem; getPopupPresenter createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; actionContext Lorg/openide/util/Lookup; MethodParameters getActionMapKey t )Lorg/openide/util/datatransfer/PasteType; arr obj Ljava/lang/Object; ac Ljavax/swing/Action; ev Ljava/awt/event/ActionEvent; asynchronous ()Z setPasteTypes -([Lorg/openide/util/datatransfer/PasteType;)V 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; map Ljavax/swing/ActionMap; tc "Lorg/openide/windows/TopComponent; c !Ljava/awt/datatransfer/Clipboard; findExplorerManager Ljava/lang/Class; m Ljava/lang/reflect/Method; o x Ljava/lang/SecurityException; !Ljava/lang/NoSuchMethodException; "Ljava/lang/IllegalAccessException; $Ljava/lang/IllegalArgumentException; -Ljava/lang/reflect/InvocationTargetException; Ljava/lang/Throwable; java/lang/Throwable 
access$000 x0 
access$100 
SourceFile PasteAction.java InnerClasses ActSubMenuModel( org/openide/awt/Actions SubMenu+ $org/openide/awt/Actions$SubMenuModel SubMenuModel DelegateAction ActionPT Registry1 $org/openide/explorer/ExplorerManager Provider4 ,org/openide/actions/PasteAction$NodeSelector NodeSelector 1      
     
 � [        �   /     *� �    �       V �        � �   * 4 5  �   >      � � � Y� � � �    �       _  `  c �         �   <     
*� *� �    �       g  i 	 j �       
 � �   �     �    x g  �   2     !� #�    �       m �        � �    � �  �   4     
� )Y� +�    �       q �       
 � �    � g  �   -     .�    �       u �        � �   �     �    � �  �   7     � 0Y*� 2� 6�    �       y �        � �   �     �    � �  �   7     � 0Y*� 2� 6�    �       } �        � �   �     �    � �  �   >     
� 9Y*+� ;�    �       � �       
 � �     
 � �  �    �   �     �    � G  �   -     @�    �       � �        � �   �     �    ` a  �  �     �+� B� H� +� B� HM� *� JN-� -�� 
-2M� M,� ]� NN-� U-R� T :� Z� � Z:�� 2M� .� \� � \:�� 2+� ^ �� -+� ^ �,� � bY,+� d� hW� � k� q� t� y� �+� ��    �   n    � 
 �  �  � # � * � , � 0 � 4 � 8 � B � J � Q � W � \ � g � n � t � ~ �  � � � � � � � � � � � � � � � �   f 
   � �  '  � �    � [  Q  � [  n  � ]  B H �   4 V    � � �     �  , � � �  �   + 
�   Z�    C H  � / U ��  �      �     �     �   ,     �    �       � �        � �   �     �     �   u     "+� �+� +�� *� � *� � 2� ��    �       �  �  �  �  � ! � �       " � �     " � [  �     �    �  	    
        L M  �   .     � ��    �       � �        � �   
 P Q  �   k     � �� � K*� *� �L+� ��    �       � 	 �  �  �  � �        	    �    �  � 
 	 
  �   H     *� 
*@� ���    �       �  �  � �          �     �      
    �   ]     � ��� �� �K*� 
� k� �K*�    �       �  �  �  � �         �    �  �  �  �  �     �K�� �L+�� u� �M,� �� �Nɸ �L+�� u� �M,-� �� �N-� ̙ -� ̹ � �� *L� &L� "L� L+K� L+K� L+K� L+K� L+K*� � t� y� �*� ��   H L �  H P �  H T �  H X �  H ^ �  H d �  H j �  H p �  �   � !    
   # . 8 ? I) L M) P Q) T U) X Y [) ^ _  a) d# e$ g) j% k& m) p' q( s+ w, �/ �   \ 	  A   6   ,   Y   _   e   k   q    � �   �   * � IB �C �C �C �E �E �E �E �  
  �   /     *� �    �       V �       !  "   �         � �    �       V #   $%   B   & 
 0') 	*',	 9 -  b .  � �/	 �02	3 5 