Êþº¾   4 Þ	      4org/openide/nodes/FilterNode$Children$DefaultSupport this$0 'Lorg/openide/nodes/FilterNode$Children;
  	 
   %org/openide/nodes/EntrySupportDefault <init> (Lorg/openide/nodes/Children;)V	     origSupport 'Lorg/openide/nodes/EntrySupportDefault;
     createSnapshot 9()Lorg/openide/nodes/EntrySupportDefault$DefaultSnapshot;  java/lang/Object	      5org/openide/nodes/EntrySupportDefault$DefaultSnapshot holder Ljava/lang/Object;	     ! " %org/openide/nodes/FilterNode$Children original Lorg/openide/nodes/Node;
 $ % & ' ( org/openide/nodes/Node getChildren ()Lorg/openide/nodes/Children;
 * + , - . org/openide/nodes/Children getNodes (Z)[Lorg/openide/nodes/Node;
  0 - 1 ()[Lorg/openide/nodes/Node;
 * 3 4 5 getNodesCount (Z)I
  7 4 8 ()I	 * : ; < LOG Ljava/util/logging/Logger;	 > ? @ A B java/util/logging/Level FINEST Ljava/util/logging/Level; D Count {1} gives {2}
 F G H I J java/lang/Integer valueOf (I)Ljava/lang/Integer;
 L M N O P java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 * R S T 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node;
  V W X 
access$201 S(Lorg/openide/nodes/FilterNode$Children;Ljava/lang/String;)Lorg/openide/nodes/Node;
  Z [ \ 
updateKeys ()V	 ^ _ ` a < org/openide/nodes/FilterNode LOGGER	 > c d B FINER
 L f g h 
isLoggable (Ljava/util/logging/Level;)Z j java/lang/StringBuilder
 i l  \ n updateKeys() 
 i p q r append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 i t q u -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 i w x y toString ()Ljava/lang/String;
 L { | } finer (Ljava/lang/String;)V
     
access$300 W(Lorg/openide/nodes/FilterNode$Children;)Lorg/openide/nodes/FilterNode$ChildrenAdapter;      getting original nodes
 * 0      setKeys(), keys: 
    x  java/util/Arrays '([Ljava/lang/Object;)Ljava/lang/String;
     setKeys ([Ljava/lang/Object;)V
     isInitialized ()Z
    \ notifySetEntries  "org/openide/nodes/Children$Keys$KE
     6(Lorg/openide/nodes/Children$Keys;Ljava/lang/Object;)V  ;org/openide/nodes/FilterNode$Children$FilterChildrenSupport m(Lorg/openide/nodes/FilterNode$Children;Lorg/openide/nodes/Children;Lorg/openide/nodes/EntrySupportDefault;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/nodes/FilterNode$Children$DefaultSupport; ch Lorg/openide/nodes/Children; MethodParameters snapshot 7Lorg/openide/nodes/EntrySupportDefault$DefaultSnapshot; 	newHolder [Ljava/lang/Object; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; callGetNodes optimalResult Z hold [Lorg/openide/nodes/Node; StackMapTable ± callGetNodesCount cnt I ret name Ljava/lang/String; dontGC filterChildrenAdded &(Lorg/openide/nodes/NodeMemberEvent;)V ev #Lorg/openide/nodes/NodeMemberEvent; filterChildrenRemoved filterChildrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V $Lorg/openide/nodes/NodeReorderEvent; update arr LOG_ENABLED cha .Lorg/openide/nodes/FilterNode$ChildrenAdapter; É ,org/openide/nodes/FilterNode$ChildrenAdapter createEntryForKey <(Lorg/openide/nodes/Node;)Lorg/openide/nodes/Children$Entry; key originalSupport "()Lorg/openide/nodes/EntrySupport; 
SourceFile FilterNode.java InnerClasses Children DefaultSupport DefaultSnapshot ChildrenAdapter × org/openide/nodes/Children$Keys Keys KE FilterChildrenSupport Ü  org/openide/nodes/Children$Entry Entry                          Z     *+µ *,· *-µ ±           ` a 
b c ¡         ¢ £      ¤ ¥        ¦     ¤             l     "*· L½ Y+´ SY*´ ¶ SM+,µ +°           g h i  j ¡        " ¢ £     § ¨    © ª  «     ¬    ­ .     {     M *´ ´ ¶ #¶ )M*´ ¶ /M,°           n o p r s ¡         ¢ £      ® ¯    ° ±  ²    ü  ³ ¦    ®    ´ 5     ¤     <= *´ ´ ¶ #¶ 2=*´ ¶ 6>² 9² =C½ Y¸ ESY¸ ES¶ K¬           x y z | } :~ ¡   *    < ¢ £     < ® ¯   : µ ¶    · ¶  ²    ü  ¦    ®   «     ¬    S T     Z     *´ ´ ¶ #+¶ QM*´ +¸ U°        
     ¡         ¢ £      ¸ ¹   	 º "  ¦    ¸    » ¼     =     *· Y±        
     ¡        ¢ £      ½ ¾  ¦    ½    ¿ ¼     =     *· Y±        
     ¡        ¢ £      ½ ¾  ¦    ½    À Á     =     *· Y±        
     ¡        ¢ £      ½ Â  ¦    ½    Ã \     3     *· Y±        
     ¡        ¢ £    [ \         ² ]² b¶ e< ² ]» iY· km¶ o*¶ s¶ v¶ z*´ ¸ ~M,Æ V ² ]¶ z*´ ´ ¶ #¶ N ² ]» iY· k¶ o-¸ ¶ o¶ v¶ z*´ -¶ *´ ¶  
*´ ¶ ±        :    
  ' / 3 7 ?  M¢ Q£ m¥ u¦ § ª ¡   *  M 9 Ä ±     ¢ £   
 } Å ¯  / X Æ Ç  ²    ü 'ü  Èü - ³ú   Ê Ë     A     » Y*´ +· °           ­ ¡        ¢ £      Ì "  ¦    Ì    Í Î     /     *´ °           ± ¡        ¢ £    Ï    Ð Ñ   B   ^ Ò 	   Ó    Ô  È ^ Õ 
 Ö * Ø	  Ö Ù     Ú Û * Ý