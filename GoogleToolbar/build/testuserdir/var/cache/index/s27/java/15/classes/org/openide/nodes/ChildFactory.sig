Êþº¾   4 ¡
      java/lang/Object <init> ()V	  	 
   org/openide/nodes/ChildFactory observer Ljava/lang/ref/Reference;  java/lang/AssertionError  java/lang/StringBuilder
    ANeither createNodeForKey() nor createNodesForKey() overridden in 
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
     getClass ()Ljava/lang/Class;
      ! java/lang/Class getName ()Ljava/lang/String;
  # $ ! toString
  &  ' (Ljava/lang/Object;)V
  ) * + createNodeForKey ,(Ljava/lang/Object;)Lorg/openide/nodes/Node; - org/openide/nodes/Node
 / 0 1 2 3 java/lang/ref/Reference get ()Ljava/lang/Object; 5 'org/openide/nodes/ChildFactory$Observer 4 7 8 9 refresh (Z)V
  ; < = createWaitNode ()Lorg/openide/nodes/Node; ? -org/openide/nodes/ChildFactory$WaitFilterNode
 > A  B (Lorg/openide/nodes/Node;)V D  org/openide/nodes/ChildFactory$1	 F G H I J org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;
 C L  M ?(Lorg/openide/nodes/ChildFactory;Lorg/openide/nodes/Children;)V O org/openide/nodes/wait.gif
 Q R S T U org/openide/nodes/AbstractNode setIconBaseWithExtension (Ljava/lang/String;)V W LBL_WAIT
 Y Z [ \ ] org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 Q _ ` U setDisplayName b java/lang/IllegalStateException d DAttempting to create two Children objects for a single ChildFactory 
  f  g -(Ljava/lang/Object;)Ljava/lang/StringBuilder; i D.  Use FilterNode.Children over the existing Children object instead
 a k  U m java/lang/ref/WeakReference
 l & 	Signature DLjava/lang/ref/Reference<Lorg/openide/nodes/ChildFactory$Observer;>; Code LineNumberTable LocalVariableTable this  Lorg/openide/nodes/ChildFactory; LocalVariableTypeTable %Lorg/openide/nodes/ChildFactory<TT;>; key Ljava/lang/Object; TT; MethodParameters (TT;)Lorg/openide/nodes/Node; createNodesForKey -(Ljava/lang/Object;)[Lorg/openide/nodes/Node; n Lorg/openide/nodes/Node; StackMapTable  [Lorg/openide/nodes/Node; (TT;)[Lorg/openide/nodes/Node; 
createKeys (Ljava/util/List;)Z 
toPopulate (Ljava/util/List<TT;>;)Z 	immediate Z obs )Lorg/openide/nodes/ChildFactory$Observer; getWaitNode  Lorg/openide/nodes/AbstractNode; setObserver ,(Lorg/openide/nodes/ChildFactory$Observer;)V removeNotify 	addNotify destroyNodes ([Lorg/openide/nodes/Node;)V arr 
isWaitNode (Ljava/lang/Object;)Z (<T:Ljava/lang/Object;>Ljava/lang/Object; 
SourceFile ChildFactory.java InnerClasses Observer WaitFilterNode  )org/openide/nodes/ChildFactory$Detachable 
Detachable!          o    p      q   J     
*· *µ ±    r   
    =  ³ s       
 t u   v       
 t w    * +  q   u     !» Y» Y· ¶ *¶ ¶ ¶ ¶ "· %¿    r   
    M  N s       ! t u     ! x y  v       ! t w     ! x z  {    x   o    |  } ~  q        *+¶ (M,Ç § ½ ,Y,S°    r   
    _  ` s         t u      x y       v        t w      x z      ü  ,G  {    x   o        {       o      8 9  q        "*´ Ç § *´ ¶ .À 4M,Æ 
,¹ 6 ±    r            !  s        " t u     "         v       " t w       I 4ü  4 {          =  q   r     *¶ :L+Ç § » >Y+· @°    r   
       s        t u        v        t w       ü  ,G ,  < =  q   q     » CY*² E· KL+N¶ P+V¸ X¶ ^+°    r       ©  ®  ¯  ° s        t u        v        t w       q        4*´ Æ #» aY» Y· c¶ *¶ eh¶ ¶ "· j¿*» lY+· nµ ±    r       µ  ¶ ' » 3 ¼ s       4 t u     4    v       4 t w       ' {            q   =      ±    r       À s        t u   v        t w        q   =      ±    r       Ä s        t u   v        t w        q   G      ±    r       È s        t u         v        t w   {           q   /     *Á >¬    r       Ï s         y   {        o             "  4   >    C          	