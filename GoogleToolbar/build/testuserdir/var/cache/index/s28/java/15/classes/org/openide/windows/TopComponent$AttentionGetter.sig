����   4 `
      0org/openide/windows/TopComponent$AttentionGetter stop ()V	   	 
 this$0 "Lorg/openide/windows/TopComponent;
      java/lang/Object <init>	     timer Ljavax/swing/Timer;
     reset	     $assertionsDisabled Z
       java/awt/EventQueue isDispatchThread ()Z " java/lang/AssertionError
 ! 
 %  & javax/swing/Timer
  ( )  start
 % +  , #(ILjava/awt/event/ActionListener;)V
 % . / 0 
setRepeats (Z)V
 % (
 3 4 5 6 7 !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
 3 9 : ; topComponentRequestAttention %(Lorg/openide/windows/TopComponent;)V
 = > ? @ A  org/openide/windows/TopComponent 
access$002 �(Lorg/openide/windows/TopComponent;Lorg/openide/windows/TopComponent$AttentionGetter;)Lorg/openide/windows/TopComponent$AttentionGetter;
 3 C D ; "topComponentCancelRequestAttention
 F G H I   java/lang/Class desiredAssertionStatus K java/awt/event/ActionListener Code LineNumberTable LocalVariableTable this 2Lorg/openide/windows/TopComponent$AttentionGetter; MethodParameters StackMapTable kill actionPerformed (Ljava/awt/event/ActionEvent;)V ae Ljava/awt/event/ActionEvent; 
access$100 5(Lorg/openide/windows/TopComponent$AttentionGetter;)V x0 <clinit> 
SourceFile TopComponent.java InnerClasses AttentionGetter      J            	 
      ;  L   I     *+� *� *� *� �    M      � 	� � � N        O P   Q    	     L   �     E� � � � � !Y� #�*� � 
*� � $*� '*� %Y�*� *� *� � -*� � 1�    M   "   � � � "� &� 5� =� D� N       E O P   R      )   L   9     � 2*� � 8�    M   
   � 
� N        O P    S   L   C     *� � $*� � <W�    M      � � � N        O P       L   r     +*� � 
*� � $*� � <W� 2*� � B*� � <W�    M      � � � � !� *� N       + O P   R      T U  L   =     *� �    M   
   � � N        O P      V W  Q    V   X Y  L   /     *� �    M      � N        Z P    [   L   4      =� E� � � �    M      � R    @  \    ] ^   
   = _ 