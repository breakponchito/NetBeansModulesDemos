����   4 �	      /org/openide/explorer/view/TreeView$PopupSupport this$0 $Lorg/openide/explorer/view/TreeView;
  	 
   java/awt/event/MouseAdapter <init> ()V  1org/openide/explorer/view/TreeView$PopupSupport$1
     4(Lorg/openide/explorer/view/TreeView$PopupSupport;)V	     popup Ljavax/swing/Action;
      "org/openide/explorer/view/TreeView getPositionForPopup ()Ljava/awt/Point;  java/awt/Point
      (II)V	  " # $ x I	  & ' $ y
  ) *   createPopup
 , - . / 0 java/awt/event/FocusEvent getComponent ()Ljava/awt/Component;
 2 3 4 5 6 java/awt/Component removeFocusListener !(Ljava/awt/event/FocusListener;)V	 8 9 : ; < +org/openide/explorer/view/DragDropUtilities dragAndDropEnabled Z
  > ? @ 
access$900 '(Lorg/openide/explorer/view/TreeView;)Z
  B C D setDragSource (Z)V	  F G H tree Ljavax/swing/JTree;
 J K L M N javax/swing/JTree stopEditing ()Z
 P Q R S T java/awt/event/MouseEvent getX ()I
 P V W T getY
 J Y Z [ getRowForLocation (II)I
 ] ^ _ ` a javax/swing/SwingUtilities isLeftMouseButton (Ljava/awt/event/MouseEvent;)Z
 c d e f a org/openide/awt/MouseUtils isDoubleClick	  h i < defaultActionEnabled
 J k l m getPathForLocation (II)Ljavax/swing/tree/TreePath;
 o p q r s javax/swing/tree/TreePath getLastPathComponent ()Ljava/lang/Object;
 u v w x y $org/openide/explorer/view/Visualizer findNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node;
 { | } ~  org/openide/nodes/Node getPreferredAction ()Ljavax/swing/Action;
  � � � 
takeAction C(Ljavax/swing/Action;[Lorg/openide/nodes/Node;)Ljavax/swing/Action; � � � � N javax/swing/Action 	isEnabled � java/awt/event/ActionEvent �  
 � �  � ((Ljava/lang/Object;ILjava/lang/String;)V � � � � actionPerformed (Ljava/awt/event/ActionEvent;)V
 � � � �  org/openide/util/Utilities disabledActionBeep
 P � �  consume
 J � � � 
isExpanded (I)Z
 J � � � collapseRow (I)V
 J � � � 	expandRow	  � � � manager &Lorg/openide/explorer/ExplorerManager;
 � � � � � $org/openide/explorer/ExplorerManager getSelectedNodes ()[Lorg/openide/nodes/Node;
  � � � performPreferredActionOnNodes ([Lorg/openide/nodes/Node;)V � java/lang/Runnable � java/awt/event/FocusListener � java/awt/event/ActionListener '(Lorg/openide/explorer/view/TreeView;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/explorer/view/TreeView$PopupSupport; MethodParameters run p Ljava/awt/Point; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; focusGained (Ljava/awt/event/FocusEvent;)V ev Ljava/awt/event/FocusEvent; 	focusLost mouseClicked (Ljava/awt/event/MouseEvent;)V selPath Ljavax/swing/tree/TreePath; node Lorg/openide/nodes/Node; a e Ljava/awt/event/MouseEvent; selRow evt Ljava/awt/event/ActionEvent; nodes [Lorg/openide/nodes/Node; 
SourceFile TreeView.java InnerClasses PopupSupport 0    � � �               �  �   N     *+� *� *� Y*� � �    �   
    	 �        � �         �    �  �   �   x     &*� � L+� � Y� L*� +� !+� %� (�    �        ! $ %% �       & � �     � �  �    �   �     �    � �  �   j     !+� +*� 1� 7� *� � =� *� � A�    �      * - .  2 �       ! � �     ! � �  �      �    �   �     �    � �  �   5      �    �      6 �        � �      � �  �    �   �     �    � �  �  �     �*� � E� IW*� � E+� O+� U� X=� �+� \� �+� b� �*� � g� a*� � E+� O+� U� jN-� n� t:� z� {YS� �:� -� � � � �Y��� �� � � � �+� ��*� � E� �� *� � E� �� *� � E� ��    �   F   ; < > 1@ ;A NB WD jF oG yH �J �M �O �S �T �V �Y �   >  N K � �  W B � �  j / �     � � �     � � �   � � $  �    � �   P o { �  � 
 �    �   �     �    � �  �   V     *� � �� �M,� ��    �      ^ _ ` �         � �      � �    � �  �    �   �     �    �    � �       �        