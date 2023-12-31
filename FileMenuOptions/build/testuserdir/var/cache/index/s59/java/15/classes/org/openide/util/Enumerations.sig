����   4 �
      java/lang/Object <init> ()V
  	 
   java/util/Collections 	emptyList ()Ljava/util/List;
     enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration;
     	singleton #(Ljava/lang/Object;)Ljava/util/Set;  java/util/ArrayList
  
     add (Ljava/lang/Object;)Z  #org/openide/util/Enumerations$SeqEn
      (Ljava/util/Enumeration;)V " %org/openide/util/Enumerations$1RDupls
 ! 
 % & ' ( ) org/openide/util/Enumerations filter Y(Ljava/util/Enumeration;Lorg/openide/util/Enumerations$Processor;)Ljava/util/Enumeration;
 + , - . / java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; 1 $org/openide/util/Enumerations$RNulls
 0 3  4 $(Lorg/openide/util/Enumerations$1;)V 6 #org/openide/util/Enumerations$AltEn
 5 8  9 C(Ljava/util/Enumeration;Lorg/openide/util/Enumerations$Processor;)V ; en
 = > ? @ A org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V ( D #org/openide/util/Enumerations$FilEn
 C 8 G !org/openide/util/Enumerations$QEn
 F I  J ,(Lorg/openide/util/Enumerations$Processor;)V L M N O P java/util/Enumeration hasMoreElements ()Z L R S T nextElement ()Ljava/lang/Object;
 F V W X put (Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this Lorg/openide/util/Enumerations; empty ()Ljava/util/Enumeration; emptyL Ljava/util/Collection; LocalVariableTypeTable Ljava/util/Collection<TT;>; 	Signature 4<T:Ljava/lang/Object;>()Ljava/util/Enumeration<TT;>; +(Ljava/lang/Object;)Ljava/util/Enumeration; obj Ljava/lang/Object; TT; MethodParameters 7<T:Ljava/lang/Object;>(TT;)Ljava/util/Enumeration<TT;>; concat G(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration; en1 Ljava/util/Enumeration; en2 two Ljava/util/ArrayList; Ljava/util/Enumeration<+TT;>; 4Ljava/util/ArrayList<Ljava/util/Enumeration<+TT;>;>; n<T:Ljava/lang/Object;>(Ljava/util/Enumeration<+TT;>;Ljava/util/Enumeration<+TT;>;)Ljava/util/Enumeration<TT;>; 0(Ljava/util/Enumeration;)Ljava/util/Enumeration; enumOfEnums 7Ljava/util/Enumeration<+Ljava/util/Enumeration<+TT;>;>; k<T:Ljava/lang/Object;>(Ljava/util/Enumeration<+Ljava/util/Enumeration<+TT;>;>;)Ljava/util/Enumeration<TT;>; removeDuplicates Ljava/util/Enumeration<TT;>; P<T:Ljava/lang/Object;>(Ljava/util/Enumeration<TT;>;)Ljava/util/Enumeration<TT;>; array ,([Ljava/lang/Object;)Ljava/util/Enumeration; arr [Ljava/lang/Object; [TT; 8<T:Ljava/lang/Object;>([TT;)Ljava/util/Enumeration<TT;>; removeNulls convert 	processor )Lorg/openide/util/Enumerations$Processor; 1Lorg/openide/util/Enumerations$Processor<TT;TR;>; �<T:Ljava/lang/Object;R:Ljava/lang/Object;>(Ljava/util/Enumeration<+TT;>;Lorg/openide/util/Enumerations$Processor<TT;TR;>;)Ljava/util/Enumeration<TR;>; queue q #Lorg/openide/util/Enumerations$QEn; +Lorg/openide/util/Enumerations$QEn<TT;TR;>; StackMapTable 
SourceFile Enumerations.java InnerClasses SeqEn RDupls � 'org/openide/util/Enumerations$Processor 	Processor RNulls � org/openide/util/Enumerations$1 AltEn FilEn QEn 1 %           Y   3     *� �    Z   
    ,  - [        \ ]    ^ _  Y   I     	� K*� �    Z   
    8  9 [       ` a   b       ` c   d    e 	  f  Y   D     *� � �    Z       C [        g h   b        g i   j    g   d    k 	 l m  Y   �      � Y� M,*� W,+� W� Y,� � �    Z       R  S  T  U [          n o       p o    q r  b          n s       p s    q t  j   	 n   p   d    u 	 l v  Y   E     	� Y*� �    Z       d [       	 w o   b       	 w x   j    w   d    y 	 z v  Y   H     *� !Y� #� $�    Z       y [        ; o   b        ; {   j    ;   d    | � } ~  Y   D     *� *� �    Z       � [         �   b         �   j       d    � 	 � v  Y   I     *� 0Y� 2� $�    Z       � [        ; o   b        ; {   j    ;   d    | 	 � )  Y   Z     
� 5Y*+� 7�    Z       � [       
 ; o     
 � �  b       
 ; s     
 � �  j   	 ;   �   d    � 	 ( )  Y   n     :*� <B+� <� CY*+� E�    Z       �  �  � [        ; o      ( �  b        ; s      ( �  j   	 ;   (   d    � 	 � )  Y   �     !� FY+� HM*� K � ,*� Q � U���,�    Z       � 	 �  �  � [        ! ; o     ! ( �  	  � �  b        ! ; s     ! ( �  	  � �  �   	 � 	 F j   	 ;   (   d    �  �    � �   B   % �  !   �   � % �	 0 % � 
 �     5 % �  C % �  F % � 
