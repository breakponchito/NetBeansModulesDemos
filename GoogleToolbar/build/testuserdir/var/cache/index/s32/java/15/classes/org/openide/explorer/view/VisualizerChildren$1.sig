����   4 G	      .org/openide/explorer/view/VisualizerChildren$1 this$0 .Lorg/openide/explorer/view/VisualizerChildren;	   	 
 
val$create Z
      java/lang/Object <init> ()V	     index I
      ,org/openide/explorer/view/VisualizerChildren getVisNodes (Z)Ljava/util/List;       java/util/List size ()I
  " # $ 
getChildAt (I)Ljavax/swing/tree/TreeNode; & (org/openide/explorer/view/VisualizerNode  ( ) * get (I)Ljava/lang/Object;
  , - . nextElement ,()Lorg/openide/explorer/view/VisualizerNode; 0 java/util/Enumeration 2(Lorg/openide/explorer/view/VisualizerChildren;Z)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/explorer/view/VisualizerChildren$1; MethodParameters 	Signature hasMoreElements ()Z StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/lang/Object; ULjava/lang/Object;Ljava/util/Enumeration<Lorg/openide/explorer/view/VisualizerNode;>; 
SourceFile VisualizerChildren.java EnclosingMethod D E children (Z)Ljava/util/Enumeration; InnerClasses      /       	 
           1  2   C     *+� *� *� �    3       w 4        5 6         7   	 � 	 8      9 :  2   O     *� *� � �  � � �    3       | 4        5 6   ;    @ <     =    - .  2   r     ;*� � *� *Y� Z`� � !� %� *� � *Y� Z`� � ' � %�    3       � 4       ; 5 6   ;    Z % <     =  A - >  2   /     *� +�    3       w 4        5 6   <     =    8    ? @    A B     C F   
        