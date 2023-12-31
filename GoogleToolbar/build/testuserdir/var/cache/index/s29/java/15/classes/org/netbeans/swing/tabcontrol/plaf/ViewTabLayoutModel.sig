����   4 ~
      java/lang/Object <init> ()V	  	 
   5org/netbeans/swing/tabcontrol/plaf/ViewTabLayoutModel model ,Lorg/netbeans/swing/tabcontrol/TabDataModel;	     renderTarget Ljavax/swing/JComponent;
     
checkIndex (I)V
      javax/swing/JComponent 	getInsets ()Ljava/awt/Insets;
     	getHeight ()I	   ! " # $ java/awt/Insets bottom I	   & ' $ top
  ) * + computeX (I)I - . / 0  *org/netbeans/swing/tabcontrol/TabDataModel size
  2 3  getWidth	   5 6 $ right	   8 9 $ left
  ; < + getW
 > ? @ A B java/lang/Math min (II)I D "java/lang/IllegalArgumentException F java/lang/StringBuilder
 E  I Index out of valid scope 0..
 E K L M append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 E O L P (I)Ljava/lang/StringBuilder; R : 
 E T U V toString ()Ljava/lang/String;
 C X  Y (Ljava/lang/String;)V [ 1org/netbeans/swing/tabcontrol/plaf/TabLayoutModel G(Lorg/netbeans/swing/tabcontrol/TabDataModel;Ljavax/swing/JComponent;)V Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/swing/tabcontrol/plaf/ViewTabLayoutModel; MethodParameters getH index insets Ljava/awt/Insets; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; nextX x StackMapTable getX getY indexOfPoint diff i y contentWidth contentHeight dropIndexOfPoint tabWidth F result 
setPadding (Ljava/awt/Dimension;)V d Ljava/awt/Dimension; 
SourceFile ViewTabLayoutModel.java 0    Z            
   \  ]   Y     *� *+� *,� �    ^       +  , 	 -  . _         ` a               b   	        c +  ]   e     *� *� � M*� � ,� ,� %`d�    ^       2  3  4 _         ` a      d $    e f  b    d   g     h    < +  ]   �     @*� *� (=*� � , d� *`� (>� *� � :*� � 1� 4d>d�    ^       9  :  <  = % @ . A < D _   >  "  i $  .  e f    @ ` a     @ d $   5 j $  <  i $  k   
 � %�  b    d   g     h    l +  ]   C     *� *� (�    ^   
    I  J _        ` a      d $  b    d   g     h    m +  ]   H     *� *� � � %�    ^   
    O  P _        ` a      d $  b    d   g     h    n B  ]  Z  	   �*� � N*� � 1-� 7-� 4`d6*� � -� -� %`d6-� %� � -� 7� 	� �*� � , 66� &*� (d6� *� :� ������    ^   2    U  V  X . Z J \ L ^ W ` a a k b { c ~ ` � f _   \ 	 k  o $  Z * p $    � ` a     � j $    � q $   ~ e f   k r $  . X s $  W / 0 $  k   ( � J  �  � # 	     �  b   	 j   q   g     h    t B  ]  3  	   �*� � N*� � 1-� 7-� 4`d6*� � -� -� %`d6-� %� � -� 7� 	� �*� � , 6��n8-� 7d�l`<�n�6*� � , � =�    ^   * 
   k  l  n . p J r L u W v ` x m y u z _   \ 	   � ` a     � j $    � q $   | e f   i r $  . V s $  W - 0 $  ` $ u v  u  w $  k    � J   b   	 j   q   g     h    x y  ]   5      �    ^       � _        ` a      z {  b    z   g     h       ]   �     :*� � , =� � )� CY� EY� GH� Jd� NQ� J� N� S� W��    ^       � 
 �  � 9 � _        : ` a     : d $  
 0 0 $  k    � % b    d    * +  ]   }     -*� � M*� � 1,� 7,� 4`d>h*� � , l,� 7`�    ^       �  �  � _   *    - ` a     - d $   % e f    r $  b    d    |    }