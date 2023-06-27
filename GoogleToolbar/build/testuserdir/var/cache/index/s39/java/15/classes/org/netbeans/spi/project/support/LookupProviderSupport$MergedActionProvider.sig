Êþº¾   4 ½
      Korg/netbeans/spi/project/support/LookupProviderSupport$MergedActionProvider <init> (Lorg/openide/util/Lookup;)V
  	 
   java/lang/Object ()V  'org/netbeans/spi/project/ActionProvider
      org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	     	lkpResult  Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V	     ! actionNamesCache [Ljava/lang/String; # java/util/LinkedHashSet
 " 	
  & ' ( allInstances ()Ljava/util/Collection; * + , - . java/util/Collection iterator ()Ljava/util/Iterator; 0 1 2 3 4 java/util/Iterator hasNext ()Z 0 6 7 8 next ()Ljava/lang/Object;  : ; < getSupportedActions ()[Ljava/lang/String;
 > ? @ A B java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; D E F G H java/util/Set addAll (Ljava/util/Collection;)Z D J K L size ()I N java/lang/String D P Q R toArray (([Ljava/lang/Object;)[Ljava/lang/Object; !	  U V W $assertionsDisabled Z Y java/lang/AssertionError
 X 	 \ ] ^ _ ` java/util/List contains (Ljava/lang/Object;)Z  b c d isActionEnabled .(Ljava/lang/String;Lorg/openide/util/Lookup;)Z f "java/lang/IllegalArgumentException h java/lang/StringBuilder
 g 	 k Misimplemented command '
 g m n o append -(Ljava/lang/String;)Ljava/lang/StringBuilder; q ' in  * s Q t ()[Ljava/lang/Object;
 > v w x toString '([Ljava/lang/Object;)Ljava/lang/String;
 g z w { ()Ljava/lang/String;
 e }  ~ (Ljava/lang/String;)V     invokeAction .(Ljava/lang/String;Lorg/openide/util/Lookup;)V
 M    format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;  6org/netbeans/spi/project/support/LookupProviderSupport
     4 java/lang/Class desiredAssertionStatus  org/openide/util/LookupListener 	Signature KLorg/openide/util/Lookup$Result<Lorg/netbeans/spi/project/ActionProvider;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value VolatileArrayField Code LineNumberTable LocalVariableTable this MLorg/netbeans/spi/project/support/LookupProviderSupport$MergedActionProvider; lkp Lorg/openide/util/Lookup; MethodParameters LeakingThisInConstructor ap )Lorg/netbeans/spi/project/ActionProvider; actionNames Ljava/util/Set; result LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>; StackMapTable Ljava/lang/Override; command Ljava/lang/String; context found 
Exceptions resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; V(Lorg/openide/util/Lookup;Lorg/netbeans/spi/project/support/LookupProviderSupport$1;)V x0 x1 :Lorg/netbeans/spi/project/support/LookupProviderSupport$1; <clinit> 
SourceFile LookupProviderSupport.java InnerClasses MergedActionProvider Result ¼ 8org/netbeans/spi/project/support/LookupProviderSupport$1 0                B   !         [ s  V W           W     *· *+¶ µ *´ *¶ ±           Ú  Û  Ü  Ý                                [ s   ; <         r*´ L+Ç X» "Y· $M*´ ¶ %¹ ) N-¹ /  "-¹ 5 À :,¹ 9 ¸ =¹ C W§ÿÛ,,¹ I ½ M¹ O À SL*+µ ² T +Ç » XY· Z¿+°       * 
   á  â 	 ã  ä 2 å C æ F ç Y è ^ ê p ë    *  2       M ¡ ¢    r      m £ !  ¤      M ¡ ¥  ¦    þ  S D 0ú 'ú       §    c d         >*´ ¶ %¹ ) :¹ /  5¹ 5 À :¹ 9 ¸ =+¹ [  +,¹ a  ¬>§ÿÇ ¬» eY» gY· ij¶ l+¶ lp¶ l*´ ¶ %¹ r ¸ u¶ l¶ y· |¿       * 
   ð  ñ & ò 9 ó E ô G ö I ù L ú P û R ý    4  & #               ¨ ©     ª     « W  ¦    ý  0ü 6 ú ú  ¬     e    	 ¨   ª        §          Ï     ]*´ ¶ %¹ ) N-¹ /  :-¹ 5 À :¹ 9 ¸ =+¹ [  +,¹ a  +,¹  ±§ÿÃ» eY+½ ¸ · |¿           ! 8 @ I J	 M
    *  ! )       ]       ] ¨ ©    ] ª   ¦    ü  0<ú  ¬     e    	 ¨   ª        §    ­ ®     >     *µ ±       
                    ¯ °      ¯        §     ±     D     *+· ±           Ó                 ²      ³ ´   µ      4      ¶  § ³ T±           Ó ¦    @  ¶    · ¸       ¹    º	 »    