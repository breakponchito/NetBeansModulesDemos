����   4 :	      1org/openide/awt/HtmlBrowser$AccessibleHtmlBrowser this$0 Lorg/openide/awt/HtmlBrowser;
  	 
   #javax/swing/JPanel$AccessibleJPanel <init> (Ljavax/swing/JPanel;)V
     setAccessibleName (Ljava/lang/String;)V	      org/openide/awt/HtmlBrowser browserComponent Ljava/awt/Component;  javax/accessibility/Accessible
      java/awt/Component getAccessibleContext )()Ljavax/accessibility/AccessibleContext;
    ! %javax/accessibility/AccessibleContext
  # $  setAccessibleDescription
   #  (Lorg/openide/awt/HtmlBrowser;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/awt/HtmlBrowser$AccessibleHtmlBrowser; MethodParameters name Ljava/lang/String; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; desc 
SourceFile HtmlBrowser.java InnerClasses AccessibleHtmlBrowser 8 javax/swing/JPanel AccessibleJPanel                &  '   9     *+� *+� �    (   
   � 
� )        * +   ,         '   j     !*+� *� � � � *� � � +� �    (      � � �  � )       ! * +     ! - .  /      ,    -   0     1    $   '   j     !*+� "*� � � � *� � � +� %�    (      � � �  � )       ! * +     ! 2 .  /      ,    2   0     1    3    4 5       6   7 9 