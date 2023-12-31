����   4 �
      java/lang/Object <init> ()V	  	 
   .org/netbeans/swing/tabcontrol/plaf/StackLayout visibleComp Ljava/lang/ref/WeakReference;
     getVisibleComponent ()Ljava/awt/Component;
      java/awt/Container isAncestorOf (Ljava/awt/Component;)Z
     add *(Ljava/awt/Component;)Ljava/awt/Component;
     getTreeLock ()Ljava/lang/Object;
   ! " # $ java/awt/Component 
setVisible (Z)V & java/lang/ref/WeakReference
 % (  ) (Ljava/lang/Object;)V + javax/swing/JComponent
 * - .  
revalidate
  0 1  validate
 % 3 4  get
   
  7 8 9 	getInsets ()Ljava/awt/Insets;	 ; < = > ? java/awt/Insets left I	 ; A B ? top
  D E F getWidth ()I	 ; H I ? right
  K L F 	getHeight	 ; N O ? bottom
   Q R S 	setBounds (IIII)V
   U V W getMinimumSize ()Ljava/awt/Dimension;
  Y Z W getEmptySize
   \ ] W getPreferredSize _ java/awt/Dimension
 ^ a  b (II)V d java/awt/LayoutManager 	Signature 3Ljava/lang/ref/WeakReference<Ljava/awt/Component;>; Code LineNumberTable LocalVariableTable this 0Lorg/netbeans/swing/tabcontrol/plaf/StackLayout; showComponent +(Ljava/awt/Component;Ljava/awt/Container;)V c Ljava/awt/Component; parent Ljava/awt/Container; comp StackMapTable u java/lang/Throwable MethodParameters addLayoutComponent )(Ljava/lang/String;Ljava/awt/Component;)V name Ljava/lang/String; removeLayoutComponent (Ljava/awt/Component;)V layoutContainer (Ljava/awt/Container;)V insets Ljava/awt/Insets; minimumLayoutSize *(Ljava/awt/Container;)Ljava/awt/Dimension; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; preferredLayoutSize 
SourceFile StackLayout.java      c      e    f 	      g   8     
*� *� �    h   
    "  ) i       
 j k    l m  g       f*� N-+� ^,+� � +� 	,+� W,� Y:�-� -� *� %Y+� '� +� +� +� *� +� *� ,� ,� /ç :���  $ Z ]   ] b ]    h   >    2  3 
 4  5  7 $ 8 ( 9 - ; 9 < = = B @ I A S D W F e H i   *    f j k     f n o    f p q   a r o  s    �   �  E t�  v   	 n   p       g   M     *� � � *� � 2�  �    h       N i        j k   s    I    w x  g   �     &,� 5YN�,� ,*� � *� -ç 
:-���        "     h       V  W  Z  [  _ % ` i        & j k     & y z    & r o  s    �  D t�  v   	 y   r    { |  g   �     $+� 5YM�+*� � *� +� ,ç N,�-��        !     h       s  t  u  y  z # { i       $ j k     $ r o  s    �  I t�  v    r    } ~  g   �     Q*� M,� J+� YN�+� 6:,� :� @+� C� :� G`d+� J� @� M`d� P-ç 
:-���   F I   I M I    h   & 	   ~   	 �  �  � 2 � A � D � P � i   *   .  �    Q j k     Q p q   L  o  s    � I        t�  v    p    � �  g   h     *� M,� 
,� T� � X�    h   
    �  � i         j k      p q    n o  s    �   B ^ v    p   �     �    � �  g   h     *� M,� 
,� [� � X�    h   
    �  � i         j k      p q    n o  s    �   B ^ v    p   �     �   
 Z W  g   $      � ^Y22� `�    h       �  �    �