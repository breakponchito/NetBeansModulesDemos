����   4 ?
      javax/swing/AbstractAction <init> ()V	  	 
   3org/openide/actions/FileSystemAction$DelegateAction lookup Lorg/openide/util/Lookup;  )org/openide/actions/FileSystemAction$Menu
     (ZLorg/openide/util/Lookup;)V	     $assertionsDisabled Z  java/lang/AssertionError
     (Ljava/lang/Object;)V  $org/openide/actions/FileSystemAction
     ! " java/lang/Class desiredAssertionStatus ()Z $ 'org/openide/util/actions/Presenter$Menu & (org/openide/util/actions/Presenter$Popup (Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this 5Lorg/openide/actions/FileSystemAction$DelegateAction; MethodParameters getMenuPresenter ()Ljavax/swing/JMenuItem; getPopupPresenter actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; StackMapTable <clinit> 
SourceFile FileSystemAction.java InnerClasses DelegateAction Menu = "org/openide/util/actions/Presenter Popup 0    # %              '  (   F     
*� *+� �    )      A B 	C *       
 + ,     
    -        . /  (   7     � Y*� � �    )      H *        + ,    0 /  (   7     � Y*� � �    )      M *        + ,    1 2  (   Q     � � � Y+� ��    )   
   Q R *        + ,      3 4  5     -    3    6   (   4      � � � � �    )      < 5    @  7    8 9   "    :    ; 
 # < ;	 % < >	