����   4 d
      .org/netbeans/swing/outline/Outline$SizeManager <init> '(Lorg/netbeans/swing/outline/Outline;)V	   	 
 this$0 $Lorg/netbeans/swing/outline/Outline;
      java/awt/event/ComponentAdapter ()V	     timer Ljavax/swing/Timer;	     	scrollBar Ljavax/swing/JScrollBar;
      "org/netbeans/swing/outline/Outline access$1100 ?(Lorg/netbeans/swing/outline/Outline;)Ljavax/swing/JScrollPane;
      access$1200
 " # $ % & javax/swing/JScrollPane getVerticalScrollBar ()Ljavax/swing/JScrollBar;
 ( ) * + , javax/swing/JScrollBar getValueIsAdjusting ()Z
 " . / & getHorizontalScrollBar
  1 2  
startTimer 4 javax/swing/Timer
 3 6  7 #(ILjava/awt/event/ActionListener;)V
 3 9 : ; 
setRepeats (Z)V
 3 = >  start
 3 @ A  stop C java/awt/event/ActionListener Code LineNumberTable LocalVariableTable this 0Lorg/netbeans/swing/outline/Outline$SizeManager; MethodParameters componentMoved "(Ljava/awt/event/ComponentEvent;)V 
scrollPane Ljavax/swing/JScrollPane; e Ljava/awt/event/ComponentEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; actionPerformed (Ljava/awt/event/ActionEvent;)V ae Ljava/awt/event/ActionEvent; componentHidden componentResized componentShown M(Lorg/netbeans/swing/outline/Outline;Lorg/netbeans/swing/outline/Outline$1;)V x0 x1 &Lorg/netbeans/swing/outline/Outline$1; 
SourceFile Outline.java InnerClasses SizeManager c $org/netbeans/swing/outline/Outline$1      B            	 
        D   F     *+� *� *� *� �    E      # 	$ % F        G H   I    	  J K  D   �     b*� � ]*� � M,� *� � � G*,� !� *� � *� � '� **,� -Z� � *� � '� 
*� 0� *� � � *� 0�    E   6   ) * , - / %0 01 63 F4 L6 S8 ]; a? F       R L M    b G H     b N O  P    �  "	�  I    N   Q     R    2   D   i     &*� � *� 3Y �*� 5� *� � 8*� � <�    E      B C D F %G F       & G H   P      S T  D   �     1*� � *� � '� "*� � 
*� � ?*� � *� *� �    E      K L M N &O +P 0R F       1 G H     1 U V  P     I    U   Q     R    W K  D   5      �    E      V F        G H      N O  I    N   Q     R    X K  D   5      �    E      Z F        G H      N O  I    N   Q     R    Y K  D   5      �    E      ^ F        G H      N O  I    N   Q     R     Z  D   D     *+� �    E      # F         G H      [ 
     \ ]   ^    _ `       a  b      