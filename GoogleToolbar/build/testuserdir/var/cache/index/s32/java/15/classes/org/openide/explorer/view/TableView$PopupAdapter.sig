����   4 j	      0org/openide/explorer/view/TableView$PopupAdapter this$0 %Lorg/openide/explorer/view/TableView;
  	 
   ,org/openide/awt/MouseUtils$PopupMouseAdapter <init> ()V
      #org/openide/explorer/view/TableView 
access$200 I(Lorg/openide/explorer/view/TableView;)Lorg/netbeans/swing/etable/ETable;
      java/awt/event/MouseEvent getPoint ()Ljava/awt/Point;
       org/netbeans/swing/etable/ETable 
rowAtPoint (Ljava/awt/Point;)I
    ! " getSelectionModel "()Ljavax/swing/ListSelectionModel; $ % & ' ( javax/swing/ListSelectionModel isSelectedIndex (I)Z $ * +  clearSelection $ - . / setSelectionInterval (II)V
  1 2 3 getComponent ()Ljava/awt/Component;
 5 6 7 8 9 javax/swing/SwingUtilities convertPoint J(Ljava/awt/Component;Ljava/awt/Point;Ljava/awt/Component;)Ljava/awt/Point;
  ; < = isPopupAllowed ()Z
  ? @ A 
access$400 O(Lorg/openide/explorer/view/TableView;Ljava/awt/Point;)Ljavax/swing/JPopupMenu;	 C D E F G java/awt/Point x I	 C I J G y
  L M N 
access$500 B(Lorg/openide/explorer/view/TableView;IILjavax/swing/JPopupMenu;)V
  P Q  consume ((Lorg/openide/explorer/view/TableView;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/explorer/view/TableView$PopupAdapter; MethodParameters 	showPopup (Ljava/awt/event/MouseEvent;)V pop Ljavax/swing/JPopupMenu; e Ljava/awt/event/MouseEvent; selRow p Ljava/awt/Point; StackMapTable 
SourceFile TableView.java InnerClasses PopupAdapter h org/openide/awt/MouseUtils PopupMouseAdapter                R  S   4     
*+� *� �    T      � U       
 V W   X      Y Z  S  $     �*� � +� � =� 9*� � � � # � 5*� � � � ) *� � � � , � *� � � � ) +� 0+� *� � 4N*� � :� "*� -� >:*� -� B-� H� K+� O�    T   2   � � � '� 6� J� Y� i� s� }� �� �� U   4  }  [ \    � V W     � ] ^   � _ G  i * ` a  b    � J� 8 C X    ]    c    d e       f   g i	