����   4 n
      javax/swing/ScrollPaneLayout <init> ()V	  	 
   =org/openide/explorer/view/TableSheet$EnablingScrollPaneLayout dependentScrollPane Ljavax/swing/JScrollPane;
     layoutContainer (Ljava/awt/Container;)V	     viewport Ljavax/swing/JViewport;
      javax/swing/JViewport getView ()Ljava/awt/Component;
       java/awt/Component getPreferredSize ()Ljava/awt/Dimension; " java/awt/Dimension
 ! $  % (II)V
  ' (   getSize
  * + , toViewCoordinates *(Ljava/awt/Dimension;)Ljava/awt/Dimension; . javax/swing/Scrollable - 0 1 2  getScrollableTracksViewportWidth ()Z	 ! 4 5 6 width I	  8 9 : hsb Ljavax/swing/JScrollBar;
 < = > ? @ javax/swing/JScrollBar 
setEnabled (Z)V B javax/swing/JScrollPane
 A D E F getHorizontalScrollBarPolicy ()I
 A H I J setHorizontalScrollBarPolicy (I)V
 A L M N getViewport ()Ljavax/swing/JViewport;
  P Q  
invalidate (Ljavax/swing/JScrollPane;)V Code LineNumberTable LocalVariableTable this ?Lorg/openide/explorer/view/TableSheet$EnablingScrollPaneLayout; 
scrollPane MethodParameters 	newPolicy parent Ljava/awt/Container; view Ljava/awt/Component; viewPrefSize Ljava/awt/Dimension; 
extentSize viewTracksViewportWidth Z 	hsbNeeded StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TableSheet.java InnerClasses l $org/openide/explorer/view/TableSheet EnablingScrollPaneLayout 0               R  S   F     
*� *+� �    T      � � 	� U       
 V W     
 X   Y    X       S  �  	   �*+� *� � *� � � M,� 
,� � � !Y� #N*� � *� *� � &� )� � !Y� #:,� -� ,� -� / � � 6� -� 3� 3� � 6*� 7� *� 7� ;+� A:� C � 0�  � 6*� � C� *� � G*� � K� O�    T   J   � � � -� E� P� [� j� �� �� �� �  � � � � � �	 U   \ 	 �  Z 6    � V W     � [ \   � ] ^  - � _ `  P � a `  j f b c  � N d c  � 8 X   e   6 @ �  H !�  !H !�  !@� @� �  AA  Y    [   f     g    h    i j   
   k m 