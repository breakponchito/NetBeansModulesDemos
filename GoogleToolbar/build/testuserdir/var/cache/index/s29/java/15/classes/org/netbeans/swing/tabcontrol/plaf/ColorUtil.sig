����   4`
      java/lang/Object <init> ()V  java/awt/Color
  
   getRed ()I
     getGreen
     getBlue
     (III)V
      ,org/netbeans/swing/tabcontrol/plaf/ColorUtil getGradientPaint ?(FFLjava/awt/Color;FFLjava/awt/Color;Z)Ljava/awt/GradientPaint;	     	noGpCache Z ! java/awt/GradientPaint
   #  $ ((FFLjava/awt/Color;FFLjava/awt/Color;Z)V	  & ' ( BLUE Ljava/awt/Color;	  * + ( ORANGE	  - . / gpCache Ljava/util/Map; 1 java/util/HashMap
 0 3  4 (I)VA�  
 7 8 9 : ; java/lang/Double doubleToLongBits (D)J       %       +       /
  C D  hashCode F java/lang/Integer
 E 3 I J K L M java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; I O P  size I R S  clear I U V W put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 Y Z [ \ ] org/openide/awt/GraphicsUtils configureDefaultRenderingHints (Ljava/awt/Graphics;)V	  _ `  	antialias
 b c d e f java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit; h gnome.Xft/Antialias
 b j k l getDesktopProperty &(Ljava/lang/String;)Ljava/lang/Object;
 E n o p equals (Ljava/lang/Object;)Z
 r s t u v java/lang/Math abs (I)I
  x y v minMax
  { | } 
isBrighter #(Ljava/awt/Color;Ljava/awt/Color;)Z
 r  � � min (FF)F
 r � � � max
  � � � drawTexture (Ljava/awt/Graphics;IIIIII)V � TabbedPane.highlight
 � � � � � javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color; � TabbedPane.focus � controlDkShadow
 � � � � � java/awt/Graphics setColor (Ljava/awt/Color;)V
 � � � � drawLine (IIII)V
 � � � � hitClip (IIII)Z	  � � � focused Ljavax/swing/Icon;	  � � � focusedHeight I
  � � � createBitmap #(III)Ljava/awt/image/BufferedImage; � javax/swing/ImageIcon
 � �  � (Ljava/awt/Image;)V
  � � � 
blitBitmap ,(Ljava/awt/Graphics;Ljavax/swing/Icon;IIII)V	  � � � 	unfocused	  � � � unfocusedHeight
 � � � � � java/awt/GraphicsEnvironment getLocalGraphicsEnvironment  ()Ljava/awt/GraphicsEnvironment;
 � � � � getDefaultScreenDevice ()Ljava/awt/GraphicsDevice;
 � � � � � java/awt/GraphicsDevice getDefaultConfiguration "()Ljava/awt/GraphicsConfiguration;
 � � � � � java/awt/GraphicsConfiguration createCompatibleImage "(II)Ljava/awt/image/BufferedImage;
 � � � � � java/awt/image/BufferedImage getGraphics ()Ljava/awt/Graphics;
 � � � � getAlphaRaster !()Ljava/awt/image/WritableRaster;
 � � � � � :org/netbeans/swing/tabcontrol/plaf/MetalViewTabDisplayerUI getActBgColor ()Ljava/awt/Color;
 � � � � getInactBgColor
 � � � � fillRect
  � � � _drawTexture
 � � � � getClip ()Ljava/awt/Shape;
 � � � � setClip	  � � � scratch Ljava/awt/Rectangle;
 � � � � � java/awt/Rectangle 	setBounds � java/awt/geom/Area
 �   (Ljava/awt/Shape;)V
 � 	intersect (Ljava/awt/geom/Area;)V
 � �	
  javax/swing/Icon getIconWidth	 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V
  getXpHeaderColor (IZ)Ljava/awt/Color;	 � � x	 � � y	 � � width	 �  � height
 "#$ xpFillRectGradient =(Ljava/awt/Graphics2D;IIIILjava/awt/Color;Ljava/awt/Color;I)V
 &'( paintXpGradientBorder +(Ljava/awt/Graphics;IIIILjava/awt/Color;I)V
 *+, paintXpGradientFill <(Ljava/awt/Graphics2D;IIIILjava/awt/Color;Ljava/awt/Color;)V	 ./ � XP_DRAG_IMAGE
 123 initXpDragTextureImage ()Ljavax/swing/Icon;
 567 vistaFillRectGradient \(Ljava/awt/Graphics2D;IIIILjava/awt/Color;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/Color;)V
 9:, paintVistaGradientFill
 <6= L(Ljava/awt/Graphics2D;IIIILjava/awt/Color;Ljava/awt/Color;Ljava/awt/Color;)V
? �@ java/awt/Graphics2D
? �	 CD � VISTA_DRAG_IMAGE
 FG3 initVistaDragTextureImage	 IJ ( WHITE	 LM ( GRAY
 rO �P (II)I
 rR �P
 TUV adjustColor %(Ljava/awt/Color;III)Ljava/awt/Color;
 X Y >(FFLjava/awt/Color;FFLjava/awt/Color;)Ljava/awt/GradientPaint;
?[\] setPaint (Ljava/awt/Paint;)V_ tab_unsel_fill_brighta 
tab_borderc tab_highlight_header_fille tab_highlight_headerg "java/lang/IllegalArgumentExceptioni java/lang/StringBuilder
h l Unknown type of tab header: 
hnop append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
hros (I)Ljava/lang/StringBuilder;
huvw toString ()Ljava/lang/String;
fy z (Ljava/lang/String;)V
 � } controlLtHighlight
 �  getRGB
 ���  setRGB� TabbedPane.darkShadow� TabbedPane.light� TabbedPane.shadow� inactiveCaptionBorder
?��� getPaint ()Ljava/awt/Paint;	 �� ( gray
  � � '(FFLjava/awt/Color;FFLjava/awt/Color;)V� 	blueprint� gnome.Net/ThemeName
� n� java/lang/String	 �� / hintsMap� netbeans.winsys.nogpcache
����� java/lang/Boolean 
getBoolean (Ljava/lang/String;)Z
 � � nb.cellrenderer.antialiasing� GTK
 ���� getLookAndFeel ()Ljavax/swing/LookAndFeel;
����w javax/swing/LookAndFeel getID
 ��� gtkShouldAntialias ()Z� swing.aatext� Aqua 	Signature <Ljava/util/Map<Ljava/lang/Integer;Ljava/awt/GradientPaint;>; @Ljava/util/Map<Ljava/awt/RenderingHints$Key;Ljava/lang/Object;>; DEFAULT_IMAGE_WIDTH ConstantValue   � SEL_TYPE    
UNSEL_TYPE    
FOCUS_TYPE    XP_REGULAR_TAB     XP_HIGHLIGHTED_TAB XP_BORDER_RIGHT XP_BORDER_BOTTOM Code LineNumberTable LocalVariableTable this .Lorg/netbeans/swing/tabcontrol/plaf/ColorUtil; 	getMiddle 2(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Color; c1 c2 MethodParameters x1 F y1 upper x2 y2 lower repeats 
horizontal vertical bits J hash key Ljava/lang/Integer; result Ljava/awt/GradientPaint; StackMapTable setupAntialiasing g Ljava/awt/Graphics; shouldAntialias 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; o Ljava/lang/Object; currDif i a b ac [I bc dif� averageDifference #(Ljava/awt/Color;Ljava/awt/Color;)I adjustComponentsTowards toAdjust towards r ra ga ba adjustTowards 3(Ljava/awt/Color;ILjava/awt/Color;)Ljava/awt/Color; amount factor adjustBy #(Ljava/awt/Color;I)Ljava/awt/Color; $(Ljava/awt/Color;[I)Ljava/awt/Color; amounts (F)F f paintViewTabBump (Ljava/awt/Graphics;IIIII)V type paintDocTabBump darkC curY curX yDecline brightC img Ljava/awt/Image; c Ljava/awt/image/BufferedImage; area Ljava/awt/geom/Area; icon w h clip Ljava/awt/Shape; iwidth widthPainted' java/awt/Shape paintXpTabHeader (ILjava/awt/Graphics;III)V 
capBorderC capFillC L(Ljava/awt/Graphics2D;Ljava/awt/Rectangle;Ljava/awt/Color;Ljava/awt/Color;)V Ljava/awt/Graphics2D; rect 
borderType 	gradWidth 
gradHeight paintXpTabDragTexture -(Ljava/awt/Component;Ljava/awt/Graphics;III)V control Ljava/awt/Component; count ypos l(Ljava/awt/Graphics2D;Ljava/awt/Rectangle;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/Color;)V brightUpperC 
darkUpperC brightLowerC 
darkLowerC \(Ljava/awt/Graphics2D;Ljava/awt/Rectangle;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/Color;)V upperC paintVistaTabDragTexture rDiff gDiff bDiff red green blue color gradient fill colorKey Ljava/lang/String; hl dk corners dk2 up paintMacGradientFill oldPaint Ljava/awt/Paint;T java/awt/Paint grey isBlueprintTheme <clinit> 
SourceFile ColorUtil.java InnerClasses\ java/awt/RenderingHints$Key^ java/awt/RenderingHints Key 0      
 . / �   � 
� / �   �      
 � �   
 � �   
 � �   
 � �   
 � �   � � �   � � � �   � � � �   � � � �   � � � �   � � � �   � � � �   � � � �   � 
/ �   
D �    `    )    �   3     *� �   �   
    T  U�       ��   	�� �   i     )� Y*� 	+� 	`l*� +� `l*� +� `l� �   �       \  ]  ^ ( \�       )� (     )� ( �   	�  �   	 Y �   i     "#,%� �   �       e�   >    ��     ��    � (    ��    ��    � ( �   �  �  �  �  �  �   	   �  � 	   ,� � �  Y"#,%� "�,� � %M� � ):� ,� � 0Y� 2� ,"%�� � 6#�� � 6� � "5bD� #� � 
CF� � � D8"�� 6#�� 6 <ia%�� 6 >ia�� 6 @ia7		�	 {��,� B�� Bh�� � h6� EY� G:� ,� H �  :� 8�  Y"#,%� ":� ,� N (� � ,� Q � ,� T W�   �   ~    v  w  {  |    % � * � 0 � < � I � W � a � i � s � u � z � � � � � � � � � � � � � � � � � � � � � � � � � �) ��   �   ,��    ,��   ,� (   ,��   ,��   ,� (   ,�   I ��   W ��   � }�� 	 � W� �  � L��  � =�� �   M 		@� @� � G 
   �   
   � I E  �   �  �  �  �  �  �  �   � ] �   3     *� X�   �   
    �  ��       ��  �   �   �� �         � ^�   �       ��    �    �   �� �   D     � ag� iK� EY� G*� m�   �   
    � 	 ��     	 ��   	 | } �       k�
Y*� 	OY*� OY*� OM�
Y+� 	OY+� OY+� ON66� %,.-.d6� q� q� 6����� � �   �   & 	   �  � 2 � 5 � > � I � V � Z � ` ��   H  I � �  8 (� �    k� (     k� (   R��  2 9��  5 6� � �    � 8   ��  !� @�   	�  �   
 y v �   W     � � ��  ���   �       �  �  �  �  ��       � �  �    
�   �   	�� �   �     W�
Y*� 	OY*� OY*� OM�
Y+� 	OY+� OY+� ON66� -.,.d`6����l�   �       �  � 2 � 5 � > � L � R ��   >  8 � �    W� (     W� (   >��  2 %��  5 "� � �    � 8   ��  � �   	�  �   	�� �   �     U*� 	=*� >*� 6+� 	6+� 6+� 6dl� w`=dl� w`>dl� w`6� Y� �   �   * 
   �  � 
 �  �  �  � " � . � : � I ��   R    U  (     U (   P �  
 K� �   E� �   ? �   9 �  " 3 � �   	      	 �   �     O*� 	>*� 6*� 6,*� z� � 6h`� w>h`� w6h`� w6� Y� �   �   "    �  �  �  �   � * � 6 � B ��   H    O  (     O �    O (   J �   D� �   >� �    /	 � �   
 � @�           	
 �   �     +*� 	`� w=*� `� w>*� `� w6� Y� �   �       
  �   4    +  (     + �  
 ! �   � �   � � �   	      	
 �   �     1*� 	+.`� w=*� +.`� w>*� +.`� w6� Y� �   �      
   %�   4    1  (     1�   % �   � �  % � � �   	      
 y �   4     
"� ~� ��   �      �       
�  �      	 �   m     *� ��   �   
    �   >    ��      �     �     �      �     � �   �              	 �   m     *� ��   �   
   ' (�   >    ��      �     �     �      �     � �   �              
 � � �  �     �� �:� �� �:� 
�� �:p� ��p� ��6		`� E*	dp� � � �	d`p`6

`� *	
	
� ��
���	����   �   >   1 3 4 6 : $; '= .> 1@ <A PB fD rB x@ ~G�   z    (  ]  � 
 4 J � 	   ��      �     �     �      �     �     �   x (   a ( �   ? 
�  �  	� V ��  
 �    � � � � �   �                
 � � �  D     �*� �� �� >� �� � �h� � �:� �� �Y� �� �*� �� �� ;� �� � �h� � �:� �� �Y� �� �*� �� ��   �   :   T U W X #Z .^ 3` ?b Ne ^g ik nl zn �p�   \ 	 .   i     ���     � �    � �    � �    �  �    � �    � � �   	 �   �                
 � � �   �     U� �� Ķ � �h� �N-� �:-� �� '� 	� ާ � �:� � �h� � �h� �-�   �   .   | } � �  � %� +� 0� 7� D� S��   >  0  (    U  �     U �    U �   B�   <�� �    � + � �B �           
 � � �  A  	   t*� �:� *� � /� �� �� �Y� �:� �Y� �� ��*�+� 66� +*`� `6���*��   �   :   � � � � $� /� >� D� L� O� V� c� m� s��   f 
 /     t��     t �    t �    t �    t  �    t! �   n"#  L ($ �  O %% � �    � &+� 
�   �           !   	() �   �     p�:�:+� �+``d� �+``� �+`d`d`� �+� �+```d`� �+```d`� ��   �   * 
  � � � � #� /� C� I� \� o��   H    p �     p��    p �    p �    p �   i* (   b+ ( �     �         	#, �   d     *+�+�+�+�,-�!�   �   
   � ��   *    �-     . �     (     ( �   �  .       	#, �   y     *�!�   �   
   � ��   H    �-      �     �     �      �     (     ( �   �                	#$ �   �  
   >*�%~� 	d� 6~� 
d� 6	*	�)�   �      � � � � $� /� =��   f 
   >�-     > �    > �    > �    >  �    > (    > (    >/ �   !0 �  / 1 � 	�    @� A�   !�               /   	23 �   �     6�-� 	�0�-l666� �-*+� �����   �   & 	  � � � � � � ,� /� 5��   R   � �    645     6��    6 �    6 �    6  �   $6 �   !7 � �    � � �   4  �          	68 �   { 	    *+�+�+�+�,-�4�   �   
   �  �   >    �-     . �    9 (    : (    ; (    < ( �   �  .  9  :  ;  <   	67 �   �  	   '*l�8*l`ld�8�   �      
  &�   \ 	   '�-     ' �    ' �    ' �    '  �    '9 (    ': (    '; (    '< ( �   %	�           9  :  ;  <   	6= �   o     *+�+�+�+�,-�;�   �   
    �   4    �-     . �    > (    ; (    < ( �   �  .  >  ;  <   	6= �   �     )*�>*l�A*l`ld�8�   �      " # $ (&�   R    )�-     ) �    ) �    ) �    )  �    )> (    ); (    )< ( �   !�           >  ;  <   	?3 �       a�B� 	�E�Bl66+�H� �6� =�B*+� +````� �+````� �����±   �   2   - . 0 1 2 3 &4 35 E6 W7 Z3 `9�   R   A� �    a45     a��    a �    a �    a  �   O6 �   L7 � �    � � @�   4  �          	UV �   �     L*� �KK �*� 	`�N�Q6 �*� `�N�Q6 �*� `�N�Q6� Y� �   �      A B D E ,F >G�   H    L (     L@ �    LA �    LB �   2C �  ,  D �  > E � �    �     @  A  B   
'( �  q     �~� S����S:*� �*`d`d`d� ����S:*� �*`d`d`d� �~� U����S:*� �*`d`d`d� ����S:*� �*`d`d`d� ��   �   >   Q R S T /U <V BW WY ^Z k[ q\ �] �^ �_ �a�   \ 	  CF (  k EF (    ���     � �    � �    � �    �  �    � (    �/ � �    � W� X�   �             /   
+, �   �     $���`��W:*�Z*�A�   �      i k l #m�   R    $�-     $ �    $ �    $ �    $  �    $ (    $ (   G� �   �                
 �   �     _M�   ;                *� 	^� `M� 0� 	b� dM� �fY�hY�jk�m�q�t�x�,� ��   �   & 	  s t v *w -y 1z ;{ >} Z��        _ �     _H    ]IJ �    � �	B�	B��   	  H   23 �  .     �� �Y�{K|� �L*+�~��*+�~��*+�~���� �M*,�~���� �N*-�~��*-�~���� �:*�~��*�~���� �:*�~��� �Y*� ��   �   B   � � � � &� 0� 7� A� H� R� \� d� o� z� �� ���   >   ��    �K (  7 _L (  H NM (  d 2N (  � O (  	P, �   � 
    [*��:,� ��M-� ��N*�  Y+��+��,+��+�+�l`�-���Z*+�+�+�+��A*�Z�   �   & 	  � � � � � � @� T� Z��   4    [�-     [. �    [ (    [ (   UQR �   	 � S�   �  .       
:, �   �     $���`��W:*�Z*�A�   �      � � � #��   R    $�-     $ �    $ �    $ �    $  �    $ (    $ (   G� �   �                G3 �   �     b� �Y�{K� Y|||� �~<*��*��*� Y � � �� �~��*� Ykkk� �~��� �Y*� ��   �      � � � #� *� C� Y��      W�    FU �  V� �   B     �� a�� i���   �      � � ��       ��   W  �   �      j� ,������ � �� �� �� �� �Y��� ����� 0�������� 	��� ���� �������� � � ^�   �   :    &  '  (  ,  -  /  0 ! 2 + � 7 � C � L � U � i ��   	 � I@ X   YZ   
 []_	