Êþº¾   4 ³
      java/lang/ref/WeakReference <init> (Ljava/lang/Object;)V	  	 
   ,org/openide/util/lookup/InheritanceTree$Node items Ljava/util/Collection;  java/util/LinkedHashSet      java/util/Collection isEmpty ()Z
     (Ljava/util/Collection;)V	      java/util/Collections 
EMPTY_LIST Ljava/util/List;
     ! 	emptyList ()Ljava/util/List;
  # $ % synchronizedCollection .(Ljava/util/Collection;)Ljava/util/Collection;
  ' ( ) get ()Ljava/lang/Object; + java/lang/Class	 - . / 0 1 java/lang/Void TYPE Ljava/lang/Class;
  3 4 5 getType ()Ljava/lang/Class; 7 java/lang/Object
 * 9 : ; isAssignableFrom (Ljava/lang/Class;)Z
 = > ? @ ; +org/openide/util/lookup/AbstractLookup$Pair 
instanceOf
  B  C ()V  E F G add (Ljava/lang/Object;)Z  I J G contains  L M N iterator ()Ljava/util/Iterator; P Q R S ) java/util/Iterator next
 6 U V G equals
 = X Y Z getIndex ()I
 = \ ] ^ setIndex 4(Lorg/openide/util/lookup/AbstractLookup$Storage;I)V P ` a C remove c )org/openide/util/lookup/InheritanceTree$R
 b e  f 1(Lorg/openide/util/lookup/InheritanceTree$Node;)V h java/lang/StringBuilder
 g B k 	Node for 
 g m n o append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 g q n r -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 g t u v toString ()Ljava/lang/String; x java/io/Serializable serialVersionUID J ConstantValue        children Ljava/util/ArrayList; 	Signature ELjava/util/ArrayList<Lorg/openide/util/lookup/InheritanceTree$Node;>; ELjava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair;>; (Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable this .Lorg/openide/util/lookup/InheritanceTree$Node; clazz MethodParameters deserialized StackMapTable markDeserialized c LocalVariableTypeTable Ljava/lang/Class<*>; ()Ljava/lang/Class<*>; accepts (Ljava/lang/Class<*>;)Z 0(Lorg/openide/util/lookup/AbstractLookup$Pair;)Z item -Lorg/openide/util/lookup/AbstractLookup$Pair; 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; 3(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;)Z 
assignItem Y(Lorg/openide/util/lookup/InheritanceTree;Lorg/openide/util/lookup/AbstractLookup$Pair;)Z it Ljava/util/Iterator; old tree )Lorg/openide/util/lookup/InheritanceTree; CLjava/util/Iterator<Lorg/openide/util/lookup/AbstractLookup$Pair;>; \(Lorg/openide/util/lookup/InheritanceTree;Lorg/openide/util/lookup/AbstractLookup$Pair<*>;)Z writeReplace #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; FLjava/lang/ref/WeakReference<Ljava/lang/Class;>;Ljava/io/Serializable; 
SourceFile InheritanceTree.java InnerClasses ª 'org/openide/util/lookup/InheritanceTree Node ­ &org/openide/util/lookup/AbstractLookup Pair ° .org/openide/util/lookup/AbstractLookup$Storage Storage R 0    w   y z  {    |  ~                 	        >     *+· ±       
   - .                 1                     8*´ Æ *´ Á  ¬*´ ¹   *µ § *» Y*´ · µ ¬          4 5 8 9 '; 6>        8            C     h     '*´ Æ *´ ² ¦ *¸ µ § **´ ¸ "µ ±          D E G &I        '         	
  4 5     p     *¶ &À *L+Ç 	² ,§ +°       
   N Q                1                ü  *@ *        ;     k     *¶ 26¦ ¬*¶ 2+¶ 8¬          W 	X [                 1                                     k     *¶ 26¦ ¬+*¶ 2¶ <¬          a 	c f                                                     K     *´ Æ *´ ² ¦ *» Y· Aµ *´ ,¹ D W¬*´ ,¹ H  G*´ ¹ K N-¹ O À =:,¶ Tÿï§ ,¥ ,+¶ W¶ [-¹ _ *´ ,¹ D W¬*´ ,¹ D W¬       B   n o p 'r )u 6v @y Kz T{ W ] g m x z     4  @ :    K /                            @ :               ü  Pü  =ù     	           ¡  ¢ )     3     	» bY*· d°                  	      u v     A     » gY· ij¶ l*¶ &¶ p¶ s°                       £     ¤        ¥ ¦    § ¨   "   © «  = ¬ ®	 ¯ ¬ ± b © ² 