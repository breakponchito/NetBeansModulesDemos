Źžŗ¾   4 m
      java/lang/Object <init> ()V  java/awt/Graphics2D
  
   getTransform !()Ljava/awt/geom/AffineTransform;
     	translate (II)V
      java/awt/geom/AffineTransform getType ()I
     	getScaleX ()D
     getTranslateX
    ! " # java/lang/Math round (D)J
  % &  getTranslateY
  ( ) * ceil (D)D
  , - * floor
  /  0 	(FFFFFF)V
  2 3 4 setTransform "(Ljava/awt/geom/AffineTransform;)V 6 7 8 9 : <org/netbeans/swing/tabcontrol/plaf/WinFlatUtils$HiDPIPainter paint (Ljava/awt/Graphics2D;IID)V
  < = > max (II)I @ :org/netbeans/swing/tabcontrol/plaf/WinFlatUtils$HiDPIUtils Code LineNumberTable LocalVariableTable this <Lorg/netbeans/swing/tabcontrol/plaf/WinFlatUtils$HiDPIUtils; paintAtScale1x X(Ljava/awt/Graphics;IIIILorg/netbeans/swing/tabcontrol/plaf/WinFlatUtils$HiDPIPainter;)V scale D deviceX I deviceY 
deviceXend 
deviceYend deviceWidth deviceHeight g0 Ljava/awt/Graphics; x y width height painter >Lorg/netbeans/swing/tabcontrol/plaf/WinFlatUtils$HiDPIPainter; g Ljava/awt/Graphics2D; oldTransform Ljava/awt/geom/AffineTransform; tx txType StackMapTable a java/awt/Graphics MethodParameters deviceBorderWidth (DI)I logical 
SourceFile WinFlatUtils.java InnerClasses j /org/netbeans/swing/tabcontrol/plaf/WinFlatUtils HiDPIPainter 
HiDPIUtils   ?           A   /     *· ±    B       j C        D E   	 F G  A  ņ 	    ¹*Ą :¶ 	:¶ ¶ 	:¶ 6		 		  y¶ 9
¶ ø 6¶ $ø '6¶ 
kcø +6¶ $
kcø +6d6d6» Y· .¶ 1
¹ 5 § ¹ 5 ¶ 1±    B   N    v  w  x  y  z "  .  5  @  K  \  n  u  |    ”  ¤  ±  ø   C   ¬  5 l H I 
 @ a J K  K V L K  \ E M K  n 3 N K  u , O K  | % P K    ¹ Q R     ¹ S K    ¹ T K    ¹ U K    ¹ V K    ¹ W X   ³ Y Z   ¬ [ \    ] \  "  ^ K 	 _   ! ’ . 
 ` 6     ū u b    Q   S   T   U   V   W   	 c d  A   U      ¬&kø ;¬    B       ©  Ŗ  ¬ C        H I      e K  _     b   	 H   e    f    g h     6 i k ? i l 