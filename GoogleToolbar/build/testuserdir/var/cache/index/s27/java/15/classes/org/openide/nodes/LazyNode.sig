Źžŗ¾   4   org/openide/nodes/AbstractNode   org/openide/nodes/Children$Array
     <init> ()V
  
   (Lorg/openide/nodes/Children;)V
      org/openide/nodes/LazyNode 2(Lorg/openide/nodes/AbstractNode;Ljava/util/Map;)V  )org/openide/nodes/LazyNode$SwitchChildren
     (Lorg/openide/nodes/Node;)V
      org/openide/nodes/FilterNode 7(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;)V
     getChildren ()Lorg/openide/nodes/Children;	    ! " node Lorg/openide/nodes/LazyNode;	  $ % & map Ljava/util/Map; ( name * + , - . java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; 0 java/lang/String
  2 3 4 setName (Ljava/lang/String;)V 6 displayName
  8 9 4 setDisplayName ; shortDescription
  = > 4 setShortDescription @ iconResource
  B C 4 setIconBaseWithExtension
  E F G switchToOriginal ()Lorg/openide/nodes/Node;
 I J K L M org/openide/nodes/Node 
getActions (Z)[Ljavax/swing/Action;
  O P G getOriginal R original T "java/lang/IllegalArgumentException V java/lang/StringBuilder
 U  Y Original Node from map 
 U [ \ ] append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 U _ \ ` -(Ljava/lang/Object;)Ljava/lang/StringBuilder; b  is null
 U d e f toString ()Ljava/lang/String;
 S h  4	 j k l m n %org/openide/nodes/FilterNode$Children MUTEX Lorg/openide/util/Mutex; p org/openide/nodes/LazyNode$1
 o r  s 8(Lorg/openide/nodes/LazyNode;[Lorg/openide/nodes/Node;)V
 u v w x y org/openide/util/Mutex postWriteRequest (Ljava/lang/Runnable;)V 	Signature $Ljava/util/Map<Ljava/lang/String;*>; (Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this LocalVariableTypeTable MethodParameters '(Ljava/util/Map<Ljava/lang/String;*>;)V an  Lorg/openide/nodes/AbstractNode; iconBase Ljava/lang/String; StackMapTable G(Lorg/openide/nodes/AbstractNode;Ljava/util/Map<Ljava/lang/String;*>;)V context Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; n [Lorg/openide/nodes/Node;   java/lang/Object  java/lang/Throwable 
SourceFile LazyNode.java InnerClasses  org/openide/nodes/Children Array SwitchChildren Children 0       % &  z    {     |  }   ^     *» Y» Y· · 	+· ±    ~   
    !  "          "      % &          % {      %   z         }   ł     `*+» Y+· · *¶ Ą *µ *,µ #+,'¹ ) Ą /¶ 1+,5¹ ) Ą /¶ 7+,:¹ ) Ą /¶ <,?¹ ) Ą /N-Ę +-¶ A±    ~   * 
   $  %  &  ( , ) ; * J + V , Z - _ /    *    `  "     `      ` % &  V 
           ` % {      ’ _    * /      	    %   z      L M  }   =     	*¶ D¶ H°    ~       3        	  "     	                    F G  }       w½ IYSL*YMĀ*“ #Ē 
*¶ N,Ć°+*“ #Q¹ ) Ą IS+2Ē &» SY» UY· WX¶ Z*“ #¶ ^a¶ Z¶ c· gæ*µ #,Ć§ N,Ć-æ² i» oY*+· q¶ t+2°    _    \ _   _ b _    ~   .    7 	 8  9  :  < , = 2 > U @ Z A d B s H        w  "   	 n        ż   9I ś           "     	     j   	 o      