����   4 @	      )org/openide/filesystems/AbstractFolder$1P this$0 (Lorg/openide/filesystems/AbstractFolder;
  	 
   java/lang/Object <init> ()V
      &org/openide/filesystems/AbstractFolder subfiles +()[Lorg/openide/filesystems/AbstractFolder;
      java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;      java/util/Collection addAll (Ljava/util/Collection;)Z
    ! " process h(Lorg/openide/filesystems/AbstractFolder;Ljava/util/Collection;)Lorg/openide/filesystems/AbstractFolder; $ 'org/openide/util/Enumerations$Processor +(Lorg/openide/filesystems/AbstractFolder;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/filesystems/AbstractFolder$1P; MethodParameters af toAdd Ljava/util/Collection; LocalVariableTypeTable @Ljava/util/Collection<Lorg/openide/filesystems/AbstractFolder;>; 	Signature �(Lorg/openide/filesystems/AbstractFolder;Ljava/util/Collection<Lorg/openide/filesystems/AbstractFolder;>;)Lorg/openide/filesystems/AbstractFolder; <(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object; �Ljava/lang/Object;Lorg/openide/util/Enumerations$Processor<Lorg/openide/filesystems/AbstractFolder;Lorg/openide/filesystems/AbstractFolder;>; 
SourceFile AbstractFolder.java EnclosingMethod 9 : existingSubFiles (Z)Ljava/util/Enumeration; InnerClasses P > org/openide/util/Enumerations 	Processor      #          %  &   >     
*+� *� �    '      � (       
 ) *     
    +    �  ! "  &   d     ,+� � �  W+�    '   
   � � (         ) *      ,      - .  /        - 0  +   	 ,   -   1    2A ! 3  &   4     
*+� ,� �    '      � (       
 ) *   +   	 ,  -   1    4 5    6 7     8 ;        <   # = ?	