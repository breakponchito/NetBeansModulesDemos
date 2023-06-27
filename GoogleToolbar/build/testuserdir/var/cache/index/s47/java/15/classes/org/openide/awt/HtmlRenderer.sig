����   4R
      java/lang/Object <init> ()V   org/openide/awt/HtmlRendererImpl
  
   (Z)V  "java/lang/IllegalArgumentException  java/lang/StringBuilder
    Unknown rendering mode: 
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
     (I)Ljava/lang/StringBuilder;
     toString ()Ljava/lang/String;
      (Ljava/lang/String;)V
 " # $ % & org/openide/awt/HtmlRenderer _renderPlainString M(Ljava/lang/String;Ljava/awt/Graphics;IIIILjava/awt/Font;Ljava/awt/Color;IZ)D ( controlFont
 * + , - . javax/swing/UIManager getFont #(Ljava/lang/Object;)Ljava/awt/Font; 0 customFontSize
 * 2 3 4 get &(Ljava/lang/Object;)Ljava/lang/Object; 6 java/lang/Integer
 5 8 9 : intValue ()I < java/awt/Font > Dialog
 ; @  A (Ljava/lang/String;II)V
 C D E F G java/awt/Graphics getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
 I J K L M org/openide/util/Utilities isMac ()Z
 O P Q R S java/awt/FontMetrics stringWidth (Ljava/lang/String;)I
 O U V W getStringBounds B(Ljava/lang/String;Ljava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;
 Y Z [ \ ] java/awt/geom/Rectangle2D getWidth ()D
 _ ` a b c java/lang/Math ceil (D)D
 C e f g setColor (Ljava/awt/Color;)V
 C i j k setFont (Ljava/awt/Font;)V
 C m n A 
drawString
 p q r s t java/lang/String toCharArray ()[C
 p v  w ([CII)V
 O y V z 4([CIILjava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;
 C | } ~ 	drawChars 	([CIIII)V
 C � � � getClip ()Ljava/awt/Shape; � java/awt/geom/Area
 � �  � (Ljava/awt/Shape;)V � java/awt/Rectangle
 � �  � (IIII)V
 � � � � 	intersect (Ljava/awt/geom/Area;)V
 C � � � setClip � … � <html
 p � � � 
startsWith (Ljava/lang/String;)Z � <HTML
 " � � � _renderHTML ^(Ljava/lang/String;ILjava/awt/Graphics;IIIILjava/awt/Font;Ljava/awt/Color;IZLjava/awt/Color;)D
 " � � & renderPlainString
 " � � � _(Ljava/lang/String;ILjava/awt/Graphics;IIIILjava/awt/Font;Ljava/awt/Color;IZLjava/awt/Color;Z)D
 � � � � M java/awt/EventQueue isDispatchThread	 " � � � 
colorStack Ljava/util/LinkedList; � java/util/LinkedList
 � 
 � � � � � org/openide/awt/GraphicsUtils configureDefaultRenderingHints (Ljava/awt/Graphics;)V
 C � F � ()Ljava/awt/FontMetrics;
 O � � � 	charWidth (C)I
 � � �  clear
 p � � : length � (java/lang/ArrayIndexOutOfBoundsException � "HTML rendering failed at position  �  in String " � 1".  Please report this at http://www.netbeans.org
 � 	 " � � � STRICT_HTML Z
 � � � �  java/lang/Class getName
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � Matching '>' not found
 " � � � throwBadHTML (Ljava/lang/String;I[C)V
 � � � M isEmpty
 � � � � pop ()Ljava/lang/Object; � java/awt/Color � %Closing bold tag w/o opening bold tag
 " � � � 
deriveFont !(Ljava/awt/Font;I)Ljava/awt/Font; � *Closing italics tag w/oopening italics tag Malformed or unsupported HTML nb.html.link.foreground
 * getColor $(Ljava/lang/Object;)Ljava/awt/Color;	 �	
 BLUE Ljava/awt/Color;
 C ()Ljava/awt/Color;
 � push (Ljava/lang/Object;)V
 org/openide/awt/HtmlLabelUI ensureContrastingColor 2(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Color;
 O : 	getHeight
 " 	findColor ([CII)Ljava/awt/Color;
!"#$% java/lang/Character isWhitespace (C)Z
 "'() substEntity ([CI)I
 Y+, ] getX
 Y./ ] getY
 Y1 ]
 Y345 setRect (DDDD)V7 java/lang/Double�      ��      
 O=> : getMaxAdvance@      @      
 _DEF round (D)J
 _HEI (F)I
 OKLM getLineMetrics 4([CIILjava/awt/Graphics;)Ljava/awt/font/LineMetrics;
OPQRS java/awt/font/LineMetrics getStrikethroughOffset ()F
 CU -V ()Ljava/awt/Font;
 ;XYZ getBaselineFor (C)B
 C\] � drawLine
O_`S getUnderlineOffsetb 3Could not find color identifier in font declaration
 _def min (II)Ih 1Could not resolve logical font declared in HTML: j textText	 �lm BLACK
 5opq parseInt (Ljava/lang/String;I)I
 �s t (I)Vv java/lang/NumberFormatExceptionx  Illegal hexadecimal color text: z  in HTML string| Unresolvable html color: ~  in HTML string 
  
 ; �
 ;�� : getSize
 ;� �� (I)Ljava/awt/Font;
 "��) substNumericEntity	 "��� entities [Ljava/lang/Object;� [C	 "��� entitySubstitutions
 5�p S� Unparsable numeric entity: 
����� java/util/Arrays fill ([CC)V� 
  
 p� � ([C)V� 
 Full HTML string:	 "��� LOG Ljava/util/logging/Logger;
 ���� 
isLoggable (Ljava/util/logging/Level;)Z	 "��� 
badStrings Ljava/util/Set;� java/util/HashSet
� ����� java/util/Set contains (Ljava/lang/Object;)Z� java/util/StringTokenizer� 

�� � ((Ljava/lang/String;Ljava/lang/String;Z)V
��� M hasMoreTokens
���  	nextToken
 ���   warning
 p��  intern���� add� netbeans.lwhtml.strict
���� � java/lang/Boolean 
getBoolean 	Signature (Ljava/util/LinkedList<Ljava/awt/Color;>; 
STYLE_CLIP I ConstantValue     STYLE_TRUNCATE    STYLE_WORDWRAP    #Ljava/util/Set<Ljava/lang/String;>; Code LineNumberTable LocalVariableTable this Lorg/openide/awt/HtmlRenderer; createRenderer )()Lorg/openide/awt/HtmlRenderer$Renderer; createLabel ()Ljavax/swing/JLabel; s Ljava/lang/String; g Ljava/awt/Graphics; x y w h f Ljava/awt/Font; defaultColor style paint StackMapTable MethodParameters fs cfs Ljava/lang/Object; wid newWidth area Ljava/awt/geom/Area; shape Ljava/awt/Shape; chars chWidth D estCharsToPaint 
foreground fm Ljava/awt/FontMetrics;	 java/awt/Shape renderString 
renderHTML pos 
background aib *Ljava/lang/ArrayIndexOutOfBoundsException; e linkc 
lineHeight c tagEnd newPos inEntity i charsToPaint startPeriodsPos boundsChanged lastChar 	pixelsOff estCharsOver stPos lm Ljava/awt/font/LineMetrics; 	lineWidth isAmp nextLtIsEntity nextTag r Ljava/awt/geom/Rectangle2D; goToNextRow 
brutalWrap forcedForeground _colorStack origX done inTag inClosingTag strikethrough 	underline link bold italic 	truncated widthPainted heightPainted lastWasWhitespace 
lastHeight dotWidth dotsPainted LocalVariableTypeTable out end rgb nfe !Ljava/lang/NumberFormatException; ch colorPos useUIManager result j match tk Ljava/util/StringTokenizer; msg chh <clinit> 
SourceFile HtmlRenderer.java InnerClassesP %org/openide/awt/HtmlRenderer$Renderer Renderer 1 "    	 
 � � �   � �� �   � �� �   � �� �   �  � �   
�� �   � 
��   ��   ��       �   3     *� �   �   
    �  �       ��   �� �   !      	� Y� 	�   �       �� �   !      	� Y� 	�   �      ! 	 � & �   � 
 
   ;� 	� � Y� Y� � � � � �*+	� !�   �      2 3 '6�   f 
   ;��     ;��    ;��    ;��    ;��    ;��    ;��    ;�    ;��    ;� � 	�    �   )
�  �  �  �  �  �  �  �  �  �   
 % & �  � 	   �� :'� ):� .6
/� 1:� 5� � 5� 76
� ;Y=
� ?:+� B:
� H� 
*� N6� 
*+� T� X� ^�6	�1+� d+� h� � +*� l�*� o:�� ��l�9�o�6�� �6� R�� d &U� H� 
� pY� u� N6� 
+� x� X�6� � 	������ �6� �	� w� +� {� c+� :� E*� 0� �Y� �:� �Y� �Y� �� �� �+� �� +� �Y� �� �+�� l� 	+� ���   �   � 5  < = ? @ A C $D .G <K DN JP UR eU jV pW vY �Z �\ �^ �_ �b �c �d �e �g �h �i �k �m �o �qrstvwyz}$~*8�>�C�G�R�k�q�t����������   �   '�� 
   ��  R ��  � ��  � �� R �� > Z�   � ��  ��  � �  � ��   ���    ���   ���   ���   ���   ���   ���   �   ���   �� � 	 DX 
 e7�� �   V � . � �  O� 	� �� � 	� � � ;�   p C ; � O  �   )
�  �  �  �  �  �  �    �  �   	
 & �    
   x�                    � � Y� Y� � � � � �*�� �� *�� �� *+	� ��*+	� ��   �      � � � ;� M� d��   f 
   x��     x��    x��    x��    x��    x��    x��    x�    x��    x� � 	�    �   )
�  �  �  �  �  �  �  �  �  �   	 & �   �  
   =� 	� � Y� Y� � � � � �*+	� ��   �      � � '��   f 
   =��     =��    =��    =��    =��    =��    =��    =�    =��    =� � 	�    �   )
�  �  �  �  �  �  �  �  �  �    � � �   �     *,	
� ��   �      �   z    ��     �    ��    ��    ��    ��    ��    ��    �    �� 	   � � 
    �   1�    �  �  �  �  �  �  �  �  �      � � �  S  3  q� :'� ):� .6/� 1:� 5� � 5� 76� ;Y=� ?:� �� 	� �� 
� �Y� �:,� d,� h,� �*� o:666666666699699 6"	� ,� �.� ��9 � ��
�*� Ġ *� "
� "� ,� d,� h,�� l�4<� � �6� ^:#� �Y� Y� ɶ � ˶ *� Ͷ � � �:$� Й $�"� Ը ٲ �$� �*,	
� ��� `�� `4/� � 6� &,� d,� h
� ,�� l6"6����6##�d� � 6� $#4>� #�d� � 6�#���� �� �	x�,�4�       A   u   �        l  �      l                    �    �                         �        l  �      l                    �    �� � � ,� d� ,� �� �� d6����`4r��`4R� �t� !`4o� `4O� �� �� ,� �� h� ,� �� h6�/� ,� �� h� ,� �� h� �� �6� `4�    G      >   D   T   "   t   "� ,� �� h� ,� �� h6� 6��6��� � � ,� d��,� �� �� d�� � �y4�  i   A   u   �    i  i  �  �  i  U  �  i  i  i  i  i  i  )  i  i  �  i  �  i  i  i  i  i  i  i  i  i  i  i   �    i  i  �  �  i  U  �  i  i  i  i  i  i  )  i  i  �  i  �� -�:$$� �:$,��$�:$,$� d6�_`4�   g      >   H   R   !   r   !	� C>,� ��6$$`6$�c99� "6� ,� �� h� ,� �� h� �6� ,� �� h� �,� �� h� �`4�     H      >   #   T   )   t   )6� "6� ,� �� h� ,� �� h� |6� v� q#�:$,��$�:$,$� d� L	� F>,� ��6$$$l``6$`�99�  � �  � �  � �#� � `<6��� 4*� �d� 4� � 	�����d� 	� � �6#6$�d6%4&� c�d� � 6&&� K`�&6''� � 6&&� )'<4&� � 6#4<� � 6$� 	6$6#� 6$6&&�� @&4<� $� &4&� #� &�d� &d6%� 6#6$�&���,� �:&&%`,� x:'� H� -''�*'�-&� pY%d`� u� N�'�0�2'�09%`d6(6)6*� 
 9+� ,'� X%`d�o9++8�� +:�� &�<�9+	� 	� '� Xc��� 	��'� Xc����+?���'� XAcc�g9--+o9/	� ~�g+o� ^�C��G611`d622�� 
�d622d6((� 6(&(`,� x:'� H� )''�*'�-&� pY(� u� N�'�0�26�.6)%�/g�61� � 6*1622� %�1�24� � 1d`6(6*� 	�2����1� �(�/�� �*� �>�'�0c�6'�0c962� ,4� � "%� �62�d� � 6���%� 62� B&%`,� x:'� H� -''�*'�-&� pY%d`� u� N�'�0�26)9d(`4<� �(�� &*� !�g+o�6((`%� 	%d6(6)�5
� ,(� {� � � �&(d,�J:-�'� Xc�6.
� d� ,-�N�G,�T4�W``6/,/`./`�[� � ,-�^�G,�T4�W``6/,/`./`�[)� [>�'�0c�6'�0c99(`<�� 4� � 4<� 	����6�� � �6� &�'� Xc�>'� Xc9%4� 6%`<%�� � �6��O	� �c�  � � � � �  �$        $ . < Q W  ]! a# g$ j% m& p' s( v) y* |+ , �- �. �/ �0 �1 �3 �4 �7 �8 �S �W �X �Y �Z �[ �\ �^ �c �s �d �g$l*m-o>qSuswxy~z�|�}�~���������������������������������������� �;�C�H�U�_�b�e�j�w��������������������������������� ��  )/25\!b"e$n%u&}'�(�-�/�0�2�8�>�@�A�C�F�K�M�O�S�U�VX^bdh#i-j6l?nEoHvNwQyZzf{n|q}t�y�|�����������������������������������"�%�5�H�K�N�Q�T�_���������������������������������#�+�:�O�Z cu|������������ �"	 $		(	*	+	!-	,.	4/	71	:*	@5	T6	W7	c8	m:	p<	�=	�>	�?	�B	�C	�F	�H	�I	�K	�O	�P	�R	�S
U

W
Y
Z
%]
(c
-d
2e
>h
Mi
\j
gl
lm
qn
zo
�t
�w
�x
�y
�~
��
��
��
��
��
��
�����*�4�>�H�M�_�b�h�k��  � @  '��    �� $ / $ � Y # " $n � $-  $Z � $��� # >� ' M � &W E� &�  +� c� 1� [� 2	 (� 2	p � � 2		� 1u� -|� /
� � /
� � /
\ q  -
g f!� .��" � #�~# � $�w$� %�� &��%& '�o �� (�l' � )�i( � *N +  q��    q�   q��   q��   q��   q��   q��   q��   q�   q�� 	  q� � 
  q   q) �  Q * �  g
�  j+�  m, �  p- �  s
�. �  v
�/ �  y
�0 �  |
�1 �  
�2 �  �
�3 �  �
�4 �  �
�5  �
�6  �
�7 �  �
�8  �
�9   �
�: � ";     Q *� �  � �� . � F �� Y  p C ; � � ��  0N�    p C ; � � �� E �� 4 � �� %@#� @@� �"		'	� ��  �� &&	(	)+J�     p C ; � � �� � A � "@� @@@� � � � D O Y�  �  � S , p C ; � � �� O Y  :� � @� !� � /'@� C� � � LO	� (%O�   ( p C ; � � �� O Y "M�   ( p C ; � � �� O Y �   p C ; � � ��  �   5�    �  �  �  �  �  �  �  �  �    )   
 �      q>66� W*4c� H`*�� � A`>*4'� *4"� �*4#� 	�� *4!� 6�� 	����� a:*� �� D*�d66*�� "*4"� *4'� 
6� 	���ݻ pY*d� u:� � pY**�d�c� u::� >�:� k� Y� g� � � *� �i�:� D�k:� <�n6� �Y�r:� %:� Y� w� � y� � *� �� #� Y� {� � }� � *� �� $'u �   � ,  � � � � � !� $� *� :� =� E� K� S� V� \� b� g� l� s� x� ~� �� �� �� �� �� �� �� �� �� �� �� �� ������$�'�)�I�N�n��   �   Z�  l <�  � &�  ~ 8=�  � ��  >� )  ?@   qA�    q�   q�  oB�  lC �  � ���  � �D �   1 � � �  � � �  p� B �Vu!$�   A     � � �   p     !� H� � ;Y*�*��� ?� *��M,�   �   
    
�        !��     !��   D� �    D ;�   	�  �   () �  p     �*�d� �*4#� *`���>���� m��2��:=�*�d� -6�� 4*`4� � ~=���ߧ =� !*�`4;� *�`��4U�`������   �   J     
  ! $" .# 0% :& E' [& d* f- j/ v2 �4 �! �9�   >  = $E�  . Z�  0 ^F �   r�    �A�     �� �   : 
�  �   ��  Z�   �� � � !� �   	A     �) �   �     R=*�� K*4;� =*� pY*d� u���U�N� Y� �� � pY*d� u� � *� �����   $ %u �   "   A B D #F %G &H JA PO�   *  & $?@   N�    RA�     R� �    � bu$� �   	A     
 � � �  v     ��N- ��-d^U� Y� *� �� � pY,��� �� � pY-��� �� � pY,��� � :� К `��� ߶�� ^��� ��Y������*�� � B��Y���:��� ���¶ŧ����*�ȹ� W� � Y� ��   �   B   U V 
W Y T\ Z] f^ l_ vb �f �h �i �l �m �p �r�   >  � #GH    �I�     ��    ��   �J�  T n<� �    � v� p� �� 	�   I       K  �  v     J� �Y� �� �θг ���"� Ը ٳ�� Y�YgUYtUSY�YlUYtUSY�YqUYuUYoUYtUSY�YaUYmUYpUSY�YlUYsUYqUYuUYoUSY�YrUYsUYqUYuUYoUSY�YlUYdUYqUYuUYoUSY�YrUYdUYqUYuUYoUSY�YnUYdUYaUYsUYhUSY	�YmUYdUYaUYsUYhUSY
�YnUYeUSY�YlUYeUSY�YgUYeUSY�YcUYoUYpUYyUSY�YrUYeUYgUSY�YtUYrUYaUYdUYeUSY�YnUYbUYsUYpUS���Y>UY<UY"UY&UY UY UY UY UY UY	 UY
"`UY"dUY"eUY �UY �UY!"UY U���   �       � 
 �  �  � " �� � L   MN   
 O "Q	