����   4 L
      javax/swing/JLabel <init> ()V
   	 
 getPreferredSize ()Ljava/awt/Dimension;	      -org/openide/WizardDescriptor$FixedHeightLabel $assertionsDisabled Z  (org/netbeans/modules/dialogs/warning.gif
      org/openide/util/ImageUtilities 	loadImage $(Ljava/lang/String;)Ljava/awt/Image;
      java/awt/Image 	getHeight !(Ljava/awt/image/ImageObserver;)I   java/lang/AssertionError " Use only 16px icon.
  $  % (Ljava/lang/Object;)V	 ' ( ) * + java/awt/Dimension height I
 - . / 0 1 java/lang/Math max (II)I 3 org/openide/WizardDescriptor
 5 6 7 8 9 java/lang/Class desiredAssertionStatus ()Z ESTIMATED_HEIGHT ConstantValue    Code LineNumberTable LocalVariableTable this /Lorg/openide/WizardDescriptor$FixedHeightLabel; preferredSize Ljava/awt/Dimension; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile WizardDescriptor.java InnerClasses FixedHeightLabel 0       : +  ;    <          =   3     *� �    >   
   \ ] ?        @ A    	 
  =   �     2*� L� � � � � � Y!� #�++� &� ,� &+�    >      a b #c 0d ?       2 @ A    - B C  D    � # ' E     F    G   =   4      2� 4� � � �    >      W D    @  H    I J   
   2 K 