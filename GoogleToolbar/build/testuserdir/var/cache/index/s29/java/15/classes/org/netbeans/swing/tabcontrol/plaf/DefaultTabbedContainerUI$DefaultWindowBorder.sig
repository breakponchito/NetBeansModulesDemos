����   4 J
      java/lang/Object <init> ()V
  	 
   java/awt/Graphics 	translate (II)V  controlShadow
      javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color;
     setColor (Ljava/awt/Color;)V
     drawRect (IIII)V  controlHighlight
    !  drawLine	 # $ % & ' Oorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$DefaultWindowBorder insets Ljava/awt/Insets; ) java/awt/Insets
 ( +   - javax/swing/border/Border Code LineNumberTable LocalVariableTable this QLorg/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI$DefaultWindowBorder; paintBorder .(Ljava/awt/Component;Ljava/awt/Graphics;IIII)V c Ljava/awt/Component; g Ljava/awt/Graphics; x I y w h MethodParameters getBorderInsets '(Ljava/awt/Component;)Ljava/awt/Insets; isBorderOpaque ()Z <clinit> 
SourceFile DefaultTabbedContainerUI.java InnerClasses H ;org/netbeans/swing/tabcontrol/plaf/DefaultTabbedContainerUI DefaultWindowBorder 0 #   ,   & '        .   /     *� �    /      � 0        1 2    3 4  .   �     S,� ,� � ,dd� ,� � ,ddd� ,ddd� ,tt� �    /   "   � � � � '� 8� I� R� 0   H    S 1 2     S 5 6    S 7 8    S 9 :    S ; :    S < :    S = :  >    5   7   9   ;   <   =    ? @  .   8     � "�    /      � 0        1 2      5 6  >    5    A B  .   ,     �    /      � 0        1 2    C   .   '      � (Y� *� "�    /      �  D    E F   
  # G I 