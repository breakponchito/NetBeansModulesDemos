����   4 �	      Aorg/netbeans/swing/tabcontrol/TabDisplayer$AccessibleTabDisplayer this$0 ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;
  	 
   +javax/swing/JComponent$AccessibleJComponent <init> (Ljavax/swing/JComponent;)V
      *org/netbeans/swing/tabcontrol/TabDisplayer getModel .()Lorg/netbeans/swing/tabcontrol/TabDataModel;      *org/netbeans/swing/tabcontrol/TabDataModel addChangeListener %(Ljavax/swing/event/ChangeListener;)V
      javax/swing/event/ChangeEvent 	getSource ()Ljava/lang/Object;   %javax/accessibility/AccessibleContext " AccessibleSelection
  $ % & firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V	 ( ) * + , "javax/accessibility/AccessibleRole PAGE_TAB_LIST $Ljavax/accessibility/AccessibleRole;  . / 0 size ()I  2 3 4 getTab *(I)Lorg/netbeans/swing/tabcontrol/TabData;
 6 7 8 9 : %org/netbeans/swing/tabcontrol/TabData getComponent ()Ljava/awt/Component; < javax/accessibility/Accessible
  > ? @ tabForCoordinate (Ljava/awt/Point;)I
  B C D getSelectionModel $()Ljavax/swing/SingleSelectionModel; F G H I 0  javax/swing/SingleSelectionModel getSelectedIndex
  K L M getAccessibleChild #(I)Ljavax/accessibility/Accessible; O 'javax/accessibility/AccessibleSelection Q  javax/swing/event/ChangeListener /(Lorg/netbeans/swing/tabcontrol/TabDisplayer;)V Code LineNumberTable LocalVariableTable this CLorg/netbeans/swing/tabcontrol/TabDisplayer$AccessibleTabDisplayer; MethodParameters stateChanged "(Ljavax/swing/event/ChangeEvent;)V e Ljavax/swing/event/ChangeEvent; o Ljava/lang/Object; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getAccessibleRole &()Ljavax/accessibility/AccessibleRole; getAccessibleChildrenCount i I data 'Lorg/netbeans/swing/tabcontrol/TabData; StackMapTable getAccessibleSelection +()Ljavax/accessibility/AccessibleSelection; getAccessibleAt 2(Ljava/awt/Point;)Ljavax/accessibility/Accessible; p Ljava/awt/Point; tab getAccessibleSelectionCount index isAccessibleChildSelected (I)Z addAccessibleSelection (I)V removeAccessibleSelection clearAccessibleSelection ()V selectAllAccessibleSelection 
SourceFile TabDisplayer.java InnerClasses AccessibleTabDisplayer  javax/swing/JComponent AccessibleJComponent !    N P         R  S   U     *+� *+� +� *�  �    T      � � 
� � U        V W         X    �  Y Z  S   T     +� M*!,� #�    T      � � � U         V W      [ \   	 ] ^  X    [   _     `    a b  S   .     � '�    T      � U        V W   _     `    c 0  S   7     *� � � - �    T      � U        V W   _     `    L M  S   �     8� *� � � - � �*� � � 1 M,� 5� ;� ,� 5� ;��    T      � � � $� .� 6� U        8 V W     8 d e  $  f g  h   
 �  6 X    d   _     `    i j  S   ,     *�    T      � U        V W   _     `    k l  S   w     !*� +� ==� *� � A� E =*� J�    T      � 	� � � U        ! V W     ! m n  	  o e  h    �  X    m   _     `    p 0  S   ,     �    T      � U        V W   _     `    i M  S   U     *� � A� E =*� J�    T   
     U         V W      d e    q e  X    d   _     `    r s  S   U     *� � A� E � � �    T       U        V W      d e  h    @ X    d   _     `    t u  S   5      �    T      ) U        V W      d e  X    d   _     `    v u  S   5      �    T      6 U        V W      d e  X    d   _     `    w x  S   +      �    T      ? U        V W   _     `    y x  S   +      �    T      H U        V W   _     `    z    { |       }   ~ �