����   4 �
      java/lang/Object <init> ()V	  	 
   0org/openide/explorer/view/NodeRenderDataProvider 	showIcons Z	     table $Lorg/netbeans/swing/outline/Outline;
      $org/openide/explorer/view/Visualizer findNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node;  java/lang/IllegalStateException  java/lang/StringBuilder
    )TreeNode must be VisualizerNode but was: 
     ! append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  #   $ -(Ljava/lang/Object;)Ljava/lang/StringBuilder; & 
 of class 
  ( ) * getClass ()Ljava/lang/Class;
 , - . / 0 java/lang/Class getName ()Ljava/lang/String;
  2 3 0 toString
  5  6 (Ljava/lang/String;)V
 8 9 : ; 0 org/openide/nodes/Node getHtmlDisplayName
 8 = > 0 getDisplayName	  @ A B 	emptyIcon Ljavax/swing/Icon; D :org/openide/explorer/view/NodeRenderDataProvider$EmptyIcon
 C F  G 7(Lorg/openide/explorer/view/NodeRenderDataProvider$1;)V I javax/swing/tree/TreeNode K java/util/ArrayList
 J 
 J N O P add (Ljava/lang/Object;)Z H R S T 	getParent ()Ljavax/swing/tree/TreeNode;
 V W X Y Z java/util/Collections reverse (Ljava/util/List;)V \ javax/swing/tree/TreePath
 J ^ _ ` toArray ()[Ljava/lang/Object;
 [ b  c ([Ljava/lang/Object;)V
 e f g h i "org/netbeans/swing/outline/Outline getLayoutCache (()Ljavax/swing/tree/AbstractLayoutCache;
 k l m n o $javax/swing/tree/AbstractLayoutCache 
isExpanded (Ljavax/swing/tree/TreePath;)Z q java/beans/BeanInfo
 8 s t u getOpenedIcon (I)Ljava/awt/Image;
 8 w x u getIcon
 z { | } ~ org/openide/util/ImageUtilities 
image2Icon $(Ljava/awt/Image;)Ljavax/swing/Icon;
 8 � � 0 getShortDescription
 8 � � � 	getLookup ()Lorg/openide/util/Lookup; � 'org/openide/explorer/view/CheckableNode
 � � � � � org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object;
  � � � getCheckCookie =(Ljava/lang/Object;)Lorg/openide/explorer/view/CheckableNode; � � � � isCheckable ()Z � � � � isCheckEnabled � � � � 
isSelected ()Ljava/lang/Boolean; � � � � setSelected (Ljava/lang/Boolean;)V � 2org/netbeans/swing/outline/CheckRenderDataProvider '(Lorg/netbeans/swing/outline/Outline;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/explorer/view/NodeRenderDataProvider; MethodParameters getBackground $(Ljava/lang/Object;)Ljava/awt/Color; o Ljava/lang/Object; &(Ljava/lang/Object;)Ljava/lang/String; n Lorg/openide/nodes/Node; text Ljava/lang/String; StackMapTable � java/lang/String getForeground setShowIcons (Z)V isShowIcons &(Ljava/lang/Object;)Ljavax/swing/Icon; tn Ljavax/swing/tree/TreeNode; al Ljava/util/ArrayList; tp Ljavax/swing/tree/TreePath; layout &Ljavax/swing/tree/AbstractLayoutCache; expanded image Ljava/awt/Image; LocalVariableTypeTable 2Ljava/util/ArrayList<Ljavax/swing/tree/TreeNode;>; � java/awt/Image getTooltipText isHtmlDisplayName c )Lorg/openide/explorer/view/CheckableNode; '(Ljava/lang/Object;)Ljava/lang/Boolean; ((Ljava/lang/Object;Ljava/lang/Boolean;)V selected Ljava/lang/Boolean; 
SourceFile NodeRenderDataProvider.java InnerClasses 	EmptyIcon � 2org/openide/explorer/view/NodeRenderDataProvider$1      �             A B      �  �   O     *� *� *+� �    �       -  ) 	 .  / �        � �         �        � �  �   6     �    �       2 �        � �      � �  �    �    > �  �   �     D+� M,� -� Y� Y� � +� "%� +� '� +� � 1� 4�,� 7N-� ,� <N-�    �       6  7 	 8 3 : 8 ; = < B = �   *    D � �     D � �   ? � �  8  � �  �    � 3 8�  � �    �    � �  �   6     �    �       A �        � �      � �  �    �    � �  �   f     *� � *� ?� *� CY� E� ?�    �       E  F  G  I �        � �         �     �        � �  �   /     *� �    �       L �        � �    x �  �  �     �*� � *� ?�+� M,� -� Y� Y� � +� "%� +� '� +� � 1� 4�>+� H� O+� H:� JY� L:� � MW� Q :���� U� [Y� ]� a:*� � d:� j>:� ,� r:� 
,� v:� y�    �   V    P  Q  S  T  U ? W A X H Y N Z W [ \ \ d ] p _ u ` � a � b � d � e � f � h � j �   \ 	 N F � �  W = � �  �  � �  �  � �    � � �     � � �   � � �  A q �   �  � �  �     W = � �  �    � 2 8�  H J� #�  � �    �    � �  �   �     8+� M,� -� Y� Y� � +� "%� +� '� +� � 1� 4�,� �    �       n  o 	 p 3 r �        8 � �     8 � �   3 � �  �    � 3 8 �    �    � P  �   �     A+� M,� -� Y� Y� � +� "%� +� '� +� � 1� 4�,� 7� � �    �       v  w 	 x 3 z �        A � �     A � �   < � �  �    � 3 8@ �    �    � �  �   �     @+� M,� -� Y� Y� � +� "%� +� '� +� � 1� 4�,� ��� �� ��    �       ~   	 � 3 � �        @ � �     @ � �   ; � �  �    � 3 8 �    �    � P  �   k     *+� �M,� ,� � � � �    �   
    �  � �         � �      � �    � �  �   
 �  �@ �    �    � P  �   k     *+� �M,� ,� � � � �    �   
    �  � �         � �      � �    � �  �   
 �  �@ �    �    � �  �   k     *+� �M,� 
,� � ��    �       �  � 
 �  � �         � �      � �    � �  �    �  � �    �    � �  �   t     *+� �N-� 
-,� � �    �       �  � 
 �  � �   *     � �      � �     � �    � �  �    �  � �   	 �   �    �    � �     C  �  �    