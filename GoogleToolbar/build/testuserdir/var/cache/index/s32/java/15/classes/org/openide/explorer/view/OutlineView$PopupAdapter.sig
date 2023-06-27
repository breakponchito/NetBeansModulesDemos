����   4 l	      2org/openide/explorer/view/OutlineView$PopupAdapter this$0 'Lorg/openide/explorer/view/OutlineView;
  	 
   ,org/openide/awt/MouseUtils$PopupMouseAdapter <init> ()V
      %org/openide/explorer/view/OutlineView 
access$300 c(Lorg/openide/explorer/view/OutlineView;)Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;
      java/awt/event/MouseEvent getPoint ()Ljava/awt/Point;
      8org/openide/explorer/view/OutlineView$OutlineViewOutline 
rowAtPoint (Ljava/awt/Point;)I
    ! " getSelectionModel "()Ljavax/swing/ListSelectionModel; $ % & ' ( javax/swing/ListSelectionModel isSelectedIndex (I)Z $ * +  clearSelection $ - . / setSelectionInterval (II)V
  1 2 3 getComponent ()Ljava/awt/Component;
 5 6 7 8 9 javax/swing/SwingUtilities convertPoint J(Ljava/awt/Component;Ljava/awt/Point;Ljava/awt/Component;)Ljava/awt/Point;
  ; < = isPopupAllowed ()Z
  ? @ A access$1200 Q(Lorg/openide/explorer/view/OutlineView;Ljava/awt/Point;)Ljavax/swing/JPopupMenu;	 C D E F G java/awt/Point x I	 C I J G y
  L M N 	showPopup (IILjavax/swing/JPopupMenu;)V
  P Q  consume *(Lorg/openide/explorer/view/OutlineView;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/explorer/view/OutlineView$PopupAdapter; MethodParameters (Ljava/awt/event/MouseEvent;)V pop Ljavax/swing/JPopupMenu; e Ljava/awt/event/MouseEvent; selRow p Ljava/awt/Point; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile OutlineView.java InnerClasses PopupAdapter i org/openide/awt/MouseUtils PopupMouseAdapter OutlineViewOutline                R  S   4     
*+� *� �    T      d U       
 V W   X      M Y  S  $     �*� � +� � =� 9*� � � � # � 5*� � � � ) *� � � � , � *� � � � ) +� 0+� *� � 4N*� � :� "*� -� >:*� -� B-� H� K+� O�    T   2   h j k 'l 6m Jp Yr is st }u �v �x U   4  }  Z [    � V W     � \ ]   � ^ G  i * _ `  a    � J� 8 C X    \   b     c    d    e f       g   h j	   k 