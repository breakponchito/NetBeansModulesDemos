����   4 0
      java/lang/Object <init> ()V
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  !org/openide/awt/TabbedPaneFactory
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;
    javax/swing/JTabbedPane
  
     %()Lorg/openide/awt/TabbedPaneFactory;
     createTabbedPane ()Ljavax/swing/JTabbedPane; 
PROP_CLOSE Ljava/lang/String; ConstantValue " close NO_CLOSE_BUTTON % noCloseButton Code LineNumberTable LocalVariableTable this #Lorg/openide/awt/TabbedPaneFactory; res StackMapTable createCloseButtonTabbedPane 
SourceFile TabbedPaneFactory.java !               !  #        $      &   /     *� �    '        (        ) *   	    &   _     � � � K*� � Y� �*�    '       5  6  7  9 (       + *   ,    �       &   2     � Y� �    '       D (        ) *   	 -   &         � � �    '       Q  .    /