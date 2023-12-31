����   4 �
      javax/swing/JPanel <init> ()V	  	 
   'org/openide/explorer/view/DropGlassPane line Ljava/awt/geom/Line2D;  java/lang/Integer
      java/lang/System identityHashCode (Ljava/lang/Object;)I
     (I)V	     map Ljava/util/HashMap;
      ! java/util/HashMap get &(Ljava/lang/Object;)Ljava/lang/Object;
  
  $ % & 	setOpaque (Z)V
  ( ) * put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	  , - . oldPane Ljava/awt/Component; 0 java/lang/IllegalStateException 2 Original pane already present
 / 4  5 (Ljava/lang/String;)V 7 source
 9 : ; < = org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V ? pane	  A B C originalSource Ljavax/swing/JComponent;	  E F G 
wasVisible Z I No original pane present
 K L M N O javax/swing/JComponent getRootPane ()Ljavax/swing/JRootPane;
 Q R S T U javax/swing/SwingUtilities getWindowAncestor '(Ljava/awt/Component;)Ljava/awt/Window; W java/lang/StringBuilder
 V  Z originalSource 
 V \ ] ^ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 V ` ] a -(Ljava/lang/Object;)Ljava/lang/StringBuilder; c  has no root pane: 
 V e f g toString ()Ljava/lang/String;
 i j k l m javax/swing/JRootPane setGlassPane (Ljava/awt/Component;)V
 o p q r & java/awt/Component 
setVisible
  p
  u v w setDropLine (Ljava/awt/geom/Line2D;)V
  y z  repaint
  | } ~ 	getBounds ()Ljava/awt/Rectangle;
 � � � � � java/awt/geom/Line2D getX1 ()D	 � � � � � java/awt/Rectangle x I
 � � � � � java/lang/Math max (DD)D
 � � � � getY1	 � � � � y
 � � � � getX2	 � � � � width
 � � � � min
 � � � � getY2	 � � � � height
 � � � � setLine (DDDD)V � Tree.dropLine
 � � � � � javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color;
 � � � � � java/awt/Graphics setColor (Ljava/awt/Color;)V
  � � � checkLineBounds .(Ljava/awt/geom/Line2D;)Ljava/awt/geom/Line2D; � Tree.selectionBackground
 � � � � drawLine (IIII)V
   	Signature QLjava/util/HashMap<Ljava/lang/Integer;Lorg/openide/explorer/view/DropGlassPane;>; MIN_X ConstantValue    MIN_Y    	MIN_WIDTH   
 
MIN_HEIGTH Code LineNumberTable LocalVariableTable this )Lorg/openide/explorer/view/DropGlassPane; 
getDefault C(Ljavax/swing/JComponent;)Lorg/openide/explorer/view/DropGlassPane; dgp comp id Ljava/lang/Integer; StackMapTable MethodParameters setOriginalPane 0(Ljavax/swing/JComponent;Ljava/awt/Component;Z)V visible isOriginalPaneStored ()Z putBackOriginal rp Ljavax/swing/JRootPane; aFlag #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; oldLine bounds Ljava/awt/Rectangle; startPointX D startPointY 	endPointX 	endPointY paint (Ljava/awt/Graphics;)V c Ljava/awt/Color; x1 x2 y1 g Ljava/awt/Graphics; � java/awt/Color <clinit> 
SourceFile DropGlassPane.java 0     	 
    �    �  � �  �    �  � �  �    �  � �  �    �  � �  �    � � - .   � B C   � F G         
     �   <     
*� *� �    �       8  6 	 9 �       
 � �   ) � �  �   �     7� Y*� � L� +� � � Y� "M,� #� +,� 'W� +� � �    �       @  B  C  D # E , H �        � �    7 � C    + � �  �    � ,  �    �    � �  �   �     )� +� � /Y1� 3�6*� 8>+� 8+� +*� @� D�    �   "    Q  R  T  U  V   W $ X ( Y �        ) 7 C     ) ? .    ) � G  �     �    7   ?   �    � �  �   /      � +� � �    �       _ �    
@  �   �   �     `� +� � /YH� 3�� @� JK*� 3� @� P� 9� /Y� VY� XY� [� @� _b� [*� _� d� 3�*� +� h� +� D� n� +�    �   * 
   e  f  h  i  j % k K m R n [ p _ q �      I � �   �   
 � : i  r &  �   X     *� s� *� t�    �       w  y 	 z  | �        � �      � G  �     �    �   �     �    v w  �   �     #*� M*+� ,� +� ,� +� *� x�    �       �  � 
 �  � " � �        # � �     #      �   �   
 �  �	 �        � �  �   � 	    \*� {M+� ,� �`�� �J+� �,� �`�� �9+� �,� �,� �`
d�� �9+� �,� �,� �`d�� �9	+)	� �+�    �       �  �  � $ � : � O � Z � �   H    \ � �     \     W � �   H � �  $ 8 � �  : " � �  O  � � 	 �        � �  �  X     �*� � ��� �M,� +,� �***� � �� *� � �>*� � ��6*� � ��6+�� �� �+`d� �+``d`� �+d`� �+`d``� �+d`� �+ddd`� ��    �   B    �  �  �  �  � " � + � 5 � ? � H � W � j � x � � � � � � � �   >   � � �  + � � �  5 y � �  ? o � �    � � �     � � �  �    �  �� � �    �   �     �    �   �   #      � Y� ³ �    �       .  �    �