Êþº¾   4 ¨	      org/openide/nodes/BeanChildren nodes2Beans Ljava/util/Map;	   	 
 DEFAULT_FACTORY (Lorg/openide/nodes/BeanChildren$Factory;
     <init> O(Ljava/beans/beancontext/BeanContext;Lorg/openide/nodes/BeanChildren$Factory;)V
      org/openide/nodes/Children$Keys ()V	     bean $Ljava/beans/beancontext/BeanContext;	    
 factory       "java/beans/beancontext/BeanContext toArray ()[Ljava/lang/Object;
  " # $ setKeys ([Ljava/lang/Object;)V & )java/beans/beancontext/BeanContextSupport
 % ( ) * getBeanContextPeer &()Ljava/beans/beancontext/BeanContext;  , - . contains (Ljava/lang/Object;)Z 0 org/openide/nodes/Node 2 3 4 5 6 &org/openide/nodes/BeanChildren$Factory 
createNode ,(Ljava/lang/Object;)Lorg/openide/nodes/Node; 8 java/lang/ref/Reference : java/lang/ref/WeakReference
 9 <  = (Ljava/lang/Object;)V ? @ A B C java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	  E F G contextL )Lorg/openide/nodes/BeanChildren$ContextL;
 / I J K addNodeListener #(Lorg/openide/nodes/NodeListener;)V M !java/beans/IntrospectionException
 O P Q R S java/lang/Class getName ()Ljava/lang/String;
 U V W X Y java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 [ \ ] ^ _ java/util/logging/Level WARNING Ljava/util/logging/Level;
 U a b c log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V e 'org/openide/nodes/BeanChildren$ContextL
 d g  h #(Lorg/openide/nodes/BeanChildren;)V  j k l  addBeanContextMembershipListener 9(Ljava/beans/beancontext/BeanContextMembershipListener;)V
  n o  
updateKeys  q r l #removeBeanContextMembershipListener
 t u v w x java/util/Collections emptySet ()Ljava/util/Set;
  z # { (Ljava/util/Collection;)V } *org/openide/nodes/BeanChildren$BeanFactory
 |   java/util/WeakHashMap
   	Signature FLjava/util/Map<Lorg/openide/nodes/Node;[Ljava/lang/ref/Reference<*>;>; '(Ljava/beans/beancontext/BeanContext;)V Code LineNumberTable LocalVariableTable this  Lorg/openide/nodes/BeanChildren; MethodParameters createNodes -(Ljava/lang/Object;)[Lorg/openide/nodes/Node; bcs +Ljava/beans/beancontext/BeanContextSupport; n Lorg/openide/nodes/Node; ex #Ljava/beans/IntrospectionException; subbean Ljava/lang/Object; StackMapTable  java/lang/Object  java/lang/Throwable 	addNotify removeNotify 
access$000 ()Ljava/util/Map; <clinit> 
SourceFile BeanChildren.java InnerClasses Factory ¤ org/openide/nodes/Children Keys ContextL BeanFactory !       	 
                   
    F G           A     	*+² · ±       
    C  D        	       	                  Y     *· *+µ *,µ ±           J  K 	 L  M                        
     	        o      <     **´ ¹  ¶ !±       
    R  S                   h     +Á % %+À %M*´ ,¶ '¹ +  ,,¶ '¥ ½ /°*´ +¹ 1 M² YNÂ² ,½ 7Y» 9Y*´ · ;SY» 9Y+· ;S¹ > W-Ã§ 
:-Ã¿,*´ D¶ H½ /Y,S°M¶ N¸ T² Z,¶ `½ /°  : c f   f j f     ( ~ L ) } ~ L     6    \  ]  _ $ d ) h 4 k : l a m m o u q ~ r  s  u    4       4 J                         , )ÿ <    /   ú ÿ      L               T     *» dY*· fµ D*´ *´ D¹ i *¶ m±           }  ~                        d     !*´ DÆ *´ *´ D¹ p *µ D*¸ s¶ y±                            !                      ² °           (        1      » |Y· ~³ » Y· ³ ±       
    * 
 3        ¡   "  2  ¢	  £ ¥	 d  ¦  |  § 
