Êþº¾   4 »
      java/lang/Object <init> ()V	  	 
   -org/netbeans/swing/tabcontrol/event/ArrayDiff deleted Ljava/util/Set;	     added	     old ([Lorg/netbeans/swing/tabcontrol/TabData;	     nue  java/lang/NullPointerException  Both arrays are null  Old array is null  New array is null
     ! (Ljava/lang/String;)V
 # $ % & ' java/util/Arrays equals )([Ljava/lang/Object;[Ljava/lang/Object;)Z
  )  * S([Lorg/netbeans/swing/tabcontrol/TabData;[Lorg/netbeans/swing/tabcontrol/TabData;)V , java/util/HashSet
 # . / 0 asList %([Ljava/lang/Object;)Ljava/util/List;
 + 2  3 (Ljava/util/Collection;)V
 + 5  6 (I)V
 + 8 9 : contains (Ljava/lang/Object;)Z < java/lang/Integer
 ; 5
 + ? @ : add B ? C java/util/Set
 E F G H I java/lang/Math max (II)I
 K L M & : %org/netbeans/swing/tabcontrol/TabData O java/lang/StringBuffer
 N  R <ArrayDiff: deleted indices: [
 N T U V append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
  X Y Z getDeletedIndices ()Ljava/util/Set;
  \ ] ^ outCol *(Ljava/util/Collection;)Ljava/lang/String; ` ] added indices: [
  b c Z getAddedIndices e ] changed indices: [
  g h Z getChangedIndices j ] moved indices: [ l ]>
 N n o p toString ()Ljava/lang/String; r s t u v java/util/Collection iterator ()Ljava/util/Iterator; x y z { | java/util/Iterator hasNext ()Z x ~   next ()Ljava/lang/Object;
  n  ,
     
getOldData *()[Lorg/netbeans/swing/tabcontrol/TabData;
     
getNewData
     arrayHashCode ([Ljava/lang/Object;)I
     hashCode ()I 	Signature $Ljava/util/Set<Ljava/lang/Integer;>; Code LineNumberTable LocalVariableTable this /Lorg/netbeans/swing/tabcontrol/event/ArrayDiff; StackMapTable   java/lang/String MethodParameters 
createDiff ([Lorg/netbeans/swing/tabcontrol/TabData;[Lorg/netbeans/swing/tabcontrol/TabData;)Lorg/netbeans/swing/tabcontrol/event/ArrayDiff; i I set Ljava/util/HashSet; results LocalVariableTypeTable <Ljava/util/HashSet<Lorg/netbeans/swing/tabcontrol/TabData;>; (Ljava/util/HashSet<Ljava/lang/Integer;>; &()Ljava/util/Set<Ljava/lang/Integer;>; getMovedIndices isMoved Z 	isPresent sb Ljava/lang/StringBuffer; o Ljava/lang/Object; c Ljava/util/Collection; Ljava/util/Iterator; result otherOld otherNue [Ljava/lang/Object; 
SourceFile ArrayDiff.java 1                                     *    	     A*· *µ *µ *+µ *,µ ,Æ +Ç #» Y+Ç ,Ç § +Ç § · ¿±       2    ;  a 	 u  <  =  >   ? , @ 1 A 5 B : C @ E         A       A      A       X ÿ        ÿ          ÿ          ÿ               	              /     *´ °           K                    /     *´ °           R             	        Y     *+¸ " » Y*+· (°°           Z  [  ]                           	        Y Z     õ     X*´ Ç O» +Y*´ ¸ -· 1L» +Y*´ ¾· 4M>*´ ¾¢ #+*´ 2¶ 7 ,» ;Y· =¶ >W§ÿÚ*,µ *´ °       & 	   h  i  j # k . l ; m H k N p S r    *  % ) ¡ ¢   = £ ¤  # 0 ¥ ¤    X     ¦      = £ §  # 0 ¥ ¨      þ % + +"ú ù      ©  c Z     ÷     Z*´ Ç Q» +Y*´ ¸ -· 1L» +Y*´ ¾· 4M>*´ ¾¢ %+*´ 2¶ 7 ,» ;Y· =¹ A W§ÿØ*,µ *´ °       & 	   |  }  ~ #  .  ;  J  P  U     *  % + ¡ ¢   ? £ ¤  # 2 ¥     Z     ¦      ? £ §  # 2 ¥       þ % + B$ú ù      ©  h Z     ö     g*´ ¾*´ ¾¸ D<» +Y· 4M>¢ J*´ ¾¢ .*´ ¾¢ %*´ 2*´ 2¶ J  ,» ;Y· =¶ >W§ ,» ;Y· =¶ >W§ÿ·,°       & 	          0  B  R  _  e     *   L ¡ ¢    g      Y H ¢   P ¥ ¤  ¦      P ¥ ¨      þ  +8ú      ©  ª Z    =     }» +Y*´ ¸ -· 1L» +Y*´ ¾· 4M>*´ ¾¢ W+*´ 2¶ 76 @*´ ¾¢ *´ 2*´ 2¶ J *´ ¾¡ § 6 ,» ;Y· =¶ >W§ÿ¦,°       .    §  ¨  ª ' « 3 ¬ 8 ­ M ® c ¯ h ° u ª { ´    >  c  « ¬  3 B ­ ¬   ] ¡ ¢    }      n £ ¤   a ¥ ¤  ¦      n £ §   a ¥ ¨      þ  + +ü 4@ú ú      ©  o p     ¼     `» NY· PL+Q¶ SW+*¶ W¸ [¶ SW+_¶ SW+*¶ a¸ [¶ SW+d¶ SW+*¶ f¸ [¶ SW+i¶ SW+*¶ f¸ [¶ SW+k¶ SW+¶ m°       .    ¸  ¹  º  » " ¼ . ½ 5 ¾ A ¿ H À T Á [ Â        `      X ® ¯  
 ] ^     »     @*¹ q L» NY· PM+¹ w  &+¹ } N,-¶ ¶ SW+¹ w  
,¶ SW§ÿ×,¶ m°       & 	   Æ  Ç  È  É  Ê ( Ë 1 Ì 8 Î ; Ï    *    ° ±    @ ² ³    9 ¡ ´   1 µ ¯      ý  x N(     ²    & :     »     <+Á  6+*¦ ¬+À ¶ M+À ¶ N*´ ,¸ " *´ -¸ " § ¬¬       & 	   Ó  Ô  Õ  ×  Ø  Ù . Ú 9 Ù : Ü    *   $ ¶     ·     <       < ° ±      ý )  @ù       °          :     *´ ¸ *´ ¸ ¬           à             
       {     <=*¾¢ *2¶ `<§ÿì¬           ä  å 
 æ  å  è         ¡ ¢     ° ¸     µ ¢     
 ý ú      °    ¹    º