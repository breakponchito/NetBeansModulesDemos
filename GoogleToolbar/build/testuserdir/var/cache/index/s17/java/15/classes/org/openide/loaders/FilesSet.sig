Êþº¾   4 Â
      org/openide/loaders/FilesSet getDelegate ()Ljava/util/Set;	   	 
 primaryFile $Lorg/openide/filesystems/FileObject;
      java/lang/Object <init> ()V	     mymdo %Lorg/openide/loaders/MultiDataObject;	     lazyWorkDone Z
      #org/openide/loaders/MultiDataObject synchObjectSecondary ()Ljava/lang/Object;
    ! " secondaryEntries (Z)Ljava/util/Set;	  $ %  $assertionsDisabled ' java/lang/AssertionError
 & 
  * + , getPrimaryFile &()Lorg/openide/filesystems/FileObject;
  . / 0 getSecondary ()Ljava/util/Map;	  2 3 4 	secondary Ljava/util/Map;
  6 7  
doLazyWork	  9 : ; delegate Ljava/util/TreeSet; = java/util/TreeSet ? ,org/openide/loaders/FilesSet$FilesComparator
 > A  B !(Lorg/openide/loaders/FilesSet;)V
 < D  E (Ljava/util/Comparator;)V
 < G H I add (Ljava/lang/Object;)Z K L M N  java/util/Map keySet
 < P Q R addAll (Ljava/util/Collection;)Z T G U java/util/Set T P T X Y  clear T [ \ I contains T ^ _ R containsAll
 < a b c isEmpty ()Z e *org/openide/loaders/FilesSet$FilesIterator
 d A
 < h i j iterator ()Ljava/util/Iterator; T l m I remove T o p R 	removeAll T r s R 	retainAll K u v w size ()I
 < u T z { | toArray ()[Ljava/lang/Object; T ~ {  (([Ljava/lang/Object;)[Ljava/lang/Object; T   I equals T    toString ()Ljava/lang/String; T   w hashCode  "org/openide/filesystems/FileObject
   H  '(Lorg/openide/filesystems/FileObject;)Z
     c java/lang/Class desiredAssertionStatus 	Signature `Ljava/util/Map<Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiDataObject$Entry;>; 9Ljava/util/TreeSet<Lorg/openide/filesystems/FileObject;>; ((Lorg/openide/loaders/MultiDataObject;)V Code LineNumberTable LocalVariableTable this Lorg/openide/loaders/FilesSet; mdo MethodParameters res Ljava/lang/Object; StackMapTable £ java/lang/Throwable 7()Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; obj 
collection Ljava/util/Collection; LocalVariableTypeTable =Ljava/util/Collection<+Lorg/openide/filesystems/FileObject;>; @(Ljava/util/Collection<+Lorg/openide/filesystems/FileObject;>;)Z Ljava/util/Collection<*>; (Ljava/util/Collection<*>;)Z ® java/util/Iterator <()Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; [Ljava/lang/Object; [TT;  <T:Ljava/lang/Object;>([TT;)[TT; 
access$000 D(Lorg/openide/loaders/FilesSet;)Lorg/openide/filesystems/FileObject; x0 
access$100 /(Lorg/openide/loaders/FilesSet;)Ljava/util/Set; <clinit> GLjava/lang/Object;Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; 
SourceFile FilesSet.java InnerClasses FilesComparator FilesIterator À )org/openide/loaders/MultiDataObject$Entry Entry 0    T             	 
    3 4        : ;       %            F     
*· *+µ ±           ?  @ 	 A        
       
            7          d*YLÂ*´  O*µ *´ ¶ YMÂ*´ ¶ N² # -Æ » &Y· (¿**´ ¶ )µ **´ ¶ -µ 1,Ã§ 
:,Ã¿+Ã§ 
:+Ã¿±   M P   P T P    Y \   \ ` \       .    E  F  G  I  K # L 5 M @ N K O W Q c R      # (       d     ¡   + þ 5   ÿ       ¢ú D ¢ú         ¼     Q*· 5*´ 1YLÂ*´ 8Ç 3*» <Y» >Y*· @· Cµ 8*´ 8*´ ¶ FW*´ 8*´ 1¹ J ¶ OW+Ã§ M+Ã,¿*´ 8°   D G   G J G       "    W  [  \  ] % ^ 1 _ B a L b        Q     ¡    ü B D ¢ú      ¤  H      ?     *· +¹ S ¬           j                ¥ 
      ¥    Q R     Q     *· +¹ V ¬           n                ¦ §  ¨        ¦ ©      ¦       ª  Y      8     
*· ¹ W ±       
    r 	 s        
      \ I     ?     *· +¹ Z ¬           v                ¥        ¥    _ R     Q     *· +¹ ] ¬           z                ¦ §  ¨        ¦ «      ¦       ¬  b c          %*· 5*´ 1YLÂ*´ 8Ç § 
*´ 8¶ `+Ã¬M+Ã,¿          #             ~               %     ¡    ü  FB ¢  i j          ,*· 5*´ 1YLÂ*´ 8Ç » dY*· f§ 
*´ 8¶ g+Ã°M+Ã,¿   & '   ' * '                '         ,     ¡    ü  F ­B ¢     ¯  m I     ?     *· +¹ k ¬                           ¥        ¥    p R     Q     *· +¹ n ¬                           ¦ §  ¨        ¦ «      ¦       ¬  s R     Q     *· +¹ q ¬                           ¦ §  ¨        ¦ «      ¦       ¬  v w          /*· 5*´ 1YLÂ*´ 8Ç *´ 1¹ t `§ 
*´ 8¶ x+Ã¬M+Ã,¿   ) *   * - *                *         /     ¡    ü   FB ¢  { |     4     
*· ¹ y °                   
      {      Q     *· +¹ } °           £                ¥ °  ¨        ¥ ±      ¥       ²   I     ?     *· +¹  ¬           §                ¥        ¥          4     
*· ¹  °           «        
       w     4     
*· ¹  ¬           ¯        
    A H I     3     	*+À ¶ ¬           %        	         ¥  ³ ´     /     *´ °           %         µ    ¶ ·     /     *· °           %         µ     ¸      4      ¶  § ³ #±           % ¡    @      ¹ º    » ¼     >  ½  d  ¾  ¿  Á