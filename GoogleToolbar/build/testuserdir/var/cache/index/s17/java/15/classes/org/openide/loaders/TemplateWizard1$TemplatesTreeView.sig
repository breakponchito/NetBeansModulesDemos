����   4 5
      &org/openide/explorer/view/BeanTreeView <init> ()V	  	 
   5org/openide/loaders/TemplateWizard1$TemplatesTreeView tree Ljavax/swing/JTree;
      javax/swing/JTree setEditable (Z)V
     setLargeModel  Nb.ScrollPane.border
      javax/swing/UIManager get &(Ljava/lang/Object;)Ljava/lang/Object;  javax/swing/border/Border
  ! " # 	setBorder (Ljavax/swing/border/Border;)V % 2org/openide/loaders/TemplateWizard1$TemplatesModel
 $  Code LineNumberTable LocalVariableTable this 7Lorg/openide/loaders/TemplateWizard1$TemplatesTreeView; createModel +()Lorg/openide/explorer/view/NodeTreeModel; 
SourceFile TemplateWizard1.java InnerClasses 2 #org/openide/loaders/TemplateWizard1 TemplatesTreeView TemplatesModel 0             '   [     !*� *� � *� � *� � �  �    (      G H J L  M )       ! * +    , -  '   2     � $Y� &�    (      P )        * +    .    / 0      1 3  $ 1 4 