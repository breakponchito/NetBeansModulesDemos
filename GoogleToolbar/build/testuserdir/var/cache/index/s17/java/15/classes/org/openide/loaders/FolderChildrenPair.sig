����   4 I
      java/lang/Object <init> ()V	  	 
   &org/openide/loaders/FolderChildrenPair primaryFile $Lorg/openide/filesystems/FileObject;
      "org/openide/loaders/DataObjectPool getPOOL &()Lorg/openide/loaders/DataObjectPool;
     registrationCount '(Lorg/openide/filesystems/FileObject;)I	     seq I
     hashCode ()I
    ! " equals (Ljava/lang/Object;)Z $ java/lang/StringBuilder
 #  ' FolderChildren.Pair[
 # ) * + append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 # - * . -(Ljava/lang/Object;)Ljava/lang/StringBuilder; 0 ,
 # 2 * 3 (I)Ljava/lang/StringBuilder; 5 ]
 # 7 8 9 toString ()Ljava/lang/String; '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/loaders/FolderChildrenPair; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; p o Ljava/lang/Object; StackMapTable 
SourceFile FolderChildrenPair.java 0                    :  ;   U     *� *+� *� +� � �    <       $  % 	 &  ' =        > ?         @           ;   7     *� � *� ��    <       + =        > ?   A     B    ! "  ;   �     A+� � ;+� M*� ,� � � �*� � ,� � �*� ,� � � ��    <   "    0  1  2  3  5 , 6 . 8 ? : =       3 C ?    A > ?     A D E  F    �  @�   @    D   A     B    8 9  ;   R     (� #Y� %&� (*� � ,/� (*� � 14� (� 6�    <       ? =       ( > ?   A     B    G    H