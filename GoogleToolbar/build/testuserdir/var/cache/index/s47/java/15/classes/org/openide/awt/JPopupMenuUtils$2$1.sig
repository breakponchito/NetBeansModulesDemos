����   4 e	      #org/openide/awt/JPopupMenuUtils$2$1 this$0 #Lorg/openide/awt/JPopupMenuUtils$2;
  	 
   java/lang/Object <init> ()V
      org/openide/awt/JPopupMenuUtils 
access$002 R(Lorg/openide/util/RequestProcessor$Task;)Lorg/openide/util/RequestProcessor$Task;	      !org/openide/awt/JPopupMenuUtils$2 	val$popup Ljavax/swing/JPopupMenu;
      javax/swing/JPopupMenu 	isShowing ()Z
    ! " 
setVisible (Z)V
  $ % & 
access$100 (Ljavax/swing/JPopupMenu;)V
  ( ) * getLocationOnScreen ()Ljava/awt/Point;
  , - . getPreferredSize ()Ljava/awt/Dimension; 0 java/awt/Rectangle
 / 2  3 '(Ljava/awt/Point;Ljava/awt/Dimension;)V
  5 6 7 getScreenRect ()Ljava/awt/Rectangle;
 / 9 : ; contains (Ljava/awt/Rectangle;)Z	  = > ? val$menu Ljavax/swing/JMenu;
 A B C D " javax/swing/JMenu setPopupMenuVisible F java/lang/Runnable &(Lorg/openide/awt/JPopupMenuUtils$2;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/awt/JPopupMenuUtils$2$1; MethodParameters run p Ljava/awt/Point; 	popupSize Ljava/awt/Dimension; 	popupRect Ljava/awt/Rectangle; 
screenRect StackMapTable X java/awt/Point Z java/awt/Dimension 
SourceFile JPopupMenuUtils.java EnclosingMethod N  InnerClasses a &org/openide/util/RequestProcessor$Task c !org/openide/util/RequestProcessor Task      E          G  H   >     
*+� *� �    I       � J       
 K L     
    M    �  N   H       x� W*� � � � �*� � � *� � � #*� � � *� � � 'L*� � � +M� /Y+,� 1N� 4:-� 8� *� � <� @*� � <� @�    I   :    �  �  �  �  � ( � 3  > I S X a l w	 J   4    x K L   > : O P  I / Q R  S % S T  X   U T  V    � c   W Y / /    [    \ ]     ^ _                   ` b d 