����   4 �	      org/openide/awt/ColorValue colorMap Ljava/util/Map;  	 
   java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  java/lang/String  java/lang/StringBuffer
     <init> ()V
     append (C)Ljava/lang/StringBuffer;
      java/awt/Color getRed ()I
     ! (I)Ljava/lang/StringBuffer;
  # $  getGreen
  & '  getBlue
  ) * + toString ()Ljava/lang/String;
  - . / toText $(Ljava/awt/Color;)Ljava/lang/String;
  1  2 &(Ljava/lang/String;Ljava/awt/Color;Z)V
 4  5 java/lang/Object	  7 8 9 text Ljava/lang/String;	  ; < = color Ljava/awt/Color;	  ? @ A isCustom Z
 C D E F G org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; I Custom
  K L M loc &(Ljava/lang/String;)Ljava/lang/String;	  O P Q CUSTOM_COLOR Lorg/openide/awt/ColorValue; S java/util/HashMap
 R 	  V W = BLACK Y Black  [ \ ] put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	  _ ` = BLUE b Blue	  d e = CYAN g Cyan	  i j = 	DARK_GRAY l 	Dark_Gray	  n o = GRAY q Gray	  s t = GREEN v Green	  x y = 
LIGHT_GRAY { 
Light_Gray	  } ~ = MAGENTA � Magenta	  � � = ORANGE � Orange	  � � = PINK � Pink	  � � = RED � Red	  � � = WHITE � White	  � � = YELLOW � Yellow 	Signature 3Ljava/util/Map<Ljava/awt/Color;Ljava/lang/String;>; Code LineNumberTable LocalVariableTable sb Ljava/lang/StringBuffer; StackMapTable MethodParameters (Ljava/awt/Color;Z)V this custom #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; key <clinit> 
SourceFile ColorValue.java    4     P Q       �    �  8 9    < =    @ A     . /  �   �     Q� *�  � L+� @*� ;� Y� M,[� *� � ,� *� "� ,� *� %� ]� W,� (L+�    �   & 	   ;  <  =  > . ? : @ F A J B O D �       0 � �    Q < =    D 8 9  �    � O  �    <      �  �   M     *+� ,+� 0�    �   
    H 
 I �         � Q      < =     � A  �   	 <   �      2  �   l     *� 3*+� 6*,� :*� >�    �       K  L 	 M  N  O �   *     � Q      8 9     < =     � A  �    8   <   �    * +  �   /     *� 6�    �       S �        � Q   �     �   
 L M  �   1     *� B�    �       W �        � 9   �    �    �   �  M      �� YH� J� 0� N� RY� T� � � UX� J� Z W� � ^a� J� Z W� � cf� J� Z W� � hk� J� Z W� � mp� J� Z W� � ru� J� Z W� � wz� J� Z W� � |� J� Z W� � ��� J� Z W� � ��� J� Z W� � ��� J� Z W� � ��� J� Z W� � ��� J� Z W�    �   B    #  %  ' , ( = ) N * _ + p , � - � . � / � 0 � 1 � 2 � 3 � 4  �    �