����   4 �	      /org/openide/awt/QuickSearch$SearchFieldListener ignoreRemove Z	   	  ignoreEvents	     this$0 Lorg/openide/awt/QuickSearch;
      java/awt/event/KeyAdapter <init> ()V
     searchForNode
      java/awt/event/KeyEvent 
getKeyCode ()I
     ! " org/openide/awt/QuickSearch 
access$700  (Lorg/openide/awt/QuickSearch;)V
  $ % & 
access$100 L(Lorg/openide/awt/QuickSearch;)Lorg/openide/awt/QuickSearch$SearchTextField;
 ( ) * +  +org/openide/awt/QuickSearch$SearchTextField requestOriginalFocusOwner -  
 ( / 0 1 setText (Ljava/lang/String;)V
  3 4 5 
access$400 E(Lorg/openide/awt/QuickSearch;)Lorg/openide/awt/QuickSearch$Callback; 7 8 9 :  $org/openide/awt/QuickSearch$Callback quickSearchCanceled
  < = > access$1002 !(Lorg/openide/awt/QuickSearch;Z)Z
  @ A  consume
  C D E isShiftDown ()Z
  G H I access$1100 !(Lorg/openide/awt/QuickSearch;Z)V
 ( K L M getText ()Ljava/lang/String; O 1org/openide/awt/QuickSearch$SearchFieldListener$1
 N Q  R 4(Lorg/openide/awt/QuickSearch$SearchFieldListener;)V
  T U V access$1200 O(Lorg/openide/awt/QuickSearch;Ljava/lang/String;Ljava/util/function/Consumer;)V 7 X Y  quickSearchConfirmed
  [ \ ] 
access$500 7(Lorg/openide/awt/QuickSearch;)Ljavax/swing/JComponent;
 _ ` a b E javax/swing/JComponent requestFocusInWindow
 d e f g E java/lang/String isEmpty
  i j E isAlwaysShown
  l m n access$1300 2(Lorg/openide/awt/QuickSearch;Ljava/lang/String;)V
 p q r s t java/awt/event/FocusEvent 	getSource ()Ljava/lang/Object;
 d v w  length
 ( y z { select (II)V
 p } ~ E isTemporary
 p � � � getOppositeComponent ()Ljava/awt/Component; � java/awt/Component
 � � � � removeFocusListener !(Ljava/awt/event/FocusListener;)V � javax/swing/JMenuItem � javax/swing/JPopupMenu
 � � � � addFocusListener
  � � � access$1400 3(Lorg/openide/awt/QuickSearch;)Ljavax/swing/JPanel; � "javax/swing/event/DocumentListener � java/awt/event/FocusListener Code LineNumberTable LocalVariableTable this 1Lorg/openide/awt/QuickSearch$SearchFieldListener; MethodParameters changedUpdate $(Ljavax/swing/event/DocumentEvent;)V e !Ljavax/swing/event/DocumentEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; insertUpdate removeUpdate 
keyPressed (Ljava/awt/event/KeyEvent;)V Ljava/awt/event/KeyEvent; keyCode I � java/lang/Throwable text Ljava/lang/String; focusGained (Ljava/awt/event/FocusEvent;)V n Ljava/awt/event/FocusEvent; 	focusLost oppositeComponent Ljava/awt/Component; 
access$902 5(Lorg/openide/awt/QuickSearch$SearchFieldListener;Z)Z x0 x1 access$1502 
SourceFile QuickSearch.java InnerClasses SearchFieldListener SearchTextField Callback � =org/openide/awt/QuickSearch$SearchFieldListener$ReplaceFilter ReplaceFilter      � �   	             
    "  �   8     
*+� 
*� �    �   
   � 	� �       
 � �   �      � �  �   R     *� � �*� �    �      � � � �        � �      � �  �     �    �   �     �    � �  �   R     *� � �*� �    �      � � � �        � �      � �  �     �    �   �     �    � �  �   Z     *� � 
*� � �*� �    �      � � � �        � �      � �  �      �    �   �     �    � �  �  �     �+� =� Q*� 
� *� 
� #� '*� *� 
� #,� .*� � N*� -�*� 
� 2� 6 *� 
� ;W+� ?� �&� r� +� B� *� 
� F+� ?� l(� 	r� *� 
� F+� ?� Q	� #*� 
*� 
� #� J� NY*� P� S+� ?� +
� %*� 
� *� 
� 2� W *� 
� Z� ^W+� ?�  ! - 5    �   r   � � � � � !� -� 2� 5� ;� =� I� R� Y� l� t� {� �� � � � � � � � �  �! �# �        � � �     � � �   � � �  �    	� 5     �%' �    �   �     �       �   �     =*� 
� #� JL+� c� %*� 
� h� *� 
� 2� 6 *� 
� ;W� *� 
+� k�    �      ' ( ) (* 4, <. �       = � �    2 � �  �   	 � 4 d  � �  �   |     )+� o*� 
� #� *� 
� #� J� u=*� 
� #� x�    �      2 4 5 (7 �        � �    ) � �     ) � �  �    ( �    �   �     �    � �  �       w+� |� *� 
� h� �+� M+� o*� 
� #� +� o� �*� �,� �� 
,� �� 	,*� ��,*� 
� #� �*� 
� �� *� 
� *� 
� 2� 6 *� 
� ;W�    �   >   ; < > ? %@ 0B >C CD DF OG PI ZJ aL mM vO �        w � �     w � �   ` � �  �     �  �% �    �   �     �   � �  �   ;     *Z� �    �      � �        � �      �   � �  �   ;     *Z� �    �      � �        � �      �    �    � �   *    �  (  �  7  �	 N       �  � 