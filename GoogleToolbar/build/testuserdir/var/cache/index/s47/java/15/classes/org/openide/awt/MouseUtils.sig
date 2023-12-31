����   4 g
      java/lang/Object <init> ()V
  	 
   javax/swing/SwingUtilities isRightMouseButton (Ljava/awt/event/MouseEvent;)Z
     isLeftMouseButton
      java/awt/event/MouseEvent getID ()I
     getClickCount
     
isConsumed ()Z
     !  org/openide/awt/MouseUtils isDoubleClickImpl
  # $  getX
  & '  getY
  ) * + getWhen ()J
  - .  getModifiers	  0 1 2 tempx I	  4 5 2 tempy	  7 8 9 temph J	  ; < 2 DOUBLE_CLICK_DELTA	  > ? @ tempe Ljava/lang/ref/WeakReference;
 B C D E F java/lang/ref/WeakReference get ()Ljava/lang/Object;	  H I 2 tempm
 B K  L (Ljava/lang/Object;)V 	Signature :Ljava/lang/ref/WeakReference<Ljava/awt/event/MouseEvent;>; Code LineNumberTable LocalVariableTable this Lorg/openide/awt/MouseUtils; e Ljava/awt/event/MouseEvent; MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; isDoubleClick StackMapTable x y h m <clinit> 
SourceFile MouseUtils.java InnerClasses e ,org/openide/awt/MouseUtils$PopupMouseAdapter PopupMouseAdapter !      
 < 2   
 1 2   
 5 2   
 8 9   
 I 2   
 ? @  M    N      O   /     *� �    P       ! Q        R S   	    O   /     *� �    P       3 Q        T U   V    T   W     X     Y   	    O   /     *� �    P       = Q        T U   V    T   W     X     Y   	 Z   O   {     2*� �� 
*� � �*� � �*� p� 
*� � � �    P       L  M  P  Q  T Q       2 T U   [   	 @ V    T   
 !   O  (     |*� "<*� %=*� (B*� ,6� /� E� 3� >!� 6e� :��� 1� =� +*� =� A� !� G� � /� 3	� 6� G� =�� /� 3!� 6� G� BY*� J� =�    P   J    Z  [ 
 \  ]  a : d H f L g P h T i X j \ l ^ o b p f q j r o s z u Q   4    | T U    w \ 2  
 r ] 2   m ^ 9   g _ 2  [    � ^     V    T    `   O   ?      ,� :� /� 3	� 6� G�    P       "  % 
 &  '  (  a    b c   
  d  f	