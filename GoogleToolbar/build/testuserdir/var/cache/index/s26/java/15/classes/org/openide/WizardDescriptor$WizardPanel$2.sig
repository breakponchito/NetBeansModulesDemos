����   4 A	      *org/openide/WizardDescriptor$WizardPanel$2 this$0 *Lorg/openide/WizardDescriptor$WizardPanel;	   	 
 val$progressLabel Ljavax/swing/JLabel;
      java/lang/Object <init> ()V  javax/swing/JComponent  ToolTipText
      java/beans/PropertyChangeEvent getNewValue ()Ljava/lang/Object;
     toString ()Ljava/lang/String;
   ! " # $ javax/swing/JLabel putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V & !java/beans/PropertyChangeListener A(Lorg/openide/WizardDescriptor$WizardPanel;Ljavax/swing/JLabel;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/WizardDescriptor$WizardPanel$2; MethodParameters 	Signature propertyChange #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile WizardDescriptor.java EnclosingMethod 9 (org/openide/WizardDescriptor$WizardPanel ; < setProgressComponent /(Ljavax/swing/JComponent;Ljavax/swing/JLabel;)V InnerClasses ? org/openide/WizardDescriptor WizardPanel      %  	 
           '  (   C     *+� *,� *� �    )       *        + ,         -   	 � 	 .      / 0  (   I     *� +� � � �    )   
     *        + ,      1 2  -    1   3     4    5    6 7    8 : =     8 > @ 
       