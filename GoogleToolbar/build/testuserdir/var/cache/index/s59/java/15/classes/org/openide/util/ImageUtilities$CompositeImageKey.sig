����   4 R
      java/lang/Object <init> ()V	  	 
   1org/openide/util/ImageUtilities$CompositeImageKey x I	     y	     	baseImage Ljava/awt/Image;	     overlayImage
      java/lang/System identityHashCode (Ljava/lang/Object;)I  java/lang/StringBuilder
   ! Composite key for 
  # $ % append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ' $ ( -(Ljava/lang/Object;)Ljava/lang/StringBuilder; *  +  ,  at [
  . $ / (I)Ljava/lang/StringBuilder; 1 ,  3 ]
  5 6 7 toString ()Ljava/lang/String; %(Ljava/awt/Image;Ljava/awt/Image;II)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/util/ImageUtilities$CompositeImageKey; base overlay MethodParameters equals (Ljava/lang/Object;)Z other Ljava/lang/Object; k StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; hashCode ()I hash 
SourceFile ImageUtilities.java InnerClasses P org/openide/util/ImageUtilities CompositeImageKey                                    8  9   �     *� *� *� *+� *,� �    :      � � 	� � � � ;   4     < =      >      ?               @    >   ?          A B  9   �     @+� � �+� M*� ,� � (*� ,� � *� ,� � *� ,� � � �    :      � � 	� � ;        @ < =     @ C D   2 E =  F    	� 4 @ @    C   G     H    I J  9   ^     "*� x*� �x<*� � �*� � �<�    :      � �  � ;       " < =     K   G     H    6 7  9   j     @� Y�  � "*� � &)� "*� � &+� "*� � -0� "*� � -2� "� 4�    :      � ;       @ < =   G     H    L    M N   
   O Q 
