����   4 N
      java/lang/Object <init> ()V	  	 
   !org/openide/nodes/Children$Map$ME key Ljava/lang/Object;	     node Lorg/openide/nodes/Node;
      java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
     hashCode ()I
     equals (Ljava/lang/Object;)Z   java/lang/StringBuilder
   # Key (
  % & ' append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ) & * -(Ljava/lang/Object;)Ljava/lang/StringBuilder; , )
  . / 0 toString ()Ljava/lang/String; 2  org/openide/nodes/Children$Entry -(Ljava/lang/Object;Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this #Lorg/openide/nodes/Children$Map$ME; MethodParameters nodes *(Ljava/lang/Object;)Ljava/util/Collection; source 	Signature D(Ljava/lang/Object;)Ljava/util/Collection<Lorg/openide/nodes/Node;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; me o StackMapTable 
SourceFile Children.java InnerClasses H org/openide/nodes/Children$Map J org/openide/nodes/Children Map ME Entry 0    1               3  4   Y     *� *+� *,� �    5      : ; 	< = 6         7 8               9   	        : ;  4   <     *� � �    5      A 6        7 8      <   9    <   =    >     4   2     *� � �    5      H 6        7 8   ?     @       4   m     +� � +� M*� ,� � ��    5      O P R U 6        A 8     7 8      B   C     9    B   ?     @    / 0  4   F     � Y� !"� $*� � (+� $� -�    5      Z 6        7 8   ?     @    D    E F     G I K 	  G L  1 I M