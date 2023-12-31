Êþº¾   4 ¸
      -org/netbeans/modules/openide/loaders/SimpleES removeSaveCookie (Z)V
   	 
 <init> (Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;Ljava/util/concurrent/Callable;)V
      org/openide/loaders/DataObject 	getLookup ()Lorg/openide/util/Lookup;  9org/netbeans/modules/openide/loaders/SimpleES$Environment
   	  N(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;)V
    	  "org/openide/text/DataEditorSupport i(Lorg/openide/loaders/DataObject;Lorg/openide/util/Lookup;Lorg/openide/text/CloneableEditorSupport$Env;)V  <org/netbeans/modules/openide/loaders/SimpleES$SaveCookieImpl
   	  2(Lorg/netbeans/modules/openide/loaders/SimpleES;)V	  ! " # 
saveCookie  Lorg/openide/cookies/SaveCookie;	  % & ' set Lorg/openide/nodes/CookieSet;	  ) * + factory Ljava/util/concurrent/Callable; - . / 0 1 java/util/concurrent/Callable call ()Ljava/lang/Object; 3 ,org/openide/text/CloneableEditorSupport$Pane 5 java/lang/Exception 7 java/lang/IllegalStateException 9 java/lang/StringBuilder
 8 ; 	 < ()V > Cannot create factory for 
 8 @ A B append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  D E F getDataObject "()Lorg/openide/loaders/DataObject;
 8 H A I -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 8 K L M toString ()Ljava/lang/String;
 6 O 	 P *(Ljava/lang/String;Ljava/lang/Throwable;)V
  R S T 
createPane 0()Lorg/openide/text/CloneableEditorSupport$Pane;
  V W X notifyModified ()Z
  Z [ < addSaveCookie
  ] ^ < notifyUnmodified ` org/openide/cookies/SaveCookie
  b c d 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 f g h i j org/openide/nodes/CookieSet add "(Lorg/openide/nodes/Node$Cookie;)V
  l m  setModified o p q r s org/openide/nodes/Node$Cookie equals (Ljava/lang/Object;)Z
 f u v j remove x org/openide/cookies/OpenCookie z org/openide/cookies/EditCookie | +org/openide/cookies/EditorCookie$Observable ~ org/openide/cookies/PrintCookie  org/openide/cookies/CloseCookie  !org/openide/loaders/SaveAsCapable  org/openide/cookies/LineCookie 	Signature OLjava/util/concurrent/Callable<Lorg/openide/text/CloneableEditorSupport$Pane;>; k(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;)V Code LineNumberTable LocalVariableTable this /Lorg/netbeans/modules/openide/loaders/SimpleES; obj  Lorg/openide/loaders/DataObject; entry +Lorg/openide/loaders/MultiDataObject$Entry; MethodParameters paneFactory LocalVariableTypeTable º(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;Ljava/util/concurrent/Callable<Lorg/openide/text/CloneableEditorSupport$Pane;>;)V asynchronousOpen #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ex Ljava/lang/Exception; StackMapTable Z cookie Lorg/openide/nodes/Node$Cookie; 
access$000 3(Lorg/netbeans/modules/openide/loaders/SimpleES;Z)V x0 x1 
SourceFile SimpleES.java InnerClasses ¦ )org/openide/loaders/MultiDataObject$Entry ¨ #org/openide/loaders/MultiDataObject Entry Environment ¬ +org/openide/text/CloneableEditorSupport$Env ® 'org/openide/text/CloneableEditorSupport Env SaveCookieImpl Pane ³ org/openide/nodes/Node Cookie ¶  org/openide/cookies/EditorCookie 
Observable 1    w y { }      " #    & '    * +       	  	      U     	*+,-· ±       
    A  B    *    	       	      	      	 & '            &    	 
          **++¶ » Y+,· · *» Y*· µ  *-µ $*µ (±           E  7  F # G ) H    4    *       *      *      * & '    *  +         *              &             X     ,     ¬           L                      S T          9*´ (Æ 0*´ (¹ , À 2°L» 6Y» 8Y· :=¶ ?*¶ C¶ G¶ J+· N¿*· Q°     4         Q  S  T  U 4 X             9         T 4          W X     N     *· U ¬*· Y¬           c  d 	 f  h                 	  ^ <     <     
*· \*· ±           n  o 	 p        
              [ <     q     *¶ CL+_¶ aÇ *´ $*´  ¶ e+¶ k±           t  w  x  y  {                      ü          £     2*¶ CM,_¶ aN-Æ $-*´  ¹ n  *´ $*´  ¶ t ,¶ k±                  (  ,  1     *    2       2 m    -     &        ý 1  o     m         :     *· ±           2                 ¡    ¢    £ ¤   :  ¥ § ©   ª 
 « ­ ¯	   °  2 ­ ±	 o ² ´	 { µ ·	