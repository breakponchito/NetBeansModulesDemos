����   4
      javax/swing/plaf/LabelUI <init> ()V	  	 
   org/openide/awt/HtmlLabelUI $assertionsDisabled Z   org/openide/awt/HtmlRendererImpl  java/lang/AssertionError
  	     
uiInstance Lorg/openide/awt/HtmlLabelUI;
  
      java/awt/GraphicsEnvironment 
isHeadless ()Z
      getPreferredSize .(Ljavax/swing/JComponent;)Ljava/awt/Dimension;
  " # $ calcPreferredSize 8(Lorg/openide/awt/HtmlRendererImpl;)Ljava/awt/Dimension; & java/lang/Integer���	 ) * + , - java/awt/Color BLACK Ljava/awt/Color; / org/openide/awt/HtmlRenderer
 . 1 2 3 
renderHTML M(Ljava/lang/String;Ljava/awt/Graphics;IIIILjava/awt/Font;Ljava/awt/Color;IZ)D
 5 6 7 8 9 java/lang/Math ceil (D)D
 . ; < 3 renderPlainString
  > ? @ getFont ()Ljava/awt/Font;	 B C D E F org/openide/awt/HtmlLabelUI$1 0$SwitchMap$org$openide$awt$HtmlRendererImpl$Type [I
  H I J type )()Lorg/openide/awt/HtmlRendererImpl$Type;
 L M N O P %org/openide/awt/HtmlRendererImpl$Type ordinal ()I R 	List.font T 
Table.font V 	Tree.font X 
Label.font
 Z [ \ ? ] javax/swing/UIManager #(Ljava/lang/Object;)Ljava/awt/Font; _ controlFont a java/awt/Font c 	SansSerif
 ` e  f (Ljava/lang/String;II)V
  h i j 	getInsets ()Ljava/awt/Insets; l java/awt/Dimension	 n o p q r java/awt/Insets left I	 n t u r right	 n w x r top	 n z { r bottom
 k }  ~ (II)V
  � � � getText ()Ljava/lang/String;
  � � � getGraphics ()Ljava/awt/Graphics;
  � � � getIcon ()Ljavax/swing/Icon;
  � � � font 3(Lorg/openide/awt/HtmlRendererImpl;)Ljava/awt/Font;
 � � � � � java/awt/Graphics getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;	 k � � r height
 � � � � P java/awt/FontMetrics getMaxAscent
 � � � P getMaxDescent
  � �  
isCentered � � � � P javax/swing/Icon getIconHeight
  � � P getIconTextGap	 k � � r width � � � P getIconWidth
 5 � � � max (II)I
 � � � � � org/openide/awt/GraphicsUtils configureDefaultRenderingHints (Ljava/awt/Graphics;)V
  � �  isHtml
  � � � 	textWidth 8(Ljava/lang/String;Ljava/awt/Graphics;Ljava/awt/Font;Z)I
  � � P 	getIndent	  � � r FIXED_HEIGHT
  � � � getBackgroundFor 4(Lorg/openide/awt/HtmlRendererImpl;)Ljava/awt/Color;
  � �  isNimbus
  � � J getType	 L � � � TREE 'Lorg/openide/awt/HtmlRendererImpl$Type;	 L � � � TABLE
  � �  
isSelected
 � � � � setColor (Ljava/awt/Color;)V
 � � � � P javax/swing/JComponent getWidth
 � � � P 	getHeight
 � � � � fillRect (IIII)V
  � �  isLeadSelection � Tree.selectionBorderColor
 Z � � � getColor $(Ljava/lang/Object;)Ljava/awt/Color;
 ) � � � equals (Ljava/lang/Object;)Z	 ) � � - BLUE
  � �  isGTK
    isAqua
   	isFlatLaf
 � � drawRect
 	
 paint .(Ljava/awt/Graphics;Ljavax/swing/JComponent;)V
  paintIconAndTextCentered 8(Ljava/awt/Graphics;Lorg/openide/awt/HtmlRendererImpl;)V
  paintIconAndText
 � setFont (Ljava/awt/Font;)V
 � � ()Ljava/awt/FontMetrics;
  � � 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V  java/lang/NullPointerException" java/lang/StringBuilder
! % 0Probably an ImageIcon with a null source image: 
!'() append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
!+(, -(Ljava/lang/Object;)Ljava/lang/StringBuilder;.  - 
!01 � toString
34567 org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
39:; printStackTrace (Ljava/lang/Throwable;)V
  �
 >? � getForegroundFor
 ABC ensureContrastingColor 2(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Color;
 EF P getRenderStyle
 .HIJ _renderHTML _(Ljava/lang/String;ILjava/awt/Graphics;IIIILjava/awt/Font;Ljava/awt/Color;IZLjava/awt/Color;Z)D
 L M ()Ljava/awt/Dimension;
 .OP 3 renderStringR Tree.background	 )TU - WHITEW textY Tree.foreground[ textText
 ]^_ 
difference #(Ljava/awt/Color;Ljava/awt/Color;)I
 abc 	luminance (Ljava/awt/Color;)I
 5efg abs (I)I
 )ij P getRed
 )lm P getGreen
 )op P getBlue
 rs  isOpaque
 uvw getBackground ()Ljava/awt/Color;
 yz  isParentFocused
 |}w getUnfocusedSelectionBackground List.selectionBackground� Tree.selectionBackground� Table.selectionBackground
 ��w getUnfocusedSelectionForeground
 ��  	isEnabled� textInactiveText� List.selectionForeground� Table.selectionForeground� Tree.selectionForeground
 ��w getForeground� Aqua
 Z��� getLookAndFeel ()Ljavax/swing/LookAndFeel;
���� � javax/swing/LookAndFeel getID
� �� java/lang/String� GTK� Nimbus� FlatLaf
���� 
startsWith (Ljava/lang/String;)Z	 �� - unfocusedSelBg� nb.explorer.unfocusedSelBg� controlShadow	 )�� - 	lightGray
 )��w brighter	 �� - unfocusedSelFg� nb.explorer.unfocusedSelFg
����  java/lang/Class desiredAssertionStatus� nb.cellrenderer.fixedheight
����� java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
 %��� parseInt (Ljava/lang/String;)I� java/lang/Exception Code LineNumberTable LocalVariableTable this createUI 8(Ljavax/swing/JComponent;)Ljavax/swing/plaf/ComponentUI; c Ljavax/swing/JComponent; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; Ljava/lang/String; g Ljava/awt/Graphics; f Ljava/awt/Font; html key "Lorg/openide/awt/HtmlRendererImpl; result fm Ljava/awt/FontMetrics; r ins Ljava/awt/Insets; prefSize Ljava/awt/Dimension; icon Ljavax/swing/Icon; 	textwidth update x focus bg h txtY iconY npe  Ljava/lang/NullPointerException; iconX txtH rHeight availH txtX txtW 
background 
foreground iconx icony ic w lum darker fg replace dif a b <clinit> ht 
SourceFile HtmlLabelUI.java InnerClasses Type        
     
 � r   
� -   
� -            �   /     *� �   �       *�       �    	�� �   i     )� � *� � � Y� �� � � Y� � � �   �       @  B  C % F�       )��  �    �   �       �   Z     � � 	*+� �*+� � !�   �       J  L  N�       �      �� �    �   �  �    �   
 � � �   � 
    6*� 3� *+'',� (� 0� 4��*+'',� (� :� 4���   �   & 	   S  T  U  V  U  \ , ] / \ 4 d�   *    6W�     6��    6��    6�  �    �   W  �  �  �   
 � � �       g*� =L+� D� A*� G� K.�      .            "   (QM� SM� UM� WM,� YL+� ^� YL+� � `Yb� dL+�   �   B    i  j 	 l 0 n 3 o 6 q 9 r < t ? u B w E y J { N | T } X ~ e ��   >  3 ��  9 ��  ? ��  E ��    g��    b�� �    � 0 `� �� �   �    # $ �    	  +� gM� kY,� m,� s`,� v,� y`� |N+� :+� �:+� �:+� �:�  � �:-Y� �� �� �``� �� c+� �� +-Y� �� � +� �``� �-Y� �� � `� �� 4-� � ,� v`,� y`-� �� �� �-Y� �� � +� �``� �� �+� �� �`6+� �� --� �,� s`,� m`� �� �� -Y� �+� �``� �� Ş 
-� ŵ �-�   �   ^    �  �  � % � + � 1 � 7 � < � E � Y � ^ � e � z � � � � � � � � � � � � � � � � � ��   f 
 E ��   �     ��  ��   ���  % �W�  + ���  1 ���  7 � ��  � @� r �   ) � Y    n k� � � `  30� 6�   �   � �      ,� � �N,� :-� p� ̙ � ϲ ҥ _� ϲ ֦ 	6� 7� ٙ "� �� � � �� � � �`� 6� �`6+-� �+,� �d,� � �� � �� �:� -� �� � �:� �� `� �� Z� ̚ T�� N� ϲ ֦ 	6� !� �� � � �� � � �`6+� �+,� �`d,� �d�*+,��   �   V    �  �  � # � . � 4 � ^ � h � m �  � � � � � � � � � � � � � � � � � � � �
 ��   f 
 1 � r  ^ !� r  � � r  � � r  � v� -   �     ��   ��  � -   ��� �   ) � # ) @� � �  )(O� � �   	�  �  �    �   
 �   �      +� �,� N-� �� *+-�� 	*+-��   �       �  � 	 �  �  �  ��   *     �       ��     ��  	 �� �   	 �  �   	�  �  �    �    �      �,� �N+-�+�:� �� �`6,� g:,�6� v� y`d6�  � v`lld`� �d6	� (,�� dl`� �d6	� 
� �6	,� �6
,� �:� �� � � �� � � �� � � � vl� � ld`6�  � � � � v6� 
� v6� m,� �``6,+� � 2:�!Y�#$�&�*-�&,� �&�/�2W�8� � `,� �`6
� 
� m`6
,� :� �� (,�<� m� s`� � `,� �`,� �`d� ,�<� m� s`,� �`d6,� �:,�=�@:,� �� $+
	-,�D,� ٸGX� +
	-,�D� :X�  � �   � +   �  � 
 �  �  � # � ) � 9 � @ � ] � f � { � � � � � � � � � �	 � � �	$-16!G"J$T'Z)_+`/e0�1�3�4�6�7�9�;�   �  Z � r 	 x � r 	 � � r  � � r 	 -��  � ^� r  � P� r   ��     ���   ���  ���  ���  �� r  #���  )�� r  9�� r  �p� r 	 �j� r 
 �d�� Z �W� � Q� r � K  - � @ - �   n � ] 	  �  ` � n  � � I �� �    �  ` � n � .� 	� �)T� : ) )�   	�  �    �  �     ,� gN,� �:,�<-� m-� s`d6-� m66� Y� � � O� � � E� � � l� � ld� 66	,+	� � � ,� �``6,�K� �6,�<� ,�<lld� 6,�d6	,� �:
+
�+
� �:� �`6,� �:,�=�@:,� �� ',� +	
,�D,� ٸGX� ,� +	
,�D�NX�   �   n   > ? @ A !B $D =E ^F aG nH K �L �N �P �Q �S �T �V �W �Y �Z �[ �Z^_^b�   �  ^ ! r  a  r 	   �      ��    ��  ��  �   r  ! �� r  $ �� r  � �� r  � u� r 	 � o�� 
 � a��  � Q  -  � F - �   L � Z   �  n �  A"� @� d   �  n � ` � ) )  �   	�  �   BC �  �     �+� +� ̙ Q� �L+� �SL� V� �L+� �SL*� +� ̙ X� �K*� � (K� Z� �K*� � (K� (*� �� �S*� �� *�*+� �=>� *+�\><� � =� (+�`6 �� � 6� 
� (K� �SK*�   �   z   i j 
k l m o $q (r ,v 0w 6x =y Bz I| P} T~ X� l� n� t� v� z� �� �� �� �� �� �� �� ���   >  �  r  �      � -     �� -  t C	   v A
 r �    � @ � @� � �   	  �   
^_ �   A     *�`+�`d�d�   �      ��        -      - �   	     
bc �   H     +*�hhK*�kh`r*�nh`�l�   �      ��       � -  �   �    � � �       �*�q� *�t�*� ٙ *�x� � �� � ̚ �{�L*� ٙ [� A*� ϶ K.�    @            /   9~� �L+� �� �L� �� �L� 
�� �+� 
*�t� +��   �   >   � � � &� *� ,� 3� X� _� c� m� t� w� ~� ���       ���   , a� - �    	� - )	
@ ) �   �   ? � �        �*� ٙ *�x� � �� � ̚ ���*��� 
�� �L*� ٙ E� A*� ϶ K.�      7            &   0�� �L� �� �L� 
�� �L+� 
*��� +�   �   6   � � � %� ,� .� 5� \� c� f� m� p� w��       ���   . V� - �    � / )		
@ )�   �     �   %      ��������   �      �  �  �   %      ��������   �      �  �  �   %      ��������   �      �   �   %      ��������   �      � 
}w �   �      F��� ?�� ����� 0�� ����� 	�����S����� �� ���������   �   & 	  � � �    $ *	 9
 B�    * 
�w �   g      .��� '�� ����� Z� ����� 	� (�����   �           $ *#�    *   �   �     '��� � � ĸ�K*� *�̳ ŧ L�   " %� �       *  1  3  5 " 8 % 6 & :�      �  �    @�  � ��           B     L @