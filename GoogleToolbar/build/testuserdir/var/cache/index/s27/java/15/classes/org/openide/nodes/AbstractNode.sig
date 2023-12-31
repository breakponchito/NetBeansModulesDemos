Êþº¾   4  org/openide/nodes/AbstractNode
     <init> 8(Lorg/openide/nodes/Children;Lorg/openide/util/Lookup;)V
   	 org/openide/nodes/Node  org/openide/nodes/defaultNode	     iconBase Ljava/lang/String;  .png	     iconExtension	     sheetCookieL 7Lorg/openide/nodes/AbstractNode$SheetAndCookieListener;   
     setName (Ljava/lang/String;)V	   ! " # $ org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;
  &  ' (Lorg/openide/nodes/Children;)V	  ) * + lookup Ljava/lang/Object; - java/lang/Cloneable
  / 0 1 clone ()Ljava/lang/Object; 3 $java/lang/CloneNotSupportedException 5 org/openide/nodes/FilterNode
 4 7  8 (Lorg/openide/nodes/Node;)V	  : ; < displayFormat Ljava/text/MessageFormat; > java/lang/Object
 @ A B C D java/text/MessageFormat format &(Ljava/lang/Object;)Ljava/lang/String;
  F G  setDisplayName
  I J K fireDisplayNameChange '(Ljava/lang/String;Ljava/lang/String;)V M .gif
  O P K setIconBaseWithExtension
 R S T U V java/lang/String lastIndexOf (I)I
 R X Y Z 	substring (II)Ljava/lang/String;
 R \ Y ] (I)Ljava/lang/String;
 R _ ` a equals (Ljava/lang/Object;)Z
  c d e fireIconChange ()V
  g h e fireOpenedIconChange
  j k l findIcon (II)Ljava/awt/Image;	 n o p q r org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx; t java/lang/StringBuilder
 s v  e
 s x y z append -(Ljava/lang/String;)Ljava/lang/StringBuilder;	  | } ~ icons [Ljava/lang/String;
 s    toString ()Ljava/lang/String;
      org/openide/util/ImageUtilities 	loadImage %(Ljava/lang/String;Z)Ljava/awt/Image;  java/beans/BeanInfo
     getDefaultIcon ()Ljava/awt/Image;  !org/openide/nodes/defaultNode.png  "java/util/MissingResourceException  No default icon
     9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
     setSheetImpl (Lorg/openide/nodes/Sheet;)V
     firePropertySetsChange M([Lorg/openide/nodes/Node$PropertySet;[Lorg/openide/nodes/Node$PropertySet;)V ¡ 5org/openide/nodes/AbstractNode$SheetAndCookieListener
   £  ¤ #(Lorg/openide/nodes/AbstractNode;)V	  ¦ § ¨ sheet Lorg/openide/nodes/Sheet;
 ª « ¬ ­ ® org/openide/nodes/Sheet removePropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 ª ° ± ® addPropertyChangeListener
 ª v
  ´ µ ¶ createSheet ()Lorg/openide/nodes/Sheet; ¸ java/lang/IllegalStateException º createSheet returns null in 
 = ¼ ½ ¾ getClass ()Ljava/lang/Class;
 À Á Â Ã  java/lang/Class getName
 · Å  
  Ç È ¶ getSheet
 ª Ê Ë Ì toArray '()[Lorg/openide/nodes/Node$PropertySet; Î org/openide/nodes/NodeTransfer
 Í Ð Ñ Ò transferable P(Lorg/openide/nodes/Node;I)Lorg/openide/util/datatransfer/ExTransferable$Single;
  Ô Õ Ö clipboardCopy &()Ljava/awt/datatransfer/Transferable;
 Í Ø Ù Ú 	findPaste L(Ljava/awt/datatransfer/Transferable;)Lorg/openide/nodes/NodeTransfer$Paste; Ü Ý Þ ß à $org/openide/nodes/NodeTransfer$Paste types D(Lorg/openide/nodes/Node;)[Lorg/openide/util/datatransfer/PasteType;
 â ã ä å æ java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; è é ê ë ì java/util/List addAll (Ljava/util/Collection;)Z î java/util/LinkedList
 í v
  ñ ò ó createPasteTypes 7(Ljava/awt/datatransfer/Transferable;Ljava/util/List;)V	  õ ö ÷ NO_PASTE_TYPES *[Lorg/openide/util/datatransfer/PasteType; è ù Ë ú (([Ljava/lang/Object;)[Ljava/lang/Object; ÷ è ý þ ÿ isEmpty ()Z è get (I)Ljava/lang/Object; 'org/openide/util/datatransfer/PasteType	 	 NO_NEW_TYPES ([Lorg/openide/util/datatransfer/NewType;
 À 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 ¾ java/lang/reflect/Method getDeclaringClass java/lang/NoSuchMethodException
 org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V	  overridesGetDefaultAction Ljava/util/WeakHashMap;
 !"# java/util/WeakHashMap &(Ljava/lang/Object;)Ljava/lang/Object;	%&'() java/lang/Boolean FALSE Ljava/lang/Boolean;
 +,- put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	 /01 preferredAction Ljavax/swing/Action;3 getDefaultAction
 567 overridesAMethod '(Ljava/lang/String;[Ljava/lang/Class;)Z	%9:) TRUE
%<= ÿ booleanValue
 ?3@ )()Lorg/openide/util/actions/SystemAction;
 BCD getPreferredAction ()Ljavax/swing/Action;F %org/openide/util/actions/SystemAction	 HIJ systemActions ([Lorg/openide/util/actions/SystemAction;
 LMN createActions *()[Lorg/openide/util/actions/SystemAction;
 PQN 
getActions
 STU internalLookup (Z)Lorg/openide/util/Lookup;W @CookieSet cannot be used when lookup is associated with the nodeY org/openide/nodes/CookieSet
X[\] removeChangeListener %(Ljavax/swing/event/ChangeListener;)V
X_`] addChangeListener
 bc e fireCookieChange
X v
 fgh setCookieSet  (Lorg/openide/nodes/CookieSet;)V
Xjkl 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 j
opqrs org/openide/nodes/DefaultHandle createHandle ;(Lorg/openide/nodes/Node;)Lorg/openide/nodes/DefaultHandle;u 32w Openy Open32{ %org/openide/util/datatransfer/NewType
 } ~ (I)V 	ICON_BASE I ConstantValueÿÿÿÿ OPENED_ICON_BASE    DEFAULT_ICON_BASE DEFAULT_ICON_EXTENSION DEFAULT_ICON 	Signature <Ljava/util/WeakHashMap<Ljava/lang/Class;Ljava/lang/Object;>; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; Code LineNumberTable LocalVariableTable this  Lorg/openide/nodes/AbstractNode; children MethodParameters Lorg/openide/util/Lookup; set Lorg/openide/nodes/CookieSet; 	cloneNode ()Lorg/openide/nodes/Node; StackMapTable s mf setIconBase base ext baseExt lastDot 	lastSlash 	extension getIcon (I)Ljava/awt/Image; type getOpenedIcon 
getHelpCtx ()Lorg/openide/util/HelpCtx; ib res im Ljava/awt/Image;® java/awt/Image i 	canRename 
canDestroy setSheet getPropertySets propertySetsAreKnown 
Exceptions· java/io/IOException clipboardCut drag canCopy canCut t $Ljava/awt/datatransfer/Transferable; Ljava/util/List; p &Lorg/openide/nodes/NodeTransfer$Paste; LocalVariableTypeTable ;Ljava/util/List<Lorg/openide/util/datatransfer/PasteType;>; b(Ljava/awt/datatransfer/Transferable;Ljava/util/List<Lorg/openide/util/datatransfer/PasteType;>;)V getPasteTypes P(Ljava/awt/datatransfer/Transferable;)[Lorg/openide/util/datatransfer/PasteType; getDropType Q(Ljava/awt/datatransfer/Transferable;II)Lorg/openide/util/datatransfer/PasteType; action index getNewTypes *()[Lorg/openide/util/datatransfer/NewType; m Ljava/lang/reflect/Method; ex !Ljava/lang/NoSuchMethodException; name 	arguments [Ljava/lang/Class; b in delegate Z c Ljava/lang/Class;Ú java/lang/ThrowableÜ javax/swing/Action a setDefaultAction *(Lorg/openide/util/actions/SystemAction;)V 'Lorg/openide/util/actions/SystemAction; hasCustomizer getCustomizer ()Ljava/awt/Component; 	cookieSet getCookieSet ()Lorg/openide/nodes/CookieSet; Ljava/lang/Class<TT;>; ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	getHandle !()Lorg/openide/nodes/Node$Handle; <clinit> 
SourceFile AbstractNode.java InnerClasses SheetAndCookieListeneró "org/openide/nodes/Node$PropertySet PropertySetö 3org/openide/util/datatransfer/ExTransferable$Singleø ,org/openide/util/datatransfer/ExTransferable Single Pasteü org/openide/nodes/Node$Cookie Cookieÿ org/openide/nodes/Node$Handle Handle !       } ~              ö ÷   	         
       L              ; <   01              * +    § ¨   IJ                 +   '    ?     *+· ±      
                   $             p     *+,· *
µ *µ *µ *· ±          £  z  }    ª  «              $     *    	   *     h    f     *² · %*
µ *µ *µ *+µ (±          °  z  }    ±  ²                       l     *Á , *¶ .À °§ L» 4Y*· 6°      2        ¼  ½  À  ¿  Â             B 2             (*+· *´ 9M,Æ *,½ =Y+S¶ ?¶ E§ 	*¶ H±          Ë  Í 
 Ï  Ð ! Ö ' Ø        (     (   
  <    	 ü ! @           @     *+L· N±      
    è  é                               P     Á     :+.¶ Q=+/¶ Q>£   *+· N§ +¶ W:+¶ [:*· N±      "       "	 *
 1 9   >  *    1      :     :    3    ,¡    	 ý 	       P K         *+*´ ¶ ^ ,*´ ¶ ^ ±*+µ *,µ *¶ b*¶ f±             ! % )        *     *     *¢         	  ¢   £¤    ;     *· i°         %            ¥    ¥   ¦¤    ;     *· i°         /            ¥    ¥   §¨    .     ² m°         3           k l        u» sY· u*´ ¶ w² {`2¶ w*´ ¶ w¶ N-¸ :Æ °» sY· u*´ ¶ w² {`2¶ w*´ ¶ w¶ N-¸ :Æ °  
*· i°*¶ °      .   ; #< *> /? 2C UE \G aH dK iM pQ   4    u     u¥    u©  # Rª   * K«¬     ý 2 R­1   	¥  ©          i     ¸ L+Ç » Y· ¿+°         U W X [           ¯¬     ü ­ ° ÿ    ,     ¬         b          ± ÿ    ,     ¬         i          4²     H     *+· *¶ ±         t u v             ¨       "           3*´ Ç *»  Y*· ¢µ *´ ¥Æ *´ ¥*´ ¶ ©+*´ ¶ ¯*+µ ¥±         y z } ~ % - 2       3     3 ¨            µ ¶    2     » ªY· ²°                   4 È ¶         =*´ ¥Æ *´ ¥°*¶ ³L+Ç $» ·Y» sY· u¹¶ w*¶ »¶ ¿¶ w¶ · Ä¿*+· +°             ¡ £ 6¥ ;§       =    , ¨    	 ü ) ª ³ Ì    B     
*¶ ÆL+¶ É°      
   ° ²       
     ¨   ´ ÿ    B     *´ ¥Æ § ¬         ¶             @  Õ Ö    0     *¸ Ï°         À         µ    ¶ ¸ Ö    0     *¸ Ï°         Ê         µ    ¶ ¹ Ö    /     *¶ Ó°         Ö         µ    ¶ º ÿ    ,     ¬         Ý          » ÿ    ,     ¬         ä           ò ó         +¸ ×N-Æ ,-*¹ Û ¸ á¹ ç W±         ö ø 	ú ü   *         ¼½    ¾   ¿À Á       Â     ü  Ü   	¼       Ã ÄÅ    s     » íY· ïM*+,¶ ð,² ô¹ ø À û°                        ¼½   ¾ Á      Â    ¼   ÆÇ    ¨     *» íY· ï:*+¶ ð¹ ü  § ¹  À°          	    4    *     *¼½    *È    *É  	 !¾ Á     	 !Â     ü  èJ   ¼  È  É   ÊË    .     ²°         !          67         *¶ »+,¶
N-¶¥ ¬§ N-¸¬            ) 
+ - 1 / 0 3   4  
 ÌÍ   ÎÏ         Ð     ÑÒ     B   	Ð  Ñ   CD   Â     ¶<*¶ »M,¥ ²YNÂ²,¶:*¦ ²,²$¶*W*´.-Ã°Ç W*2½ À·4 	²8§ ²$:¶; )²,*¶*W*¶>W²,¶*¦ $²,¶*W§ ²,¶*W§ 
À%:¶;<-Ã§ 
:-Ã¿ 
*¶>§ *´.°   3    4      £       R   = ? A B C E "I -K 4P 9Q RS ZU cV hX sZ ] ` c d ¦g   >  R ;Ó)   ~Ô +   Ó)    ¶    ´ÕÖ   ¯×Ø    F 
ÿ 4   À = =  B%ü /%ú ü %ÿ 
   À = Ùú 
CÛ 3@    a     *¶AL+ÁE +ÀE°°         p r s v           Ý1     ü Û           Þß    >     *+µ.±      
                Èà    È             QN    f     #*´GÇ **¶KµG*´GÇ **·OµG*´G°                    #                 MN    ,     °                             á ÿ    ,     ¬         ¤          âã    ,     °         «          4gh    Â     L*¶RÆ » ·YV· Ä¿*´ Ç *»  Y*· ¢µ *´ (ÀXM,Æ ,*´ ¶Z+*´ ¶^*+µ (*¶a±      .   º » ¾ ¿ &Â .Ä 2Å :È BÉ GË KÌ        L     L  . ä    
 ü X                åæ    Ý     P*¶RÆ » ·YV· Ä¿*´ (ÀXL+Æ +°*YMÂ*´ (Æ *´ (ÀX,Ã°*»XY·d¶e*´ (ÀX,Ã°N,Ã-¿  % 5 K   6 J K   K N K      .   Õ Ö Ù Û Ü !ß %à ,á 6å Aç Kè       P    5     ü Xü  =TÙ kl         *´ (ÁX *´ (ÀXM,+¶i°*+·m°         ó 
ô ö ø       ×         ¥Ø Á       ¥ç        ¥     èé    ê   ëì    /     *¸n°                    í e    w      S½ RYSYtSYSYtSYvSYxSYvSYxS³ {½³ ô½z³» Y ·|³±          9 8 ] ? ` F h î   ïð   2    ñ ò ô	õ÷ù	 Ü Íú	û ý	þ  	