����   4 S	      %org/openide/actions/ToolsAction$Popup toolsAction Ljavax/swing/Action;
  	 
   javax/swing/JMenuItem <init> ()V  ,org/openide/actions/ToolsAction$Popup$MyMenu
     *(Lorg/openide/actions/ToolsAction$Popup;)V	     menu Ljavax/swing/JMenu;  org/openide/actions/ToolsAction
      java/lang/Class getName ()Ljava/lang/String;
    ! " # org/openide/util/HelpCtx setHelpIDString -(Ljavax/swing/JComponent;Ljava/lang/String;)V
  % & ' gl %()Lorg/openide/actions/ToolsAction$G;
 ) * + , - !org/openide/actions/ToolsAction$G 
access$200 :(Lorg/openide/actions/ToolsAction$G;Ljavax/swing/Action;)Z / javax/swing/JComponent
  1 2 3 synchMenuPresenters 4([Ljavax/swing/JComponent;)[Ljavax/swing/JComponent; 5 "org/openide/awt/DynamicMenuContent serialVersionUID J ConstantValue}!{�s� (Ljavax/swing/Action;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/actions/ToolsAction$Popup; MethodParameters items [Ljavax/swing/JComponent; StackMapTable C #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getMenuPresenters ()[Ljavax/swing/JComponent; 
access$400 =(Lorg/openide/actions/ToolsAction$Popup;)Ljavax/swing/Action; x0 
SourceFile ToolsAction.java InnerClasses Popup MyMenu G 0    4   6 7  8    9              ;  <   f     "*� *� Y*� � *+� *� � � �    =      B < C D !F >       " ? @     "    A        2 3  <   a      � $*� � (� � Y*� S� � �    =      K >         ? @       B C  D    C E A    B   F     G    H I  <   3     	*� .� 0�    =      Q >       	 ? @   F     G   J K  <   /     *� �    =      8 >        L @    M    N O       P    Q  )  R 
