����   4 R	      Horg/openide/explorer/propertysheet/PropertyPanel$AccessiblePropertyPanel this$0 2Lorg/openide/explorer/propertysheet/PropertyPanel;
  	 
   +javax/swing/JComponent$AccessibleJComponent <init> (Ljavax/swing/JComponent;)V	      "javax/accessibility/AccessibleRole PANEL $Ljavax/accessibility/AccessibleRole;
     getAccessibleName ()Ljava/lang/String;
      0org/openide/explorer/propertysheet/PropertyPanel 
access$300 f(Lorg/openide/explorer/propertysheet/PropertyPanel;)Lorg/openide/explorer/propertysheet/PropertyModel;  2org/openide/explorer/propertysheet/ExPropertyModel    ! " getFeatureDescriptor  ()Ljava/beans/FeatureDescriptor; $ ACS_PropertyPanel
 & ' ( )  java/beans/FeatureDescriptor getDisplayName
 + , - . / org/openide/util/NbBundle 
getMessage I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
  1 2  getAccessibleDescription 4 ACSD_PropertyPanel
 & 6 7  getShortDescription 5(Lorg/openide/explorer/propertysheet/PropertyPanel;)V Code LineNumberTable LocalVariableTable this JLorg/openide/explorer/propertysheet/PropertyPanel$AccessiblePropertyPanel; MethodParameters getAccessibleRole &()Ljavax/accessibility/AccessibleRole; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; fd Ljava/beans/FeatureDescriptor; name Ljava/lang/String; StackMapTable I java/lang/String description 
SourceFile PropertyPanel.java InnerClasses AccessiblePropertyPanel P javax/swing/JComponent AccessibleJComponent                8  9   9     *+� *+� �    :   
   � 
� ;        < =   >      ? @  9   .     � �    :      � ;        < =   A     B       9   �     4*� L+� ,*� � � � *� � � �  M#,� %� *L+�    :      � � � &� 2� ;      &  C D    4 < =    / E F  G    � 2 H A     B    2   9   �     4*� 0L+� ,*� � � � *� � � �  M3,� 5� *L+�    :      � � � &� 2� ;      &  C D    4 < =    / J F  G    � 2 H A     B    K    L M       N   O Q