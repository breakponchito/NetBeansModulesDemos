����   4 J
      Forg/openide/explorer/propertysheet/CleanComboUI$SolidBackgroundLabelUI <init> ()V
   	 #javax/swing/plaf/synth/SynthLabelUI
      javax/swing/JComponent getBackground ()Ljava/awt/Color;
     isBackgroundSet ()Z
      java/awt/Graphics getColor
     setColor (Ljava/awt/Color;)V
      getWidth ()I
  " #   	getHeight
  % & ' fillRect (IIII)V
  ) * + paint .(Ljava/awt/Graphics;Ljavax/swing/JComponent;)V Code LineNumberTable LocalVariableTable this HLorg/openide/explorer/propertysheet/CleanComboUI$SolidBackgroundLabelUI; update oldC Ljava/awt/Color; g Ljava/awt/Graphics; c Ljavax/swing/JComponent; bg StackMapTable ; java/awt/Color MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 6(Lorg/openide/explorer/propertysheet/CleanComboUI$1;)V x0 3Lorg/openide/explorer/propertysheet/CleanComboUI$1; 
SourceFile CleanComboUI.java InnerClasses F /org/openide/explorer/propertysheet/CleanComboUI SolidBackgroundLabelUI I 1org/openide/explorer/propertysheet/CleanComboUI$1              ,   /     *� �    -      � .        / 0    1 +  ,   �     6,� 
N-� ),� � "+� :+-� +,� ,� !� $+� *+,� (�    -   "   � � � � � )� /� 5� .   4    2 3    6 / 0     6 4 5    6 6 7   1 8 3  9    � / : <   	 4   6   =     >     ?  ,   9     *� �    -      � .        / 0      @ A   B    C D      E G 
 H      