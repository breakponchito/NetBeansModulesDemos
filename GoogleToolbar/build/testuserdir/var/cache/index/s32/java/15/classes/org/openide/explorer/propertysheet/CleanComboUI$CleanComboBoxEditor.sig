����   4 5
      *javax/swing/plaf/basic/BasicComboBoxEditor <init> ()V  javax/swing/JTextField
  	      Corg/openide/explorer/propertysheet/CleanComboUI$CleanComboBoxEditor editor Ljavax/swing/JTextField;  Table.selectionBackground
      javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color;	      java/awt/Color BLACK Ljava/awt/Color;
    ! " # javax/swing/BorderFactory createLineBorder -(Ljava/awt/Color;)Ljavax/swing/border/Border;
  % & ' 	setBorder (Ljavax/swing/border/Border;)V Code LineNumberTable LocalVariableTable this ELorg/openide/explorer/propertysheet/CleanComboUI$CleanComboBoxEditor; c StackMapTable 
SourceFile CleanComboUI.java InnerClasses 3 /org/openide/explorer/propertysheet/CleanComboUI CleanComboBoxEditor              (   �     )*� *� Y� 	� 
� L+� � L*� 
+� � $�    )      � � � � � � (� *       ) + ,     -   .    �        /    0 1   
   2 4 