����   4 q
      java/lang/Object <init> ()V	  	 
   (org/openide/util/NbBundle$LocaleIterator defaultInProgress Z	     empty	     
initLocale Ljava/util/Locale;	     locale
      java/util/Locale 
getDefault ()Ljava/util/Locale;
      equals (Ljava/lang/Object;)Z " java/lang/StringBuilder
 ! 
 ! % & ' append (C)Ljava/lang/StringBuilder;
  ) * + toString ()Ljava/lang/String;
 ! - & . -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ! )	  1 2 3 current Ljava/lang/String;
 5 6 7 8 + org/openide/util/NbBundle 
access$100	  : ; 3 branding = _ ?  java/util/NoSuchElementException
 > 
 B C D E F java/lang/String lastIndexOf (I)I
  H I  reset K  
 B M N O 	substring (II)Ljava/lang/String; Q 'java/lang/UnsupportedOperationException
 P 
  T U + next W java/util/Iterator (Ljava/util/Locale;)V Code LineNumberTable LocalVariableTable this *Lorg/openide/util/NbBundle$LocaleIterator; StackMapTable MethodParameters ret lastUnderbar I 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; idx hasNext ()Z remove ()Ljava/lang/Object; 	Signature :Ljava/lang/Object;Ljava/util/Iterator<Ljava/lang/String;>; 
SourceFile NbBundle.java InnerClasses LocaleIterator      V                       2 3    ; 3      X  Y   �     i*� *� *� **+Z� � +� � � *� *� !Y� #_� $+� (� ,� /� 0� 4� *� 9� *� !Y� #<� ,� 4� ,� /� 9�    Z   .   � � 	� � � "� '� A� G� O� h� [       i \ ]     i    ^    � '     ' _        U +  Y  W     �*� 0� � >Y� @�*� 9� *� 0L� � !Y� #*� 9� ,*� 0� ,� /L*� 0_� A=� *� � 
*� G� ]*J� 0*� � O� =*� � 
*� G� <*� � *� !Y� #_� $*� � (� ,� /� 0*� � **� 0� L� 0+�    Z   N   � � � � � 7� A E L S Y a	 f
 m t { � � � [   *    ` 3    � \ ]   7 x ` 3  A n a b  ^    �  B� + c     > d     e    I   Y   �     U*� 9� K*� !Y� #_� $*� � (� ,� /� 0*� 9_� A<� *� 9� **� 9� L� 9*� � *� 0�    Z   * 
  ! " $$ .& 2' :) G, L- O. T0 [     .  f b    U \ ]   ^    � :�   g h  Y   B     *� 0� � �    Z      4 [        \ ]   ^    @ d     e    i   Y   2     � PY� R�    Z      8 [        \ ]   c     P d     e  A U j  Y   /     *� S�    Z      � [        \ ]   d     e    k    l m    n o   
   5 p 
