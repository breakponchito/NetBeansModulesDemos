Êþº¾   4 ¨
      java/lang/Object <init> ()V  java/util/ArrayList
  	      $org/openide/util/lookup/MetaInfCache knownInstances Ljava/util/List;      java/util/List add (Ljava/lang/Object;)Z     size ()I
     hashForClass (Ljava/lang/Class;I)I     ! get (I)Ljava/lang/Object; # java/lang/ref/Reference
 " %   & ()Ljava/lang/Object;
  ( ) * getClass ()Ljava/lang/Class;
  , - . hashPut (Ljava/lang/Object;)V	  0 1 2 knownInstancesCount I	 4 5 6 7 8 -org/openide/util/lookup/MetaInfServicesLookup LOGGER Ljava/util/logging/Logger;	 : ; < = > java/util/logging/Level CONFIG Ljava/util/logging/Level; @ )Cache of size {0} is 2/3 full. Rehashing.
 B C D E F java/lang/Integer valueOf (I)Ljava/lang/Integer;
 H I J K L java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  N  O (I)V  Q R S iterator ()Ljava/util/Iterator; U V W X Y java/util/Iterator hasNext ()Z U [ \ & next
  ^ _ . storeInstance  a b  clear  d e f addAll (Ljava/util/Collection;)Z	  h i j $assertionsDisabled Z
 l m n o  java/lang/Thread 	holdsLock q java/lang/AssertionError
 p  t java/lang/ref/WeakReference
 s v  .  x y z set '(ILjava/lang/Object;)Ljava/lang/Object;
  | }  hashCode
      java/lang/Math abs (I)I
     Y java/lang/Class desiredAssertionStatus 	Signature ?Ljava/util/List<Ljava/lang/ref/Reference<Ljava/lang/Object;>;>; Code LineNumberTable LocalVariableTable i this &Lorg/openide/util/lookup/MetaInfCache; StackMapTable MethodParameters findInstance %(Ljava/lang/Class;)Ljava/lang/Object; ref Ljava/lang/ref/Reference; obj Ljava/lang/Object; c Ljava/lang/Class; index LocalVariableTypeTable -Ljava/lang/ref/Reference<Ljava/lang/Object;>; Ljava/lang/Class<*>; ((Ljava/lang/Class<*>;)Ljava/lang/Object; instance r newCache o (Ljava/lang/Class<*>;I)I <clinit> 
SourceFile MetaInfCache.java 0       1 2            i j      O          (*· *» Y· 	µ 
=¢ *´ 
¹  W§ÿí±                !  " ! ! ' $          2    (       (  2      ÿ     ú         !      0     Z*´ 
¹  =+¸ >6¢ B*´ 
¹  À ":Ç § +¶ $:Æ +¶ '¦ °  >§ÿ¾°       :    ' 
 (  )  * ( + - , 0 . 7 / < 0 E 1 H 4 P 5 R ) X 8    H  ( *    7      E  2    Z       Z    
 P  2   J  2       ( *      Z        þ ü  "ü  ù 	ú              ! _ .    h     *+· +*´ 
¹  =*´ /hl¤ }² 3² 9?¸ A¶ G» Yh· MN*´ 
¹ P :¹ T  /¹ Z À ":Ç §ÿå¶ $:Ç §ÿÖ-¶ ]§ÿÍ*´ 
¹ ` *´ 
-´ 
¹ c W*-´ /µ /±       F    <  =  >  ? * @ 5 A V B [ C ^ E e F j G m I s J v L  M  N  P    >  e      V  ¡   5 ` ¢             £      2       V  ¡       þ @  Uü  "ü  ø ú      £    - .         ² g *¸ k » pY· r¿+¶ 'M*´ 
¹  >,¸ 66¢ [*´ 
¹  À ":Ç § ¶ $:Ç $*´ 
» sY+· u¹ w W*Y´ /`µ /§   6§ÿ¥±       >    S  T  U $ V + W 4 X D Y T Z Y [ m \ w ] z _  `  W  c    R  D B    T 2    . ^  2            £    s    $ i  2  + b  2       D B     s       , ÿ       ü  "D ü ' ù ú      £   
       P     
*¶ {p¸ ~¬           f        
       
  2         
        	           ¤  ¥      4      ¶  § ³ g±                @  ¦    §