����   4
      java/lang/Object <init> ()V	  	 
   6org/netbeans/swing/tabcontrol/plaf/ViewTabLayoutModel2 tabFixedWidth I	     	displayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;	     padding DLorg/netbeans/swing/tabcontrol/plaf/ViewTabLayoutModel2$PaddingInfo;
     updatePermutations
      *org/netbeans/swing/tabcontrol/TabDisplayer getModel .()Lorg/netbeans/swing/tabcontrol/TabDataModel;    ! " # *org/netbeans/swing/tabcontrol/TabDataModel addChangeListener %(Ljavax/swing/event/ChangeListener;)V
  % & ' 
checkIndex (I)V
  ) * + 	getInsets ()Ljava/awt/Insets;
  - . / 	getHeight ()I	 1 2 3 4  java/awt/Insets bottom	 1 6 7  top	  9 : ; 	index2Pos Ljava/util/List; = > ? @ A java/util/List get (I)Ljava/lang/Object; C java/lang/Integer
 B E F / intValue
  H I J 
getXCoords ()[I
  L M N getX (I)I	 1 P Q  left
  S T / getWidth	 1 V W  right  Y Z / size
  \ ] N getW	  _ ` ; 	pos2Index b 'java/lang/UnsupportedOperationException d not implemenetd yet....
 a f  g (Ljava/lang/String;)V i "java/lang/IllegalArgumentException k java/lang/StringBuilder
 j  n Index out of valid scope 0..
 j p q r append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 j t q u (I)Ljava/lang/StringBuilder; w : 
 j y z { toString ()Ljava/lang/String;
 h f	 ~  � � � Borg/netbeans/swing/tabcontrol/plaf/ViewTabLayoutModel2$PaddingInfo txtPad Ljava/awt/Dimension;	 � � � �  java/awt/Dimension width	 ~ � �  txtIconsXPad	 ~ � �  	iconsXPad  � � � getTab *(I)Lorg/netbeans/swing/tabcontrol/TabData;
 � � � � { %org/netbeans/swing/tabcontrol/TabData getText
 � � � � � ?org/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI getOffscreenGraphics /(Ljavax/swing/JComponent;)Ljava/awt/Graphics2D;���
  � � � getFont ()Ljava/awt/Font;	 � � � � � java/awt/Color BLACK Ljava/awt/Color; � org/openide/awt/HtmlRenderer
 � � � � renderString M(Ljava/lang/String;Ljava/awt/Graphics;IIIILjava/awt/Font;Ljava/awt/Color;IZ)D
  � � � getSelectionModel $()Ljavax/swing/SingleSelectionModel; � � � � /  javax/swing/SingleSelectionModel getSelectedIndex
  � � � getUI 0()Lorg/netbeans/swing/tabcontrol/TabDisplayerUI; � 3org/netbeans/swing/tabcontrol/plaf/TabControlButton
 � � � � � ,org/netbeans/swing/tabcontrol/TabDisplayerUI getButtonIcon (II)Ljavax/swing/Icon; � � � � / javax/swing/Icon getIconWidth
 � � � � � java/lang/Math round (D)J
 � � � � (F)I � java/util/ArrayList
 � �  '
 B � � � valueOf (I)Ljava/lang/Integer; = � � � add (Ljava/lang/Object;)Z = � � � (ILjava/lang/Object;)V � 1org/netbeans/swing/tabcontrol/plaf/TabLayoutModel �  javax/swing/event/ChangeListener 	Signature %Ljava/util/List<Ljava/lang/Integer;>; s(Lorg/netbeans/swing/tabcontrol/TabDisplayer;Lorg/netbeans/swing/tabcontrol/plaf/ViewTabLayoutModel2$PaddingInfo;)V Code LineNumberTable LocalVariableTable this 8Lorg/netbeans/swing/tabcontrol/plaf/ViewTabLayoutModel2; MethodParameters getH index insets Ljava/awt/Insets; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getY tabPos StackMapTable indexOfPoint (II)I diff leftSide i x y contentWidth contentHeight tabsXCoordinates [I  dropIndexOfPoint 
setPadding (Ljava/awt/Dimension;)V d 
buttonIcon Ljavax/swing/Icon; curText Ljava/lang/String; tabIndex model ,Lorg/netbeans/swing/tabcontrol/TabDataModel; 
tabsXCoord 
dispInsets curX D maxRight java/lang/String 	itemCount stateChanged "(Ljavax/swing/event/ChangeEvent;)V e Ljavax/swing/event/ChangeEvent; 
SourceFile ViewTabLayoutModel2.java InnerClasses PaddingInfo 0    � �             : ;  �    �  ` ;  �    �         �  �   x     "*� *� *+� *,� *� +� *�  �    �       8  + 	 9  :  ;  < ! = �        " � �     "      "    �   	        � N  �   e     *� $*� � (M*� � ,,� 0,� 5`d�    �       A  B  C �         � �      �     � �  �    �   �     �    � N  �   H     *� $*� � (� 5�    �   
    H  I �        � �      �   �    �   �     �    ] N  �   i     #*� $*� 8� < � B� D=*� G.*� Kd�    �       N  P  Q �        # � �     # �     �   �    �   �     �    M N  �   �     0*� $*� 8� < � B� D=� *� Gd.� *� � (� O�    �       V  X  Y �        0 � �     0 �     �   �    � %I �    �   �     �    � �  �  �     �*� � (N*� � R-� O-� U`d6*� � ,-� 0-� 5`d6-� 5� � -� O� 	� �*� � � X 6*� G:	6

� N	
.� @
� 	
d.� -� O6d6�  *
� [� *� ^
� < � B� D��
����    �   >    ^  _  a . c J e L g Z j ` l j m r n � o � p � q � l � u �   p  � " �   � ( �   c R �  
   � � �     � �     � �    � � �   � �   . � �   Z ] Z   ` W �  	 �   * � J 1�    1    C)�  �   	 �   �   �     �    �  �   �     V*� � (N*� � R-� O-� U`d6*� � ,-� 0-� 5`d6-� 5� � -� O� 	� �� aYc� e�    �       z  {  } .  J � L � �   >    V � �     V �     V �    N � �   ; �   . ( �   �    � J 1 �   	 �   �   �     �     �   5      �    �       � �        � �      �  �      �     �    & '  �   �     =*� � � X =� � )� hY� jY� lm� od� sv� o� s� x� |��    �       �  �  � < � �        = � �     = �    0 Z   �    � % �    �    I J  �  �    .*� � L+� X =�
N*� � !**� � }� �*� � �`*� � �`� *� � (:� O�9*� � R� Ud66� �*� ^� < � B� D6	+	� � � �:*� � ���*� � �� �� �*� �cc9	*� � �� � � U*� � �	� �:

� 
� � *� � �`�c9*� � �	� �:

� 
� � *� � �`�c9-� ȉ� �O��� � 	���2-�    �   j    �  �  �  �  � 8 � A � I � X � a � t � � � � � � � � � � � � � � � � � � � � � � �# �& �, � �   p  � C 
 � �	  t �
  	 [ � �    . � �   &   Z      A � �  I �  X �   �   w � 8 � "    1     � �    1 �  � (    1   �     1       �   �     S*� � � X <*� �Y� ӵ 8*� �Y� ӵ ^=� )*� 8dd� չ � W*� ^� չ � ���ر    �   "    �  �  � % � , � > � L � R � �      ' + �     S � �    F   �   
 � '� *   �   =     *� �    �   
    �  � �        � �       �      �     �         
  ~  