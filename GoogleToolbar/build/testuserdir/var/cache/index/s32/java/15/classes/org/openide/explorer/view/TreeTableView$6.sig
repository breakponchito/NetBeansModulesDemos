����   4 D	      )org/openide/explorer/view/TreeTableView$6 this$0 )Lorg/openide/explorer/view/TreeTableView;
  	 
   /org/openide/explorer/view/TreeView$PopupAdapter <init> '(Lorg/openide/explorer/view/TreeView;)V	      'org/openide/explorer/view/TreeTableView tree Ljavax/swing/JTree;
      java/awt/event/MouseEvent getX ()I
     getY
      ! javax/swing/JTree getClosestRowForLocation (II)I
  # $ % isRowSelected (I)Z
  ' ( ) setSelectionRow (I)V ,(Lorg/openide/explorer/view/TreeTableView;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/explorer/view/TreeTableView$6; MethodParameters 	showPopup (Ljava/awt/event/MouseEvent;)V e Ljava/awt/event/MouseEvent; selRow I StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TreeTableView.java EnclosingMethod > ? setPopupAllowed (Z)V InnerClasses B "org/openide/explorer/view/TreeView PopupAdapter                *  +   ?     *+� *+� �    ,      g -        . /         0    �  1 2  +   �     -*� � +� +� � =*� � � "� *� � � &�    ,      j l !m ,o -        - . /     - 3 4    5 6  7    � , 0    3   8     9    :    ; <     = @             A C  