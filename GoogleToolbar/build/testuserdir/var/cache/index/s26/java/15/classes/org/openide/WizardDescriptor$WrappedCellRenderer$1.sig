����   4 A	      2org/openide/WizardDescriptor$WrappedCellRenderer$1 this$0 2Lorg/openide/WizardDescriptor$WrappedCellRenderer;
  	 
   javax/swing/JLabel <init> ()V
     paintComponent (Ljava/awt/Graphics;)V	      0org/openide/WizardDescriptor$WrappedCellRenderer contentNumbered Z
      java/awt/Graphics getClipBounds ()Ljava/awt/Rectangle;	     ! " java/awt/Rectangle x I	  $ % " y
  ' ( ) fillOval (IIII)V 5(Lorg/openide/WizardDescriptor$WrappedCellRenderer;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/WizardDescriptor$WrappedCellRenderer$1; MethodParameters rect Ljava/awt/Rectangle; g Ljava/awt/Graphics; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile WizardDescriptor.java EnclosingMethod  < (ZI)V InnerClasses ? org/openide/WizardDescriptor WrappedCellRenderer                *  +   >     
*+� *� �    ,      	� -       
 . /     
    0    �     +   |     %*+� *� � � +� M+,� ,� #� &�    ,      	� 	� 	� 	� $	� -        1 2    % . /     % 3 4  5    $ 0    3   6     7    8    9 :     ; =      > @ 
       