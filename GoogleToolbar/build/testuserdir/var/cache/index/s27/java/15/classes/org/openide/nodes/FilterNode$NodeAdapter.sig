Êþº¾   4   org/openide/nodes/Node
      java/lang/Object <init> ()V 
 java/lang/ref/WeakReference
 	    (Ljava/lang/Object;)V	      (org/openide/nodes/FilterNode$NodeAdapter fnRef Ljava/lang/ref/Reference;
      java/lang/ref/Reference get ()Ljava/lang/Object;  org/openide/nodes/FilterNode
     propertyChange A(Lorg/openide/nodes/FilterNode;Ljava/beans/PropertyChangeEvent;)V
 ! " # $ % java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String; ' 
parentNode
 ) * + , - java/lang/String equals (Ljava/lang/Object;)Z / displayName
 ! 1 2  getOldValue
 ! 4 5  getNewValue
  7 8 9 fireOwnPropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V ; name = shortDescription ? icon
  A B  fireIconChange D 
openedIcon
  F G  fireOpenedIconChange I propertySets K %[Lorg/openide/nodes/Node$PropertySet;
  M N O firePropertySetsChange M([Lorg/openide/nodes/Node$PropertySet;[Lorg/openide/nodes/Node$PropertySet;)V Q cookie
  S T  fireCookieChange V leaf
  X Y  updateChildren
  [ \ ] 
access$100 !(Lorg/openide/nodes/FilterNode;)V _ java/util/HashSet
 ^  b c d e f java/util/Set addAll (Ljava/util/Collection;)Z b h i - add k org/openide/nodes/NodeListener 	Signature 9Ljava/lang/ref/Reference<Lorg/openide/nodes/FilterNode;>; Code LineNumberTable LocalVariableTable this *Lorg/openide/nodes/FilterNode$NodeAdapter; fn Lorg/openide/nodes/FilterNode; MethodParameters #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; StackMapTable n Ljava/lang/String; childrenAdded &(Lorg/openide/nodes/NodeMemberEvent;)V #Lorg/openide/nodes/NodeMemberEvent; childrenRemoved childrenReordered '(Lorg/openide/nodes/NodeReorderEvent;)V $Lorg/openide/nodes/NodeReorderEvent; nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V Lorg/openide/nodes/NodeEvent; checkDormant @(Lorg/openide/nodes/NodeListener;Ljava/util/Set;)Ljava/util/Set; ret Ljava/util/Set; l  Lorg/openide/nodes/NodeListener; in LocalVariableTypeTable 1Ljava/util/Set<Lorg/openide/nodes/NodeListener;>; (Lorg/openide/nodes/NodeListener;Ljava/util/Set<Lorg/openide/nodes/NodeListener;>;)Ljava/util/Set<Lorg/openide/nodes/NodeListener;>; 
SourceFile FilterNode.java InnerClasses NodeAdapter  "org/openide/nodes/Node$PropertySet PropertySet !    j      l    m    ]  n   M     *· *» 	Y+· µ ±    o      { | } p        q r      s t  u    s     v  n   s     *´ ¶ À M,Ç ±*,+¶ ±    o           p         q r      w x    s t  y    ü   u    w       n       ½,¶  N-&¶ ( ±-.¶ ( +.,¶ 0À ),¶ 3À )¶ 6±-:¶ ( +:,¶ 0À ),¶ 3À )¶ 6±-<¶ ( +<,¶ 0À ),¶ 3À )¶ 6±->¶ ( +¶ @±-C¶ ( +¶ E±-H¶ ( +,¶ 0À J,¶ 3À J¶ L±-P¶ ( +¶ R±-U¶ ( +¶ W±    o   n        , -¡ 6¢ J¤ K§ T¨ hª i­ r® v° w³ ´ ¶ ¹ º  ¼ ¡¿ ªÀ ®Â ¯Å ¸Æ ¼Î p   *    ½ q r     ½ s t    ½ w x   ¸ z {  y    	ü  ) u   	 s   w    | }  n   5      ±    o      Ô p        q r      w ~  u    w     }  n   5      ±    o      Ú p        q r      w ~  u    w       n   5      ±    o      à p        q r      w   u    w       n   q     *´ ¶ À M,Ç ±,¸ Z±    o      æ è é ì í p         q r      w    
 s t  y    ü   u    w       n   ·     4*Á  .*À ´ ¶ Ç !» ^Y· `M+Æ ,+¹ a W,*¹ g W,°+°    o      ï ð ñ  ò (ô 0õ 2÷ p             4       4                4    y    ü ( bú 	 u   	       l                      	