����   4 �
      java/lang/Object <init> ()V
  	 
   javax/swing/JComboBox getRenderer  ()Ljavax/swing/ListCellRenderer;	      ,org/openide/awt/ColorComboBoxRendererWrapper renderer Ljavax/swing/ListCellRenderer;  java/lang/IllegalStateException  'Custom renderer is already initialized.
     (Ljava/lang/String;)V
     setRenderer !(Ljavax/swing/ListCellRenderer;)V    ! " # javax/swing/ListCellRenderer getListCellRendererComponent >(Ljavax/swing/JList;Ljava/lang/Object;IZZ)Ljava/awt/Component; % javax/swing/JLabel	  ' ( ) isGTK Z
 + , - . / java/awt/Component getPreferredSize ()Ljava/awt/Dimension;	 1 2 3 4 5 java/awt/Dimension height I
 7 8 9 : ; java/lang/Math max (II)I = org/openide/awt/ColorValue	 < ? @ A CUSTOM_COLOR Lorg/openide/awt/ColorValue; C org/openide/awt/ColorIcon	 < E F G color Ljava/awt/Color;
 B I  J (Ljava/awt/Color;I)V	 < L M N text Ljava/lang/String;
 $ P Q  setText
 $ S T U setIcon (Ljavax/swing/Icon;)V W GTK
 Y Z [ \ ] javax/swing/UIManager getLookAndFeel ()Ljavax/swing/LookAndFeel;
 _ ` a b c javax/swing/LookAndFeel getID ()Ljava/lang/String;
 e f g h i java/lang/String equals (Ljava/lang/Object;)Z k javax/swing/plaf/UIResource (Ljavax/swing/JComboBox;)V Code LineNumberTable LocalVariableTable this .Lorg/openide/awt/ColorComboBoxRendererWrapper; comboBox Ljavax/swing/JComboBox; StackMapTable MethodParameters label Ljavax/swing/JLabel; icon Ljavax/swing/Icon; list Ljavax/swing/JList; value Ljava/lang/Object; index 
isSelected cellHasFocus res Ljava/awt/Component; � javax/swing/Icon � javax/swing/JList � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile !ColorComboBoxRendererWrapper.java       j        ( )       l  m   �     &*� *+� � *� � � � Y� �+*� �    n       %  &  '  (   * % + o       & p q     & r s  t    �        u    r    " #  m  �     �*� +,�  :� $� *� Y:�� $:� &� 
� � *� 0d� 66	:
,� <� 3,� <:,� >� 	:
� � BY� D	� H:
� K� O� :

� Rç :���  " � �   � � �    n   F    /  0  1 " 2 ) 3 D 4 G 5 N 6 T 7 [ 8 a : q < { = ~ > � @ � A � C o   p  T ' F A  ) _ v w  D D 4 5 	 G A x y 
   � p q     � z {    � | }    � ~ 5    �  )    � � )   � � �  t   > � 4 +  $M�  � <� �    �  +   ��  u    z   |   ~      �   �     �    �   m   '      V� X� ^� d� &�    n       #  �    �