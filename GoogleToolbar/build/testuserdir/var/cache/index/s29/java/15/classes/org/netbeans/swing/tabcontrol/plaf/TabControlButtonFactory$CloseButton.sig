����   4 4  3org/netbeans/swing/tabcontrol/plaf/TabControlButton
     <init> 0(ILorg/netbeans/swing/tabcontrol/TabDisplayer;)V  )org/netbeans/swing/tabcontrol/plaf/Bundle
 
     java/util/ResourceBundle 	getBundle .(Ljava/lang/String;)Ljava/util/ResourceBundle;  Tip_Close_Window
 
    	getString &(Ljava/lang/String;)Ljava/lang/String;
      Forg/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory$CloseButton setToolTipText (Ljava/lang/String;)V  *org/netbeans/swing/tabcontrol/TabDisplayer  close /(Lorg/netbeans/swing/tabcontrol/TabDisplayer;)V Code LineNumberTable LocalVariableTable this HLorg/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory$CloseButton; 	displayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer; MethodParameters getTabActionCommand 0(Ljava/awt/event/ActionEvent;)Ljava/lang/String; e Ljava/awt/event/ActionEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TabControlButtonFactory.java InnerClasses 2 :org/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory CloseButton                  Q     *+� *� 	� � �    !       �  �  � "        # $      % &  '    %    ( )      7     �    !       � "        # $      * +  '    *   ,     -    .    / 0   
   1 3 
