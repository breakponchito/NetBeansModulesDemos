Êþº¾   4 ¡	      2org/openide/util/lookup/InheritanceTree$1VerifyJob this$0 )Lorg/openide/util/lookup/InheritanceTree;	   	 
 val$ch .Lorg/openide/util/lookup/InheritanceTree$Node;	     	val$clazz Ljava/lang/Class;	    
 val$n
      java/lang/Object <init> ()V  +org/openide/util/lookup/AbstractLookup$Pair      java/util/Collection toArray (([Ljava/lang/Object;)[Ljava/lang/Object; ! .[Lorg/openide/util/lookup/AbstractLookup$Pair;	  # $ ! pairs
 & ' ( ) * ,org/openide/util/lookup/InheritanceTree$Node deserialized ()Z	  , - . answers [Z
  0 1 2 
instanceOf (Ljava/lang/Class;)Z
 & 4 5 6 
assignItem Y(Lorg/openide/util/lookup/InheritanceTree;Lorg/openide/util/lookup/AbstractLookup$Pair;)Z	 & 8 9 : items Ljava/util/Collection;  < = > remove (Ljava/lang/Object;)Z	 & @ A B children Ljava/util/ArrayList; D java/util/HashMap
 F G H I J java/util/ArrayList size ()I
 C L  M (I)V
 F O P Q iterator ()Ljava/util/Iterator; S T U V * java/util/Iterator hasNext
 X Y Z [ \ 'org/openide/util/lookup/InheritanceTree 
access$000 D(Ljava/util/Iterator;)Lorg/openide/util/lookup/InheritanceTree$Node;
 & ^ _ ` getType ()Ljava/lang/Class;
 C b c d put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; S f = 
 & h i  markDeserialized
 F k l m addAll (Ljava/util/Collection;)Z  O S p q r next ()Ljava/lang/Object; t .org/openide/util/lookup/AbstractLookup$ISE$Job 	Signature 1[Lorg/openide/util/lookup/AbstractLookup$Pair<*>; ¯(Lorg/openide/util/lookup/InheritanceTree;Ljava/util/Collection;Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class;Lorg/openide/util/lookup/InheritanceTree$Node;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/util/lookup/InheritanceTree$1VerifyJob; LocalVariableTypeTable ELjava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair;>; StackMapTable  java/lang/Class MethodParameters H(Ljava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair;>;)V before i I inside item -Lorg/openide/util/lookup/AbstractLookup$Pair; Ljava/util/Iterator; node prev nodes Ljava/util/HashMap; child TLjava/util/HashMap<Ljava/lang/Class;Lorg/openide/util/lookup/InheritanceTree$Node;>; 
SourceFile InheritanceTree.java EnclosingMethod   classToNode o(Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class;)Lorg/openide/util/lookup/InheritanceTree$Node; InnerClasses 	VerifyJob Node  &org/openide/util/lookup/AbstractLookup Pair  *org/openide/util/lookup/AbstractLookup$ISE ISE Job      s   $ !  u    v  - .   	 
        
          w  x   ­     0*+µ *-µ *µ *µ *· ,Æ *,½ ¹  À  µ "±    y      b c d /f z        0 { |     0      0 9 :  }       0 9 ~      ÿ /   X  &  &        9   	   u         x        ?*´ ¶ %W*´ "Æ 2**´ "¾¼µ +<*´ "¾¢ *´ +*´ "2*´ ¶ /T§ÿá±    y      j l m o %p 8o >s z      "      ? { |      	 ü ú !     x  8    *´ "Æ B<*´ "¾¢ 7*´ +3 (*´ *´ *´ "2¶ 3W*´ ´ 7*´ "2¹ ; W§ÿÆ*´ ´ ?Æ Â» CY*´ ´ ?¶ Eh· KL*´ ´ ?¶ NM,¹ R  ,¸ WN-Ç §ÿî+-¶ ]-¶ aÀ &:Æ x,¹ e +-¶ ]¶ aW¶ g´ ?Ç -´ ?µ ?§ -´ ?Æ ´ ?-´ ?¶ jW-´ 7Æ 3-´ 7¹ n :¹ R  ¹ o À :*´ ¶ 3W§ÿÞ§ÿc±    y   z   v w x y -z @w F P d o x }      ¨ ­ µ Á È Õ Ü ç ñ ý 	¡¤¦ z   R  	 =    ý     ç % 9   }   
   z  
  d «    o        { |   }     d «       , 
ü 	6ú ý ( C Sü  &ü < &ü  Sø $ù            X     *        & X     	     s   