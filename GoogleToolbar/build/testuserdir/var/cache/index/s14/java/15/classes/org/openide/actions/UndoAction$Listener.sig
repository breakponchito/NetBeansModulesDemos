����   4 7
      java/lang/Object <init> ()V
  	 
   org/openide/actions/UndoAction updateStatus
     
access$200 ()Lorg/openide/awt/UndoRedo;      org/openide/awt/UndoRedo removeChangeListener %(Ljavax/swing/event/ChangeListener;)V
     getUndoRedo
     
access$202 6(Lorg/openide/awt/UndoRedo;)Lorg/openide/awt/UndoRedo;     addChangeListener ! 'org/openide/actions/UndoAction$Listener # !java/beans/PropertyChangeListener %  javax/swing/event/ChangeListener Code LineNumberTable LocalVariableTable this )Lorg/openide/actions/UndoAction$Listener; propertyChange #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; MethodParameters stateChanged "(Ljavax/swing/event/ChangeEvent;)V Ljavax/swing/event/ChangeEvent; 
SourceFile UndoAction.java InnerClasses Listener 0     " $         &   3     *� �    '   
    �  � (        ) *    + ,  &   a     � � *�  � � W� *�  �    '       �  �  �  �  � (        ) *      - .  /    -    0 1  &   <      � �    '   
    �  � (        ) *      - 2  /    -    3    4 5   
     6 