����   4 i
      #org/openide/util/actions/NodeAction <init> ()V
  	 
   org/openide/nodes/NodeOperation 
getDefault #()Lorg/openide/nodes/NodeOperation;
     showProperties (Lorg/openide/nodes/Node;)V
     ([Lorg/openide/nodes/Node;)V   org/openide/awt/Actions$MenuItem
     +(Lorg/openide/util/actions/SystemAction;Z)V  #org/openide/actions/CustomizeAction
       %org/openide/util/actions/SystemAction get :(Ljava/lang/Class;)Lorg/openide/util/actions/SystemAction;
  " # $ 	isEnabled ()Z & org/openide/awt/JInlineMenu
 %  ) javax/swing/JMenuItem
 % + , - setMenuItems ([Ljavax/swing/JMenuItem;)V / $org/openide/actions/PropertiesAction 1 
Properties
 3 4 5 6 7 org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; 9 org/openide/util/HelpCtx
 8 ;  < (Ljava/lang/Class;)V > ,org/openide/resources/actions/properties.gif @ 3org/openide/actions/PropertiesAction$DelegateAction
 ? B  C B(Lorg/openide/actions/PropertiesAction;Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/actions/PropertiesAction; performAction activatedNodes [Lorg/openide/nodes/Node; StackMapTable MethodParameters asynchronous enable ([Lorg/openide/nodes/Node;)Z getPopupPresenter ()Ljavax/swing/JMenuItem; mi Lorg/openide/awt/JInlineMenu; prop Ljavax/swing/JMenuItem; customizeAction %Lorg/openide/actions/CustomizeAction; getName ()Ljava/lang/String; 
getHelpCtx ()Lorg/openide/util/HelpCtx; iconResource createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; actionContext Lorg/openide/util/Lookup; 
SourceFile PropertiesAction.java InnerClasses f org/openide/awt/Actions MenuItem DelegateAction ! .      	     D   /     *� �    E       . F        G H    I   D   d     +�� � +2� � 
� +� �    E       0  1  3  5 F        G H      J K  L     M    J    N $  D   ,     �    E       8 F        G H    O P  D   I     
+� � �    E       < F       
 G H     
 J K  L    @ M    J    Q R  D   �     >� Y*� L� � M,� !� %� %Y� 'N-� (Y� Y,� SY+S� *-�+�    E       @ 
 B  D  E " F : H < J F   *  "  S T    > G H   
 4 U V   + W X  L    � < (   Y Z  D   2     .0� 2�    E       O F        G H    [ \  D   4     
� 8Y.� :�    E       S F       
 G H    ] Z  D   -     =�    E       W F        G H    ^ _  D   >     
� ?Y*+� A�    E       [ F       
 G H     
 ` a  M    `    b    c d      e g 	 ? . h 