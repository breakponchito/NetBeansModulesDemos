����   4 �
      java/lang/Object <init> ()V	  	 
   5org/netbeans/swing/tabcontrol/plaf/BaseTabLayoutModel 
textHeight I	     padX	     padY	     model ,Lorg/netbeans/swing/tabcontrol/TabDataModel;	     renderTarget Ljavax/swing/JComponent;
       javax/swing/JComponent getFont ()Ljava/awt/Font; " # $ % & *org/netbeans/swing/tabcontrol/TabDataModel getTab *(I)Lorg/netbeans/swing/tabcontrol/TabData;
 ( ) * + , %org/netbeans/swing/tabcontrol/TabData getIcon ()Ljavax/swing/Icon; . / 0 1 2 javax/swing/Icon getIconWidth ()I . 4 5 2 getIconHeight
 ( 7 8 9 getText ()Ljava/lang/String;
  
  < = > 	textWidth <(Ljava/lang/String;Ljava/awt/Font;Ljavax/swing/JComponent;)I @ java/lang/NullPointerException B "java/lang/IllegalArgumentException D java/lang/StringBuilder
 C  G Error fetching width for tab 
 C I J K append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 C M J N (I)Ljava/lang/StringBuilder; P  - model size is  " R S 2 size U  TabData is 
 C W J X -(Ljava/lang/Object;)Ljava/lang/StringBuilder; Z  model contents: 
 C \ ] 9 toString
 A _  ` (Ljava/lang/String;)V
 b c d e f ?org/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI getOffscreenGraphics /(Ljavax/swing/JComponent;)Ljava/awt/Graphics2D; h java/lang/Integer���	 k l m n o java/awt/Color BLACK Ljava/awt/Color; q org/openide/awt/HtmlRenderer
 p s t u renderString M(Ljava/lang/String;Ljava/awt/Graphics;IIIILjava/awt/Font;Ljava/awt/Color;IZ)D
 w x y z { java/lang/Math round (D)J
 w } z ~ (F)I � Zgj
 � � � � � java/awt/Graphics2D getFontRenderContext #()Ljava/awt/font/FontRenderContext;
 � � � � � java/awt/Font getStringBounds P(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;
 � � � � � java/awt/geom/Rectangle2D getWidth ()D
  � � � 	getInsets ()Ljava/awt/Insets;	 � � � �  java/awt/Insets left
  � � � getW (I)I	 � � �  top
  �  � (ILjavax/swing/JComponent;)I
 w � � � max (II)I
  � � � 	iconWidth
  � = �
  � � 2	 � � �  right
  � � 2 	getHeight	 � � �  bottom	 � � � �  java/awt/Dimension width	 � � �  height � 1org/netbeans/swing/tabcontrol/plaf/TabLayoutModel G(Lorg/netbeans/swing/tabcontrol/TabDataModel;Ljavax/swing/JComponent;)V Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/swing/tabcontrol/plaf/BaseTabLayoutModel; MethodParameters result index ic Ljavax/swing/Icon; StackMapTable 
iconHeight text Ljava/lang/String; iae $Ljava/lang/IllegalArgumentException; npe  Ljava/lang/NullPointerException; f Ljava/awt/Font; 	component wid D testStr getX i getY getH indexOfPoint x y pos dropIndexOfPoint delta insets Ljava/awt/Insets; contentWidth contentHeight 
setPadding (Ljava/awt/Dimension;)V d Ljava/awt/Dimension; 
SourceFile BaseTabLayoutModel.java      �                              �  �   t     *� *� *� *� *+� *,� �    �       :  5 	 6  7  ;  <  = �         � �               �   	            �   2     *� � �    �       @ �        � �    � �  �   �      *� � ! � 'M,� ,� - >� >�    �       D  F  G  I  K �   4    �       � �       �     � �    �   �    �  .�  �    �    � �  �   �      *� � ! � 'M,� ,� 3 >� >�    �       O  Q  R  T  V �   4    �       � �       �     � �    �   �    �  .�  �    �    = �  �   �     h*� � ! � 6M,*� :*� � ;�M� AY� CY� EF� H� LO� H*� � Q � LT� H*� � ! � VY� H*� � V� [� ^N-�      ?  �       [  \  ]  ^ 9 b K d f g �   4    � �  f  � �   L � �    h � �     h �   �    [ ? �    �    = >  �   j 
    *,� aii+� j� rJ)� v�� |�    �   
    q  v �   *     � �      � �     �    	 � �  �    �   �   �     �  �   �     -*� � #N*� ::*-,� a� �� �� ��`� *� �    �   "    z  |  }  ~    ~   ( � �   4    � �    � �    - � �     - �     - �   �    ( �   	 �   �    � �  �   �     "*� � �� �=>� *� �`=�����    �       �  �  �  �   � �   *    �     " � �     " �     �   �   
 � �  �    �    � �  �   ?     *� � �� ��    �       � �        � �      �   �    �    � �  �   ]     )**� � �*� `*� � ! � '� 3 *� `� ��    �       � �       ) � �     ) �   �    �    � �  �   p     *� �=� =*� �`*� `�    �       �  �  �  � �         � �      �     �   �    �  �    �    � �  �   �     ;*� � Q >*� � �� �66� *� �`6� ������    �   "    � 
 �  �  � * � 0 � 3 � 9 � �   >     �     ; � �     ; �     ; �   
 1 �    % �   �    � �  �   	 �   �    � �  �  y  
   �*� � �N*� � �-� �-� �`d6*� � �-� �-� �`d6-� �� � -� �� 	� �*� � Q 6-� �66� 1*� �6		`6	ld� �� `������    �   B    �  �  � . � J � L � W � ] � g � o � v � � � � � � � � � � � �   f 
 o   �  	 ` 5 �     � � �     � �     � �    � � �   } �   . j �   W A �   ] ; �   �    � J �� � #� 
�  �   	 �   �    � �  �   M     *+� �� *+� �� �    �       �  �  � �        � �      � �  �    �    �    �