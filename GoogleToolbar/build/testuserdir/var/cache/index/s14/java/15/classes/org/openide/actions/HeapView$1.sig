����   4 3	      org/openide/actions/HeapView$1 this$0 Lorg/openide/actions/HeapView;
  	 
   java/lang/Object <init> ()V
      java/awt/event/ActionEvent 	getSource ()Ljava/lang/Object;  javax/swing/JCheckBoxMenuItem
     
isSelected ()Z
      org/openide/actions/HeapView setShowText (Z)V   java/awt/event/ActionListener !(Lorg/openide/actions/HeapView;)V Code LineNumberTable LocalVariableTable this  Lorg/openide/actions/HeapView$1; MethodParameters actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; 
SourceFile HeapView.java EnclosingMethod 0 1 	showPopup (II)V InnerClasses                !  "   >     
*+� *� �    #       $       
 % &     
    '    �  ( )  "   R     *� +� � � � �    #          $        % &      * +  '    *    ,    - .     / 2   
        