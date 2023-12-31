����   4R
      javax/swing/plaf/ViewportUI <init> ()V	  	 
   3org/openide/explorer/propertysheet/MarginViewportUI 
lastHeight I	     stringWidth	     stringHeight	     ascent  java/awt/Rectangle
  	     scratch Ljava/awt/Rectangle;  THIS IS A BUG	    ! " emptyString Ljava/lang/String; $ controlShadow
 & ' ( ) * javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color;	  , - . marginColor Ljava/awt/Color;
 0 1 2 3 4 ,org/openide/explorer/propertysheet/PropUtils getMarginWidth ()I	  6 7  marginWidth	  9 : ; marginPainted Z = java/awt/Dimension
 < 	  @ A B lastKnownSize Ljava/awt/Dimension;	  D E F viewport Ljavax/swing/JViewport; H javax/swing/JViewport
  J  K (Ljavax/swing/JViewport;)V
  M N O 	installUI (Ljavax/swing/JComponent;)V	 Q R S T . java/awt/Color 
LIGHT_GRAY
 V W X Y Z javax/swing/JComponent setForeground (Ljava/awt/Color;)V \ Tree.background	 Q ^ _ . WHITE
 V a b Z setBackground d 	Tree.font
 & f g h getFont #(Ljava/lang/Object;)Ljava/awt/Font; j controlFont
 V l m n setFont (Ljava/awt/Font;)V
 V p q r addContainerListener %(Ljava/awt/event/ContainerListener;)V
 V t u v getComponents ()[Ljava/awt/Component;
 x y z { | java/awt/Component addComponentListener %(Ljava/awt/event/ComponentListener;)V
 G t
 x  � | removeComponentListener
 G � � r removeContainerListener
 G � �  repaint
 � � � � � org/openide/awt/GraphicsUtils configureDefaultRenderingHints (Ljava/awt/Graphics;)V
 G � � � getView ()Ljava/awt/Component;
 x � � � getSize ()Ljava/awt/Dimension;
 V � g � ()Ljava/awt/Font;
  � � � calcStringSizes %(Ljava/awt/Font;Ljava/awt/Graphics;)V
  � � � shouldPaintEmptyMessage ()Z
 � l � java/awt/Graphics
 V � � � getForeground ()Ljava/awt/Color;
 � � � Z setColor
  � � � getEmptyMessageBounds ()Ljava/awt/Rectangle;	  � �  x	  � �  y	  � �  width	  � �  height
 � � � � hitClip (IIII)Z
 � � � � 
drawString (Ljava/lang/String;II)V
 � � � � getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
 � � �  � java/awt/FontMetrics (Ljava/lang/String;)I
 � � � 4 	getHeight
 � � � 4 getMaxAscent
 G � � � 	getInsets ()Ljava/awt/Insets;	 � � � �  java/awt/Insets left
 G � � 4 getWidth	 � � �  right	 � � �  top
 G �	 � � �  bottom
 V � � � getBackground
  � � � shouldPaintMargin
 V �
 V �
 � � � � fillRect (IIII)V
  � � � paint .(Ljava/awt/Graphics;Ljavax/swing/JComponent;)V	 < �
 � � � � � java/lang/Math abs (I)I
 G � � �
 � java/awt/event/ContainerEvent getChild
	
 java/awt/event/ComponentEvent 	getSource ()Ljava/lang/Object;
  scheduleRepaint (Ljava/awt/Dimension;)V  java/awt/event/ComponentListener  java/awt/event/ContainerListener Code LineNumberTable LocalVariableTable this 5Lorg/openide/explorer/propertysheet/MarginViewportUI; jv MethodParameters createUI 8(Ljavax/swing/JComponent;)Ljavax/swing/plaf/ComponentUI; c Ljavax/swing/JComponent; i fg bg f Ljava/awt/Font; kids [Ljava/awt/Component; StackMapTable' java/awt/Font$ #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; uninstallUI vp setEmptyString (Ljava/lang/String;)V s setMarginColor setMarginWidth (I)V margin setMarginPainted (Z)V val r g Ljava/awt/Graphics; view Ljava/awt/Component; fm Ljava/awt/FontMetrics; ins Ljava/awt/Insets; update leftEdge nuSize 	heightDif d componentAdded "(Ljava/awt/event/ContainerEvent;)V e Ljava/awt/event/ContainerEvent; componentHidden "(Ljava/awt/event/ComponentEvent;)V Ljava/awt/event/ComponentEvent; componentMoved componentRemoved componentResized componentShown 
SourceFile MarginViewportUI.java        E F                              ! "     - .    7     : ;     A B      K    �     O*� *� *� *� *� *� Y� � *� *#� %� +*� /� 5*� 8*� <Y� >� ?*+� C�      6    >  2 	 3  4  5  6 # 7 ) 8 2 9 9 : > ; I ? N @       O     O F       	    6     � Y*� G� I�          D                N O   F     o*+� L#� %M,� � PM+,� U[� %N-� � ]N+-� `c� e:� 
i� e:� 	+� k+*� o+� s:6�� 2*� w����      R    I  Q  S  T  W  Y  [ " \ & _ + a 2 c 7 d > g C h I k N m T o _ r h o n t   H  W      o     o   d .   Q  .  2 =!"  T #$ %    �  Q�  Q� &
� (�      )    *   + O    �     (+� GM,� }N6-�� -2*� ~����,*� ��          x  y 
 {  |  { "  ' �   4        (     (,   # F  
 $ %    �  G(�    ,  )    *   -.    P     *+� *� *� �          �  � 
 �  �            / "    /   0 Z    >     *+� +�      
    �  �             .       12    >     *� 5�      
    �  �            3     3   45    ^     *� 8� *� 8*� C� ��          �  �  �  �            6 ; %       6    � �        y+� �,� G� �N-� *-� �� ?*� � *,� �+� �*� �� K+,� �� �+,� �� �*� �:+� �� �� �� �� �� +*� � �� �*� `� ��      6    �  �  �  �  �   � ) � 0 � 8 � @ � F � a � x �   4  F 27     y     y89    y   m:; %    �  x� N   	8    )    *    � �    {     #,+� �N*-*� � Ƶ *-� ˵ *-� ε �          �  �  �  � " �   *    #     #!"    #89   <=    	!  8    � �    �     o*� C� �L*� +� �*� C� �+� �+� �`dl*� ld`� �*� +� �*� C� �+� �+� �`dl*� ld`� �*� *� � �*� *� � �*� �          �  � . � T � _ � j �       o    g>?  @ �    �     N+,� � �*� �>� 
*� 5� 6+,� �d,� � �� +*� +� �+*� 5,� � �*+,� �      & 	   �  �  �  � - � 1 � 9 � G � M �   4    N     N89    N   A3 ;   3A  %    � @� -   	8    )    *           �*� 8� %+� �
� � *� ?� �
� � � +� �*� ?� �d� �=� *� C� �N*� C-� �-� �*� 5*� C� �-� �-� �`d� �*� �:*� C� �� �� �� �� ��      "    � ) � 9 � = � E � i � o � � �   4    �     �B B  9 RC   E F>?  o 7  %    @O�     < �    B    � �    b     *� C� �� �L+� �
� � �      
    �  �           D B %   
 �  <@  � �    R     *� 8*� �� � ~�                  %    O�      EF    A     	+� *� w�      
           	     	GH    G   IJ    5      �         	            GK    G   LJ    5      �                     GK    G   MF    A     	+� *� ~�      
           	     	GH    G   NJ    G     *+�� x� ���      
                GK    G   OJ    G     *+�� x� ���      
                GK    G   P   Q