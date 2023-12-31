Êþº¾   4 ©
      java/lang/Object <init> ()V
  	 
   java/util/Objects requireNonNull &(Ljava/lang/Object;)Ljava/lang/Object;	      (org/netbeans/api/queries/VersioningQuery $assertionsDisabled Z  java/lang/AssertionError
  
      org/openide/util/BaseUtilities normalizeURI (Ljava/net/URI;)Ljava/net/URI;
      ! java/net/URI equals (Ljava/lang/Object;)Z # "java/lang/IllegalArgumentException % java/lang/StringBuilder
 $  ( Must pass a normalized URI: 
 $ * + , append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 $ . + / -(Ljava/lang/Object;)Ljava/lang/StringBuilder; 1  vs. 
 $ 3 4 5 toString ()Ljava/lang/String;
 " 7  8 (Ljava/lang/String;)V	  : ; < implementations  Lorg/openide/util/Lookup$Result;
 > ? @ A B org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; D E F G H java/util/Collection iterator ()Ljava/util/Iterator; J K L M N java/util/Iterator hasNext ()Z J P Q R next ()Ljava/lang/Object; T 6org/netbeans/spi/queries/VersioningQueryImplementation S V W X 	isManaged (Ljava/net/URI;)Z	  Z [ \ LOG Ljava/util/logging/Logger;	 ^ _ ` a b java/util/logging/Level FINE Ljava/util/logging/Level;
 d e f g h java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z j {0} is VCS managed
 d l m n log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V p {0} isn't managed by any VCS S r s t getRemoteLocation "(Ljava/net/URI;)Ljava/lang/String; v !{0}: received remote location {1} x  {0}: received no remote location
 z { | } N java/lang/Class desiredAssertionStatus  *org/netbeans/api/queries/FileEncodingQuery
 z   5 getName
 d    	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
     lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result; 	Signature ZLorg/openide/util/Lookup$Result<Lorg/netbeans/spi/queries/VersioningQueryImplementation;>; Code LineNumberTable LocalVariableTable this *Lorg/netbeans/api/queries/VersioningQuery; normUri Ljava/net/URI; vqi 8Lorg/netbeans/spi/queries/VersioningQueryImplementation; uri asserts StackMapTable MethodParameters remoteLocation Ljava/lang/String; £ java/lang/String <clinit> 
SourceFile VersioningQuery.java InnerClasses Result 1       [ \    ; <                   /     *· ±           *             	 W X    b     ¾*¸ W<²  Y< » Y· ¿ 4*¸ M*,¶  '» "Y» $Y· &'¶ )*¶ -0¶ ),¶ -¶ 2· 6¿² 9¶ =¹ C M,¹ I  ;,¹ O À SN-*¹ U  $² Y² ]¶ c ² Y² ]i½ Y*S¶ k¬§ÿÂ² Y² ]¶ c ² Y² ]o½ Y*S¶ k¬       B    5  6  7  8  9 $ : , ; P ? o @ y A  B  D  F  H © I ¼ K    *  $ ,    o +      ¾      ·        ü 4ü  Jü ; Sú ú         	 s t    }     È*¸ W<²  Y< » Y· ¿ 4*¸ M*,¶  '» "Y» $Y· &'¶ )*¶ -0¶ ),¶ -¶ 2· 6¿² 9¶ =¹ C M,¹ I  E,¹ O À SN-*¹ q :Æ *² Y² ]¶ c ² Y² ]u½ Y*SYS¶ k°§ÿ¸² Y² ]¶ c ² Y² ]w½ Y*S¶ k°       F    Y  Z  [  \  ] $ ^ , _ P c o d x e } f  g ¡ i ¤ k § m ³ n Æ p    4  $ ,    x ,   ¡  o 5      È      Á        ü 4ü  Jý D S ¢ù ú          ¤      V      '¶ y § ³ ~¶ ¸ ³ Y¸ S¶ ³ 9±           #  %  ( & '     @  ¥    ¦ §   
  >  ¨	