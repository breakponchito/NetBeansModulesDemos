Êşº¾   4 À
      +org/openide/filesystems/JarFileSystem$Cache putName ([B)I
  	 
   java/lang/Object <init> ()V	     names [B	     
nameOffset I	     EMPTY [I  java/util/HashMap
  		     folders Ljava/util/Map;
  ! " # parse (Ljava/util/Set;)V
  % &  trunc ( ) * + , java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; . 2org/openide/filesystems/JarFileSystem$Cache$Folder
 - 0 1 2 getNames ()[Ljava/lang/String; 4 java/lang/String 6  
 - 8  9 0(Lorg/openide/filesystems/JarFileSystem$Cache;)V ( ; < = put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; ? @ A B C java/util/Set iterator ()Ljava/util/Iterator; E F G H I java/util/Iterator hasNext ()Z E K L M next ()Ljava/lang/Object; O java/util/jar/JarEntry
 N Q R S getName ()Ljava/lang/String;
 3 U V W replace (CC)Ljava/lang/String; Y /
 3 [ \ ] 
startsWith (Ljava/lang/String;)Z
 3 _ ` a 	substring (I)Ljava/lang/String;
 3 c d ] endsWith
 3 f g h length ()I
 3 j ` k (II)Ljava/lang/String;
 3 m n o lastIndexOf (I)I
  q r s 	getFolder H(Ljava/lang/String;)Lorg/openide/filesystems/JarFileSystem$Cache$Folder;
 - u v w addChild (Ljava/lang/String;)V
 y z { | } java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V (    values ()Ljava/util/Collection;  @  java/util/Collection
 - %
      java/util/Collections emptySet ()Ljava/util/Set;	     	EMPTY_SET Ljava/util/Set;
    #	     INVALID -Lorg/openide/filesystems/JarFileSystem$Cache; 	Signature )Ljava/util/Set<Ljava/util/jar/JarEntry;>; WLjava/util/Map<Ljava/lang/String;Lorg/openide/filesystems/JarFileSystem$Cache$Folder;>; Code LineNumberTable LocalVariableTable this entries LocalVariableTypeTable MethodParameters ,(Ljava/util/Set<Ljava/util/jar/JarEntry;>;)V isFolder name Ljava/lang/String; StackMapTable getChildrenOf '(Ljava/lang/String;)[Ljava/lang/String; folder fol 4Lorg/openide/filesystems/JarFileSystem$Cache$Folder; fl Z 	lastSlash dirName realName entry Ljava/util/jar/JarEntry; newNames  start access$1200 2(Lorg/openide/filesystems/JarFileSystem$Cache;[B)I x0 x1 <clinit> 
SourceFile JarFileSystem.java InnerClasses ½ %org/openide/filesystems/JarFileSystem Cache Folder                                                	   #          .*· *è¼µ *µ *¼
µ *» Y· µ *+·  *· $±       "   ½ ¸ ¹ º » $¾ )¿ -À        .       .           .                  ¡ ]     R     *´ +¹ ' Æ § ¬          Ã                ¢ £  ¤    @     ¢    ¥ ¦     t     *´ +¹ ' À -M,Æ ,¶ /°½ 3°          Ç É Ê Í                 § £    ¨ ©  ¤    ü  -     §    " #    Ô  
   ½*´ 5» -Y*· 7¹ : W+¹ > M,¹ D  ,¹ J À NN-¶ P:6\/¶ T:X¶ Z ¶ ^:X¶ b ¶ ed¶ i:6/¶ l65:: ¶ i:`¶ ^: *· pW§ *· p:		¶ t§ÿb±       Z   Ñ Ó .Ô 4Õ 7Ø BÚ LÛ TŞ ^ß mà pã yä }å ç è é ì  í ªï ²ğ ¹ò ¼ó    \ 	 ²  ª © 	 4  ¢ £  7  ¡ «  y @ ¬   } < ­ £   8 ® £  .  ¯ °    ½       ½           ½    ¤   1 ü  Eş 8 N 3ş * 3 3ÿ    ? E  ú                r s         W*´ +¹ ' À -M,Ç F+/¶ l>5:+: +¶ i:+`¶ ^:*· p¶ t» -Y*· 7M*´ +,¹ : W,°       2   ö ø ú û ü  ş $ÿ ,  5 @ I U	    >   < ¬    8 ­ £    5 ® £    W       W ¢ £   I ª ©  ¤    ÿ 5   3 - 3 3  ø      ¢    &      ®     D*´ ¼L*´ +*´ ¸ x*+µ *´ ¹ ~ ¹  M,¹ D  ,¹ J À -N-¶ §ÿé±              < @ C       <  § ©    D      = ±   ¤    ı ) ² Eú         ·     G*´ =+¾`*´ ¾¤  *´ ¾h+¾`¼N*´ -¸ x*-µ +*´ +¾¸ x*Y´ +¾`µ ¬       "       ) .! :" E$    *    ±     G       G ¢    B ³   ¤    ü .     ¢   ´ µ     :     *+· ¬          µ         ¶       ·    ¸      0      ¸ ³ » Y² · ³ ±       
   ¶ ·  ¹    º »      ¼ ¾ 
 -  ¿ 