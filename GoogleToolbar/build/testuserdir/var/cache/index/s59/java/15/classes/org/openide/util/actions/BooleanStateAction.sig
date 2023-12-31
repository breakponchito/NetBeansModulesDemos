����   4 p
      %org/openide/util/actions/SystemAction <init> ()V
  	 
   0org/openide/util/actions/ActionPresenterProvider 
getDefault 4()Lorg/openide/util/actions/ActionPresenterProvider;
     createMenuPresenter -(Ljavax/swing/Action;)Ljavax/swing/JMenuItem;
     createPopupPresenter
     createToolbarPresenter *(Ljavax/swing/Action;)Ljava/awt/Component;  +org/openide/util/actions/BooleanStateAction  booleanState
     getProperty &(Ljava/lang/Object;)Ljava/lang/Object;	 ! " # $ % java/lang/Boolean TRUE Ljava/lang/Boolean;
 ' ( ) * + java/lang/Object equals (Ljava/lang/Object;)Z	 ! - . % FALSE
  0 1 2 putProperty 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  4 5 6 firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  8 9  
initialize
  ; < = getBooleanState ()Z
  ? @ A setBooleanState (Z)V C 'org/openide/util/actions/Presenter$Menu E (org/openide/util/actions/Presenter$Popup G *org/openide/util/actions/Presenter$Toolbar serialVersionUID J ConstantValueX�伀�V PROP_BOOLEAN_STATE Ljava/lang/String; Code LineNumberTable LocalVariableTable this -Lorg/openide/util/actions/BooleanStateAction; getMenuPresenter ()Ljavax/swing/JMenuItem; getPopupPresenter getToolbarPresenter ()Ljava/awt/Component; value Z newValue oldValue StackMapTable MethodParameters actionPerformed (Ljava/awt/event/ActionEvent;)V ev Ljava/awt/event/ActionEvent; d java/awt/event/ActionEvent 
SourceFile BooleanStateAction.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses l "org/openide/util/actions/Presenter Menu Popup Toolbar!    B D F   H I  J    K  M N  J          O   /     *� �    P       % Q        R S    T U  O   2     � *� �    P       2 Q        R S    V U  O   2     � *� �    P       ; Q        R S    W X  O   2     � *� �    P       C Q        R S    < =  O   7     *� �  � &�    P       J Q        R S    @ A  O   �     "� 	�  � � ,M*,� /� !N*-,� 3�    P       S  T  V ! W Q   *    " R S     " Y Z    [ %   	 \ %  ]    
B ! ^    Y    9   O   A     *�  � /W*� 7�    P       ] 
 ^  _ Q        R S    _ `  O   f     **� :� � � >�    P   
    g  h Q        R S      a b  ]    L �     c   ^    a    e    f g     h     i   j     B k m	 D k n	 F k o	