����   4 M	      #org/openide/awt/JPopupMenuUtils$1$1 this$0 #Lorg/openide/awt/JPopupMenuUtils$1;
  	 
   java/lang/Object <init> ()V
      org/openide/awt/JPopupMenuUtils 
access$002 R(Lorg/openide/util/RequestProcessor$Task;)Lorg/openide/util/RequestProcessor$Task;	      !org/openide/awt/JPopupMenuUtils$1 	val$popup Ljavax/swing/JPopupMenu;
      javax/swing/JPopupMenu 	isShowing ()Z
    ! " getLocationOnScreen ()Ljava/awt/Point;
  $ % & getPopupMenuOrigin :(Ljavax/swing/JPopupMenu;Ljava/awt/Point;)Ljava/awt/Point;
  ( ) * 
setVisible (Z)V
  , - . 
access$100 (Ljavax/swing/JPopupMenu;)V
 0 1 2 3 4 java/awt/Point equals (Ljava/lang/Object;)Z 6 java/lang/Runnable &(Lorg/openide/awt/JPopupMenuUtils$1;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/awt/JPopupMenuUtils$1$1; MethodParameters run p Ljava/awt/Point; newPt StackMapTable 
SourceFile JPopupMenuUtils.java EnclosingMethod >  InnerClasses I &org/openide/util/RequestProcessor$Task K !org/openide/util/RequestProcessor Task      5          7  8   >     
*+� *� �    9       w :       
 ; <     
    =    �  >   8   �     S� W*� � � � �*� � � L*� � +� #M*� � � '*� � � +,+� /� *� � � '�    9   * 
   y  }  ~  �  � * � 5 � ? � G � R � :        S ; <    5 ? @  * ) A @  B    � 3 0 0  C    D E     F G                   H J L 