Êþº¾   4
      !org/openide/windows/WindowManager <init> ()V  java/util/TreeMap
  	      &org/openide/windows/DummyWindowManager 
workspaces Ljava/util/Map;  default
     createWorkspace E(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/windows/Workspace;  editor      org/openide/windows/Workspace 
createMode N(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lorg/openide/windows/Mode;	     ! pcs "Ljava/beans/PropertyChangeSupport; #  java/beans/PropertyChangeSupport
 " %  & (Ljava/lang/Object;)V
 " ( ) * addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 " , - * removePropertyChangeListener / (org/openide/windows/DummyWindowManager$R
 . 
  2 3 4 getRegistry -()Lorg/openide/windows/TopComponent$Registry; 6 (org/openide/windows/DummyWindowManager$W
 5 8  9 =(Lorg/openide/windows/DummyWindowManager;Ljava/lang/String;)V ; < = > ? java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
 " B C D firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V F currentWorkspace  H I J getName ()Ljava/lang/String; ; L M N remove &(Ljava/lang/Object;)Ljava/lang/Object; ; P Q R isEmpty ()Z ; T U N get ; W X Y values ()Ljava/util/Collection; [ \ ] ^ _ java/util/Collection iterator ()Ljava/util/Iterator; a b c d e java/util/Iterator next ()Ljava/lang/Object; [ g h i toArray (([Ljava/lang/Object;)[Ljava/lang/Object; k  [Lorg/openide/windows/Workspace; m "java/lang/IllegalArgumentException
 l  ; p q  clear	  s t u mw Ljava/awt/Frame; w javax/swing/JFrame y dummy
 v {  | (Ljava/lang/String;)V ~ java/util/HashSet
 } 
 }    (Ljava/util/Collection;)V
 } \ a   R hasNext     getModes ()Ljava/util/Set;      java/util/Set addAll (Ljava/util/Collection;)Z
    \  org/openide/windows/Mode     getTopComponents %()[Lorg/openide/windows/TopComponent;
      java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;   ¡ ¢ £ ¤ java/util/List contains (Ljava/lang/Object;)Z  H
 § ¨ © ª ¤ java/lang/String equals ¬ *org/openide/windows/TopComponent$Cloneable	  ® ¯ ° DEFAULT_ACTIONS_CLONEABLE [Ljavax/swing/Action; ² Save ´ 	CloneView ¶ 	CloseView
  ¸ ¹ º loadActions *([Ljava/lang/String;)[Ljavax/swing/Action;	  ¼ ½ ° DEFAULT_ACTIONS_NOT_CLONEABLE ¿ java/util/ArrayList
 ¾ 
 Â Ã Ä Å Æ java/lang/Thread currentThread ()Ljava/lang/Thread;
 Â È É Ê getContextClassLoader ()Ljava/lang/ClassLoader;
 ¾ Ì Í ¤ add Ï java/lang/StringBuilder
 Î  Ò org.openide.actions.
 Î Ô Õ Ö append -(Ljava/lang/String;)Ljava/lang/StringBuilder; Ø Action
 Î Ú Û J toString
 Ý Þ ß à á java/lang/Class forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; ã %org/openide/util/actions/SystemAction
 Ý å æ ç 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class;
 â é U ê :(Ljava/lang/Class;)Lorg/openide/util/actions/SystemAction; ì  java/lang/ClassNotFoundException î javax/swing/Action
 ¾ g °
 ò ó ô õ R  org/openide/windows/TopComponent 	isShowing
  ÷ ø ù registry ,()Lorg/openide/windows/DummyWindowManager$R;
 . û ü ý 
access$000 ;(Lorg/openide/windows/DummyWindowManager$R;)Ljava/util/Set;  ¡
 .  setActivatedNodes >(Lorg/openide/windows/TopComponent;[Lorg/openide/nodes/Node;)V
 javax/swing/SwingUtilities getAncestorOfClass ;(Ljava/lang/Class;Ljava/awt/Component;)Ljava/awt/Container;
 v
 setIconImage (Ljava/awt/Image;)V
 v | setTitle
 R java/awt/GraphicsEnvironment 
isHeadless
 ò H
 ò getIcon ()Ljava/awt/Image;
 v getContentPane ()Ljava/awt/Container;
 ! Í" java/awt/Container *(Ljava/awt/Component;)Ljava/awt/Component;
 v$%  pack' java/lang/ref/WeakReference
& %* (org/openide/windows/DummyWindowManager$1
), - H(Lorg/openide/windows/DummyWindowManager;Ljava/lang/ref/WeakReference;)V
 v/01 addWindowListener "(Ljava/awt/event/WindowListener;)V
 345 componentOpenNotify %(Lorg/openide/windows/TopComponent;)V
 785 componentShowing	 :;< VISIBLE Z
 v>?@ 
setVisible (Z)V
 .BC5 open
 òEF R canClose
 HI5 componentHidden
 KL5 componentCloseNotify
 òNO 	getParent
Q MR (Ljava/awt/Component;)V
 .TU5 close
 5T
 vXY  toFront
 .[\5 	setActive
 ^_5 activateComponent
 abc findMode >(Lorg/openide/windows/TopComponent;)Lorg/openide/windows/Mode;
 efg isEditorMode (Lorg/openide/windows/Mode;)Z
 òij R isOpened
 lmn isOpenedEditorTopComponent %(Lorg/openide/windows/TopComponent;)Zp .org.openide.windows.DummyWindowManager.VISIBLEr true
tuvwx java/lang/System getProperty 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
z{|}~ java/lang/Boolean parseBoolean (Ljava/lang/String;)Z serialVersionUID J ConstantValue        	Signature BLjava/util/Map<Ljava/lang/String;Lorg/openide/windows/Workspace;>; Code LineNumberTable LocalVariableTable this (Lorg/openide/windows/DummyWindowManager; l #Ljava/beans/PropertyChangeListener; StackMapTable MethodParameters componentRegistry createTopComponentManager Q(Lorg/openide/windows/TopComponent;)Lorg/openide/windows/WindowManager$Component; c "Lorg/openide/windows/TopComponent; name Ljava/lang/String; displayName w Lorg/openide/windows/Workspace; delete "(Lorg/openide/windows/Workspace;)V findWorkspace 3(Ljava/lang/String;)Lorg/openide/windows/Workspace; getCurrentWorkspace !()Lorg/openide/windows/Workspace; getWorkspaces "()[Lorg/openide/windows/Workspace; setWorkspaces #([Lorg/openide/windows/Workspace;)V i I ws getMainWindow ()Ljava/awt/Frame; updateUI it Ljava/util/Iterator; s Ljava/util/Set; LocalVariableTypeTable 5Ljava/util/Iterator<Lorg/openide/windows/Workspace;>; +Ljava/util/Set<Lorg/openide/windows/Mode;>; -()Ljava/util/Set<Lorg/openide/windows/Mode;>; m Lorg/openide/windows/Mode; tc 0Ljava/util/Iterator<Lorg/openide/windows/Mode;>; .(Ljava/lang/String;)Lorg/openide/windows/Mode; findTopComponentGroup ;(Ljava/lang/String;)Lorg/openide/windows/TopComponentGroup; findTopComponent 6(Ljava/lang/String;)Lorg/openide/windows/TopComponent; tcID topComponentID H(Lorg/openide/windows/TopComponent;Ljava/lang/String;)Ljava/lang/String; preferredID topComponentDefaultActions 9(Lorg/openide/windows/TopComponent;)[Ljavax/swing/Action;Á java/lang/ObjectÃ java/lang/Throwable sa Ljava/lang/Class; names [Ljava/lang/String; arr Ljava/util/ArrayList; loader Ljava/lang/ClassLoader; ;Ljava/lang/Class<+Lorg/openide/util/actions/SystemAction;>; +Ljava/util/ArrayList<Ljavax/swing/Action;>;Ï java/lang/ClassLoader topComponentIsOpened !topComponentActivatedNodesChanged nodes [Lorg/openide/nodes/Node; topComponentIconChanged 5(Lorg/openide/windows/TopComponent;Ljava/awt/Image;)V icon Ljava/awt/Image; f Ljavax/swing/JFrame; topComponentToolTipChanged 7(Lorg/openide/windows/TopComponent;Ljava/lang/String;)V tooltip topComponentDisplayNameChanged "topComponentHtmlDisplayNameChanged htmlDisplayName topComponentOpen ref Ljava/lang/ref/WeakReference; ALjava/lang/ref/WeakReference<Lorg/openide/windows/TopComponent;>;å java/awt/Image topComponentClose *Lorg/openide/windows/DummyWindowManager$W; topComponentRequestVisible topComponentRequestActive topComponentRequestAttention "topComponentCancelRequestAttention isEditorTopComponent md #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; mode <clinit> 
SourceFile DummyWindowManager.java Ljava/lang/SuppressWarnings; value deprecation InnerClasses Rú )org/openide/windows/TopComponent$Registry Registry W 	Cloneableÿ +org/openide/windows/WindowManager$Component 	Component 0      ;<        
 ¯ °   
 ½ °           t u      !   &       X     "*· *» Y· 	µ 
*¶ ¹  W±          F  G  H ! I       "   ! ) *    e     *´ Ç *» "Y*· $µ *´ +¶ '±          L  M  P  Q                       ! - *    U     *´ Æ *´ +¶ +±          T  U  W                        4    2     » .Y· 0°          Z           ø ù    2     *¶ 1À .°          ^              6     °          b                   !           5» 5Y*+· 7N*´ 
+-¹ : W*´ Æ *´ @¶ A*´ E¶ A-°          f 
 g  i  j ( k 3 n   *    5     5    5  
 +     ü 3    	               B*´ 
+¹ G ¹ K W*´ 
¹ O  *¶ W*´ Æ *´ @¶ A*´ E¶ A±          r  t  u $ x + y 6 z A |       B     B     $      !    B     *´ 
+¹ S À °                             !    A     *´ 
¹ V ¹ Z ¹ ` À °                    !     @     *´ 
¹ V ½ ¹ f À j°                    !¡¢    Ê     W+¾ » lY· n¿*´ 
¹ o =+¾¢ *´ 
+2¹ G +2¹ : W§ÿâ*´ Æ *´ @¶ A*´ E¶ A±      * 
            3  9  @  K  V        !£¤    W     W¥ k     ü 
ú     ¥   !¦§    T     *´ rÇ *» vYx· zµ r*´ r°                             ¨     +      ±          ¤                Í     A» }Y· L» }Y*´ 
¹ V · ¶ M,¹   ,¹ ` À N+-¹  ¹  W§ÿà+°          ¨  ª % « / ¬ < ­ ? ¯   *  /    #©ª    A    9«¬ ­      #©®   9«¯     ý   aú "   ° bc    ¶     6*¶ ¹  M,¹   $,¹ ` À N-¹  ¸ +¹   -°§ÿÙ°          ³  ´  ¶ / · 1 ¹ 4 »   *   ±²  
 *©ª    6     6³ ­     
 *©´     ü 
 a&ú    ³   bµ    À     7+Ç °*¶ ¹  M,¹   ,¹ ` À N+-¹ ¥ ¶ ¦ -°§ÿÞ°      "    ¿  À  Ã  Ä # Æ 0 Ç 2 É 5 Ë   *  # ±²   %©ª    7     7 ­      %©´     ü 	 a!ú       ¶·    6     °          Ð                   ¸¹    6     °          Õ            º    º   »¼    @     ,°          Ù             ³    ½    	³  ½   ¾¿    Þ     ^YMÂ+Á « ,² ­Ç  ½ §Y±SY³SYSYµS¸ ·³ ­² ­,Ã°² »Ç ½ §Y±SYSYµS¸ ·³ »² »,Ã°N,Ã-¿   4 Y   5 X Y   Y \ Y      & 	   Þ  á  â  ã / ë 5 í ; î S õ Y ÷       ^     ^³     ü /ÀEÂ   ³   
 ¹ º   *     m» ¾Y· ÀL¸ Á¶ ÇM>*¾¢ M*2Ç +¶ ËW§ 8» ÎY· ÐÑ¶ Ó*2¶ Ó×¶ Ó¶ Ù,¸ Üâ¶ ä:+¸ è¶ ËW§ :§ÿ³+½ í¶ ïÀ ð°  & V Y ë    2    û  ü  þ  ÿ   # & L V
 Y [ þ a   4  L 
ÄÅ   P£¤    mÆÇ    eÈÉ   ^ÊË ­     L 
ÄÌ   eÈÍ     þ  ¾Îr ëú    Æ   Ðn    ]     +¶ ñ *· ö¸ ú+¹ þ  § ¬                     ³     @   ³   Ñ    L     
*· ö+,¶ ÿ±      
    	        
     
³    
ÒÓ    	³  Ò   ÔÕ    v     v+¸À vN-Æ -,¶	±          
     *         ³    Ö×  
 
ØÙ     ü  v   	³  Ö   ÚÛ    ?      ±         "             ³    Ü    	³  Ü   ÝÛ    v     v+¸À vN-Æ -,¶±         % 
' ( *   *         ³      
 
ØÙ     ü  v   	³     ÞÛ    ?      ±         .             ³    ß    	³  ß   à5   <     y¸ ±v+¸À vM,Ç B» vY+¶· zM+¶N-Æ ,-¶	,¶+¶W,¶#»&Y+·(:,»)Y*·+¶.+¶ ñ  *+¶2*+¶6²9 ,¶=*· ö+¶A±      N   1 2 5 7 8 !: &< *= /@ 8A <C FD T_ [` `a eb kc pe xg   4  & .Ö×  F áâ    y     y³   hØÙ ­     F áã     ý ' väú $   ³   æ5        h+¶D ±*+¶G*+¶Jv+¸À vM,Æ ²9 ,¶=+¶M+¶P*· ö+¶S*´ 
¹ V ¹ Z N-¹   -¹ ` À 5:+¶V§ÿæ±      B   j k l m o q  r &s +u 3x ;z J| S} ^~ d g   4  ^ ç    h     h³   LØÙ  J ©ª     ü " vü  a   ³   è5    v     v+¸À vM,Æ ²9 ,¶=±          
                ³  
 ØÙ     ü  v   ³   é5          v+¸À vM,Æ ,¶W*· ö+¶Z*+¶]±          
                   ³  
 ØÙ     ü  v   ³   ê5    5      ±                     ³    ³   ë5    5      ±                     ³    ³   ìn    n     *+¶`M,Æ *,¶d ¬¬         ¡ ¢ £ ¥             ³   í²     ü     ³  î    ï   mn    u     *+¶`M,Æ *,¶d +¶h¬*+·k¬         ª « ¬ ®             ³   í²     ü     ³  î    ï   fg    X     +¦ ¬+¹ ¥ ¶ ¦¬         ³ ´ µ            ð²        ð  î    ï   ñ     (      oq¸s¸y³9±          > ò   óî    ô õ[ sö÷   2  . ø ù òû	 5 ü  « òý	)      þ  