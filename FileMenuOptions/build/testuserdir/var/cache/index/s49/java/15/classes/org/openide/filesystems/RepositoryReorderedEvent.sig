����   4 .
      java/util/EventObject <init> (Ljava/lang/Object;)V	  	 
   0org/openide/filesystems/RepositoryReorderedEvent perm [I
     	getSource ()Ljava/lang/Object;  "org/openide/filesystems/Repository
      java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V serialVersionUID J ConstantValue��
 br; )(Lorg/openide/filesystems/Repository;[I)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/filesystems/RepositoryReorderedEvent; fsp $Lorg/openide/filesystems/Repository; MethodParameters getRepository &()Lorg/openide/filesystems/Repository; getPermutation ()[I nperm 
SourceFile RepositoryReorderedEvent.java !                            Q     *+� *,� �            &  ' 
 ( !         " #      $ %        &   	 $       ' (     2     *� � �            . !        " #    ) *     U     *� ��
L*� +*� �� +�            5  6  8 !        " #     +    ,    -