����   4 T
      Borg/openide/explorer/propertysheet/ComboInplaceEditor$PopupChecker <init> :(Lorg/openide/explorer/propertysheet/ComboInplaceEditor;)V	   	 
 this$0 7Lorg/openide/explorer/propertysheet/ComboInplaceEditor;
      java/lang/Object ()V
      java/awt/KeyboardFocusManager getCurrentKeyboardFocusManager !()Ljava/awt/KeyboardFocusManager;
     getActiveWindow ()Ljava/awt/Window;
      java/awt/Window isAncestorOf (Ljava/awt/Component;)Z
 ! " # $ % 5org/openide/explorer/propertysheet/ComboInplaceEditor 	isShowing ()Z
 ! ' ( % isPopupVisible * 7Popup checker ensuring editor prepared or popup visible
 ! , - . 
access$200 L(Lorg/openide/explorer/propertysheet/ComboInplaceEditor;Ljava/lang/String;)V
 ! 0 1 % 
isEditable
 ! 3 4  
access$300
 ! 6 7  	showPopup
 ! 9 : ; 
access$402 �(Lorg/openide/explorer/propertysheet/ComboInplaceEditor$PopupChecker;)Lorg/openide/explorer/propertysheet/ComboInplaceEditor$PopupChecker; = java/lang/Runnable Code LineNumberTable LocalVariableTable this DLorg/openide/explorer/propertysheet/ComboInplaceEditor$PopupChecker; MethodParameters run w Ljava/awt/Window; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; s(Lorg/openide/explorer/propertysheet/ComboInplaceEditor;Lorg/openide/explorer/propertysheet/ComboInplaceEditor$1;)V x0 x1 9Lorg/openide/explorer/propertysheet/ComboInplaceEditor$1; 
SourceFile ComboInplaceEditor.java InnerClasses PopupChecker S 7org/openide/explorer/propertysheet/ComboInplaceEditor$1      <  	 
        >   4     
*+� *� �    ?      � @       
 A B   C    	  D   >   �     R� � L+� H+*� � � =*� �  � .*� � &� $*� )� +*� � /� 
*� � 2*� � 5� 8W�    ?   & 	  � � � +� 4� >� E� L� Q� @       R A B    K E F  G   
 � E  H     I     J  >   D     *+� �    ?      � @         A B      K 
     L M   N    O P      ! Q  R      