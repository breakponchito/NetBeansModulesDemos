����   4 T
      java/lang/Object <init> ()V	  	 
   %org/netbeans/swing/tabcontrol/TabData 
userObject Ljava/lang/Object;	     icon Ljavax/swing/Icon;	     txt Ljava/lang/String;	     tip  java/awt/Component	     NO_ICON
      equals (Ljava/lang/Object;)Z
 "  # java/lang/String
 " % & ' hashCode ()I
  %
  * + , getText ()Ljava/lang/String;
 " . / 0 	compareTo (Ljava/lang/String;)I 2 'org/netbeans/swing/tabcontrol/TabData$1
 1  5 java/lang/Comparable K(Ljava/lang/Object;Ljavax/swing/Icon;Ljava/lang/String;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this 'Lorg/netbeans/swing/tabcontrol/TabData; i caption tooltip MethodParameters getUserObject ()Ljava/lang/Object; getComponent ()Ljava/awt/Component; StackMapTable getIcon ()Ljavax/swing/Icon; 
getTooltip toString td result Z o (Ljava/lang/Object;)I arg2 arg1 <clinit> 
SourceFile TabData.java InnerClasses 1    4                                  6  7   �     *� *+� *,� *-� *� �    8       =  > 	 ?  @  A  B 9   4     : ;            <      =      >   ?       <   =   >    @ A  7   /     *� �    8       F 9        : ;    B C  7   O     *� � � *� � ��    8       P 
 Q  S 9        : ;   D      E F  7   K     *� � � �*� �    8       _  `  b 9        : ;   D      + ,  7   /     *� �    8       l 9        : ;    G ,  7   /     *� �    8       u 9        : ;    H ,  7   /     *� �    8       ~ 9        : ;        7   �     9+*� �+� � ,+� M,� *� � � ,� *� � !� � >��    8   "    �  �  �  �  � ) � 5 � 7 � 9   *   $ I ;  5  J K    9 : ;     9 L   D    � + @�  ?    L    & '  7   q     &*� � � 
*� � $*� � � 
*� � (��    8       �  � % � 9       & : ;   D    FJ�      / M  7   �     1*� )M+� � +� � )N� N-� ,� ��,� �,-� -�    8   .    �  �  �  �  �  � ! � # � % � ) � + � 9   4    N     1 : ;     1 L    , O     N   D    �  "�  "	 ?    L    P   7   #      � 1Y� 3� �    8       �  Q    R S   
  1      