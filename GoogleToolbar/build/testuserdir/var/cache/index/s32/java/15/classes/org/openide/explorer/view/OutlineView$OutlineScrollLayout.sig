����   4L  %org/openide/explorer/view/OutlineView
      'javax/swing/ScrollPaneLayout$UIResource <init> ()V 
 TREE_HORIZONTAL_SCROLLBAR
      java/lang/String equals (Ljava/lang/Object;)Z	      9org/openide/explorer/view/OutlineView$OutlineScrollLayout thsb Ljavax/swing/JScrollBar;
     addSingletonComponent >(Ljava/awt/Component;Ljava/awt/Component;)Ljava/awt/Component;  javax/swing/JScrollBar
      addLayoutComponent )(Ljava/lang/String;Ljava/awt/Component;)V
  " # $ preferredLayoutSize *(Ljava/awt/Container;)Ljava/awt/Dimension;
  & ' ( access$2800 *(Lorg/openide/explorer/view/OutlineView;)I * javax/swing/ScrollPaneConstants	 , - . / 0 java/awt/Dimension height I
  2 3 4 getPreferredSize ()Ljava/awt/Dimension;	  6 7 8 viewport Ljavax/swing/JViewport;
 : 2 ; javax/swing/JViewport
 : = > 4 getViewSize
 : @ A B getView ()Ljava/awt/Component; D javax/swing/Scrollable C F G H  getScrollableTracksViewportWidth ()Z	 , J K 0 width
  M N $ minimumLayoutSize
  P Q R access$2700 *(Lorg/openide/explorer/view/OutlineView;)Z
  T U V 
access$300 c(Lorg/openide/explorer/view/OutlineView;)Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;
 X Y Z [ \ 8org/openide/explorer/view/OutlineView$OutlineViewOutline getColumnModel &()Ljavax/swing/table/TableColumnModel; ^ _ ` a b "javax/swing/table/TableColumnModel getColumnCount ()I
 X d e f convertColumnIndexToView (I)I ^ h i j 	getColumn "(I)Ljavax/swing/table/TableColumn;
 l m n o b javax/swing/table/TableColumn getWidth
 X q r b getTreePreferredWidth
  t u H 	isVisible w javax/swing/JScrollPane	  y z  hsb
 | 2 } java/awt/Component
 ,   � (II)V
  � � � 	getBounds ()Ljava/awt/Rectangle;
 � � � � � java/awt/Container 	getInsets ()Ljava/awt/Insets;	 � J � java/awt/Rectangle	 � � � � 0 java/awt/Insets left	 � � � 0 right	  � � 8 rowHead
 : t
 � � � � � java/lang/Math min (II)I
  � � � getViewportBorder ()Ljavax/swing/border/Border; � � � � � javax/swing/border/Border getBorderInsets '(Ljava/awt/Component;)Ljava/awt/Insets;
  � � b getHorizontalScrollBarPolicy
 � � � 4 getSize
 : � � � toViewCoordinates *(Ljava/awt/Dimension;)Ljava/awt/Dimension;
  � � � createFakeHSB 2(Ljavax/swing/JScrollBar;)Ljavax/swing/JScrollBar;
  � � � access$2900 +(Lorg/openide/explorer/view/OutlineView;Z)V
  � � � layoutContainer (Ljava/awt/Container;)V
  � � � 
setVisible (Z)V
  �	 � -	 � � � 0 y
  � � � 	setBounds (Ljava/awt/Rectangle;)V	  � � 0 	hsbPolicy
  � � � access$2600 A(Lorg/openide/explorer/view/OutlineView;)Ljavax/swing/JScrollBar;
  � � � 	setValues (IIII)V
 : �
  � � � getColumnXPos >(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;I)I
 � �  �
  � � � 
access$500 _(Lorg/openide/explorer/view/OutlineView;)Lorg/openide/explorer/view/OutlineView$ScrollListener;
 � � � � � 4org/openide/explorer/view/OutlineView$ScrollListener 
access$600 9(Lorg/openide/explorer/view/OutlineView$ScrollListener;)V
  � � � access$3000 =(Lorg/openide/explorer/view/OutlineView;)Ljava/awt/Component;
 | t
  � � � access$3100 :(Lorg/openide/explorer/view/OutlineView;)Ljava/awt/Insets;
 � � � b 	getHeight	 � � � 0 bottom
 � m
 | � � � � ;org/openide/explorer/view/OutlineView$OutlineScrollLayout$1
 � �  � W(Lorg/openide/explorer/view/OutlineView$OutlineScrollLayout;ILjavax/swing/JScrollBar;)V
 X getComponentOrientation !()Ljava/awt/ComponentOrientation;
 H java/awt/ComponentOrientation isLeftToRight
 X m
 X _ Code LineNumberTable LocalVariableTable this ;Lorg/openide/explorer/view/OutlineView$OutlineScrollLayout; s Ljava/lang/String; c Ljava/awt/Component; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	canScroll Z 
extentSize Ljava/awt/Dimension; viewSize view parent Ljava/awt/Container; dim ov 'Lorg/openide/explorer/view/OutlineView; 
thsbPolicy sv Ljavax/swing/Scrollable; rowHeadWidth 	vpbInsets Ljava/awt/Insets; 	hsbNeeded viewTracksViewportWidth viewPrefSize availR Ljava/awt/Rectangle; insets viewportBorder Ljavax/swing/border/Border; fakeHsb r vr column extentWidth maxWidth 
hsbvisible hideHsb hsbOrig innerInsets prefSize searchPanel i cm $Ljavax/swing/table/TableColumnModel; x outline :Lorg/openide/explorer/view/OutlineView$OutlineViewOutline; 
SourceFile OutlineView.java InnerClassesG javax/swing/ScrollPaneLayout 
UIResource OutlineScrollLayout OutlineViewOutline ScrollListener                    3     *� �      
   
 
                 w     #+	� � ***� ,� � � � 	*+,� �         
	 	

 
 "
        #     #    #        	            # $   �  	   �*+� !M+� N-� %6*� � �� � � ,Y� +*� � 1� +`� +� |:::*� 5� *� 5� 9:*� 5� <:*� 5� ?:� L� G6� C� � C� E � � 6� #� I� I� ,Y� +*� � 1� +`� +,�      R   
 
 
 
 
 &
 <
 ?
 B
 E
 L
 U
  ^
! g
$ q
% t
& |
' �
) �
* �
/   \ 	 t A  ? v  B s  E p    �     �   �    �!"   �# 0    3 � < , � * , , |� %@� $   � ,                N $    :     *+� L�         
4                          � �       �+� M,� O�|,� S� W� ] �m,� S� c>,� S� W� g � k6,� S� p6*� � s6� ,� % � � 6*� x:�C*� 5� *� 5� ?� :
6
� C� 
� C:� E 6
� 
� {� � ,Y� ~:,� �:+� �:Y� �� �� �`d� �*� �� -*� �� �� #� �*� �� 9� I� �6Y� �d� �,� �:� "+� � :Y� �� �� �`d� �� �� 6	,� � � 	6	� L,� �� 	6	� =*� 5� *� 5� �� �� � ,Y� ~:� � I� I� � 6		� **� �� x� ,� �� 6	*+� �� d	� J*� x:

� �*� x
� �:Y� �l� �Y� �� �`� �*� x� �*� x� �� ,� �*,� �� �*� x� �� *� � �,� �� ԧ R*� 5� �:
� �Y*,� S� �
� �
� �`*� � 1� +� �:*� � �� *� � �,� ߸ � *+� �,� �N-� D-� � =,� �:-� {:-� �+� �� �d� +d+� �� �d� �d� +� ��     6 M  
9 
: 
; $
< 6
= ?
> H
? _
A e
C j
E ~
F �
G �
H �
I �
L �
M �
O �
P �
Q �
R �
S �
T �
S �
U
W	
X
Y
Z-
\5
]8
_A
`G
bP
cV
gl
hw
j�
m�
n�
p�
r�
s�
u�
v�
w�
x�
y�
z�
{�
|�
}�
~�
 
�
�
�
�
�
�%
�3
�<
�Z
�e
�n
�s
�{
��
��
��
��
��
��
��
��
��
��
�  .  � 	$%  � & 0  '( D ) 	S ) 	w   ~) 
 �&*  � �+  � �,-  � �.( 	 �/0 � ) 	� >1  
� +2- < F3- 
e 2-  $^4 0  6L5 0  ?C6 0  H:7  _#8  e9  � �) 	� 4:( � .;   �    �  �!" � G<    � � \   �   @�  @ |�   |H ,� S , � �� ) �
H ,�  ,@�    �   | , � � �  �  
  �    � � � U� N   �   � J |             � �    ?     � �Y*+� ��         
�             z      z   � �   T     �� +� �� +�	��+�
� +� �� +�	��+� WN6+� �� %6� -� g � k`6���� )-� ] d6� -� g � k`6������      J   
� 
� 
� 
� 
� 
� '
� ,
� .
� 3
� 6
� @
� I
� Y
� b
� r
� �
� �
�   H  C = 0  l = 0  3 X>?  6 U@ 0    �     �AB    �4 0     	�  ^� � 	�    	A  4   C   DE   *  FH 	  I 
 X J  � K  �      