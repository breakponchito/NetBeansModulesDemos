����   4E
      javax/swing/JComponent <init> ()V	  	 
   .org/openide/explorer/view/ViewTooltips$ImgComp d Ljava/awt/Dimension;	      java/awt/Color WHITE Ljava/awt/Color;	     bg	     comp Ljavax/swing/JScrollPane;	     node Ljava/lang/Object;
    ! " # java/awt/geom/AffineTransform getTranslateInstance #(DD)Ljava/awt/geom/AffineTransform;	  % & ' at Ljava/awt/geom/AffineTransform;	  ) * + isRight Z	  - . / img Ljava/awt/Image;	 1 2 3 4 5 java/awt/Rectangle x I 7 java/awt/Dimension	 1 9 : 5 width	 1 < = 5 height
 6 ?  @ (II)V	  B C + $assertionsDisabled E java/lang/AssertionError
 D 
  H  I ((Ljava/awt/Image;Ljava/awt/Rectangle;Z)V
  K L M setLastRendereredObject (Ljava/lang/Object;)Z
  O P Q setLastRenderedScrollPane (Ljavax/swing/JScrollPane;)Z
 S T U V W javax/swing/JTree getBackground ()Ljava/awt/Color;
 S Y Z [ isSelectionEmpty ()Z
 S ] ^ _ getSelectionModel '()Ljavax/swing/tree/TreeSelectionModel; a b c d e #javax/swing/tree/TreeSelectionModel isPathSelected (Ljavax/swing/tree/TreePath;)Z
 S g h e 
isExpanded
 S j k l getModel ()Ljavax/swing/tree/TreeModel; n o p q M javax/swing/tree/TreeModel isLeaf a s t u getLeadSelectionPath ()Ljavax/swing/tree/TreePath;
 w x y z M javax/swing/tree/TreePath equals
 S | } ~ getCellRenderer %()Ljavax/swing/tree/TreeCellRenderer; � � � � � !javax/swing/tree/TreeCellRenderer getTreeCellRendererComponent @(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
  � � � setComponent /(Ljava/awt/Component;Ljavax/swing/JComponent;)V
 � T � javax/swing/JList
 � Y
 � � ^ � "()Ljavax/swing/ListSelectionModel; � � � � � javax/swing/ListSelectionModel isSelectedIndex (I)Z
 � � } �  ()Ljavax/swing/ListCellRenderer; � � � � � javax/swing/ListCellRenderer getListCellRendererComponent >(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component;
 � � � � � java/awt/Component getPreferredSize ()Ljava/awt/Dimension;
 � � � � � org/openide/util/Utilities getUsableScreenBounds ()Ljava/awt/Rectangle;	 6 9
 � � � � � java/lang/Math min (II)I	 6 <
 � � � [ isMac
  � � � createVolatileImage "(II)Ljava/awt/image/VolatileImage; � java/awt/image/BufferedImage
 � �  � (III)V
 � � � � � java/awt/Image getGraphics ()Ljava/awt/Graphics;
 � � � � � java/awt/Graphics setColor (Ljava/awt/Color;)V
 � � � � fillRect (IIII)V � java/awt/Container
 � � � [ isValid
 � � � @ setSize
 � � �  doLayout
 � � � � � javax/swing/SwingUtilities paintComponent B(Ljava/awt/Graphics;Ljava/awt/Component;Ljava/awt/Container;IIII)V
 � � �  dispose
  � � � setImage (Ljava/awt/Image;)V
  �
 1 �  �
 � � � � getWidth !(Ljava/awt/image/ImageObserver;)I
 � � � � 	getHeight � java/awt/Graphics2D
 � � � � 	drawImage P(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z	  � �  GRAY
 � � � � drawLine � &org/openide/explorer/view/ViewTooltips
  [ java/lang/Class desiredAssertionStatus Code LineNumberTable LocalVariableTable this 0Lorg/openide/explorer/view/ViewTooltips$ImgComp; off Ljava/awt/Rectangle; right MethodParameters 
getPartial G(Ljava/awt/Rectangle;Z)Lorg/openide/explorer/view/ViewTooltips$ImgComp; bds StackMapTable 	configure ](Ljava/lang/Object;Ljavax/swing/JScrollPane;Ljavax/swing/JTree;Ljavax/swing/tree/TreePath;I)Z nd tv tree Ljavax/swing/JTree; path Ljavax/swing/tree/TreePath; row sameVn sameComp renderer Ljava/awt/Component; sel exp leaf lead B(Ljava/lang/Object;Ljavax/swing/JScrollPane;Ljavax/swing/JList;I)Z list Ljavax/swing/JList; result clear jc owner Ljavax/swing/JComponent; dd currentScreenBounds nue g Ljava/awt/Graphics; 	getBounds #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getSize paint (Ljava/awt/Graphics;)V g2d Ljava/awt/Graphics2D; firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V s Ljava/lang/String; a b 
invalidate validate 
revalidate <clinit> 
SourceFile ViewTooltips.java InnerClasses ImgComp 0       . /                        & '     * +   C +           o     )*� *� *� � *� *� *� � $*� (�      "   � � 	� � � � #� (�       )      I    �     T*� *� *� � *� *� *� � $*� (*+� ,*,� 0t�� � $*� 6Y,� 8,� ;� >� *� (�      2   � � 	� � � � #� (� -� ;� N� S�   *    T     T . /    T	
    T +     .  	         n     #� A� *� ,� � DY� F�� Y*� ,+� G�      
   � �        #     #
    # +        	        w     �*+� J6*,� N6:*-� R� -� X� � -� \� ` 6	-� f6

� -� i+� m � � 6-� \� r � v6-� {-+	
�  :� 
*-� ��      6   � � � � � $� 1� 9� R� b� y� ~� ��   �    �     �     �     �    �    � 5   � +   y +   v  1 V + 	 9 N + 
 R 5  +  b %! +     � $ �J� @� 4              "     	   Q*+� J6*,� N6:*-� �� -� �� � -� �� � 6-� �-+� � :� 
*-� ��      * 
  � � � � � $� 1� C� H� O�   \ 	   Q     Q     Q     Q#$    Q 5   J +   C +   @  1   +     � $ �J�        #      P Q    f     +*� � � =*+� �         � � �                  % +     @        L M    r     *� +� � =� *+� �         � � � �                 % +    	 @� 	       &     =     *� *� �         � � 
�           � �   �  	   �+� �N� �:-� �� 8h� �6-� �`� ;h� �6� �� ,� �� � �Y� �:� �:*� � �-� �`� �+� ϙ +� њ +-� �� �+� �+*-� �`� �� �*� �      B   � � 
� � ,� =� K� R� [� j� x� �� �� �� �� �    \ 	   �     �'    �()   �*   
 �+
   � : 5  , w = 5  K X, /  R Q-.    ' � =   �  6 1  K �� < � �   	'  (   / �    O     *� �L� 1Y+� �+� �� �      
               *  0    1    � �    G     *+� ,*� �         	 
 
             . /     .    � �    b     '*� � *� 6Y*� ,� �*� ,� � >� *� �           "       '      "0    1   2 �    /     *� �                  0    1   34    �     �+� �M,*� ,*� $� �W+� �� �+*� � �� �+*� � �d*� � �*� � �d� �*� (� +*� � �d� �� #+*� � �d*� � �d*� � �d� ��      & 	      (  F! M" `$ �&        �     �-.   |56    	 � ` �   -  0    1   78    I      �         )   *         9:    ;     <     9  ;  <  0    1   =     +      �         +         0    1   >     +      �         -         0    1   ?     +      �         /         0    1   @     4      �� �� � � A�         �    @ A   BC   
   �D 