����   4 O
      Horg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$WCLayout <init> D(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;)V	   	 
 this$0 ALorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;
      java/lang/Object ()V
      ?org/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI getControlButtonsRectangle *(Ljava/awt/Container;)Ljava/awt/Rectangle;
     getControlButtons ()Ljava/awt/Component;
      java/awt/Component 	setBounds (Ljava/awt/Rectangle;)V ! javax/swing/JComponent
  # $ % getMinimumSize .(Ljavax/swing/JComponent;)Ljava/awt/Dimension;
  ' ( % getPreferredSize * java/awt/LayoutManager Code LineNumberTable LocalVariableTable this JLorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$WCLayout; MethodParameters addLayoutComponent )(Ljava/lang/String;Ljava/awt/Component;)V name Ljava/lang/String; comp Ljava/awt/Component; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; layoutContainer (Ljava/awt/Container;)V parent Ljava/awt/Container; r Ljava/awt/Rectangle; c minimumLayoutSize *(Ljava/awt/Container;)Ljava/awt/Dimension; preferredLayoutSize removeLayoutComponent (Ljava/awt/Component;)V �(Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI;Lorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$1;)V x0 x1 CLorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$1; 
SourceFile !BasicScrollingTabDisplayerUI.java InnerClasses WCLayout N Aorg/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI$1      )  	 
        +   4     
*+� *� �    ,      � -       
 . /   0    	  1 2  +   ?      �    ,      � -         . /      3 4     5 6  0   	 3   5   7     8    9 :  +   k     *� +� M*� � N-,� �    ,      � 	� � � -   *     . /      ; <  	  = >    ? 6  0    ;   7     8    @ A  +   @     *� +�  � "�    ,      � -        . /      ; <  0    ;   7     8    B A  +   @     *� +�  � &�    ,      � -        . /      ; <  0    ;   7     8    C D  +   5      �    ,      � -        . /      5 6  0    5   7     8     E  +   D     *+� �    ,      � -         . /      F 
     G H   I    J K       L  M    