����   4 <
      ,javax/swing/plaf/basic/BasicSplitPaneDivider <init> ,(Ljavax/swing/plaf/basic/BasicSplitPaneUI;)V	  	 
   Borg/openide/explorer/propertysheet/PropUtils$CleanSplitPaneDivider accessibleContext 'Ljavax/accessibility/AccessibleContext;  Dorg/openide/explorer/propertysheet/PropUtils$CleanSplitPaneDivider$1
     G(Lorg/openide/explorer/propertysheet/PropUtils$CleanSplitPaneDivider;)V  7org/openide/explorer/propertysheet/DescriptionComponent  ACS_Splitter
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
      ! %javax/accessibility/AccessibleContext setAccessibleName (Ljava/lang/String;)V # ACSD_Splitter
  % & ! setAccessibleDescription ( javax/accessibility/Accessible Code LineNumberTable LocalVariableTable this DLorg/openide/explorer/propertysheet/PropUtils$CleanSplitPaneDivider; ui )Ljavax/swing/plaf/basic/BasicSplitPaneUI; MethodParameters getAccessibleContext )()Ljavax/accessibility/AccessibleContext; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile PropUtils.java InnerClasses : ,org/openide/explorer/propertysheet/PropUtils CleanSplitPaneDivider      '            )   >     *+� �    *   
   P Q +        , -      . /  0    .    1 2  )   x     5*� � +*� Y*� � *� � � *� "� � $*� �    *      T U \ "] 0_ +       5 , -   3    0 4     5    6    7 8      9 ; 
       