����   4 �	      'org/openide/explorer/view/MenuView$Menu filled Z	  	 
   "org/openide/explorer/view/MenuView DEFAULT_LISTENER  Lorg/openide/nodes/NodeAcceptor;
     <init> ;(Lorg/openide/nodes/Node;Lorg/openide/nodes/NodeAcceptor;)V
     <(Lorg/openide/nodes/Node;Lorg/openide/nodes/NodeAcceptor;Z)V  0org/openide/explorer/view/MenuView$AcceptorProxy
     0(Lorg/openide/explorer/view/MenuView$Acceptor;)V
      org/openide/awt/JMenuPlus ()V	     ! node Lorg/openide/nodes/Node;	  # $  action
 & ' ( ) * +org/openide/explorer/view/MenuView$MenuItem 
initialize 2(Ljavax/swing/JMenuItem;Lorg/openide/nodes/Node;)V
 , - . / 0 org/openide/nodes/Node 
getHelpCtx ()Lorg/openide/util/HelpCtx;	 2 3 4 5 6 org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx;
 2 8 9 : equals (Ljava/lang/Object;)Z
 2 < = > 	getHelpID ()Ljava/lang/String;
 2 @ A B setHelpIDString -(Ljavax/swing/JComponent;Ljava/lang/String;)V
  D E F getPopupMenu ()Ljavax/swing/JPopupMenu;
  H I J fillSubmenu (Ljavax/swing/JPopupMenu;)V L .org/openide/explorer/view/MenuView$Menu$Helper
 K N  O D(Lorg/openide/explorer/view/MenuView$Menu;Ljavax/swing/JPopupMenu;)V
 , Q R S getChildren ()Lorg/openide/nodes/Children;
 U V W X Y org/openide/nodes/Children getNodes (Z)[Lorg/openide/nodes/Node;
  [ \  	removeAll
  ^ _ ` createMenuItem 1(Lorg/openide/nodes/Node;)Ljavax/swing/JMenuItem;
  b c d add 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
  f g h getMenuComponentCount ()I
  j k l createEmptyMenuItem ()Ljavax/swing/JMenuItem;
  n o p processMouseEvent Z(Ljava/awt/event/MouseEvent;[Ljavax/swing/MenuElement;Ljavax/swing/MenuSelectionManager;)V
 r s t u v java/awt/event/MouseEvent isPopupTrigger ()Z x y z { | org/openide/nodes/NodeAcceptor acceptNodes ([Lorg/openide/nodes/Node;)Z
 ~  � � �  javax/swing/MenuSelectionManager defaultManager $()Ljavax/swing/MenuSelectionManager;
 ~ � �  clearSelectedPath � javax/swing/JMenuItem � EmptySubMenu
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 � �  � (Ljava/lang/String;)V
 � � � � 
setEnabled (Z)V
 , � � v isLeaf
 &  serialVersionUID J ConstantValue�#��	 (Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/explorer/view/MenuView$Menu; MethodParameters H(Lorg/openide/nodes/Node;Lorg/openide/explorer/view/MenuView$Acceptor;)V -Lorg/openide/explorer/view/MenuView$Acceptor; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; I(Lorg/openide/nodes/Node;Lorg/openide/explorer/view/MenuView$Acceptor;Z)V setName help StackMapTable popup Ljavax/swing/JPopupMenu; i I h 0Lorg/openide/explorer/view/MenuView$Menu$Helper; nodes [Lorg/openide/nodes/Node; � e Ljava/awt/event/MouseEvent; path [Ljavax/swing/MenuElement; manager "Ljavax/swing/MenuSelectionManager; empty Ljavax/swing/JMenuItem; n 
access$302 -(Lorg/openide/explorer/view/MenuView$Menu;Z)Z x0 x1 
SourceFile MenuView.java InnerClasses Menu AcceptorProxy � +org/openide/explorer/view/MenuView$Acceptor Acceptor MenuItem Helper !       � �  �    �    !    $            �  �   A     	*+� � �    �   
   ) * �       	 � �     	   !  �            �   J     *+,� �    �   
   2 3 �         � �        !     $   �   	     $     �  �   Q     *+� Y,� � �    �   
   8 9 �         � �        !     $ �  �   	     $   �     �     �     �  �   [     *+� Y,� � �    �   
   > ? �   *     � �        !     $ �     �   �        $   �   �     �     �       �   �     D*� *� *+� *,� "� /*+� %+� +:� � 1� 7� � ;� *� ;� ?�    �   * 
  H " 	I J L M O "Q :R CU �   4  " ! � 6    D � �     D   !    D $     D �   �    � C   , x   �       $   �    E F  �   H     *� CL*+� G+�    �      Y Z 
\ �        � �     � �   I J  �   �     S*� � N*� � KY*+� MM*� � P� TN*� Z6-�� **-2� ]� aW����*� e� *� i� aW�    �   .   ` a c e "h &j 0k =j Cn Jo Rr �   4  )  � �   < � �  " 0 � �    S � �     S � �  �    � ) K �� �  �    �    o p  �   �     ,*+,-� m+� q�  *� "� ,Y*� S� w � 	� }� ��    �      { } %~ +� �   *    , � �     , � �    , � �    , � �  �    + �    �   �   �   
 k l  �   H     � �Y�� �� �K*� �*�    �      � � � �       � �    _ `  �   d     #+� �� � &Y+*� "� �� � Y+*� "� �    �      � �       # � �     # � !  �    K � �    �   � �  �   ;     *Z� �    �       �        � �      �    �    � �   *    � 	   �  �  �	 &  � 	 K  � 