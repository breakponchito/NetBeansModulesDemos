����   4 �	      4org/openide/actions/NewTemplateAction$MenuWithRecent node Lorg/openide/nodes/Node;	   	 
 canWrite Z	     this$0 'Lorg/openide/actions/NewTemplateAction;
      org/openide/awt/JMenuPlus <init> ()V	    
 initialized
      %org/openide/actions/NewTemplateAction getName ()Ljava/lang/String;
    ! " # org/openide/awt/Actions setMenuText 2(Ljavax/swing/AbstractButton;Ljava/lang/String;Z)V
  % & ' getPopupMenu ()Ljavax/swing/JPopupMenu; ) 9org/openide/actions/NewTemplateAction$MenuWithRecent$Item
 ( +  , Y(Lorg/openide/actions/NewTemplateAction$MenuWithRecent;Lorg/openide/loaders/DataObject;)V
 . / 0 1 2 javax/swing/JPopupMenu add 0(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
  4 5 6 
access$100 9(Lorg/openide/actions/NewTemplateAction;)Ljava/util/List; 8 9 : ; < java/util/List size ()I > javax/swing/JSeparator
 = 
 . A 1 B *(Ljava/awt/Component;)Ljava/awt/Component; 8 D E F iterator ()Ljava/util/Iterator; H I J K L java/util/Iterator hasNext ()Z H N O P next ()Ljava/lang/Object; R org/openide/loaders/DataObject T org/openide/loaders/DataShadow
 S V W X getOriginal "()Lorg/openide/loaders/DataObject;
  Z [ 6 
access$200 8 ] ^ L isEmpty
  ` a b 
access$300 J(Lorg/openide/actions/NewTemplateAction;Lorg/openide/loaders/DataObject;)Z
  d e f 
access$400 *(Lorg/openide/actions/NewTemplateAction;)Z
  h i j 
access$402 +(Lorg/openide/actions/NewTemplateAction;Z)Z C(Lorg/openide/actions/NewTemplateAction;Lorg/openide/nodes/Node;Z)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/actions/NewTemplateAction$MenuWithRecent; n writable MethodParameters dobj  Lorg/openide/loaders/DataObject; it Ljava/util/Iterator; 
privileged Ljava/util/List; 
regenerate addSeparator popup Ljavax/swing/JPopupMenu; StackMapTable 
access$500 9(Lorg/openide/actions/NewTemplateAction$MenuWithRecent;)Z x0 
access$600 P(Lorg/openide/actions/NewTemplateAction$MenuWithRecent;)Lorg/openide/nodes/Node; 
SourceFile NewTemplateAction.java InnerClasses MenuWithRecent Item          
         	 
          k  l   x     "*+� *� *� *+� � *,� *� �    m       �  � 	 �  �  �  � ! � n        " o p     " q     " r 
  s     q   r    & '  l  <    *� $L*� � +� (Y*� *� -W*� � 3M,� 7 � +� =Y� ?� @W,� C N-� G � 2-� M � Q:� S� � S� U:+� (Y*� *� -W���>*� � Y� \ � � 6*� � Y� C :� G � F� M � Q:*� � _� )� +� =Y� ?� @W6+� (Y*� *� -W� >���*� *� � c� � � � gW*� +�    m   b    �  �  �  � " � 7 � G � R � Z � d � s � v � x � � � � � � � � � � � � � � � �	 n   \ 	 R ! t u  > 8 v w  � 4 t u  � M v w  " � x y  x � z 
  � { { 
    o p    | }  ~   U � 7 . 8�  H� % Q� � @�  H� 2 Q� � Q C �     . 8  �   �  l   /     *� �    m       � n        � p   � �  l   /     *� �    m       � n        � p    �    � �       �  (  � 