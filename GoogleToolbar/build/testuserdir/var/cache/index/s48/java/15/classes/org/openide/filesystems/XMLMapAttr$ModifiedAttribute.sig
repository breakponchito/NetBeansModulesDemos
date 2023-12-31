����   4 g
      java/lang/Object <init> ()V	  	 
   4org/openide/filesystems/XMLMapAttr$ModifiedAttribute modifier I	     origAttrValue Ljava/lang/Object;	     	fragments [Ljava/lang/String;
      java/lang/String indexOf (Ljava/lang/String;)I  java/lang/StringBuilder
  
     ! 	substring (II)Ljava/lang/String;
  # $ % append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ' ( ) length ()I
  +   , (I)Ljava/lang/String;
  . / 0 toString ()Ljava/lang/String;
  2  3 (Ljava/lang/Object;)V 5  
  7 8 9 getValue &(Ljava/lang/String;)Ljava/lang/Object;
 ; < = > 9 "org/openide/filesystems/FileObject getAttribute @ 
transient: B java/io/Serializable serialVersionUID J ConstantValue+07A�J� Code LineNumberTable LocalVariableTable this 6Lorg/openide/filesystems/XMLMapAttr$ModifiedAttribute; MethodParameters translateInto 9(Ljava/lang/String;Ljava/lang/Object;)[Ljava/lang/Object; fragment Ljava/lang/String; idx i attrName value newAttrName newValue attr StackMapTable revert ()Ljava/lang/Object; isTransient 9(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Z fo $Lorg/openide/filesystems/FileObject; <clinit> 
SourceFile XMLMapAttr.java InnerClasses e "org/openide/filesystems/XMLMapAttr ModifiedAttribute      A   C D  E    F                   3  H   X     *� *� *� *+� �    I      \ X 	Y ] ^ J        K L         M        N O  H  K     *M+N:6� �� b� 2:,� 6� F� Y� ,� � ",� &`� *� "� -M� � Y+� 1Y:NY� x�� ����� Y,SY-S�    I   6   l m n p q r #t )v Mx Ry ^| lp r� J   R   Q P Q  # I R   
 h S      T Q      U    } V Q   { W    x X L  Y   & � 
        � S � �  M   	 T   U    Z O  H  5     y+� � � Y*SY+S�+� M*N,:6� �� D� 2:,� x~� *� %� Y� � "-� "� -N� � 	,� :����� Y-SYS�    I   6   � � � � � � *� 2� C� W� _� e� k� J   H  2 3 P Q  ! J S     y T Q     y U    ` X L   ^ V Q   [ W   Y     �         � C�  M   	 T   U     8 9  H   �     *=� �� � 2N+-� 6� *�����*� �    I      � 
� � � � � %� J   4    P Q    R    # S     * K L     * T Q  Y   
 � �  M    T     8 [  H   1     *4� 6�    I      � J        K L    \ ]  H   �     6*� Y� � 2� "+� "� -� :M,� � ,� � ~� � ��    I      � � "� 4� J        6 ^ _     6 T Q    U   Y    � 2 @  M   	 ^   T    `   H   %      � Y?S� �    I      W  a    b c   
   d f 