����   4 O	      &org/openide/nodes/Children$SortedArray comp Ljava/util/Comparator;
  	 
    org/openide/nodes/Children$Array <init> ()V
     (Ljava/util/Collection;)V	     PR #Lorg/openide/util/Mutex$Privileged;
      !org/openide/util/Mutex$Privileged enterWriteAccess
     refresh
     exitWriteAccess   *org/openide/nodes/Children$SortedArray$SAE
  "  # +(Lorg/openide/nodes/Children$SortedArray;)V 	Signature 1Ljava/util/Comparator<-Lorg/openide/nodes/Node;>; Code LineNumberTable LocalVariableTable this (Lorg/openide/nodes/Children$SortedArray; c Ljava/util/Collection; LocalVariableTypeTable 0Ljava/util/Collection<Lorg/openide/nodes/Node;>; MethodParameters 3(Ljava/util/Collection<Lorg/openide/nodes/Node;>;)V setComparator (Ljava/util/Comparator;)V StackMapTable 5 java/lang/Throwable 4(Ljava/util/Comparator<-Lorg/openide/nodes/Node;>;)V getComparator ()Ljava/util/Comparator; 3()Ljava/util/Comparator<-Lorg/openide/nodes/Node;>; createNodesEntry $()Lorg/openide/nodes/Children$Entry; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
access$200 @(Lorg/openide/nodes/Children$SortedArray;)Ljava/util/Comparator; x0 
SourceFile Children.java InnerClasses E org/openide/nodes/Children SortedArray Array I org/openide/util/Mutex 
Privileged SAE M  org/openide/nodes/Children$Entry Entry !          $    %      &   3     *� �    '   
   h i (        ) *       &   P     *+� �    '   
   q r (        ) *      + ,  -        + .  /    +   $    0  1 2  &   �     "� � *+� *� � � � M� � ,��         '   "   } ~  � � � � !� (       " ) *     " +   -       " + %  3    X 4 /    +  $    6  7 8  &   /     *� �    '      � (        ) *   $    9   : ;  &   3     	� Y*� !�    '      � (       	 ) *   <     =   > ?  &   /     *� �    '      c (        @ *    A    B C   *   D F 	  D G 	  H J    K  L D N