����   4 5	      ?org/netbeans/swing/tabcontrol/plaf/AbstractViewTabDisplayerUI$2 this$0 ?Lorg/netbeans/swing/tabcontrol/plaf/AbstractViewTabDisplayerUI;
  	 
   javax/swing/AbstractAction <init> ()V  -org/netbeans/swing/tabcontrol/TabbedContainer  toggleTransparency
      =org/netbeans/swing/tabcontrol/plaf/AbstractViewTabDisplayerUI getSelectionModel $()Ljavax/swing/SingleSelectionModel;       javax/swing/SingleSelectionModel getSelectedIndex ()I
      
access$300 p(Lorg/netbeans/swing/tabcontrol/plaf/AbstractViewTabDisplayerUI;Ljava/lang/String;ILjava/awt/event/MouseEvent;)Z B(Lorg/netbeans/swing/tabcontrol/plaf/AbstractViewTabDisplayerUI;)V Code LineNumberTable LocalVariableTable this ALorg/netbeans/swing/tabcontrol/plaf/AbstractViewTabDisplayerUI$2; MethodParameters actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile AbstractViewTabDisplayerUI.java EnclosingMethod 2 3 registerShortcuts (Ljavax/swing/JComponent;)V InnerClasses                !  "   >     
*+� *� �    #      � $       
 % &     
    '    �  ( )  "   P     *� *� � �  � W�    #   
   � � $        % &      * +  '    *   ,     -    .    / 0     1 4   
        