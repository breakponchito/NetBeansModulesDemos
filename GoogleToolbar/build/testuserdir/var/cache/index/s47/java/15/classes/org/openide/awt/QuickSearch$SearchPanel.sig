����   4 |
      javax/swing/JPanel <init> ()V	  	 
   'org/openide/awt/QuickSearch$SearchPanel alwaysShown Z	     	component Ljavax/swing/JComponent;	     	isAquaLaF
      javax/swing/BorderFactory createEmptyBorder !(IIII)Ljavax/swing/border/Border;
     	setBorder (Ljavax/swing/border/Border;)V
     ! 	setOpaque (Z)V # java/awt/Graphics2D
 % & ' ( ) javax/swing/JComponent getBackground ()Ljava/awt/Color;
 " + , - setColor (Ljava/awt/Color;)V
  / 0 1 getWidth ()I
  3 4 1 	getHeight
 " 6 7 8 fillRect (IIII)V : java/awt/GradientPaint < )NbExplorerView.quicksearch.background.top
 > ? @ A B javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color; D ,NbExplorerView.quicksearch.background.bottom
 9 F  G '(FFLjava/awt/Color;FFLjava/awt/Color;)V
 " I J K setPaint (Ljava/awt/Paint;)V M !NbExplorerView.quicksearch.border
 " O P 8 drawLine
  R S T paintComponent (Ljava/awt/Graphics;)V V Aqua
 > X Y Z getLookAndFeel ()Ljavax/swing/LookAndFeel;
 \ ] ^ _ ` javax/swing/LookAndFeel getID ()Ljava/lang/String;
 b c d e f java/lang/String equals (Ljava/lang/Object;)Z (Ljavax/swing/JComponent;Z)V Code LineNumberTable LocalVariableTable this )Lorg/openide/awt/QuickSearch$SearchPanel; StackMapTable MethodParameters g2d Ljava/awt/Graphics2D; g Ljava/awt/Graphics; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile QuickSearch.java InnerClasses z org/openide/awt/QuickSearch SearchPanel                          g  h   �     <*� *� *+� *� � � *	� � � *� � *� �    i   & 	  b ` 	c d e f *h 6j ;k j        < k l     <      <    m    � *   %   n   	        S T  h   	    }� � t+� "� m+� "M*� � ,*� � $� *,*� .*� 2� 5� B,� 9Y;� =*� 2�C� =� E� H,*� .*� 2� 5,L� =� *,*� .� N� *+� Q�    i   :   o p q r $s 5u Cv Ou Rw `x iy t{ w| |~ j       b o p    } k l     } q r  m    � 5 "� > n    q   s     t    u   h   /      U� W� [� a� �    i      ] ^ ]  v    w x   
   y { 
