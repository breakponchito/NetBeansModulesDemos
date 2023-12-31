����   4 �
      org/openide/awt/JInlineMenu <init> ()V	  	 
   $org/openide/actions/FileSystemAction NONE [Ljavax/swing/JMenuItem;	      )org/openide/actions/FileSystemAction$Menu last	     needsChange Z	     popup	     lookup Lorg/openide/util/Lookup;
      
createMenu 4(ZLorg/openide/util/Lookup;)[Ljavax/swing/JMenuItem;
  " # $ changeMenuItems ([Ljavax/swing/JMenuItem;)V
 & ' ( ) * !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
 & , - . getRegistry -()Lorg/openide/windows/TopComponent$Registry;
 0 1 2 3 4 org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener; 6 7 8 9 : )org/openide/windows/TopComponent$Registry addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  < = $ removeListeners
  ? @ $ addListeners
  B C $ setMenuItems
 E 7 F javax/swing/JMenuItem
 E H I : removePropertyChangeListener
  K L  	addNotify
 N O P Q R java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String; T %org/openide/util/actions/SystemAction V enabled
 X Y Z [ \ java/lang/String equals (Ljava/lang/Object;)Z ^ activatedNodes ` !java/beans/PropertyChangeListener serialVersionUID J ConstantValue$�:���Ҧ (ZLorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable r +Lorg/openide/windows/TopComponent$Registry; this +Lorg/openide/actions/FileSystemAction$Menu; StackMapTable p org/openide/util/Lookup MethodParameters items i I len removeNotify #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; name Ljava/lang/String; 
SourceFile FileSystemAction.java InnerClasses Menu �  org/openide/windows/TopComponent Registry      _                  a b  c    d           f  g   �     :*� *� � *� *� *,� *,� � !,� � %� +N-*-� /� 5 �    h   2    �  �   �  �  � # � ' � . � 1 � 4 � 9 � i   *  .  j k    : l m     :      :    n    � 9   o   q   	         # $  g   \     **� � ;*+� >*+� *+� A�    h           i        l m      r   q    r    @ $  g   �     +�=>� +2*� D����    h        
   i   *    s t     l m      r     u t  n   
 � �  q    r    = $  g   �     +�=>� +2*� G����    h        
   i   *    s t     l m      r     u t  n   
 � �  q    r    L   g   c      *� � **� *� � � !*� *� J�    h      " # $ & ' i         l m   n      v   g   B     **� � ;*� � �    h      * + , i        l m    3 w  g   �     !+� MM,� ,U� W� ,]� W� *� �    h      / 0 2 3 6  8 i        ! l m     ! x y    z {  n   	 �  X q    x    |    } ~        
 6 � �	