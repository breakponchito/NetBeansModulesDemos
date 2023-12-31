Źžŗ¾   4 Æ
      java/lang/Object <init> ()V	  	 
   1org/openide/explorer/propertysheet/AutoGridLayout gapY I	     pack Z  Iorg/openide/explorer/propertysheet/AutoGridLayout$PreferredSizeComparator
     (Z)V
      java/awt/Container getComponents ()[Ljava/awt/Component;
     
comparator ()Ljava/util/Comparator;
 ! " # $ % java/util/Arrays sort ,([Ljava/lang/Object;Ljava/util/Comparator;)V
 ' ( ) * + java/awt/Component getPreferredSize ()Ljava/awt/Dimension;	 - . / 0  java/awt/Dimension width	 - 2 3  height
 ' 5 6 7 	setBounds (IIII)V
  9 : ; 	getInsets ()Ljava/awt/Insets;
  = > ? getWidth ()I	 A B C D  java/awt/Insets right
  F G ? 	getHeight	 A I J  bottom	 A L M  left	 A O P  top
 R S T U + ,org/openide/explorer/propertysheet/PropUtils getMinimumPanelSize
 ' =
  X Y Z preferredLayoutSize *(Ljava/awt/Container;)Ljava/awt/Dimension;
 \ ] ^ _ ` java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit;
 \ b c + getScreenSize
 - 
 f g h i j java/lang/Math max (II)I	  l m  $assertionsDisabled o java/lang/AssertionError
 n 
 r s t u v java/lang/Class desiredAssertionStatus ()Z x java/awt/LayoutManager Code LineNumberTable LocalVariableTable this 3Lorg/openide/explorer/propertysheet/AutoGridLayout; MethodParameters addLayoutComponent )(Ljava/lang/String;Ljava/awt/Component;)V name Ljava/lang/String; comp Ljava/awt/Component; removeLayoutComponent (Ljava/awt/Component;)V 	Signature .()Ljava/util/Comparator<Ljava/awt/Component;>; layoutContainer (Ljava/awt/Container;)V d0 Ljava/awt/Dimension; d1 d i currColWidth parent Ljava/awt/Container; c [Ljava/awt/Component; insets Ljava/awt/Insets; w h currx curry done cols currCol StackMapTable  minimumLayoutSize rows colspan colwidth 
baseHeight dims [Ljava/awt/Dimension; result currRow ¦ <clinit> 
SourceFile AutoGridLayout.java InnerClasses PreferredSizeComparator      w              m         y   O     *· *µ *µ ±    z       8  5 	 9  : {        | }         ~           y   ?      ±    z       > {         | }               ~   	           y   5      ±    z       B {        | }         ~           y   6     » Y*“ · °    z       E {        | }            y  A    +¶ M,¾¤ ,*· ø  ,¾  8,2¶ &N,2¶ &:,2-“ ,-“ 1¶ 4,2-“ ,“ ,“ 1¶ 4±+¶ 8N+¶ <-“ @d6+¶ E-“ Hd6-“ K6-“ N666	6

,¾¢ u,
2¶ &:“ , “ 1 ø Q:“ ,`¤ %“ 1*“ ``6-“ K6	  

6	§ (,
2“ ,“ 1¶ 4“ ,`6
§’	  ,¾6	6
	6,¾¢,2¶ &:“ ,`¤ “ 1*“ ``6-“ K66
“ 1`¤ § 6 ŗ,
2¶ V6“ ,£ `“ ,£ 7

	¤ 6
“ 1*“ ``6-“ K66,
2¶ V`6§’Å,2“ ,“ 1¶ 4`6§ ",2“ ,“ 1¶ 4“ ,`6¤ -“ K6“ 1*“ ``66
§ 
§ ,2¶ 4§žķ±    z   ž ?   I  K  L  O  S   T ( U 8 V M X N [ S ] ^ ^ i _ o ` u a x b { i  j  l  o £ r ° s æ t Å v Ė w Ļ y Ņ } ē ~ ń i ÷  ż     % 4 : = Q V _ i s v ”} £ ¤ „ ¦ «§ ®¼ ÆĘ ²Ū ³å øģ »ņ ¼ ½ æ
 Į Ä  Ē {   ¶    .    ( &     c    ~ y   
_ «             | }            SĢ    ^Į    i¶    o°    uŖ    x§    {¤   	   
    P ü  :’ /     A  ü  -.ł $	ż ü 4 -@ü .!ś ś 
ś  ~          Z  y   :     *+¶ W°    z       Ź {        | }         ~        Y Z  y  e    2+¶ M,¾¤ ,*· ø  ø [¶ aN-Y“ ,lµ ,-Y“ 1lµ 1+¶ 8:-“ ,“ @d6“ K666,¾½ -:	» -Y· d:
6,¾¢ 	,2¶ &S	2“ , 	2“ 1 	ø QS	2“ 1ø e6  	2“ ,`¤ 
µ ,6 $

“ ,	2“ ,“ K`“ @`ø eµ ,	2“ ,`6§’h  ,¾6
µ ,*“  i,¾¤ c,¾l,¾p § `6
h*“ h`“ N`“ H`µ 1
Y“ ,`µ ,² k 
“ , 
“ 1 » nY· pæ
°66“ K66,¾¢ 6	2“ ,6	2“ ,¤ 8	2“ ,`6`-“ ,¤’×66	2“ ,6§’Į`6`6¤ ,¾d 6“ K6§’|
h“ N`“ H`*“ h`µ 1
°    z   ī ;   Ī  Š  Ń  Ō  Õ $ Ö . Ų 4 Ś @ Ü G Ż J Ž M ß T ą ] ć g ä s ę  é  ģ   ī ¦ ļ ¶ š ½ ń Į õ Ē ų č ū õ ć ū ž ’ .LXv
y|«®»¾ŹĶŠÓ ą$ē%ī'ž()*./0 {   ¶  `    . K ”   w ¢   m £        2 | }    2    -     i   4ž    @ņ    Gė    Jč    Må ¤   TŽ „ ¦ 	 ]Õ §  
| ¶ Ø   ³       q ü  ’ L     - A © -  (/&ś ]’       - A © - ü Bś ž ż ū Ał *ś  ~        Ŗ   y   4      ¶ q § ³ k±    z       4     @  «    ¬ ­   
    ® 