Êþº¾   4 ·
      javax/swing/JComponent <init> ()V	  	 
   (org/openide/WizardDescriptor$ImagedPanel 	isDefault Z	     loadPending	     north  java/lang/Object
  	     
IMAGE_LOCK Ljava/lang/Object;
     setImage (Ljava/awt/Image;)V  java/awt/BorderLayout
  
  " # $ 	setLayout (Ljava/awt/LayoutManager;)V
  & ' ( 	setOpaque (Z)V
  * + , getBackground ()Ljava/awt/Color;
 . / 0 1 2 java/awt/Graphics setColor (Ljava/awt/Color;)V
  4 5 6 getWidth ()I
  8 9 6 	getHeight
 . ; < = fillRect (IIII)V	  ? @ A image Ljava/awt/Image;
 C D E 9 F java/awt/Image !(Ljava/awt/image/ImageObserver;)I
 . H I J 	drawImage 3(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z	  L M A 
image2Load
  O P  loadImageInBackground R North
 T U V W X java/lang/String equals (Ljava/lang/Object;)Z
  Z [  	loadImage ] nb.wizard.hideimage
 _ ` a b X javax/swing/UIManager 
getBoolean
 d e f g h org/openide/WizardDescriptor access$3600 ()Ljava/awt/Image; j java/awt/MediaTracker
 i l  m (Ljava/awt/Component;)V
 i o p q addImage (Ljava/awt/Image;I)V
 i s t u checkID (I)Z
  w x y 	isShowing ()Z
  { |  repaint	  ~  A 	tempImage
      !org/openide/util/RequestProcessor 
getDefault %()Lorg/openide/util/RequestProcessor;
     post ?(Ljava/lang/Runnable;I)Lorg/openide/util/RequestProcessor$Task;  javax/swing/ImageIcon
    
    h getImage  javax/accessibility/Accessible  java/lang/Runnable Code LineNumberTable LocalVariableTable this *Lorg/openide/WizardDescriptor$ImagedPanel; im MethodParameters paintComponent (Ljava/awt/Graphics;)V graphics Ljava/awt/Graphics; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setImageAlignment (Ljava/lang/String;)V align Ljava/lang/String; mt Ljava/awt/MediaTracker; ª java/lang/Throwable run 
localImage localImageIcon Ljavax/swing/ImageIcon; shouldRepaint 
SourceFile WizardDescriptor.java InnerClasses ImagedPanel µ &org/openide/util/RequestProcessor$Task Task           @ A      A     M A                                       4*· *µ *µ *µ *» Y· µ *+¶ *» Y·  ¶ !*¶ %±       & 	  	^ 	R 		U 	V 	Y 	_ #	` .	a 3	b        4       4  A                Û     X+*¶ )¶ -+*¶ 3*¶ 7¶ :*´ >Æ )+*´ >*´  § *¶ 7*´ >¶ Bd*¶ GW§ *´ KÆ **´ K· N*µ K±       "   	g 	h 	j 	k C	l J	m R	n W	p        X       X        - ÿ .   .  . Cÿ    .  . C        ¡     ¢    £ ¤     C     *Q+¶ Sµ ±       
   	s 
	t                ¥ ¦      ¥               ++Æ *+· Y*µ ±*´  \¸ ^ 
*¸ c· Y*µ ±       & 	  	z 	{ 		| 	~ 	 	 	 %	 *	        +       +  A                [          U» iY*· kM,+¶ n,¶ r *+µ >*¶ v *¶ z±*¶ v *+· N§  *´ YNÂ*µ >-Ã§ 
:-Ã¿*+µ K±  > E H   H L H       :   	 		 	 	 	 #	 '	 (	 /	 7	 >	 C	 O	  T	¢         U       U  A  	 L § ¨      $ ü ' i ÿ    C i   ©ú          P      ­     0*´ YMÂ*+µ }*´  ,Ã±*µ ,Ã§ N,Ã-¿¸ *¶ W±                #         "   	¥ 	¦ 	© 	ª 	­ 	® %	± /	²        0       0 @ A       ü  I ©ú      @    «     =     [*´ YMÂ*´ }L*µ }*µ ,Ã§ N,Ã-¿» Y+· M>*´ Y:Â*´  *,¶ µ >>Ã§ :Ã¿ *¶ z±            3 G J   J O J       >   	¼ 	½ 	¾ 	¿ 	À  	Ã )	Ä +	Æ 3	È :	É B	Ì D	Î R	Ð V	Ñ Z	Ó    4    ¬ A    [       ; ¬ A  ) 2 ­ ®  + 0 ¯       2 ÿ       ©ÿ    C  þ #  E ©ú  ¡     ¢    °    ± ²      d ³ 
 ´  ¶ 