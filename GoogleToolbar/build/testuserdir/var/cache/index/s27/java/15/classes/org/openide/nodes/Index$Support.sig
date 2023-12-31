����   4 |
      java/lang/Object <init> ()V
  	 
   org/openide/nodes/Index$Support getNodesCount ()I
     reorder ([I)V
     exchange (II)V	     	listeners Ljava/util/HashSet;  java/util/HashSet
  
     add (Ljava/lang/Object;)Z
  ! "  remove
  $ % & clone ()Ljava/lang/Object;
  ( ) * iterator ()Ljava/util/Iterator; , - . / 0 java/util/Iterator hasNext ()Z , 2 3 & next 5  javax/swing/event/ChangeListener 4 7 8 9 stateChanged "(Ljavax/swing/event/ChangeEvent;)V
  ; < = getNodes ()[Lorg/openide/nodes/Node;
 ? @ A B  org/openide/nodes/Node equals
  D E F showIndexedCustomizer (Lorg/openide/nodes/Index;)V
 H D I org/openide/nodes/TMUtil K org/openide/nodes/Index 	Signature 7Ljava/util/HashSet<Ljavax/swing/event/ChangeListener;>; Code LineNumberTable LocalVariableTable this !Lorg/openide/nodes/Index$Support; move i I x y perm [I StackMapTable Y MethodParameters moveUp (I)V moveDown addChangeListener %(Ljavax/swing/event/ChangeListener;)V chl "Ljavax/swing/event/ChangeListener; removeChangeListener fireChangeEvent cloned iter Ljava/util/Iterator; che Ljavax/swing/event/ChangeEvent; l javax/swing/event/ChangeEvent n java/lang/Throwable indexOf (Lorg/openide/nodes/Node;)I node Lorg/openide/nodes/Node; arr [Lorg/openide/nodes/Node; t idx Lorg/openide/nodes/Index; 
SourceFile 
Index.java InnerClasses Support!    J      L    M      N   3     *� �    O   
    p  q P        Q R    S   N  %     {*� �
N� �6-�� I� 	� � � -O� "� � -dO� -`O����-O� -dO� 	-`O*-� �    O   B    {  ~    �  � / � 8 � D � O � W � ] � a � f � o � u � z � P   4   M T U    { Q R     { V U    { W U   t X Y  Z    
�  [� �  \   	 V  W      N   �     +*� �
N6-�� -O����-O-O*-� �    O   "    �  �  �  �  � ! � % � * � P   4  
  T U    + Q R     + V U    + W U   $ X Y  Z    � 
 [�  \   	 V  W   ] ^  N   A     	*d� �    O   
    �  � P       	 Q R     	 V U  \    V   _ ^  N   A     	*`� �    O   
    �  � P       	 Q R     	 V U  \    V   ` a  N   e     *� � *� Y� � *� +� W�    O       �  �  �  � P        Q R      b c  Z     \    b   d a  N   [     *� � �*� +�  W�    O       �  �  �  � P        Q R      b c  Z     \    b   e 9  N   �     D*� � �*YN�*� � #� M-ç 
:-��,� 'N-� + � -� 1 � 4+� 6 ���              O   "    �  �  �  �  � # � 1 � C � P   4    f   (  g h    D Q R     D i j  # ! f   Z   0 �    k    m�    k   �  ,�  \    i   < =    o p  N   �     !*� :M>,�� +,2� >� ������    O       �  �  �  �  �  P   *    T U    ! Q R     ! q r    s t  Z    �  u�  \    q      N   3     *� C�    O   
    	 P        Q R   	 E F  N   3     *� G�    O   
     P        v w   \    v          \    X    x    y z   
   J {	