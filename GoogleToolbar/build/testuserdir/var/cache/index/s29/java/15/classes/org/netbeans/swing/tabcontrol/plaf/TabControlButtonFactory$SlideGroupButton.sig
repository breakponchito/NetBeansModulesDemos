����   4 `
      3org/netbeans/swing/tabcontrol/plaf/TabControlButton <init> /(Lorg/netbeans/swing/tabcontrol/TabDisplayer;)V
  	 
   javax/swing/ToolTipManager sharedInstance ()Ljavax/swing/ToolTipManager;
     registerComponent (Ljavax/swing/JComponent;)V  *org/netbeans/swing/tabcontrol/TabDisplayer  minimizeGroup  )org/netbeans/swing/tabcontrol/plaf/Bundle
      java/util/ResourceBundle 	getBundle .(Ljava/lang/String;)Ljava/util/ResourceBundle;  Tip_Minimize_Window_Group
    ! " 	getString &(Ljava/lang/String;)Ljava/lang/String;
  $ % & 	addNotify ()V	 ( ) * + , Korg/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory$SlideGroupButton 	displayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;
 . / 0 1 2 javax/swing/SwingUtilities getWindowAncestor '(Ljava/awt/Component;)Ljava/awt/Window;
 4 5 6 7 8 !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
 4 : ; < getMainWindow ()Ljava/awt/Frame;
 ( > ? @ 
setVisible (Z)V Code LineNumberTable LocalVariableTable this MLorg/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory$SlideGroupButton; toolTipManager Ljavax/swing/ToolTipManager; MethodParameters getTabActionCommand 0(Ljava/awt/event/ActionEvent;)Ljava/lang/String; e Ljava/awt/event/ActionEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getButtonId ()I getToolTipText ()Ljava/lang/String; w Ljava/awt/Window; 
isFloating Z StackMapTable Y java/awt/Window 
SourceFile TabControlButtonFactory.java InnerClasses ^ :org/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory SlideGroupButton   (           A   Y     *+� � M,*� �    B       �  � 	 �  � C         D E      + ,  	  F G  H    +    I J  A   7     �    B       � C        D E      K L  H    K   M     N    O P  A   -     �    B       � C        D E   M     N    Q R  A   5     � � �    B       � C        D E   M     N    % &  A   �     &*� #*� '� -L+� 3� 9� � =� *� =�    B       �  �  �  �   � % � C        & D E     S T   
 U V  W    �  X@� 	 M     N    Z    [ \   
  ( ] _ 
