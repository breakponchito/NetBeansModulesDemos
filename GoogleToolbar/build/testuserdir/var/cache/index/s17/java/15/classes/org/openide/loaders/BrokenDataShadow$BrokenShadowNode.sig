Êþº¾   4 À	      org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;
  	 
   org/openide/loaders/DataNode <init> ?(Lorg/openide/loaders/DataObject;Lorg/openide/nodes/Children;)V  5org/openide/loaders/BrokenDataShadow$BrokenShadowNode  $org/openide/loaders/brokenShadow.gif
     setIconBaseWithExtension (Ljava/lang/String;)V	     format Ljava/text/MessageFormat;  java/text/MessageFormat  FMT_brokenShadowName
     ! " org/openide/loaders/DataObject 	getString &(Ljava/lang/String;)Ljava/lang/String;
  $  
  & ' ( createArguments ()[Ljava/lang/Object;
  *  + &(Ljava/lang/Object;)Ljava/lang/String; - javax/swing/Action / org/openide/actions/CutAction
 1 2 3 4 5 %org/openide/util/actions/SystemAction get :(Ljava/lang/Class;)Lorg/openide/util/actions/SystemAction; 7 org/openide/actions/CopyAction 9 org/openide/actions/PasteAction ;  org/openide/actions/DeleteAction = org/openide/actions/ToolsAction ? $org/openide/actions/PropertiesAction	  A B C sheet Lorg/openide/nodes/Sheet;
  E F G 
cloneSheet ()Lorg/openide/nodes/Sheet;
 I J K L M org/openide/nodes/Sheet toArray '()[Lorg/openide/nodes/Node$PropertySet;
  O P M getPropertySets
 I R  S ()V U org/openide/nodes/Sheet$Set
 T R
 X Y Z [ \ "org/openide/nodes/Node$PropertySet getProperties $()[Lorg/openide/nodes/Node$Property;
 T ^ _ ` put %([Lorg/openide/nodes/Node$Property;)V
 X b c d getName ()Ljava/lang/String;
 T f g  setName
 X i j d getDisplayName
 T l m  setDisplayName
 X o p d getShortDescription
 T r s  setShortDescription
  u v w modifySheetSet  (Lorg/openide/nodes/Sheet$Set;)V
 I y _ z <(Lorg/openide/nodes/Sheet$Set;)Lorg/openide/nodes/Sheet$Set; | name
 T ~   remove 5(Ljava/lang/String;)Lorg/openide/nodes/Node$Property;  &org/openide/nodes/PropertySupport$Name
     (Lorg/openide/nodes/Node;)V
 T  _  D(Lorg/openide/nodes/Node$Property;)Lorg/openide/nodes/Node$Property;  :org/openide/loaders/BrokenDataShadow$BrokenShadowNode$Name
     :(Lorg/openide/loaders/BrokenDataShadow$BrokenShadowNode;)V  java/lang/Object
     getDataObject "()Lorg/openide/loaders/DataObject;
  b 	ICON_NAME Ljava/lang/String; ConstantValue )(Lorg/openide/loaders/BrokenDataShadow;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/loaders/BrokenDataShadow$BrokenShadowNode; par &Lorg/openide/loaders/BrokenDataShadow; MethodParameters StackMapTable 
getActions (Z)[Ljavax/swing/Action; context Z ss Lorg/openide/nodes/Sheet$Set; i I sets %[Lorg/openide/nodes/Node$PropertySet; s « p !Lorg/openide/nodes/Node$Property; ± org/openide/nodes/Node$Property 
SourceFile BrokenDataShadow.java InnerClasses ¶ $org/openide/loaders/BrokenDataShadow BrokenShadowNode ¹ org/openide/nodes/Node PropertySet Set Property ¾ !org/openide/nodes/PropertySupport Name 0      
      B C                    K     *+² · *¶ ±          D E F                            j d     [      ² Ç » Y¸ · #³ ² *· %¶ )°          M N P              ¡      ¢ £          @½ ,Y.¸ 0SY6¸ 0SY8¸ 0SYSY:¸ 0SYSY<¸ 0SY>¸ 0S°       "   T 	U V W %Y 2[ ;\ ?T        @       @ ¤ ¥       ¤    P M     R     *´ @Ç **· Dµ @*´ @¶ H°          d e g             ¡      F G     ò     _*· NL» IY· QM>+¾¢ K» TY· V:+2¶ W¶ ]+2¶ a¶ e+2¶ h¶ k+2¶ n¶ q*· t,¶ xW§ÿµ,°       2   m o p q r )s 4t ?u Jx Pz Wp ]}    4   9 ¦ §   N ¨ ©    _      Z ª «   R ¬ C  ¡    þ  ­ Iú M  v w          *+{¶ }M,Æ !» Y*· M+,¶ W» Y*· M+,¶ W±               # )         *       * ¦ §   # ® ¯  ¡    ü ) °      ¦    ' (     A     ½ Y*¶ ¶ S°                          ²    ³ ´   2   µ ·  X ¸ º	 T I »  ° ¸ ¼	  ½ ¿    ¿ 