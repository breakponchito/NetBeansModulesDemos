Êþº¾   4 ³  5org/openide/text/PositionRef$Manager$DocumentRenderer
      )org/openide/text/PositionRef$Manager$Kind <init> )(Lorg/openide/text/PositionRef$Manager;)V 
 #java/lang/IndexOutOfBoundsException  java/lang/StringBuilder
     ()V  Illegal LineKind[line=
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
     (I)Ljava/lang/StringBuilder;  ,column=  ] in 
     ! " $org/openide/text/PositionRef$Manager 
access$300 I(Lorg/openide/text/PositionRef$Manager;)Ljavax/swing/text/StyledDocument;
  $  % -(Ljava/lang/Object;)Ljava/lang/StringBuilder; ' 	 used by 
  ) * + 
access$400 Q(Lorg/openide/text/PositionRef$Manager;)Lorg/openide/text/CloneableEditorSupport; - .
  / 0 1 toString ()Ljava/lang/String;
 	 3  4 (Ljava/lang/String;)V	 6 7 8 9 : -org/openide/text/PositionRef$Manager$LineKind line I	 6 < = : column	 6 ? @ A mgr &Lorg/openide/text/PositionRef$Manager;
  C D E getCloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport;
 G H I J K 'org/openide/text/CloneableEditorSupport getDocument #()Ljavax/swing/text/StyledDocument;
 G M N K openDocument
  P  Q P(ILorg/openide/text/PositionRef$Manager$Kind;Ljavax/swing/text/StyledDocument;)V
  S T U renderToInt ()I W X Y Z [ javax/swing/text/StyledDocument getEndPosition ()Ljavax/swing/text/Position; ] ^ _ ` U javax/swing/text/Position 	getOffset b java/io/IOException
 a 3 e f g h i java/io/DataOutput writeInt (I)V
 k l m n o org/openide/text/NbDocument findLineOffset %(Ljavax/swing/text/StyledDocument;I)I	 q r s t u javax/swing/text/Position$Bias Backward  Ljavax/swing/text/Position$Bias;	 q w x u Forward
 k z { | createPosition Y(Ljavax/swing/text/Document;ILjavax/swing/text/Position$Bias;)Ljavax/swing/text/Position; ~ %javax/swing/text/BadLocationException  1org/openide/text/PositionRef$Manager$PositionKind
     D(Ljavax/swing/text/Position;Lorg/openide/text/PositionRef$Manager;)V  
LineKind([  :  ]) +(IILorg/openide/text/PositionRef$Manager;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/text/PositionRef$Manager$LineKind; StackMapTable MethodParameters 	retOffset e %Ljava/lang/IndexOutOfBoundsException; doc !Ljavax/swing/text/StyledDocument; Ljava/io/IOException; getLine 
Exceptions 	getColumn write (Ljava/io/DataOutput;)V os Ljava/io/DataOutput; toMemoryLockAcquired 6(Z)Lorg/openide/text/PositionRef$Manager$PositionKind; p Ljavax/swing/text/Position; 'Ljavax/swing/text/BadLocationException; insertAfter Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile PositionRef.java InnerClasses ¬ org/openide/text/PositionRef Manager DocumentRenderer Kind LineKind Bias PositionKind 0 6      9 :    = :           Ó     Y*-·   D» 	Y» Y· ¶ ¶ ¶ ¶ ¶ -¸ ¶ #&¶ -¸ (¶ #,¶ ¶ .· 2¿*µ 5*µ ;±              0 N S X    *    Y       Y 9 :    Y = :    Y @ A      ÿ   6   û @     9   =   @    ` U     è     ;*´ >¶ B¶ FL+Ç *´ >¶ B¶ LL» Y*+· O¶ R=¬M+¹ V ¹ \ ¬L¬   * + 	   * 8 a + 7 8 a     * 
      % ) + ,  8# 9%    4  )   :  ,      -    9       ;         ü  WP 	ÿ   6  a   U     /     *´ 5¬          +                  a   U     /     *´ ;¬          0                  a        Ï     w*´ 5 
*´ ; P» aY» Y· ¶ *´ 5¶ ¶ *´ ;¶ ¶ *´ >¸ ¶ #&¶ *´ >¸ (¶ #,¶ ¶ .· c¿+¹ d +*´ 5¹ d +*´ ;¹ d ±          5 6 :9 [> b? l@ vA        w       w        û L      a               /     Z*´ >¸ *´ >¸ *´ 5¸ j*´ ;` 	² p§ ² v¸ yM§ "N*´ >¸ ¹ V M§ N*´ >¸ ¹ V M» Y,*´ >· °    + . }   + ? 	     .   G H I 'G +O .K /L <O ?M @N MQ    H  +  ¡ ¢  /   £  <  ¡ ¢  @       Z       Z ¤ ¥  M  ¡ ¢     1 ÿ $  6  Wÿ   6  W qF }P 	ü  ]     ¤   ¦     §    0 1     V     ,» Y· ¶ *´ 5`¶ ¶ *´ ;`¶ ¶ ¶ .°          V        ,     ¦     §    ¨    © ª   2   « ­    ®    ¯
 6  °  q ] ±    ² 