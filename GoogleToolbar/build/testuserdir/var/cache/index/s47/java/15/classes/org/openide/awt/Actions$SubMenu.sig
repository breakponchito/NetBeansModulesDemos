����   4 J
      org/openide/awt/Actions$SubMenu <init> Q(Lorg/openide/util/actions/SystemAction;Lorg/openide/awt/Actions$SubMenuModel;Z)V
    	 >(Ljavax/swing/Action;Lorg/openide/awt/Actions$SubMenuModel;Z)V
      org/openide/awt/JMenuPlus ()V  %org/openide/awt/Actions$SubMenuBridge  javax/swing/JMenuItem
  
     h(Ljavax/swing/JMenuItem;Ljavax/swing/JMenu;Ljavax/swing/Action;Lorg/openide/awt/Actions$SubMenuModel;Z)V	     bridge 'Lorg/openide/awt/Actions$SubMenuBridge;
     prepare
     ! getMenuPresenters ()[Ljavax/swing/JComponent;
  # $ % synchMenuPresenters 4([Ljavax/swing/JComponent;)[Ljavax/swing/JComponent; ' "org/openide/awt/DynamicMenuContent serialVersionUID J ConstantValue�I3_��` P(Lorg/openide/util/actions/SystemAction;Lorg/openide/awt/Actions$SubMenuModel;)V Code LineNumberTable LocalVariableTable this !Lorg/openide/awt/Actions$SubMenu; aAction 'Lorg/openide/util/actions/SystemAction; model &Lorg/openide/awt/Actions$SubMenuModel; MethodParameters popup Z Ljavax/swing/Action; items [Ljavax/swing/JComponent; 
SourceFile Actions.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses D org/openide/awt/Actions SubMenu G $org/openide/awt/Actions$SubMenuModel SubMenuModel SubMenuBridge !    &   ( )  *    +         -  .   J     *+,� �    /   
   T U 0         1 2      3 4     5 6  7   	 3   5       .   T     *+,� �    /   
   _ ` 0   *     1 2      3 4     5 6     8 9  7    3   5   8     	  .   v     "*� 
*� Y� Y� *+,� � *� � �    /      i j k !l 0   *    " 1 2     " 3 :    " 5 6    " 8 9  7    3   5   8      !  .   2     *� � �    /      o 0        1 2    $ %  .   =     	*� +� "�    /      s 0       	 1 2     	 ; <  7    ;    =    > ?     @     A   B      C E 	 F C H	  C I 