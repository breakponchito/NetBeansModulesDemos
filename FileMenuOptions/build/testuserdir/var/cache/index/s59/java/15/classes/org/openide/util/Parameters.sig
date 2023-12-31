����   4 V
      java/lang/Object <init> ()V  java/lang/NullPointerException 
 java/lang/StringBuilder
 	   The 
 	    append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 	    -(Ljava/lang/Object;)Ljava/lang/StringBuilder;   parameter cannot be null
 	    toString ()Ljava/lang/String;
     (Ljava/lang/String;)V
    ! " # org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V % & ' ( ) java/lang/CharSequence length ()I + "java/lang/IllegalArgumentException - 0 parameter cannot be an empty character sequence
 *  % 
 1 2 3 4  java/lang/String trim
 1 & 7 = parameter must contain at least one non-whitespace character
  9 : ; javaIdentifierOrNull 3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
 = > ? @ A org/openide/util/BaseUtilities isJavaIdentifier (Ljava/lang/String;)Z C  parameter (' E !') is not a valid Java identifier Code LineNumberTable LocalVariableTable this Lorg/openide/util/Parameters; name Ljava/lang/CharSequence; value Ljava/lang/Object; StackMapTable MethodParameters notEmpty notWhitespace javaIdentifier 
SourceFile Parameters.java !            F   /     *� �    G       5 H        I J   	 " #  F   j     %+� #� Y� 	Y� � *� � � � ��    G       ?  @ $ B H       % K L     % M N  O    $ P   	 K   M   	 Q ;  F   x     /*+� +� $ � #� *Y� 	Y� � *� ,� � � .��    G       O  P  Q . S H       / K L     / M L  O    . P   	 K   M   	 R ;  F   ~     5*+� +� / � 0� 5� #� *Y� 	Y� � *� 6� � � .��    G       a  b  c 4 e H       5 K L     5 M L  O    4 P   	 K   M   	 S ;  F   G     *+� *+� 8�    G       r  s 
 t H        K L      M L  P   	 K   M   	 : ;  F        :+� 8+� / � <� ,� *Y� 	Y� � *� B� +� D� � � .��    G       �  � 9 � H       : K L     : M L  O    9 P   	 K   M    T    U