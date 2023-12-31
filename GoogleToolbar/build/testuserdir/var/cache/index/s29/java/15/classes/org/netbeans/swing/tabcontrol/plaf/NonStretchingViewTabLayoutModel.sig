����   4 �
      java/lang/Object <init> ()V  java/awt/Dimension
  
   (II)V	      Borg/netbeans/swing/tabcontrol/plaf/NonStretchingViewTabLayoutModel padding Ljava/awt/Dimension;	     model ,Lorg/netbeans/swing/tabcontrol/TabDataModel;	     tabDisplayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;
     
checkIndex (I)V
    ! " # *org/netbeans/swing/tabcontrol/TabDisplayer 	getInsets ()Ljava/awt/Insets;
  % & ' 	getHeight ()I	 ) * + , - java/awt/Insets bottom I	 ) / 0 - top
  2 3 4 
getXCoords ()[I
  6 7 8 getX (I)I	 ) : ; - left
  = > ' getWidth	 ) @ A - right C D E F ' *org/netbeans/swing/tabcontrol/TabDataModel size
  H I 8 getW
  K  L (Ljava/awt/Dimension;)V N "java/lang/IllegalArgumentException P java/lang/StringBuilder
 O  S Index out of valid scope 0..
 O U V W append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 O Y V Z (I)Ljava/lang/StringBuilder; \ : 
 O ^ _ ` toString ()Ljava/lang/String;
 M b  c (Ljava/lang/String;)V
  e f g makeEqualSized ([III)V
  i j k getUI 0()Lorg/netbeans/swing/tabcontrol/TabDisplayerUI; m 3org/netbeans/swing/tabcontrol/plaf/TabControlButton
 o p q r s ,org/netbeans/swing/tabcontrol/TabDisplayerUI getButtonIcon (II)Ljavax/swing/Icon; u v w x ' javax/swing/Icon getIconWidth C z { | getTab *(I)Lorg/netbeans/swing/tabcontrol/TabData;
 ~  � � ` %org/netbeans/swing/tabcontrol/TabData getText
 � � � � � ?org/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI getOffscreenGraphics /(Ljavax/swing/JComponent;)Ljava/awt/Graphics2D; � java/lang/Integer���
  � � � getFont ()Ljava/awt/Font;	 � � � � � java/awt/Color BLACK Ljava/awt/Color; � org/openide/awt/HtmlRenderer
 � � � � renderString M(Ljava/lang/String;Ljava/awt/Graphics;IIIILjava/awt/Font;Ljava/awt/Color;IZ)D	  � � - width
 � � � � � java/lang/Math round (D)J
 � � � � max (II)I
  � � � findSecondMaxWidth ([II)I
  � � � makeShorter ([IIII)V
  � � � countTabsWiderThan
 � � � � min � 1org/netbeans/swing/tabcontrol/plaf/TabLayoutModel PADDING_RIGHT ConstantValue   # 
ICON_X_PAD    [(Lorg/netbeans/swing/tabcontrol/TabDataModel;Lorg/netbeans/swing/tabcontrol/TabDisplayer;)V Code LineNumberTable LocalVariableTable this DLorg/netbeans/swing/tabcontrol/plaf/NonStretchingViewTabLayoutModel; MethodParameters getH index insets Ljava/awt/Insets; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable getY indexOfPoint diff i x y contentWidth contentHeight dropIndexOfPoint coords [I � 
setPadding d tabWidth curText Ljava/lang/String; tabIndex secondMaxTabWidth widthToDistribute 
tabsXCoord 
dispInsets curX D maxRight 
buttonIcon Ljavax/swing/Icon; iconPadding maxTabWidth � java/lang/String 
leftInsets j currentDelta tabsWiderThan tabCount total delta makeShorterEqually ([II)V res 
SourceFile $NonStretchingViewTabLayoutModel.java 0    �             � -  �    �  � -  �    �         �  �   k     *� *� Y
� 	� *+� *,� �    �       4  .  5  6  7 �         � �               �   	        � 8  �   e     *� *� � M*� � $,� (,� .`d�    �       ;  <  = �         � �      � -    � �  �    �   �     �    I 8  �   J     *� *� 1.*� 5d�    �   
    B  C �        � �      � -  �    �   �     �    7 8  �   b     *� � *� 1d.� *� � � 9�    �   
    H  I �        � �      � -  �    I �    �   �     �    � 8  �   H     *� *� � � .�    �   
    N  O �        � �      � -  �    �   �     �    � �  �  ]  	   �*� � N*� � <-� 9-� ?`#`d6*� � $-� (-� .`d6-� .� � -� 9� 	� �*� � B 66� &*� 5d6� *� G� ������    �   2    T  U  W 1 Y M [ O ] Z _ d ` n a ~ b � _ � e �   \ 	 n  � -  ] * � -    � � �     � � -    � � -   � � �   k � -  1 X � -  Z / F -  �   ( � M )�  � # 	  )  �  �   	 �   �   �     �    � �  �  B  	   *� � N*� � <-� 9-� ?`#`d6*� � $-� (-� .`d6-� .� � -� 9� 	� �*� � B 6*� 1:6�� .� ������    �   2    j  k  m 1 o M q O t Z u ` v k w t x w v } { �   \ 	 c  � -     � �      � -     � -   w � �   a � -  1 N � -  Z % F -  `  � �  �    � M )�  ��  �   	 �   �   �     �    � L  �   E     *� Y+� J� �    �   
    �  � �        � �      �   �    �   �     �       �   �     :*� � B =� � )� MY� OY� QR� Td� X[� T� X� ]� a��    �       � 
 �  � 9 � �        : � �     : � -  
 0 F -  �    � % �    �    3 4  �  !    b*� � B <�
M*� � N-� 9�9*� � <-� ?d#d6-� 9ld� ,-� 9� d,�*� � h� n:	6
	� 
	� t `6
�
66� �6*� � y � }:*� � ���*� � �� �� �c9*� � ��c9
�c9,� ��O� 
,.� ,.,d.d6� �6���,,�d.� a,� �6,,�d.d6,� �,,�d.� 96,� �6,,�d.d6,� �,,�d.� ,-� 9� d,�    �   � &   � 
 �  �  �  � . � ; � E � G � U � X � ^ � j � m � p � y � } � � � � � � � � � � � � � � � � � � � � � �
 � � �* �. �6 �A �K �V �` � �   �  � 	 � -  � j � �  } z � -  s � � - 
 V � -  K � -   b � �   
X F -  T � �  L � �  E � �  .4 � -  U � � 	 X
 � - 
 p � � -  �   o � G   � )  � % 
  � )   u  � � g   � ) � u  J�    � )   u  � h 
 f g  �   �     .d*�l� �>*`O6*�� **d.`O����    �       �  �  �  � ' � - � �   4    � -    . � �     . � -    . � -   # � -  �   
 � �  �    �   �   �   
 � �  �  �     �*� �6� �6l� �6*�d6� ]*.6� *d.d6� � 8d� �6	6

*�� *
\.	dO�
���	`6� � 	������    �   R    �  �  �  �  �  � & � , � 1 � < � B � E � P � [ � d � j � q � w � z � � � �   p  T  � - 
 , N � -  P * � - 	 ! _ � -    � � �     � � -    � � -    � � -   z � -   p � -   f � -  �    � � � � � � �  �    �   �   �   �   
 � �  �  >     m*�l� �=>*�d6� Y*.6� *d.d6� � 4d� �66*�� *\.dO����`>� � 	������    �   F    � 	 �  �  �  � ! � , � 2 � 5 � ? � J � S � Y � ^ � c � f � l � �   R  C  � -   J � -  ? ' � -   [ � -    m � �     m � -  	 d � -   b � -  �    � � � � � �  �   	 �   �   
 � �  �   �     6=>*�� -� 	*.� *.*d.d6� � =�����    �        
  + . 4 �   4    � -   0 � -    6 � �     6 � -   4 � -  �    � H�  �   	 �   �   
 � �  �   �     0=>*�� '� 	*.� *.*d.d6� ������    �        
  % ( . �   4   	 � -   * � -    0 � �     0 � -   . � -  �    � H
�  �   	 �   �    �    �