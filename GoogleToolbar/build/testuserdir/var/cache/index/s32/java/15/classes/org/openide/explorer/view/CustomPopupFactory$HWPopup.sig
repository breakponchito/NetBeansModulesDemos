����   4 r
      5org/openide/explorer/view/CustomPopupFactory$OurPopup <init> -(Ljava/awt/Component;Ljava/awt/Component;II)V	  	 
   4org/openide/explorer/view/CustomPopupFactory$HWPopup window Ljavax/swing/JWindow;
      javax/swing/JWindow 	isShowing ()Z
     
setVisible (Z)V
     dispose ()V
  	     owner Ljava/awt/Component;
 ! " # $ % javax/swing/SwingUtilities getWindowAncestor '(Ljava/awt/Component;)Ljava/awt/Window;
  '  ( (Ljava/awt/Window;)V	 * + , - . java/awt/Window$Type POPUP Ljava/awt/Window$Type;
  0 1 2 setType (Ljava/awt/Window$Type;)V
  4 5 6 getContentPane ()Ljava/awt/Container;	  8 9  contents
 ; < = > ? java/awt/Container add *(Ljava/awt/Component;)Ljava/awt/Component; A java/awt/Point	  C D E x I	  G H E y
 @ J  K (II)V
  M N O setLocation (Ljava/awt/Point;)V
  Q R  pack
 T U V W X ,org/openide/explorer/view/CustomPopupFactory 
access$000 (Ljavax/swing/JWindow;)V
 ; Z [ \ remove (Ljava/awt/Component;)V
   Code LineNumberTable LocalVariableTable this 6Lorg/openide/explorer/view/CustomPopupFactory$HWPopup; MethodParameters StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; prepareResources doShow doHide 
SourceFile CustomPopupFactory.java InnerClasses OurPopup HWPopup p java/awt/Window Type                  ^   i     *+,� *� �    _       � 	 �  � `   4     a b            9      D E     H E  c       9   D   H       ^   L     *� � *� � � � �    _       � `        a b   d    @ e     f        ^   S     *� � *� � *� *� �    _       �  �  �  �  � `        a b   e     f    g   ^   �     P*� Y*� �  � &� *� � )� /*� � 3*� 7� :W*� � @Y*� B*� F� I� L*� � P*� � S�    _       �  �  � + � A � H � O � `       P a b   e     f    h   ^   7     	*� � �    _   
    �  � `       	 a b   e     f    i   ^   e     "*� � *� � *� � 3*� 7� Y*� ]�    _       �  �  �  � ! � `       " a b   d    ! e     f    j    k l      T m
  T n 
 * o q@