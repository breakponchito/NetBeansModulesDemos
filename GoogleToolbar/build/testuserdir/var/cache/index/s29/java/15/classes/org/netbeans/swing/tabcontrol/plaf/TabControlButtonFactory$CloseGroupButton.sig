����   4 4  3org/netbeans/swing/tabcontrol/plaf/TabControlButton
     <init> 0(ILorg/netbeans/swing/tabcontrol/TabDisplayer;)V  )org/netbeans/swing/tabcontrol/plaf/Bundle
 
     java/util/ResourceBundle 	getBundle .(Ljava/lang/String;)Ljava/util/ResourceBundle;  Tip_Close_Window_Group
 
    	getString &(Ljava/lang/String;)Ljava/lang/String;
      Korg/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory$CloseGroupButton setToolTipText (Ljava/lang/String;)V  *org/netbeans/swing/tabcontrol/TabDisplayer  
closeGroup /(Lorg/netbeans/swing/tabcontrol/TabDisplayer;)V Code LineNumberTable LocalVariableTable this MLorg/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory$CloseGroupButton; 	displayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer; MethodParameters getTabActionCommand 0(Ljava/awt/event/ActionEvent;)Ljava/lang/String; e Ljava/awt/event/ActionEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TabControlButtonFactory.java InnerClasses 2 :org/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory CloseGroupButton                  Q     *+� *� 	� � �    !       �  �  � "        # $      % &  '    %    ( )      7     �    !       � "        # $      * +  '    *   ,     -    .    / 0   
   1 3 
