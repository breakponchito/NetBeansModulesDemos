Êþº¾   4 ¾
      java/lang/Object <init> ()V  java/lang/Integer   	      2org/openide/filesystems/XMLFileSystem$ResourceElem weight I  java/util/ArrayList
  	     
urlContext Ljava/util/List;	     isFolder Z
       java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; " # $ % & java/util/List addAll (Ljava/util/Collection;)Z	  ( )  children	  + ,  names	  . / 0 content [B	  2 3  $assertionsDisabled 5 /
 7 8 9 : ; java/lang/String indexOf (Ljava/lang/String;)I = java/lang/AssertionError ? java/lang/StringBuilder
 >  B <folder name= D <file name=
 > F G H append -(Ljava/lang/String;)Ljava/lang/StringBuilder; J  ...
 > L M N toString ()Ljava/lang/String;
 < P  Q (Ljava/lang/Object;)V " S : T (Ljava/lang/Object;)I " V W X add (Ljava/lang/Object;)Z " Z [ \ get (I)Ljava/lang/Object; ^ java/util/HashSet
 ] 
  a b c getUrlContext ()[Ljava/net/URL; e # f java/util/Set
  h i j setUrlContext (Ljava/util/Collection;)V	  l m n foAttrs $Lorg/openide/filesystems/XMLMapAttr; p "org/openide/filesystems/XMLMapAttr
 o  " s t u size ()I w java/net/URL " y z { toArray (([Ljava/lang/Object;)[Ljava/lang/Object; " } ~  clear	     uri Ljava/lang/String;
   0   clone ()Ljava/lang/Object;  %org/openide/filesystems/XMLFileSystem
      java/lang/Class desiredAssertionStatus ()Z 	Signature FLjava/util/List<Lorg/openide/filesystems/XMLFileSystem$ResourceElem;>; $Ljava/util/List<Ljava/lang/String;>;  Ljava/util/List<Ljava/net/URL;>; (Z[Ljava/net/URL;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/filesystems/XMLFileSystem$ResourceElem; [Ljava/net/URL; StackMapTable  MethodParameters addChild |(Ljava/lang/String;Lorg/openide/filesystems/XMLFileSystem$ResourceElem;)Lorg/openide/filesystems/XMLFileSystem$ResourceElem; mergedContext Ljava/util/Set; name child retVal idx LocalVariableTypeTable Ljava/util/Set<Ljava/net/URL;>; getChildren ()Ljava/util/List; &()Ljava/util/List<Ljava/lang/String;>; getChild H(Ljava/lang/String;)Lorg/openide/filesystems/XMLFileSystem$ResourceElem; getAttr '(Z)Lorg/openide/filesystems/XMLMapAttr; create 
getContent ()[B context Ljava/util/Collection; 'Ljava/util/Collection<+Ljava/net/URL;>; *(Ljava/util/Collection<+Ljava/net/URL;>;)V getURI 
setContent ([BLjava/lang/String;I)V <clinit> 
SourceFile XMLFileSystem.java InnerClasses ResourceElem       	  )         ,         / 0                  m n             3            ·     C*· *	µ 
*» Y· µ *µ *´ ,¸ ¹ ! W *» Y· µ '*» Y· µ *±       & 	  F @ 
A G H (J ,K 7L BN         C       C      C        ÿ B         	              È     Ò*´  #*» Y· µ '*» Y· µ **µ -*µ ² 1 =+Æ +4¶ 6 /» <Y» >Y· @,´  A§ C¶ E+¶ EI¶ E¶ K· O¿,N*´ *+¹ R 6  *´ *+¹ U W*´ ',¹ U W§ ?*´ '¹ Y À N» ]Y· _:-¶ `¸ ¹ d W,¶ `¸ ¹ d W-¶ g-°       F   Q R S T "U 'W gY iZ u\ {] ^ a £b ¬c »d Êe Ðh    >  ¬ $   ¡    Ò       Ò ¢     Ò £   i i ¤   u ] ¥   ¦     ¬ $   §     B 'ÿ    7   ; ; >ÿ    7   ; ; > 7ý , ;    	 ¢   £     ¨ ©     /     *´ *°          l                 ª   « ¬     K     *´ '*´ *+¹ R ¹ Y À °          p                ¢       ¢     ­ ®     `      *´ kÇ *» oY· qµ k*´ k°          t u x                ¯            ¯     ° ±     /     *´ -°          |               b c     V     *´ ¹ r ½ vL*´ +¹ x W+°                           ¤     i j     t     +Æ *´ ¹ | *´ +¹ ! W±                             ² ³  ¦        ² ´           ²       µ   ¶ N     /     *´ °                         · ¸     ¢     &*´ 
¤  *µ 
*+Æ +¶ À § µ -*,µ ±               %    *    &       & / 0    &      &        \ ÿ      7        /                 /     *´ ¬                        ¹      4      ¶  § ³ 1±          <     @  º    » ¼   
    ½ 
