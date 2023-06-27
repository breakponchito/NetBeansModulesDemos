����   4 L  org/openide/awt/Mnemonics
      java/lang/Object <init> ()V
 
     java/beans/PropertyChangeEvent 	getSource ()Ljava/lang/Object;  javax/swing/AbstractButton
     getDisplayedMnemonicIndex ()I  mnemonic
     getClientProperty &(Ljava/lang/Object;)Ljava/lang/Object;  java/lang/Integer  displayedMnemonicIndex
    ! " getText ()Ljava/lang/String; $ text
 & ' ( ) * org/openide/util/Utilities compareObjects '(Ljava/lang/Object;Ljava/lang/Object;)Z
  , -  intValue
  / 0 1 setMnemonic (I)V
  3 4 1 setDisplayedMnemonicIndex 6 org/openide/awt/Mnemonics$1 8 !java/beans/PropertyChangeListener Code LineNumberTable LocalVariableTable this Lorg/openide/awt/Mnemonics$1; propertyChange #(Ljava/beans/PropertyChangeEvent;)V Ljava/lang/Integer; index evt  Ljava/beans/PropertyChangeEvent; b Ljavax/swing/AbstractButton; StackMapTable MethodParameters 
SourceFile Mnemonics.java EnclosingMethod InnerClasses   5   7         9   /     *� �    :       � ;        < =    > ?  9   �     P+� 	� M,� � B,� � N,� � :-� )� $,� ,#� � %� ,-� +� .,� +� 2�    :   "    �  �  �  � % � > � F � O � ;   4   5  @  % * A @    P < =     P B C   H D E  F    � O  G    B    H    I J       K   
  5      