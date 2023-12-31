Êþº¾   4 ­  org/openide/awt/SplittedPanel	      )org/openide/awt/SplittedPanel$SplitLayout this$0 Lorg/openide/awt/SplittedPanel;
 
     java/lang/Object <init> ()V  "java/lang/IllegalArgumentException  9You must use the add(Component, Object) method for adding
     (Ljava/lang/String;)V	     ADD_SPLITTER Ljava/lang/Object;
     
access$802 I(Lorg/openide/awt/SplittedPanel;Ljava/awt/Component;)Ljava/awt/Component;	      	ADD_FIRST
  " # $ 
access$200 5(Lorg/openide/awt/SplittedPanel;)Ljava/awt/Component;
  & ' $ 
access$300
  ) *  
access$302
  , -  
access$202
  / 0 1 
access$600 "(Lorg/openide/awt/SplittedPanel;)I
  3 4 5 
access$602 #(Lorg/openide/awt/SplittedPanel;I)I	  7 8  
ADD_SECOND : AYou must use one of the SplittedPanel.ADD_XXX constraints Objects
  < = > access$1500 "(Lorg/openide/awt/SplittedPanel;)V
 
 @ A B equals (Ljava/lang/Object;)Z
 D E F G H java/awt/Component getPreferredSize ()Ljava/awt/Dimension;	 J K L M N java/awt/Dimension width I	 J P Q N height
  S T $ 
access$800
 J V  W (II)V
 D Y Z H getMinimumSize
 \ ] ^ _ H java/awt/Container getSize
  a b 1 access$1600
  d e f access$1200 "(Lorg/openide/awt/SplittedPanel;)Z
  h i f access$1700
  k l f access$1800
 D ] o java/awt/Rectangle
 n q  r (IIII)V
 D t u v 	setBounds (Ljava/awt/Rectangle;)V
 D x u r z java/lang/Integerÿÿÿ } java/awt/LayoutManager2  java/io/Serializable serialVersionUID J ConstantValue;ÿ8°Yu Code LineNumberTable LocalVariableTable this +Lorg/openide/awt/SplittedPanel$SplitLayout; MethodParameters addLayoutComponent )(Ljava/lang/String;Ljava/awt/Component;)V name Ljava/lang/String; comp Ljava/awt/Component; )(Ljava/awt/Component;Ljava/lang/Object;)V constraints StackMapTable removeLayoutComponent (Ljava/awt/Component;)V preferredLayoutSize *(Ljava/awt/Container;)Ljava/awt/Dimension; d Ljava/awt/Dimension; splitterSize parent Ljava/awt/Container; minimumLayoutSize layoutContainer (Ljava/awt/Container;)V sp 
secondSize 	sPosition maximumLayoutSize target getLayoutAlignmentX (Ljava/awt/Container;)F getLayoutAlignmentY invalidateLayout 
SourceFile SplittedPanel.java InnerClasses SplitLayout    
  | ~                   >     >     
*+µ *· 	±                  
       
                H     
» Y· ¿                   
       
      
       	             @     ´,² ¦ *´ +¸ W§ ,² ¦ O*´ ¸ !Æ *´ ¸ %Ç *´ *´ ¸ !¸ (W*´ +¸ +W*´ ¸ %Æ _*´ ¸ . U*´ ¸ 2W§ I,² 6¦ 8*´ ¸ !Ç *´ +¸ +W§ ,*´ +¸ (W*´ ¸ . *´ ¸ 2W§ » Y9· ¿*´ ¸ ;±       F       . = F Z f m w  ¢ ¤ ¥ ¢© ¬¬ ³­         ´       ´      ´        )(	    	              ¹     [+*´ ¸ %¶ ? *´ ¸ (W§ <+*´ ¸ !¶ ? .*´ ¸ +W*´ ¸ %Æ *´ *´ ¸ %¸ +W*´ ¸ (W*´ ¸ ;±       & 	  ° ± ² (³ 1µ ;¶ J· S» Z¼        [       [        8              |     ¦=>*´ ¸ !Æ *´ ¸ !¶ C:´ I=´ O>*´ ¸ %Æ o*´ ¸ %¶ C:*´ ¸ .  /*´ ¸ R¶ C´ O6´ I¢ 	´ I=´ O``>§ ,*´ ¸ R¶ C´ I6´ O¢ 	´ O>´ I``=» JY· U°       N   ¿ À Â Ã Ä  Å &È 0É <Ë GÌ VÎ _Ï eÒ pÓ sÔ Ö × Ú Þ    R       V   N     N  < `      ¦       ¦     ¤ M N   ¢ Q N      ý &ý > Jú ü ù 
              |     ¦=>*´ ¸ !Æ *´ ¸ !¶ X:´ I=´ O>*´ ¸ %Æ o*´ ¸ %¶ X:*´ ¸ .  /*´ ¸ R¶ X´ O6´ I¢ 	´ I=´ O``>§ ,*´ ¸ R¶ X´ I6´ O¢ 	´ O>´ I``=» JY· U°       N   â ã å æ ç  è &ë 0ì <î Gï Vñ _ò eõ pö s÷ ù ú ý     R       V   N     N  < `      ¦       ¦     ¤ M N   ¢ Q N      ý &ý > Jú ü ù 
              r    é+¶ [M*´ ¸ `>*´ ¸ `  0*´ ¸ .  *´ ¸ !¶ C´ O>§ µ*´ ¸ !¶ C´ I>§ ¤*´ ¸ `þ  V*´ ¸ .  ',´ O*´ ¸ R¶ C´ Id*´ ¸ %¶ C´ Od>§ i,´ I*´ ¸ R¶ C´ Od*´ ¸ %¶ C´ Id>§ E*´ ¸ c ;*´ ¸ `6d¤ d6*´ ¸ .  ,´ Ohdl>§ ,´ Ihdl>*´ ¸ .º*´ ¸ !Æ°*´ ¸ %Æ¦*´ ¸ .  Ï*´ ¸ R¶ C´ O6*´ ¸ !Æ *´ ¸ %Ç 6*´ ¸ g /*´ ¸ j %*´ ¸ %¶ m:´ O ,´ O´ Odd>`,´ O¤ ,´ Od> >*´ ¸ !» nY,´ I· p¶ s*´ ¸ R» nY,´ I· p¶ s*´ ¸ %» nY`,´ I,´ Odd· p¶ s§*´ ¸ R¶ C´ I6*´ ¸ !Æ *´ ¸ %Ç 6*´ ¸ g /*´ ¸ j %*´ ¸ %¶ m:´ I ,´ I´ Idd>`,´ I¤ ,´ Id> >*´ ¸ !» nY,´ O· p¶ s*´ ¸ R» nY,´ O· p¶ s*´ ¸ %» nY`,´ Idd,´ O· p¶ s§ D*´ ¸ !Æ :*´ ¸ !» nY,´ Id,´ Od· p¶ s*´ ¸ RÆ *´ ¸ R¶ w±       â 8    	 
 # 4 E Q \ r   ¤ ® · ¾ Â" Í# Û% æ)+,.2/52I3U5]6k:v;~>?BCµDØGÛHêJþKNO!Q)R7VBWJZN[P^h_`¤c§d±eÐgÚhèk    \ 	 · /   N U  ¡   º  N !  ¡  ê º  N   é      é    ä    Ü ¢ N     - ý 4 J:#ü ú 
ü K5ú Vü "5ú Vû @         £      @     » JY{{· U°          n                ¤       ¤    ¥ ¦     6     ®          r                ¤       ¤    § ¦     6     ®          v                ¤       ¤    ¨      5      ±          z                ¤       ¤    ©    ª «   
    ¬  