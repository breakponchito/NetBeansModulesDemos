����   4 T
      javax/swing/AbstractAction <init> ()V	  	 
   2org/openide/windows/TopComponent$CloneWindowAction am 'Lorg/openide/windows/DelegateActionMap;
      %org/openide/windows/DelegateActionMap getComponent ()Ljavax/swing/JComponent;  *org/openide/windows/TopComponent$Cloneable     cloneComponent $()Lorg/openide/windows/TopComponent;   org/openide/windows/TopComponent
       !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
  " # $ findMode >(Lorg/openide/windows/TopComponent;)Lorg/openide/windows/Mode; & ' ( ) * org/openide/windows/Mode getTopComponents %()[Lorg/openide/windows/TopComponent;
  , - . openAtTabPosition (I)V
  0 1  open
  3 4  requestActive *(Lorg/openide/windows/DelegateActionMap;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/windows/TopComponent$CloneWindowAction; MethodParameters actionPerformed (Ljava/awt/event/ActionEvent;)V i I tcs #[Lorg/openide/windows/TopComponent; m Lorg/openide/windows/Mode; cloned "Lorg/openide/windows/TopComponent; 	openIndex evt Ljava/awt/event/ActionEvent; self ,Lorg/openide/windows/TopComponent$Cloneable; StackMapTable M java/awt/event/ActionEvent A 
SourceFile TopComponent.java InnerClasses CloneWindowAction 	Cloneable                 5  6   F     
*� *+� �    7      � � 	� 8       
 9 :     
    ;        < =  6  k     �*� � � M,� s,�  N6,� � L� ,� � !:� :� % :6�� 2,� `6� 	������ 6� -� +� -� /-� 2�    7   R   � � � � �  � ,� 2� ;� F� O� U� X� ^� f� i� n� w� {� � 8   R  >   > ?  ; . @ A  , = B C   i D E   f F ?    � 9 :     � G H   u I J  K   ) � >   L   & N  � � 
�  ;    G    O    P Q       R 
   S	