����   4 T	      org/openide/WizardDescriptor$7 this$0 Lorg/openide/WizardDescriptor;	   	 
 val$comp Ljava/awt/Component;
      java/lang/Object <init> ()V
     check
      java/awt/event/HierarchyEvent getChangeFlags ()J       
      ! javax/swing/SwingUtilities getWindowAncestor '(Ljava/awt/Component;)Ljava/awt/Window;
 # $ % & ' org/openide/WizardDescriptor 
access$600 !(Lorg/openide/WizardDescriptor;)Z
 # ) * + 
access$602 "(Lorg/openide/WizardDescriptor;Z)Z -  org/openide/WizardDescriptor$7$1
 , /  0 4(Lorg/openide/WizardDescriptor$7;Ljava/awt/Window;)V
 2 3 4 5 6 java/awt/Window addWindowListener "(Ljava/awt/event/WindowListener;)V 8  java/awt/event/HierarchyListener 5(Lorg/openide/WizardDescriptor;Ljava/awt/Component;)V Code LineNumberTable LocalVariableTable this  Lorg/openide/WizardDescriptor$7; MethodParameters 	Signature hierarchyChanged "(Ljava/awt/event/HierarchyEvent;)V e Ljava/awt/event/HierarchyEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; w Ljava/awt/Window; 
SourceFile WizardDescriptor.java EnclosingMethod N O updateStateOpen 5(Lorg/openide/WizardDescriptor$SettingsAndIterator;)V InnerClasses R 0org/openide/WizardDescriptor$SettingsAndIterator SettingsAndIterator      7  	 
           9  :   O     *+� *,� *� *� �    ;      � � � <        = >         ?   	 � 	 @      A B  :   W     +�  	�� *� �    ;      � � � <        = >      C D  E     ?    C   F     G       :        -*� � L*� � "� +� *� � (W+� ,Y*+� .� 1�    ;      � � � � ,� <       - = >    % H I  E    � , 2  J    K L    # M P            ,       Q # S 