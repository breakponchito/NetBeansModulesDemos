Êþº¾   4 	      /org/openide/nodes/EntrySupportLazy$LazySnapshot this$0 $Lorg/openide/nodes/EntrySupportLazy;
  	 
   java/util/AbstractList <init> ()V
      "org/openide/nodes/EntrySupportLazy incrementCount	     entries Ljava/util/List;	     $assertionsDisabled Z  java/lang/AssertionError
  	
     ! " java/util/Collections emptyMap ()Ljava/util/Map;	  $ % & entryToInfo Ljava/util/Map; ( ) * + , java/util/List size ()I . ) / java/util/Map ( 1 2 3 get (I)Ljava/lang/Object; 5  org/openide/nodes/Children$Entry
  7 2 8 <(Lorg/openide/nodes/Children$Entry;)Lorg/openide/nodes/Node; . : 2 ; &(Ljava/lang/Object;)Ljava/lang/Object; = 1org/openide/nodes/EntrySupportLazyState$EntryInfo
 < ? @ A getNode ()Lorg/openide/nodes/Node;
  C D E isDummyNode (Lorg/openide/nodes/Node;)Z
  G H I 	hideEmpty 4(Ljava/util/Set;Lorg/openide/nodes/Children$Entry;)V ( K L M toString ()Ljava/lang/String;	  O P Q LOCK Ljava/lang/Object;
  S T  decrementCount
  V W , getSnapshotCount
  Y Z [ registerNode 7(ILorg/openide/nodes/EntrySupportLazyState$EntryInfo;)V
  ] 2 ^ (I)Lorg/openide/nodes/Node;
 ` a b c d java/lang/Class desiredAssertionStatus ()Z 	Signature 4Ljava/util/List<Lorg/openide/nodes/Children$Entry;>; fLjava/util/Map<Lorg/openide/nodes/Children$Entry;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;>; F(Lorg/openide/nodes/EntrySupportLazy;Ljava/util/List;Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/nodes/EntrySupportLazy$LazySnapshot; e2i LocalVariableTypeTable StackMapTable MethodParameters (Ljava/util/List<Lorg/openide/nodes/Children$Entry;>;Ljava/util/Map<Lorg/openide/nodes/Children$Entry;Lorg/openide/nodes/EntrySupportLazyState$EntryInfo;>;)V index I entry "Lorg/openide/nodes/Children$Entry; info 3Lorg/openide/nodes/EntrySupportLazyState$EntryInfo; node Lorg/openide/nodes/Node; | org/openide/nodes/Node #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; finalize 
unregister  java/lang/Object  java/lang/Throwable 
Exceptions <clinit> 2Ljava/util/AbstractList<Lorg/openide/nodes/Node;>; 
SourceFile EntrySupportLazy.java InnerClasses LazySnapshot  org/openide/nodes/Children Entry  'org/openide/nodes/EntrySupportLazyState 	EntryInfo            e    f  % &  e    g            h  i  	     T*+µ *· +¶ *,µ ²  ,Ç » Y· ¿*-Æ -§ ¸ µ #²  ,¹ ' *´ #¹ - ¤ » Y· ¿±    j      k 	l m n $o 3p Sq k   *    T l m     T      T      T n &  o       T  f    T n g  p   3 ÿ $    ( .  H ÿ     ( .   ." q        n   e    r  2 ^  i   V     *´ ¹ 0 À 4M*,¶ 6°    j   
   t u k         l m      s t    u v  q    s     2 8  i        %*´ #+¹ 9 À <M,¶ >N-¸ B *´ +¶ F-°    j      y z { } # k   *    % l m     % u v    w x    y z  p    ý # < { q    u    L M  i   4     
*´ ¹ J °    j       k       
 l m   }     ~    + ,  i   4     
*´ ¹ ' ¬    j       k       
 l m       i   ²     7<*´ ´ NYMÂ*´ ¶ R*´ ¶ U <,Ã§ N,Ã-¿ *´ ¶ X±   ! $   $ ' $    j   & 	        ) - 6 k       7 l m    5    p    ý  D ú        }     ~  A 2 3  i   0     *¶ \°    j      f k        l m   q    s      i   4      ¶ _ § ³ ±    j      f p    @  e                    4   <   