����   4 o
      java/lang/Object <init> ()V  java/util/ArrayList
  	      /org/openide/explorer/view/OutlineView$Selection 	intervals Ljava/util/List;      javax/swing/ListSelectionModel getSelectionMode ()I	     selectionMode I     getAnchorSelectionIndex	     anchor  ! "  getLeadSelectionIndex	  $ %  lead  ' (  getMinSelectionIndex  * +  getMaxSelectionIndex  - . / isSelectedIndex (I)Z 1 2 3 4 5 java/util/List add (Ljava/lang/Object;)Z  7 8  clearSelection  : ; < setSelectionMode (I)V 1 > ? @ iterator ()Ljava/util/Iterator; B C D E F java/util/Iterator hasNext ()Z B H I J next ()Ljava/lang/Object; L [I  N O P addSelectionInterval (II)V  R S < setAnchorSelectionIndex  U V < setLeadSelectionIndex 	Signature Ljava/util/List<[I>; #(Ljavax/swing/ListSelectionModel;)V Code LineNumberTable LocalVariableTable i this 1Lorg/openide/explorer/view/OutlineView$Selection; sm  Ljavax/swing/ListSelectionModel; min max i1 StackMapTable MethodParameters setTo itv 
SourceFile OutlineView.java InnerClasses m %org/openide/explorer/view/OutlineView 	Selection                      %         W    X    Y  Z  e     �*� *� Y� 	� 
*+�  � *+�  � *+�   � #+� & =+� ) >66� A+� , � � *6� #� *� 
�
YOYO� 0 W6����� *� 
�
YOYO� 0 W�    [   N   
� 
� 
� 
� #
� -
� 4
� ;
� >
� G
� R
� X
� _
� e
� |
� 
� �
� �
� �
� \   >  A D ]     � ^ _     � ` a  4 n b   ; g c   > d d   e    � A     �  f    `    g Y  Z   �     Q+� 6 +*� � 9 *� 
� = M,� A � ,� G � KN+-.-.� M ���+*� � Q +*� #� T �    [   "   
� 
� 
� -
� 9
� <
� F
� P
� \      -  h L    Q ^ _     Q ` a  e    �  B� ! f    `    i    j k   
   l n 
