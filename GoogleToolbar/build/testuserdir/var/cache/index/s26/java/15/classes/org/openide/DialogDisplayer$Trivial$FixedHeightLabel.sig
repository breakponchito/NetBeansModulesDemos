����   4 O
      javax/swing/JLabel <init> ()V
   	 
 getPreferredSize ()Ljava/awt/Dimension;	      4org/openide/DialogDisplayer$Trivial$FixedHeightLabel $assertionsDisabled Z  (org/netbeans/modules/dialogs/warning.gif
      org/openide/util/ImageUtilities 	loadImage $(Ljava/lang/String;)Ljava/awt/Image;
      java/awt/Image 	getHeight !(Ljava/awt/image/ImageObserver;)I   java/lang/AssertionError " Use only 16px icon.
  $  % (Ljava/lang/Object;)V	 ' ( ) * + java/awt/Dimension height I
 - . / 0 1 java/lang/Math max (II)I 3 org/openide/DialogDisplayer
 5 6 7 8 9 java/lang/Class desiredAssertionStatus ()Z ESTIMATED_HEIGHT ConstantValue    Code LineNumberTable LocalVariableTable this 6Lorg/openide/DialogDisplayer$Trivial$FixedHeightLabel; preferredSize Ljava/awt/Dimension; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile DialogDisplayer.java InnerClasses L #org/openide/DialogDisplayer$Trivial Trivial FixedHeightLabel 0       : +  ;    <          =   3     *� �    >   
   � � ?        @ A    	 
  =   �     2*� L� � � � � � Y!� #�++� &� ,� &+�    >      � � #� 0� ?       2 @ A    - B C  D    � # ' E     F    G   =   4      2� 4� � � �    >      � D    @  H    I J     K 2 M   K N 