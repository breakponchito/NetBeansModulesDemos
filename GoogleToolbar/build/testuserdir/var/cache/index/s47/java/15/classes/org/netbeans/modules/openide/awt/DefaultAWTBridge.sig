Êþº¾   4 ¢
      0org/openide/util/actions/ActionPresenterProvider <init> ()V  +org/openide/util/actions/BooleanStateAction 
 (org/openide/awt/Actions$CheckboxMenuItem
 	    1(Lorg/openide/util/actions/BooleanStateAction;Z)V  org/openide/awt/Actions  openide.awt.actionToggle      javax/swing/Action getValue &(Ljava/lang/String;)Ljava/lang/Object;
 	    (Ljavax/swing/Action;Z)V  %org/openide/util/actions/SystemAction   org/openide/awt/Actions$MenuItem
     ! +(Lorg/openide/util/actions/SystemAction;Z)V
   $ javax/swing/JToggleButton
 # 
  ' ( ) connect 3(Ljavax/swing/AbstractButton;Ljavax/swing/Action;)V + javax/swing/JButton
 *  . javax/swing/JPopupMenu
 -  1 javax/swing/JMenuItem	 3 4 5 6 7 java/lang/Boolean TRUE Ljava/lang/Boolean; 9 "org/openide/awt/DynamicMenuContent ; hideWhenDisabled
 0 = > ? getClientProperty &(Ljava/lang/Object;)Ljava/lang/Object;
 3 A B C equals (Ljava/lang/Object;)Z
 0 E F G 	isEnabled ()Z I java/awt/Component 8 K L M getMenuPresenters ()[Ljavax/swing/JComponent; O java/util/ArrayList
 N 
 R S T U V 1org/netbeans/modules/openide/awt/DefaultAWTBridge convertComponents +(Ljava/awt/Component;)[Ljava/awt/Component;
 X Y Z [ \ java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; ^ _ ` a b java/util/Collection addAll (Ljava/util/Collection;)Z d javax/swing/JSeparator
 c  ^ g h C add ^ j k l size ()I ^ n o p toArray (([Ljava/lang/Object;)[Ljava/lang/Object; r [Ljava/awt/Component; Code LineNumberTable LocalVariableTable this 3Lorg/netbeans/modules/openide/awt/DefaultAWTBridge; createMenuPresenter -(Ljavax/swing/Action;)Ljavax/swing/JMenuItem; b -Lorg/openide/util/actions/BooleanStateAction; s 'Lorg/openide/util/actions/SystemAction; action Ljavax/swing/Action; StackMapTable MethodParameters createPopupPresenter item Ljavax/swing/JMenuItem; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; createToolbarPresenter *(Ljavax/swing/Action;)Ljava/awt/Component; btn Ljavax/swing/AbstractButton;  javax/swing/AbstractButton createEmptyPopup ()Ljavax/swing/JPopupMenu; i I toRet 
atLeastOne Z col Ljava/util/Collection; comp Ljava/awt/Component; LocalVariableTypeTable ,Ljava/util/Collection<Ljava/awt/Component;>; 
SourceFile DefaultAWTBridge.java )Lorg/openide/util/lookup/ServiceProvider; service 2Lorg/openide/util/actions/ActionPresenterProvider; InnerClasses CheckboxMenuItem MenuItem 1 R           s   /     *· ±    t       , u        v w    x y  s   ¾     K+Á  +À M» 	Y,· °+¹  Æ » 	Y+· °+Á  +À M» Y,· °» Y+· "°    t   & 	   .  /  0  2 ! 3 + 5 2 6 7 7 A : u   *   
 z {  7 
 | }    K v w     K ~            ~     y  s   Ô     >+Á  +À N» 	Y-· M§ &+Á  +À N» Y-· M§ » Y+· "M,°    t   & 	   ?  @  A  B   C % D / E 2 F < H u   H   
 z {       % 
 | }  /       > v w     > ~   <        
 ü 	 0     ~               s        1+Á  +¹  Æ » #Y· %M,+¸ &§ » *Y· ,M,+¸ &,°    t       N  O  P " R * S / U u   *         1 v w     1 ~   *        
 ü       ~               s   2     » -Y· /°    t       Y u        v w    U V  s  «     ¿+Á 0 #+À 0M² 2,:¶ <¶ @ ,¶ D ½ H°+Á 8 +À 8¹ J M>» NY· P:6,¾¢ Q,2Á 8 #,2+¥ *,2¶ Q¸ W¹ ] W>§ !,2Ç ,» cY· eS,2¹ f W§ÿ® ¹ i ½ H¹ m À q°,°½ HY+S°    t   R    ]  ^  _ " ` ' c . d 8 e : f C g M h _ i r j w l ~ m  o  g  r  s ´ u ¶ x u   H       F U    8 ~  r  : |    C s      ¿ v w     ¿         C s       " 'ÿ   R H q ^  0ú ø                              c       	    	   ¡ 	