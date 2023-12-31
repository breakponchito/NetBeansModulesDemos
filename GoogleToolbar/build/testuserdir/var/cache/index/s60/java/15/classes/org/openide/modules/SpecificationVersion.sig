Êþº¾   4  
      java/lang/Object <init> ()V	  	 
   (org/openide/modules/SpecificationVersion 
parseCache Ljava/util/Map;      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  [I
     parse (Ljava/lang/String;)[I
      java/lang/String intern ()Ljava/lang/String;    ! " put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	  $ %  digits ' java/util/StringTokenizer ) .
 & +  , ((Ljava/lang/String;Ljava/lang/String;Z)V
 & . / 0 countTokens ()I 2 java/lang/NumberFormatException 4 java/lang/StringBuilder
 3  7 *Even number of pieces in a spec version: `
 3 9 : ; append -(Ljava/lang/String;)Ljava/lang/StringBuilder; = '
 3 ? @  toString
 1 B  C (Ljava/lang/String;)V
 & E F G hasMoreTokens ()Z
 & I J  	nextToken
 L M N O P java/lang/Integer parseInt (Ljava/lang/String;)I R Spec version component <0: 
 3 T : U (I)Ljava/lang/StringBuilder;
  W X Y equals (Ljava/lang/Object;)Z [ Expected dot in spec version: `
 ] ^ _ ` a java/lang/Math max (II)I
 c d e X f java/util/Arrays ([I[I)Z o
 3 i  j (I)V
 3 l : m (C)Ljava/lang/StringBuilder;
  o p q 	compareTo -(Lorg/openide/modules/SpecificationVersion;)I s java/util/HashMap
 r i v java/lang/Comparable 	Signature %Ljava/util/Map<Ljava/lang/String;[I>; Code LineNumberTable LocalVariableTable d this *Lorg/openide/modules/SpecificationVersion; version Ljava/lang/String; StackMapTable  java/lang/Throwable 
Exceptions MethodParameters piece I tok Ljava/util/StringTokenizer; len i expectingNumber Z d1 d2 o od len1 len2 #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; Ljava/lang/Object; hashCode hash buf Ljava/lang/StringBuilder; (Ljava/lang/Object;)I <clinit> TLjava/lang/Object;Ljava/lang/Comparable<Lorg/openide/modules/SpecificationVersion;>; 
SourceFile SpecificationVersion.java 1    u      w    x  %       C  y   ß     @*· ² YMÂ² +¹  À N-Ç +¸ N² +¶ -¹  W*-µ #,Ã§ 
:,Ã¿±  
 5 8   8 < 8    z   & 	   )  * 
 +  -  .   / . 2 3 3 ? 4 {        |     @ } ~     @       + ÿ .       ÿ 	      ú       1        
    y       ¾» &Y*(· *L+¶ -=p #» 1Y» 3Y· 56¶ 8*¶ 8<¶ 8¶ >· A¿l`¼
N66+¶ D s <6+¶ H¸ K6 » 1Y» 3Y· 5Q¶ 8¶ S¶ >· A¿-O§ÿ¾(+¶ H¶ V #» 1Y» 3Y· 5Z¶ 8*¶ 8<¶ 8¶ >· A¿6§ÿ-°    z   N    7  9  :  ; 7 = ? > B @ E B L C Q D T F ] H b I ~ L  M  N  O ¶ R ¼ U {   H  ] *      ¾      ²     ­    ?  %   B |    E y        ý 7 &þ  ü 8ú +      1         p q  y  '  	   Z+´ #M*´ #¾>,¾6¸ \66¢ :¢ *´ #.§ 6¢ 
,.§ 6 	d¬§ÿÅ¬    z   .    [  \  ]  ^  ` ! a 4 b E d L e R ` X i {   \ 	 4     E      >      Z } ~     Z  ~   U     O     K     C `      % ÿ       @ü @ú ú                  X Y  y   ]     +Á  ¬*´ #+À ´ #¸ b¬    z       o  p 	 s {        } ~             	                  0  y        #g<*´ #¾=>¢ *´ #.x<§ÿí¬    z       y  z 	 |  }  | !  {   *         # } ~         	         þ ú           @   y   ¦     =» 3Y*´ #¾h`· hL=*´ #¾¢  
+.¶ kW+*´ #.¶ SW§ÿÞ+¶ >°    z               '  2  8  {       %      = } ~    ,        ý  3ú         A p   y   3     	*+À ¶ n¬    z         {       	 } ~                     y   &      » rY È· t³ ±    z       %  w         