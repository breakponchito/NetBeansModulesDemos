����   4 \	      .org/openide/WizardDescriptor$FixedHeightPane$2 this$0 .Lorg/openide/WizardDescriptor$FixedHeightPane;
  	 
   java/awt/event/MouseAdapter <init> ()V
     showCopyToClipboardPopupMenu (Ljava/awt/event/MouseEvent;)V
      java/awt/event/MouseEvent isPopupTrigger ()Z
      ,org/openide/WizardDescriptor$FixedHeightPane getToolTipText ()Ljava/lang/String;
     !  java/lang/String isEmpty # javax/swing/JPopupMenu
 " 	 & 0org/openide/WizardDescriptor$FixedHeightPane$2$1 ( org/openide/WizardDescriptor * Lbl_CopyToClipboard
 , - . / 0 org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 % 2  3 E(Lorg/openide/WizardDescriptor$FixedHeightPane$2;Ljava/lang/String;)V
 " 5 6 7 add -(Ljavax/swing/Action;)Ljavax/swing/JMenuItem;
  9 : ; getComponent ()Ljava/awt/Component;
  = > ? getX ()I
  A B ? getY
 " D E F show (Ljava/awt/Component;II)V 1(Lorg/openide/WizardDescriptor$FixedHeightPane;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/WizardDescriptor$FixedHeightPane$2; MethodParameters mousePressed e Ljava/awt/event/MouseEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; mouseReleased pm Ljavax/swing/JPopupMenu; StackMapTable 
SourceFile WizardDescriptor.java EnclosingMethod InnerClasses FixedHeightPane                G  H   >     
*+� *� �    I      � J       
 K L     
    M    �  N   H   >     *+� �    I   
   � � J        K L      O P  M    O   Q     R    S   H   >     *+� �    I   
   � � J        K L      O P  M    O   Q     R       H   �     L+� � G*� � � <*� � � � /� "Y� $M,� %Y*')� +� 1� 4W,+� 8+� <+� @� C�    I      � � '� ;� K� J      ' $ T U    L K L     L O P  V    � K M    O    W    X Y     	 Z      ' [         %      