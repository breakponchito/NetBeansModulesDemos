����   4 �
      java/lang/Object <init> ()V	  	 
   +org/openide/explorer/view/AutoscrollSupport comp Ljava/awt/Component;	     insets Ljava/awt/Insets;	     scrollUnits
     getViewport ()Ljavax/swing/JViewport;
      javax/swing/JViewport getViewPosition ()Ljava/awt/Point;
     ! getExtentSize ()Ljava/awt/Dimension;	 # $ % & ' java/awt/Dimension height I	 # ) * ' width	 , - . / ' java/awt/Point y	 1 2 3 4 ' java/awt/Insets top	 , 6 7 ' x
 9 : ; < = java/lang/Math max (II)I
 , ?  @ (II)V
  B C D setViewPosition (Ljava/awt/Point;)V	 1 F G ' bottom
 I J K L M java/awt/Component 	getHeight ()I
 9 O P = min	 1 R S ' left	 1 U V ' right
 I X Y M getWidth	  [ \  autoscrollInsets
 1 ^  _ (IIII)V	  a b c viewport Ljavax/swing/JViewport;
 I e f g 	getParent ()Ljava/awt/Container; i java/awt/dnd/Autoscroll ((Ljava/awt/Component;Ljava/awt/Insets;)V Code LineNumberTable LocalVariableTable this -Lorg/openide/explorer/view/AutoscrollSupport; MethodParameters 
autoscroll 	cursorLoc Ljava/awt/Point; viewPos 
viewHeight 	viewWidth StackMapTable getAutoscrollInsets ()Ljava/awt/Insets; 	getInsets 	setInsets (Ljava/awt/Insets;)V getScrollUnits setScrollUnits curComp 
SourceFile AutoscrollSupport.java 0    h          b c                 \        j  k   b     *� *+� *,� *,� �    l       7  8 	 9  :  ; m         n o               p   	        q D  k  �    *� M,� �,� N,� � "6,� � (6+� +-� +d*� � 0� %,� ,Y-� 5-� +*� � 0d� 8� >� A� �-� +`+� +d*� � E� .,� ,Y-� 5-� +*� � E`*� � Hd� N� >� A� v+� 5-� 5d*� � Q� %,� ,Y-� 5*� � Qd� 8-� +� >� A� A-� 5`+� 5d*� � T� +,� ,Y-� 5*� � T`*� � Wd� N-� +� >� A�    l   N    @  B 	 C 
 F  G  H ! K 4 M V N l P � Q � P � S � U � V � X � Y X
 \ m   >    n o     r s   b c   � t s   � u '  ! � v '  w    � 
 � K ,� @4= p    r    x y  k   �     +*� Z� "*� � H<*� � W=*� 1Y� ]� Z*� Z�    l       _  `  a  b & e m        & '    * '    + n o   w    &  z y  k   /     *� �    l       k m        n o    { |  k   >     *+� �    l   
    q  r m        n o         p        } y  k   /     *� �    l       w m        n o    ~ |  k   >     *+� �    l   
    �  � m        n o         p            k   �     /*� `� &*� L+� � +� *� � dL���*+� � `*� `�    l       �  �  �  � " � * � m            / n o   w    �  I�   �    �