����   4�
      javax/swing/JMenu <init> ()V	  	 
    org/openide/awt/MenuBar$LazyMenu selected Z	     master  Lorg/openide/loaders/DataFolder;	     icon  org/openide/awt/DynaMenuModel
  	     	dynaModel Lorg/openide/awt/DynaMenuModel;  +org/openide/awt/MenuBar$LazyMenu$MenuFolder
     %(Lorg/openide/awt/MenuBar$LazyMenu;)V	  ! " # slave -Lorg/openide/awt/MenuBar$LazyMenu$MenuFolder;
 % & ' ( ) org/openide/loaders/DataFolder getName ()Ljava/lang/String;
  + , - setName (Ljava/lang/String;)V
 % / 0 1 getPrimaryFile &()Lorg/openide/filesystems/FileObject; 3 property-prefix
 5 6 7 8 9 "org/openide/filesystems/FileObject getAttribute &(Ljava/lang/String;)Ljava/lang/Object; ; java/lang/String
 5 = > ? getAttributes ()Ljava/util/Enumeration; A B C D E java/util/Enumeration hasMoreElements ()Z A G H I nextElement ()Ljava/lang/Object;
 : K L M 
startsWith (Ljava/lang/String;)Z
 : O P Q length ()I
 : S T U 	substring (I)Ljava/lang/String;
  W X Y putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
 % [ \ ] getNodeDelegate ()Lorg/openide/nodes/Node;
 _ ` a b c org/openide/nodes/NodeOp weakNodeListener T(Lorg/openide/nodes/NodeListener;Ljava/lang/Object;)Lorg/openide/nodes/NodeListener;
 e f g h i org/openide/nodes/Node addNodeListener #(Lorg/openide/nodes/NodeListener;)V	 k l m n o org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
 k q r s 
readAccess (Ljava/lang/Runnable;)V
  u v w getModel ()Ljavax/swing/ButtonModel; y z { | } javax/swing/ButtonModel addChangeListener %(Ljavax/swing/event/ChangeListener;)V
  � � � E java/awt/EventQueue isDispatchThread
  � �  updateUI
  � �  conditionalInitialize
  � � Q getItemCount
  � � Q getMenuComponentCount
  � � � getMenuComponents ()[Ljava/awt/Component;
  � � I getTreeLock
 � � � � � java/lang/Thread 	holdsLock (Ljava/lang/Object;)Z � Aqua
 � � � � � javax/swing/UIManager getLookAndFeel ()Ljavax/swing/LookAndFeel;
 � � � � ) javax/swing/LookAndFeel getID
 : � � � equals
 � � � � currentThread ()Ljava/lang/Thread;
 � � � � getStackTrace  ()[Ljava/lang/StackTraceElement; � com.apple.laf.AquaRootPaneUI
 � � � � ) java/lang/StackTraceElement getClassName � windowDeactivated
 � � � ) getMethodName � windowActivated
  � �  doInitialize
 � � � � E org/openide/util/Utilities isMac
 � � � � Q java/awt/event/KeyEvent getModifiers � &org/openide/awt/MenuBar$MarkedKeyEvent
 � � � I 	getSource � java/awt/Component
 � � � Q
 � � � � getWhen ()J
 � � � Q 
getKeyCode
 � � � � 
getKeyChar ()C
 � � � Q getKeyLocation
 � �  � (Ljava/awt/Component;IJIICI)V
 � � � javax/swing/KeyStroke
 � � � � getKeyStroke (II)Ljavax/swing/KeyStroke;
 � �
 � � � E isOnKeyRelease
 � � � � (IIZ)Ljavax/swing/KeyStroke;
  � � � processKeyBinding 5(Ljavax/swing/KeyStroke;Ljava/awt/event/KeyEvent;IZ)Z
 � � � E 
isConsumed
 � �   consume	   $assertionsDisabled java/lang/AssertionError
  y	 } removeChangeListener
 % E isValid
 e ) getDisplayName
 org/openide/awt/Mnemonics setLocalizedText 1(Ljavax/swing/AbstractButton;Ljava/lang/String;)V javax/swing/ImageIcon java/beans/BeanInfo
 e getIcon (I)Ljava/awt/Image;
   (Ljava/awt/Image;)V
 "#$ setIcon (Ljavax/swing/Icon;)V
 &' - setText
  �
 *+  updateProps- displayName
/012 ) java/beans/PropertyChangeEvent getPropertyName4 name 
 789 checkSubmenu (Ljavax/swing/JMenu;)V
 ;< E isPopupMenuVisible
 >?@ setPopupMenuVisible (Z)V
 BC  waitFinishedSuperE org/openide/awt/MenuBar
GHIJ E java/lang/Class desiredAssertionStatusL %org/openide/awt/MenuBar$LazySeparator
K 	 OPQ 	SEPARATOR Ljavax/swing/JSeparator;S org/openide/nodes/NodeListenerU java/lang/RunnableW  javax/swing/event/ChangeListener $(Lorg/openide/loaders/DataFolder;Z)V Code LineNumberTable LocalVariableTable attrName Ljava/lang/String; en Ljava/util/Enumeration; this "Lorg/openide/awt/MenuBar$LazyMenu; df pf $Lorg/openide/filesystems/FileObject; prefix Ljava/lang/Object; n Lorg/openide/nodes/Node; LocalVariableTypeTable +Ljava/util/Enumeration<Ljava/lang/String;>; StackMapTablem java/lang/Object MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ste Ljava/lang/StackTraceElement;t [Ljava/lang/StackTraceElement; newEvent Ljava/awt/event/KeyEvent; 	newStroke Ljavax/swing/KeyStroke; result mods I isCtrl isAlt ks e 	condition pressed run propertyChange #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; childrenAdded &(Lorg/openide/nodes/NodeMemberEvent;)V #Lorg/openide/nodes/NodeMemberEvent; childrenRemoved childrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V $Lorg/openide/nodes/NodeReorderEvent; nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V Lorg/openide/nodes/NodeEvent; stateChanged "(Ljavax/swing/event/ChangeEvent;)V event Ljavax/swing/event/ChangeEvent; 	isVisible b <clinit> 
SourceFile MenuBar.java InnerClasses LazyMenu 
MenuFolder MarkedKeyEvent LazySeparator     RTV  PQ              " #                  X Y  �     �*� *� *+� *� *� Y� � *� Y*� �  *+� $� *+� .N-2� 4:� :� F-� <:� @ � 6� F � ::� :� J� *� :� N� R-� 4� V���*� � Z:*� ^� d� j*� p*� t*� x �   Z   b    � 	    * 2 7 ? G M  W! c" p# x$ �% �# �( �, �- �. �/ �0[   R  c $\]  M =^_    �`a     �b     �    7 ycd  ? qef  � gh i     M =^j k    � M   % 5l A  9� n   	b      �  Y   U     � ~� 
*� �� 
� j*� p�   Z      4 5 7 9[       `a  k    o    p    � Q Y   7     	*� �*� ��   Z   
   < =[       	`a  o    p    � Q Y   7     	*� �*� ��   Z   
   B C[       	`a  o    p    � � Y   7     	*� �*� ��   Z   
   H I[       	`a  o    p    �  Y   �     c*� �� �� ��� �� �� �� H� �� �L+�=>� 7+2:�� �� �� �� �� �� ��� �� �� �����*� ±   Z   2   M 
N P R /S <T IU JW WX XR ^] b^[     / )qr    c`a  k    � s� $ �� �   � � Y  H 
    � ř �,� �6~� � 6~� � 6� �,� ϙ ��~6�~6�6 �6� �Y,� �� �,� �,� �,� �,� �,� � �::	+� 0,� ��� +� �� � +� �+� � � � �:	*	� �6
� �� ,� �
�� *+,� ���*+,� ��   Z   r   d e f g )h 5i <j Dk Kl Sn Xo cp qq ys |t �u �v �w �x �w �{ �~ � �� �� �� �� ��[   p  y Quv  | Nwx 	 � y  
  �z{   �|   ) �}     �`a     �~x    �v    ��{    ��  k   c � @� @� o � ��  
  � � � � �   
  � � � � B �� � � n   ~    �  �  o    p   +  Y   �     m�� � ~� �Y��*� t*� *� �
� -*� � ZL*+��*� � *�Y+���!� **� � $�%*�!*� t*� x �   Z   6   � � � (� 0� 8� F� L� O� R� ]� b� l�[     0 gh    m`a  k    : �  Y   T     *� � �*�(*�)�   Z      � � � � �[       `a  k    o    p   �� Y   �     /,+�.� �� 3+�.� �� 5+�.� �� 
� j*� p�   Z      � � � � '� .�[       /`a     /�� k    'n   �   �� Y   5      �   Z      �[       `a     �� n   �   �� Y   5      �   Z      �[       `a     �� n   �   �� Y   5      �   Z      �[       `a     �� n   �   �� Y   5      �   Z      �[       `a     �� n   �   �� Y   }     '� ř #*� � *� � *� *� �*� *�6�   Z      � � � � � � &�[       '`a     '�� k    n   �   ?@ Y   �     &� Ś *�:=� � *� �*� *�6*�=�   Z   "   � � � � � �  � %�[       �     &`a     &�  k     n   �  o    p    �  Y   J     *�  � 
*�  �A�   Z      � � �[       `a  k     �  Y   S      $D�F� � ��KY�M�N� Y� W�   Z      	 
  #k    @ �   ��   "  D� 
  �  �D� KD� 