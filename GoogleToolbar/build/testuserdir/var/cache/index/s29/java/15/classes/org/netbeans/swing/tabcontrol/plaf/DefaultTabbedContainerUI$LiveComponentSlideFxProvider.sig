����   4 �	      Xorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$LiveComponentSlideFxProvider d Ljava/awt/Dimension;
   	 
 <init> @(Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI;)V	     this$0 =Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI;
    	  -org/netbeans/swing/tabcontrol/plaf/FxProvider ()V	     timer Ljavax/swing/Timer;	     prevGlassPane Ljava/awt/Component;	     customGlassPane yLorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$LiveComponentSlideFxProvider$LiveComponentResizingGlassPane; ! javax/swing/Timer	 # $ % & ' ;org/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI TIMER I
   ) 	 * #(ILjava/awt/event/ActionListener;)V
   , - . 
setRepeats (Z)V	  0 1 2 root Ljavax/swing/JRootPane;
 4 5 6 7 8 javax/swing/JRootPane getGlassPane ()Ljava/awt/Component;
 : ; < = > java/awt/Component 	isVisible ()Z
 : @ A > 	isShowing
  C D  doFinish
  F G  initSize
  I J K getCustomGlassPane {()Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$LiveComponentSlideFxProvider$LiveComponentResizingGlassPane;
 4 M N O setGlassPane (Ljava/awt/Component;)V=���
 R S T U V worg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$LiveComponentSlideFxProvider$LiveComponentResizingGlassPane access$3500 }(Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$LiveComponentSlideFxProvider$LiveComponentResizingGlassPane;F)V
 4 X Y Z 	getBounds ()Ljava/awt/Rectangle;
 R \ ] ^ 	setBounds (Ljava/awt/Rectangle;)V
 R ` a . 
setVisible
 R c d  
revalidate
   f g  start	  i j k comp Ljavax/swing/JComponent;
 m n o p q javax/swing/JComponent getPreferredSize ()Ljava/awt/Dimension;	 # s t k contentDisplayer
 m v w q getSize	 y z { | ' java/awt/Dimension width
 ~  � � � java/lang/Math max (II)I	 y � � ' height	  � � � orientation Ljava/lang/Object;	 � � � � � *org/netbeans/swing/tabcontrol/TabDisplayer ORIENTATION_EAST	 � � � � ORIENTATION_WEST
 4 � � � getWidth ()I	 # � � � tabDisplayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;
 � � � � 	getHeight
 � �
 4 �
   � �  stop
 : `
 R � � O remove
 # � � � showComponent *(Ljava/awt/Component;)Ljava/awt/Component;
 R � � � access$3600 |(Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$LiveComponentSlideFxProvider$LiveComponentResizingGlassPane;)F
  � �  finish	 # � � � 	INCREMENT F
 R � 	 � �(Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$LiveComponentSlideFxProvider;Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$1;)V
 R � � . 	setOpaque � java/awt/event/ActionListener Code LineNumberTable LocalVariableTable this ZLorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$LiveComponentSlideFxProvider; MethodParameters doStart cp StackMapTable d2 flip Z cleanup actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; inc (Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI;Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$1;)V x0 x1 ?Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$1; access$3800 p(Lorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$LiveComponentSlideFxProvider;)Ljava/awt/Dimension; 
SourceFile DefaultTabbedContainerUI.java InnerClasses LiveComponentSlideFxProvider LiveComponentResizingGlassPane � =org/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$1 0    �                          	  	 
  �   X     *+� *� *� *� *� *� �    �      / 	0 1 2 { �        � �   �      �   �   �     u*� � *�  Y� "*� (� *� � +**� /� 3� *� � 9� *� � ?� *� B�*� E*� HL*� /+� L+P� Q+*� /� W� [+� _+� b*� � e�    �   B   5 6 7 : ); == A> BA FB KC SD YE dF iG mH tI �       u � �   K * �   �    #  G   �  �     �**� h� l� *� � r� uL*� +� x*� � x� }� x*� +� �*� � �� }� �*� �� �� *� �� �� � =*� � x� *� � �� K� %*� *� /� �� x*� *� � �� �� �� b*� *� � �� �� x*� *� /� �� �� @� !*� *� � �*� � �� �� }� �� *� *� � x*� � �� �� }� x�    �   >   L N P +Q @S ZV nW rX �Y �[ �\ �_ �` �b �e �        � � �    � �   Z � � �  �    � T y@� %!!  �   �   `     &*� � �*� /*� � L*� � �*� *� h� ��    �      h i j k %l �       & � �    D   �   ;     *� *� h� �W�    �   
   o p �        � �    � �  �   }     "*� � �E$�� 
*� �� *� $� �b� Q�    �      s t u w !y �        " � �     " � �    � �  �    �  �    �    J K  �   `     !*� � *� RY*� �� *� � �*� �    �      } ~  � �       ! � �   �      	 �  �   D     *+� �    �      / �         � �      �      � �  � �  �   /     *� �    �      / �        � �    �    � �      # �  R  �  �    