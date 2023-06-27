Źžŗ¾   4 Ę	      Norg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FilePattern this$0 DLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;
  	 
   java/lang/Object <init> ()V	     value Ljava/lang/String;
      java/lang/String length ()I	     valueLength I
     toLowerCase ()Ljava/lang/String;
    ! " getBytes ()[B	  $ % & bytes [B	  ( )  range	  + , - 
ignoreCase Z
 / 0 1 2 3 6org/netbeans/modules/openide/filesystems/declmime/Util readUTF '(Ljava/io/DataInput;)Ljava/lang/String; 5 6 7 8  java/io/DataInput readInt 5 : ; < readBoolean ()Z
  >  ? [(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;Ljava/lang/String;IZ)V
  A  B Z(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type;Ljava/io/DataInput;)V	  D E F inner PLorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FilePattern;
 / H I J writeUTF )(Ljava/io/DataOutput;Ljava/lang/String;)V L M N O P java/io/DataOutput writeInt (I)V L R S T writeBoolean (Z)V
  V W X writeExternal (Ljava/io/DataOutput;)V
 Z [ \ ]  )java/util/concurrent/atomic/AtomicInteger get
 Z _ `  incrementAndGet
 Z b c P set
 e f g h i "org/openide/filesystems/FileObject getInputStream ()Ljava/io/InputStream;
 k l m n o java/io/InputStream read ([B)I
 Z q  P
 s t u  v java/lang/Character (I)I
  x y z match /(BLjava/util/concurrent/atomic/AtomicInteger;)Z
 k | }  close  java/io/IOException
   y  '(Lorg/openide/filesystems/FileObject;)Z  java/lang/StringBuilder
  	  [
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;  , 
     (I)Ljava/lang/StringBuilder;
     (Z)Ljava/lang/StringBuilder;
     -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
     toString     ] DEFAULT_IGNORE_CASE ConstantValue     Code LineNumberTable LocalVariableTable this StackMapTable § Borg/netbeans/modules/openide/filesystems/declmime/FileElement$Type MethodParameters is Ljava/io/DataInput; 
Exceptions os Ljava/io/DataOutput; setInner S(Lorg/netbeans/modules/openide/filesystems/declmime/FileElement$Type$FilePattern;)V b B pointer +Ljava/util/concurrent/atomic/AtomicInteger; i 	byteRange fo $Lorg/openide/filesystems/FileObject; Ljava/io/InputStream; matched & ¼ java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile FileElement.java InnerClasses Ć =org/netbeans/modules/openide/filesystems/declmime/FileElement Type FilePattern          -              )     , -    % &         E F          ?  ”   Ź     =*+µ *· *,µ *,¶ µ  *,¶ ¶ µ #§ *,¶ µ #*µ '*µ *±    ¢   & 	   ī 	 ļ  š  ń  ņ ) ō 1 ö 6 ÷ < ų £   4    = ¤ F     =      =      = )     = , -  „    ’ )   ¦    Ø        )   ,     B  ”        ,*+,ø .,¹ 4 ,¹ 9 · =,¹ 9  *» Y+,· @µ C±    ¢       ū  ü  ū  ž  ’ + £        , ¤ F     ,      , © Ŗ  „    ’ +   ¦ 5   «     ~ Ø   	  ©    W X  ”        =+*“ ø G+*“ '¹ K +*“ *¹ Q *“ CĘ +¹ Q *“ C+¶ U§ 
+¹ Q ±    ¢   "       # *	 5 < £       = ¤ F     = ¬ ­  „    5 «     ~ Ø    ¬    ® Æ  ”   >     *+µ C±    ¢   
     £        ¤ F      E F  Ø    E    y z  ”   {     %*“ #,¶ Y3  ,¶ ^*“ ” § ¬,¶ a¬    ¢         # £        % ¤ F     % ° ±    % ² ³  „    @  Ø   	 °   ²    y   ”       M>+¶ dM*“ '¼:,¶ j6» ZY· p:6¢ /36*“ * ø r6*· w >§ 	§’Š,Ę ,¶ {§ :§ :	,Ę ,¶ {§ :
	æ *“ CĒ ¬*“ C+¶ ¬¬  Y a d ~  Y i   k s v ~ i k i    ¢   z     ! # 	$ % & #' -( 4) ;* C, N- P. S' Y3 ]4 a8 d6 f9 i2 k3 o4 s8 v6 x9 {: ; < > A £   \ 	 4  ° ±  & 3 “    H µ &   @ n   # 6 ² ³     ¤ F      ¶ ·    © ø    ¹ -  „   m ’ &   e k ŗ Z  ü ś ’    e k  B ~D »’ 	 
  e k      »  B ~’    e k   «     ~ Ø    ¶       ”   ”     Y» Y· ¶ *“ ¶ ¶ *“ '¶ ¶ *“ *¶ *“ CĘ » Y· ¶ *“ C¶ ¶ § ¶ ¶ ¶ °    ¢      F £       Y ¤ F   „    ÷ K ’       ½     ¾    æ    Ą Į     ¦ Ā Ä   ¦ Å  