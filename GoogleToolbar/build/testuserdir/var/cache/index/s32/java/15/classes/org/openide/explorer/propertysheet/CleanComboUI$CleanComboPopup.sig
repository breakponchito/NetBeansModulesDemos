����   4 Z
      &javax/swing/plaf/basic/BasicComboPopup <init> (Ljavax/swing/JComboBox;)V
  	 
   /org/openide/explorer/propertysheet/CleanComboUI 
access$600 (Ljavax/swing/JComponent;)V	      ?org/openide/explorer/propertysheet/CleanComboUI$CleanComboPopup comboBox Ljavax/swing/JComboBox;
      >org/openide/explorer/propertysheet/ComboBoxAutoCompleteSupport isAutoCompleteInstalled (Ljavax/swing/JComboBox;)Z
     computePopupBounds (IIII)Ljava/awt/Rectangle;	      list Ljavax/swing/JList;
 " # $ % & javax/swing/JList getPreferredSize ()Ljava/awt/Dimension;
 ( ) * + , org/openide/util/Utilities getUsableScreenBounds ()Ljava/awt/Rectangle;	 . / 0 1 2 java/awt/Dimension width I	 4 / 5 java/awt/Rectangle
 7 8 9 : ; java/lang/Math min (II)I	 . = > 2 height	 4 =
 4 A  B (IIII)V Code LineNumberTable LocalVariableTable this ALorg/openide/explorer/propertysheet/CleanComboUI$CleanComboPopup; box MethodParameters px py pw ph d Ljava/awt/Dimension; r Ljava/awt/Rectangle; result StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile CleanComboUI.java InnerClasses CleanComboPopup              C   F     
*+� *� �    D      i j 	k E       
 F G     
 H   I    H       C  .     ~*� � � *� �*� � !:� ':� -� � -� 3d� 6>� <� � ?d� <� 66`� 3d� � 3dd<� 4Y� @:�    D   2   o 
p q r "t +u ;x Ey V| c} m� {� E   R    ~ F G     ~ J 2    ~ K 2    ~ L 2    ~ M 2   a N O  " \ P Q  {  R Q  S    � & . 4 I    J   K   L   M   T     U    V    W X   
    Y 
