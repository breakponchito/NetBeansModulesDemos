����   4 �
      org/openide/awt/JPopupMenuUtils refreshPopup (Ljavax/swing/JPopupMenu;)V	   	 
 task (Lorg/openide/util/RequestProcessor$Task;
      java/lang/Object <init> ()V
      javax/swing/JPopupMenu 	isShowing ()Z
     isProblemConfig
     callRefreshLater
      getLocationOnScreen ()Ljava/awt/Point;
  " # $ getPopupMenuOrigin :(Ljavax/swing/JPopupMenu;Ljava/awt/Point;)Ljava/awt/Point;
  & ' ( willPopupBeContained +(Ljavax/swing/JPopupMenu;Ljava/awt/Point;)Z
  * + , 
setVisible (Z)V
 . / 0 1 2 java/awt/Point equals (Ljava/lang/Object;)Z
  4 5  pack
  7 8  
invalidate
  : ; < 	getParent ()Ljava/awt/Container;
 > ? @ A  java/awt/Component validate	  C D E reqProc #Lorg/openide/util/RequestProcessor; G !org/openide/util/RequestProcessor
 F  J !org/openide/awt/JPopupMenuUtils$1
 I L  
 F N O P create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
 R S T U V &org/openide/util/RequestProcessor$Task schedule (I)V	  X Y Z problemTested Z	  \ ] Z problem _ netbeans.popup.linuxhack
 a b c d e java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
  g h i 
getInvoker ()Ljava/awt/Component; k javax/swing/JMenu
  m n o callRefreshLater2 .(Ljavax/swing/JPopupMenu;Ljavax/swing/JMenu;)V
  q r s getPreferredSize ()Ljava/awt/Dimension; u java/awt/Rectangle
 t w  x '(Ljava/awt/Point;Ljava/awt/Dimension;)V
  z { | getScreenRect ()Ljava/awt/Rectangle;
  ~  � isPopupContained (Ljavax/swing/JPopupMenu;)Z
 t � � � contains (Ljava/awt/Rectangle;)Z
 j � � , setPopupMenuVisible � !org/openide/awt/JPopupMenuUtils$2
 � �  o
 . �  � (Ljava/awt/Point;)V	 . � � � x I	 � � � � � java/awt/Dimension width	 . � � � y	 � � � � height	 t �	 t �	 t �	 t �
 � � � � � javax/swing/SwingUtilities windowForComponent '(Ljava/awt/Component;)Ljava/awt/Window;
  � � s getSize
 � � � � | java/awt/Window 	getBounds
 � � � � | org/openide/util/Utilities getUsableScreenBounds Code LineNumberTable LocalVariableTable this !Lorg/openide/awt/JPopupMenuUtils; dynamicChange (Ljavax/swing/JPopupMenu;Z)V popup Ljavax/swing/JPopupMenu; usedToBeContained p Ljava/awt/Point; newPt willBeContained StackMapTable MethodParameters c Ljava/awt/Component; needHack Ljava/lang/String; � java/lang/String dynamicChangeToSubmenu invoker Ljava/lang/Object; menu Ljavax/swing/JMenu; 	popupSize Ljava/awt/Dimension; 	popupRect Ljava/awt/Rectangle; 
screenRect 
popupRight popupBottom screenRight screenBottom origin w Ljava/awt/Window; r 
access$002 R(Lorg/openide/util/RequestProcessor$Task;)Lorg/openide/util/RequestProcessor$Task; x0 
access$100 <clinit> 
SourceFile JPopupMenuUtils.java InnerClasses Task !      
 Y Z   
 ] Z   
 D E   
 	 
        �   /     *� �    �       . �        � �   	 � �  �   �     H*� � �� � *� �*� *� M*,� !N*-� %6� *� )-,� -� � *� )�    �   >    =  >  A  B  D  G  I  J " L ) N / O 4 R < X B Y G [ �   4    H � �     H � Z   , � �  " & � �  )  � Z  �    
�   . .
 �   	 �  �   
    �   l     *� 3*� 6*� 9L+� +� =�    �       _  `  b  d  e  g �        � �    	 � �  �    �  > �    �   
    �   x     0� B� � FY� H� B� � � B� IY*� K� M� � d� Q�    �       n  o  r  s ' � / � �       0 � �   �     �    �  
    �   q      � W� � [�� [^� `K*� � [� [�    �       �  � 
 �  �  �  �  � �       � �   �   	 
�  � 	 � �  �  x  	   v*� fM,� j� �,� jN*� � �� � 	*-� l�*� *� :*� p:� tY� v:� y:*� }6� �� -� �-� �� � *� )*� )�    �   Z    �  �  �  �  �  �  �   � % � & � * � 0 � 6 � C � H � N � X � ] � e � k � p � u � �   \ 	   v � �     v � Z   q � �   d � �  0 F � �  6 @ � �  C 3 � �  H . � �  N ( � Z  �   . �  �  j� > 	   j . � t t   �   	 �   �   
 n o  �   �     1� B� � FY� H� B� � � B� �Y*+� �� M� � d� Q�    �       �  �  �  � ( 0 �       1 � �     1 � �  �     �   	 �  �   # $  �  n  	   �� .Y+� �M*� pN� y:,� �-� �`6,� �-� �`6� �� �`6� �� �`6� ,-� �d� �,� �� �� ,� �� �� ,-� �d� �,� �� �� ,� �� �,�    �   B    	   ! " )# 6$ C& J' U* a+ j. q/ |2 �3 �6 �   \ 	   � � �     � � �  	 � � �   � � �   � � �   u � �  ) j � �  6 ] � �  C P � �  �    � U 	  . . � t   �   	 �   �   	  �  �   M     *� � �**� � %�    �      @ A 	D �        � �   �    	 �    �   
 ' (  �   �     3*� � �*� f� �M� tY+*� �� vN,� ,� �-� �� � �    �      Q R 	U V X �   *    3 � �     3 � �   " � �    � �  �    	� ' � t@ �   	 �   �   	 { |  �         � ��    �      e � �  �   0     *Y� �    �       . �        � 
   �   �   /     *� �    �       . �        � �    �   �   %      	� W� [�    �   
    /  0  �    � �     R F �  I       �      