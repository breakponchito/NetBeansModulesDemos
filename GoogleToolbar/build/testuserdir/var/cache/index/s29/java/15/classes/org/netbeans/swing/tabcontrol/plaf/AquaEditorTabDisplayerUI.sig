����   4%
      ?org/netbeans/swing/tabcontrol/plaf/BasicScrollingTabDisplayerUI <init> /(Lorg/netbeans/swing/tabcontrol/TabDisplayer;)V  <org/netbeans/swing/tabcontrol/plaf/AquaEditorTabCellRenderer
  
   ()V  ;org/netbeans/swing/tabcontrol/plaf/AquaEditorTabDisplayerUI  *org/netbeans/swing/tabcontrol/TabDisplayer
  	     txtFont Ljava/awt/Font;  windowTitleFont
      javax/swing/UIManager get &(Ljava/lang/Object;)Ljava/lang/Object;  java/awt/Font   Dialog
  "  # (Ljava/lang/String;II)V
  % & ' isBold ()Z
  ) * + getName ()Ljava/lang/String;
  - . / getSize ()I
  1 2 3 
createFont ()Ljava/awt/Font; 5 +org/netbeans/swing/tabcontrol/plaf/TabState
  7 8 9 getOffscreenGraphics /(Ljavax/swing/JComponent;)Ljava/awt/Graphics2D;	  ; < = 	displayer ,Lorg/netbeans/swing/tabcontrol/TabDisplayer;
  ? @ 3 getFont
 B C D E F java/awt/Graphics getFontMetrics '(Ljava/awt/Font;)Ljava/awt/FontMetrics;
  H I J getTabAreaInsets ()Ljava/awt/Insets;
 L M N O / java/awt/FontMetrics 	getHeight	 Q R S T U java/awt/Insets top I	 Q W X U bottom Z java/awt/Dimension
  \ ] / getWidth
 Y _  ` (II)V b  NbTabControl.editorTabBackground
  d e f getColor $(Ljava/lang/Object;)Ljava/awt/Color;
 B h i j setColor (Ljava/awt/Color;)V
  M
 B m n o fillRect (IIII)V
  q r / getTabsAreaWidth
  t u v getModel .()Lorg/netbeans/swing/tabcontrol/TabDataModel; x y z { / *org/netbeans/swing/tabcontrol/TabDataModel size
  } ~  scroll >()Lorg/netbeans/swing/tabcontrol/plaf/ScrollingTabLayoutModel;
 � � � � ' :org/netbeans/swing/tabcontrol/plaf/ScrollingTabLayoutModel isLastTabClipped
 � � � � getLastVisibleTab (I)I
 � � � � getX
 � � � � getW � NbTabControl.borderColor
  � � � drawLine (Ljava/awt/Graphics;IIII)V
 � � � � � java/lang/Math min (II)I
 � � � � max
 B � � o	  � � � buttonIconPaths Ljava/util/Map; � java/util/HashMap
 � �  � (I)V � java/lang/String � 3org/netbeans/swing/tabcontrol/plaf/TabControlButton � Borg/netbeans/swing/tabcontrol/resources/mac_scrollleft_enabled.png � Corg/netbeans/swing/tabcontrol/resources/mac_scrollleft_disabled.png � Corg/netbeans/swing/tabcontrol/resources/mac_scrollleft_rollover.png � Borg/netbeans/swing/tabcontrol/resources/mac_scrollleft_pressed.png
 � � � � � java/lang/Integer valueOf (I)Ljava/lang/Integer; � � � � � java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � Corg/netbeans/swing/tabcontrol/resources/mac_scrollright_enabled.png � Dorg/netbeans/swing/tabcontrol/resources/mac_scrollright_disabled.png � Dorg/netbeans/swing/tabcontrol/resources/mac_scrollright_rollover.png � Corg/netbeans/swing/tabcontrol/resources/mac_scrollright_pressed.png � =org/netbeans/swing/tabcontrol/resources/mac_popup_enabled.png � >org/netbeans/swing/tabcontrol/resources/mac_popup_disabled.png � >org/netbeans/swing/tabcontrol/resources/mac_popup_rollover.png � =org/netbeans/swing/tabcontrol/resources/mac_popup_pressed.png � @org/netbeans/swing/tabcontrol/resources/mac_maximize_enabled.png � Aorg/netbeans/swing/tabcontrol/resources/mac_maximize_disabled.png � Aorg/netbeans/swing/tabcontrol/resources/mac_maximize_rollover.png � @org/netbeans/swing/tabcontrol/resources/mac_maximize_pressed.png � ?org/netbeans/swing/tabcontrol/resources/mac_restore_enabled.png � @org/netbeans/swing/tabcontrol/resources/mac_restore_disabled.png � @org/netbeans/swing/tabcontrol/resources/mac_restore_rollover.png � ?org/netbeans/swing/tabcontrol/resources/mac_restore_pressed.png
  � �  	initIcons �  � [Ljava/lang/String;
 � � � � � :org/netbeans/swing/tabcontrol/plaf/TabControlButtonFactory getIcon &(Ljava/lang/String;)Ljavax/swing/Icon; 	Signature 7Ljava/util/Map<Ljava/lang/Integer;[Ljava/lang/String;>; Code LineNumberTable LocalVariableTable this =Lorg/netbeans/swing/tabcontrol/plaf/AquaEditorTabDisplayerUI; MethodParameters createDefaultRenderer 6()Lorg/netbeans/swing/tabcontrol/plaf/TabCellRenderer; createUI 8(Ljavax/swing/JComponent;)Ljavax/swing/plaf/ComponentUI; c Ljavax/swing/JComponent; isAntialiased #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable 
getTxtFont createRepaintPolicy getPreferredSize .(Ljavax/swing/JComponent;)Ljava/awt/Dimension; fm Ljava/awt/FontMetrics; ins Ljava/awt/Insets; 
prefHeight g Ljava/awt/Graphics; paintBackground (Ljava/awt/Graphics;)V paintAfterTabs idx rightLineStart rightLineEnd y minY maxY minX maxX x1 y1 x2 y2 	iconPaths getButtonIcon (II)Ljavax/swing/Icon; buttonId buttonState res Ljavax/swing/Icon; paths" javax/swing/Icon 
SourceFile AquaEditorTabDisplayerUI.java !      
 � �  �    �           �   >     *+� �    �   
    3  4 �        � �      < =  �    <    � �  �   2     � Y� 	�    �       7 �        � �   	 � �  �   6     � Y*� � �    �       ; �        � �   �    �    � '  �   ,     �    �       @ �        � �   �     �    2 3  �   �     V*� � M*� � � *� � *� Y� !� � '*� � $� *� Y*� � (*� � ,� !� *� �    �       G  I  J  K - L 7 N Q Q �       V � �   �    -# �     �    � 3  �   /     *� 0�    �       U �        � �     /  �   .     _�    �       Z �        � �   �     �     �   �     M=+� 6N-� +-*� :� >� A:*� G:� K� P`� V``=p� �� YY*� :� [� ^�    �   & 	   d  g  h  i  j  k 4 m : n = p �   >          M � �     M � �   J U   E	  �   
 � 4 B �    �   �     �   
  �   Z     +a� c� g+*� :� [*� :� k� l�    �       u 	 v  w �        � �     	  �      �     �     �       �*� p=*� :� [>*� :� k6*� :� s� w � 4*� |� �� **� |*� :� [� �6*� |� �*� |� �`=� *� :� s� w � =+�� c� g+dd� ��    �   .    |  }    � / � ? � S � e � h � q �  � �   >  ?  U    � � �     �	   { U   s U   j U  �   	 � V �      �     �    � �  �       W� %� �6� �6*d`� l� 2� #� �6� �6*d`� l� *� ��    �   .    �  �  �  � $ � - � 4 � ; � J � M � V � �   \ 	   U    U  4  U  ;  U    W	     W U    W U    W U    W U  �    '% �              
 �   �  �     �� �� ջ �Y� �� �� �K*�S*�S*�S*�S� �	� �*� � W� �K*�S*�S*�S*�S� �
� �*� � W� �K*�S*�S*�S*�S� �� �*� � W� �K*�S*�S*�S*�S� �� �*� � W� �K*�S*�S*�S*�S� �� �*� � W�    �   � !   �  �  �  �  � " � ' � , � ; � @ � E � J � O � T � c � h � m � r � w � | � � � � � � � � � � � � � � � � � � � � � � � � � � � �      � �   �    � �   �   �     1N� � �� �� � � �:� � �� 2� �N-�    �       �  �  �  � ' � / � �   4    1 � �     1 U    1 U   /     �  �    � /! � �   	     �     �   #   $