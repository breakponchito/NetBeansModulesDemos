Źžŗ¾   4 
      java/lang/Object <init> ()V	  	 
   org/openide/nodes/DefaultHandle parent Lorg/openide/nodes/Node$Handle;	     path Ljava/lang/String;      org/openide/nodes/Node$Handle getNode ()Lorg/openide/nodes/Node;
      org/openide/nodes/Node getChildren ()Lorg/openide/nodes/Children;
     ! " org/openide/nodes/Children 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node; $ 'org/openide/nodes/NodeNotFoundException
 # &  ' .(Lorg/openide/nodes/Node;Ljava/lang/String;I)V	  ) * + PR #Lorg/openide/util/Mutex$Privileged;
 - . / 0  !org/openide/util/Mutex$Privileged enterReadAccess
  2 3 4 getName ()Ljava/lang/String;
 - 6 7  exitReadAccess
  9 :  getParentNode
 < 2 = java/lang/Class
 ? @ A B C java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 E F G H I java/util/logging/Level WARNING Ljava/util/logging/Level; K Uparent could not find own child: node={0} parentNode={1} childPath={2} foundChild={3}
 ? M N O log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  Q R S 	getHandle !()Lorg/openide/nodes/Node$Handle;
  U  V 4(Lorg/openide/nodes/Node$Handle;Ljava/lang/String;)V X java/lang/StringBuilder
 W  [ DefaultHandle[
 W ] ^ _ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 W a ^ b -(Ljava/lang/Object;)Ljava/lang/StringBuilder; d | f ]
 W h i 4 toString serialVersionUID J ConstantValueøb<¢0W Code LineNumberTable LocalVariableTable this !Lorg/openide/nodes/DefaultHandle; MethodParameters 
parentNode Lorg/openide/nodes/Node; child StackMapTable 
Exceptions { java/io/IOException createHandle ;(Lorg/openide/nodes/Node;)Lorg/openide/nodes/DefaultHandle; 	childPath 
foundChild parentHandle node  java/lang/String  java/lang/Throwable 
SourceFile DefaultHandle.java InnerClasses Handle  org/openide/util/Mutex 
Privileged 1       j k  l    m               V  o   Y     *· *+µ *,µ ±    p       1  2 	 3  4 q         r s               t   	           o        **“ ¹  L+¶ *“ ¶ M,Ę ,°» #Y+*“ · %æ    p       < 
 =  ?  @  B q        * r s   
   u v    w v  x    ż    y     z 	 | }  o  ø     ”² (¶ ,*¶ 1L+Ē M² (¶ 5,°*¶ 8M,Ē N² (¶ 5-°,¶ +¶ N-*„ 3¶ ;ø >² DJ½ Y*SY,SY+SY-S¶ L:² (¶ 5°,¶ P:Ē :² (¶ 5°» Y+· T:² (¶ 5°:² (¶ 5æ         $    , a    j x               p   n    S  U  W  X  q  X  [  ] " ^ $ q * ^ , a 5 b : c ^ f a q g f j i p k u l x q ~ l  o  q  o  q  r q   4    ~    x u v  5 a  v  p &      ”  v   x   ' ü  ü  ü = ü  ’      t       i 4  o   R     (» WY· YZ¶ \*“ ¶ `c¶ \*“ ¶ \e¶ \¶ g°    p       v q       ( r s                	 -   