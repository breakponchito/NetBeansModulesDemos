����   4 9	      %org/openide/explorer/view/TableView$1 this$0 %Lorg/openide/explorer/view/TableView;	   	 
 	val$popup Ljavax/swing/JPopupMenu;
      java/lang/Object <init> ()V
      javax/swing/JPopupMenu removePopupMenuListener ((Ljavax/swing/event/PopupMenuListener;)V
      #org/openide/explorer/view/TableView 
access$200 I(Lorg/openide/explorer/view/TableView;)Lorg/netbeans/swing/etable/ETable;
     !   org/netbeans/swing/etable/ETable requestFocus # #javax/swing/event/PopupMenuListener @(Lorg/openide/explorer/view/TableView;Ljavax/swing/JPopupMenu;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/explorer/view/TableView$1; MethodParameters 	Signature popupMenuWillBecomeVisible %(Ljavax/swing/event/PopupMenuEvent;)V e "Ljavax/swing/event/PopupMenuEvent; popupMenuWillBecomeInvisible popupMenuCanceled 
SourceFile TableView.java EnclosingMethod 6 7 	showPopup (IILjavax/swing/JPopupMenu;)V InnerClasses      "  	 
           $  %   C     *+� *,� *� �    &      - '        ( )         *   	 � 	 +      , -  %   5      �    &      0 '        ( )      . /  *    .    0 -  %   O     *� *� *� � � �    &      2 3 4 '        ( )      . /  *    .    1 -  %   5      �    &      7 '        ( )      . /  *    .    2    3 4     5 8   
        