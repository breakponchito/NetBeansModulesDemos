����   4 �
      javax/swing/AbstractAction <init> ()V	  	 
   .org/openide/actions/PasteAction$DelegateAction delegate !Lorg/openide/actions/PasteAction;  /org/openide/actions/PasteAction$ActSubMenuModel
     (Lorg/openide/util/Lookup;)V	     model 1Lorg/openide/actions/PasteAction$ActSubMenuModel;
     addChangeListener %(Ljavax/swing/event/ChangeListener;)V  java/lang/StringBuilder
  
     ! " java/lang/Object toString ()Ljava/lang/String;
  $ % & append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ( 
[delegate=
  * % + -(Ljava/lang/Object;)Ljava/lang/StringBuilder; - ]
  
  0 1 2 performActionAt  (ILjava/awt/event/ActionEvent;)V
  4 5 6 	isEnabled ()Z
 8 9 : ; < org/openide/actions/PasteAction getValue &(Ljava/lang/String;)Ljava/lang/Object; > org/openide/awt/Actions$SubMenu
 = @  A >(Ljavax/swing/Action;Lorg/openide/awt/Actions$SubMenuModel;Z)V C %org/openide/awt/Actions$ToolbarButton
 B E  F (Ljavax/swing/Action;)V H enabled
  J K L firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V N 'org/openide/util/actions/Presenter$Menu P (org/openide/util/actions/Presenter$Popup R *org/openide/util/actions/Presenter$Toolbar T  javax/swing/event/ChangeListener =(Lorg/openide/actions/PasteAction;Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/actions/PasteAction$DelegateAction; a actionContext Lorg/openide/util/Lookup; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; putValue '(Ljava/lang/String;Ljava/lang/Object;)V key Ljava/lang/String; value Ljava/lang/Object; actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; StackMapTable 
setEnabled (Z)V b Z getMenuPresenter ()Ljavax/swing/JMenuItem; getPopupPresenter getToolbarPresenter ()Ljava/awt/Component; stateChanged "(Ljavax/swing/event/ChangeEvent;)V evt Ljavax/swing/event/ChangeEvent; 
SourceFile PasteAction.java InnerClasses DelegateAction ActSubMenuModel  org/openide/awt/Actions SubMenu � $org/openide/awt/Actions$SubMenuModel SubMenuModel ToolbarButton � "org/openide/util/actions/Presenter Menu Popup Toolbar 0    M O Q S               U  V   l     *� *+� *� Y,� � *� *� �    W      � � 	� � � X         Y Z      [      \ ]  ^   	 [   \    ! "  V   M     #� Y� *� � #'� #*� � ),� #� .�    W      � X       # Y Z   _     `    a b  V   ?      �    W      � X         Y Z      c d     e f  ^   	 c   e   _     `    g h  V   V     *� � *� +� /�    W      � � � X        Y Z      i j  k     ^    i    5 6  V   L     *� � *� � 3� � �    W      � X        Y Z   k    @ _     `    ; <  V   =     	*� +� 7�    W      � X       	 Y Z     	 c d  ^    c   _     `    l m  V   5      �    W      � X        Y Z      n o  ^    n   _     `    p q  V   8     � =Y**� � ?�    W      � X        Y Z    r q  V   8     � =Y**� � ?�    W      � X        Y Z    s t  V   3     	� BY*� D�    W      � X       	 Y Z    u v  V   A     	*G� I�    W   
   � � X       	 Y Z     	 w x  ^    w    y    z {   B   8 |   8 } 
 = ~ � 	 � ~ �	 B ~ � 	 M � �	 O � �	 Q � �	