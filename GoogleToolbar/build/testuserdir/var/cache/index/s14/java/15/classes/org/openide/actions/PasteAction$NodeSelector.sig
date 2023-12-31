Êþº¾   4 ½
      java/lang/Object <init> ()V	  	 
   ,org/openide/actions/PasteAction$NodeSelector em &Lorg/openide/explorer/ExplorerManager;	     node Lorg/openide/nodes/Node;
      $org/openide/explorer/ExplorerManager getSelectedNodes ()[Lorg/openide/nodes/Node;
      org/openide/nodes/Node getChildren ()Lorg/openide/nodes/Children;
     ! " org/openide/nodes/Children getNodes (Z)[Lorg/openide/nodes/Node;	  $ % & children [Lorg/openide/nodes/Node; ( java/util/ArrayList
 ' 	  + , - added Ljava/util/List;
  / 0 1 addNodeListener #(Lorg/openide/nodes/NodeListener;)V	  3 4 5 MUTEX Lorg/openide/util/Mutex;
 7 8 9 : ; org/openide/util/Mutex 
readAccess (Ljava/lang/Runnable;)V
  = > 1 removeNodeListener @ A B C D java/util/List isEmpty ()Z @ F G H iterator ()Ljava/util/Iterator; J K L M D java/util/Iterator hasNext J O P Q next ()Ljava/lang/Object;
  S T U getRootContext ()Lorg/openide/nodes/Node;
  W X Y equals (Ljava/lang/Object;)Z
  [ \ U getParentNode @ ^ _ ` size ()I @ b c d toArray (([Ljava/lang/Object;)[Ljava/lang/Object; &
  g h i setSelectedNodes ([Lorg/openide/nodes/Node;)V k  java/beans/PropertyVetoException m org/openide/actions/PasteAction
 o p q r s java/lang/Class getName ()Ljava/lang/String;
 u v w x y java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 { | } ~  java/util/logging/Level WARNING Ljava/util/logging/Level;
 u    log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V  java/lang/IllegalStateException
      !org/openide/nodes/NodeMemberEvent getDelta
      java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; @    addAll (Ljava/util/Collection;)Z  org/openide/nodes/NodeListener  java/lang/Runnable 	Signature *Ljava/util/List<Lorg/openide/nodes/Node;>; B(Lorg/openide/explorer/ExplorerManager;[Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable arr this .Lorg/openide/actions/PasteAction$NodeSelector; n StackMapTable MethodParameters select run ex "Ljava/beans/PropertyVetoException; !Ljava/lang/IllegalStateException; childrenAdded &(Lorg/openide/nodes/NodeMemberEvent;)V ev #Lorg/openide/nodes/NodeMemberEvent; childrenRemoved childrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V $Lorg/openide/nodes/NodeReorderEvent; nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V Lorg/openide/nodes/NodeEvent; propertyChange #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; 
SourceFile PasteAction.java InnerClasses NodeSelector 0        , -                  % &           é     T*· *+µ ,Æ ,¾ *,2µ § +¶ N-¾ *-2µ § ±**´ ¶ ¶ µ #*» 'Y· )µ **´ *¶ .±       2   L M 	O P R !T &U 0X 1] @_ K` Sa    *  !   &    T   ¡     T      T ¢ &  £    ÿ     e  ü  eú   ¤   	    ¢    ¥      Z     *´ *Æ *´ ¶ ¶ W² 2*¶ 6±          e g j l           ¡   £      ¦     S     *´ *¶ <*´ *¹ ?  ±*´ *¹ E L+¹ I  ++¹ N À M,Æ ,*´ ¶ R¶ V §ÿÛ,¶ ZM§ÿæ±*´ *´ **´ *¹ ] ½ ¹ a À e¶ f§ (Ll¶ n¸ t² z+¶ § Ll¶ n¸ t² z+¶ ±  P o r j P o       F   o q r x 2y 6z D{ G~ O P o r s        *  2  ¢   s  § ¨    § ©       ¡   £    	ü 	 Jü  ù  a jS   ª «     J     *´ *+¶ ¸ ¹  W±       
               ¡      ¬ ­  ¤    ¬    ® «     5      ±                     ¡      ¬ ­  ¤    ¬    ¯ °     5      ±                     ¡      ¬ ±  ¤    ¬    ² ³     5      ±          ¤           ¡      ¬ ´  ¤    ¬    µ ¶     5      ±          «           ¡      · ¸  ¤    ·    ¹    º »   
   l ¼ 