����   4 1	      3org/netbeans/swing/tabcontrol/ButtonPopupSwitcher$1 this$0 3Lorg/netbeans/swing/tabcontrol/ButtonPopupSwitcher;	   	 
 val$popupToHide Ljavax/swing/JPopupMenu;
      java/lang/Object <init> ()V
      javax/swing/JPopupMenu 	isVisible ()Z
     
setVisible (Z)V  java/lang/Runnable N(Lorg/netbeans/swing/tabcontrol/ButtonPopupSwitcher;Ljavax/swing/JPopupMenu;)V Code LineNumberTable LocalVariableTable this 5Lorg/netbeans/swing/tabcontrol/ButtonPopupSwitcher$1; MethodParameters 	Signature run StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ButtonPopupSwitcher.java EnclosingMethod - 1org/netbeans/swing/tabcontrol/ButtonPopupSwitcher /  hideCurrentPopup InnerClasses        	 
                C     *+� *,� *� �           �          ! "         #   	 � 	 $      %      N     *� � � *� � �           � 
 �  �          ! "   &     '     (    )    * +    , . 0   
        