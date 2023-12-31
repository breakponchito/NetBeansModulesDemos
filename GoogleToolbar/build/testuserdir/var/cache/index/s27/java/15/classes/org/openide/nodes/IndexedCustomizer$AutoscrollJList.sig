����   4 r
      javax/swing/JList <init> ()V
  	 
   3org/openide/nodes/IndexedCustomizer$AutoscrollJList getViewport ()Ljavax/swing/JViewport;
      javax/swing/JViewport getViewPosition ()Ljava/awt/Point;
     getExtentSize ()Ljava/awt/Dimension;	      java/awt/Dimension height I	     !  java/awt/Point y	  # $ % 
realInsets Ljava/awt/Insets;	 ' ( ) *  java/awt/Insets top	  , -  x
 / 0 1 2 3 java/lang/Math max (II)I
  5  6 (II)V
  8 9 : setViewPosition (Ljava/awt/Point;)V	 ' < =  bottom
  ? @ A 	getHeight ()I
 / C D 3 min	  F G % scrollInsets
 ' I  J (IIII)V	  L M N viewport Ljavax/swing/JViewport;
 P Q R S T java/awt/Component 	getParent ()Ljava/awt/Container; V java/awt/dnd/Autoscroll serialVersionUID J ConstantValueLD�	��f Code LineNumberTable LocalVariableTable this 5Lorg/openide/nodes/IndexedCustomizer$AutoscrollJList; 
autoscroll 	cursorLoc Ljava/awt/Point; viewPos 
viewHeight StackMapTable MethodParameters getAutoscrollInsets ()Ljava/awt/Insets; comp Ljava/awt/Component; 
SourceFile IndexedCustomizer.java InnerClasses p #org/openide/nodes/IndexedCustomizer AutoscrollJList      U   W X  Y    Z   G %     $ %     M N         \   3     *� �    ]   
   z { ^        _ `    a :  \       �*� M,� N,� � 6+� -� d*� "� &� %,� Y-� +-� *� "� &d� .� 4� 7� >-� `+� d*� "� ;� (,� Y-� +-� *� "� ;`*� >d� B� 4� 7�    ]   * 
   � 
� � &� H� ^� t� �� �� ^   4    � _ `     � b c    M N  
 z d c   q e   f    � H  : g    b    h i  \   ~     1*� E� (*� ><*� 'Y� H� E*� 'Y� H� "*� E�    ]      � � � � ,� ^             1 _ `   f    ,      \   �     )*� K�  *L+� � +� +� OL���*+� � K*� K�    ]      � � 	� � � $� ^     	  j k    ) _ `   f    � 	 P�   l    m n   
   o q 
