����   4 J	      <org/openide/loaders/InstanceDataObject$CookieAdjustingFilter this$0 (Lorg/openide/loaders/InstanceDataObject;  #org/openide/util/lookup/ProxyLookup 
 org/openide/util/Lookup
      org/openide/nodes/Node 	getLookup ()Lorg/openide/util/Lookup;
      org/openide/util/lookup/Lookups 	singleton -(Ljava/lang/Object;)Lorg/openide/util/Lookup;
     <init> ([Lorg/openide/util/Lookup;)V
      org/openide/nodes/FilterNode P(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;Lorg/openide/util/Lookup;)V
  ! " # getOriginal ()Lorg/openide/nodes/Node;
  % & ' 	getHandle !()Lorg/openide/nodes/Node$Handle;
  ) * + equals (Ljava/lang/Object;)Z
 - ) . java/lang/Object
  0 1 2 hashCode ()I C(Lorg/openide/loaders/InstanceDataObject;Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this >Lorg/openide/loaders/InstanceDataObject$CookieAdjustingFilter; n Lorg/openide/nodes/Node; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; o Ljava/lang/Object; StackMapTable 
SourceFile InstanceDataObject.java InnerClasses E &org/openide/loaders/InstanceDataObject CookieAdjustingFilter H org/openide/nodes/Node$Handle Handle 0             3  4   m 	    %*+� *,� Y� 	Y,� SY+� S� � �    5      ; < = > !< $@ 6       % 7 8     % 9 :  ;   	  9    & '  4   2     *�  � $�    5      F 6        7 8   <     =    * +  4   e     %*+� *�  +� (� +� +*�  � ,� � �    5      K 6       % 7 8     % > ?  @    @ ;    >   <     =    1 2  4   2     *�  � /�    5      O 6        7 8   <     =    A    B C      D F  G  I	