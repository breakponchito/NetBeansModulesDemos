����   4 L
      java/lang/Object <init> ()V	  	 
   5org/openide/filesystems/FileChooserBuilder$MergedIcon $assertionsDisabled Z  java/lang/AssertionError
  	     icon1 Ljavax/swing/Icon;	     icon2      javax/swing/Icon getIconWidth ()I     getIconHeight	  ! " # xMerge I	  % & # yMerge
 ( ) * + , java/lang/Math max (II)I  . / 0 	paintIcon ,(Ljava/awt/Component;Ljava/awt/Graphics;II)V 2 *org/openide/filesystems/FileChooserBuilder
 4 5 6 7 8 java/lang/Class desiredAssertionStatus ()Z )(Ljavax/swing/Icon;Ljavax/swing/Icon;II)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/filesystems/FileChooserBuilder$MergedIcon; StackMapTable MethodParameters c Ljava/awt/Component; g Ljava/awt/Graphics; x y <clinit> 
SourceFile FileChooserBuilder.java InnerClasses 
MergedIcon                   " #    & #           9  :       f*� � � +� � Y� �� � ,� � Y� �*+� *,� � +�  ,�  d>� +�  ,�  d6*�  *� $�    ;   2   y z { (| -} 2 7� E� K� Z� _� e� <   4    f = >     f      f      f " #    f & #  ?    �        @          "   &       :   E     *� �  *� $*� �  `� '�    ;      � <        = >       :   E     *� �  *� $*� �  `� '�    ;      � <        = >    / 0  :   �     '*� +,� - *� +,*�  `*� $`� - �    ;      � � &� <   4    ' = >     ' A B    ' C D    ' E #    ' F #  @    A   C   E   F    G   :   4      1� 3� � � �    ;      r ?    @  H    I J   
   1 K 
