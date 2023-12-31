����   4 o	      +org/openide/loaders/DataFolder$ClonedFilter this$0  Lorg/openide/loaders/DataFolder;
  	 
   org/openide/loaders/DataFolder createNodeChildren >(Lorg/openide/loaders/DataFilter;)Lorg/openide/nodes/Children;
      org/openide/nodes/FilterNode <init> 7(Lorg/openide/nodes/Node;Lorg/openide/nodes/Children;)V	     hashCode I	     filter  Lorg/openide/loaders/DataFilter;
     getNodeDelegate ()Lorg/openide/nodes/Node;
     ! [(Lorg/openide/loaders/DataFolder;Lorg/openide/nodes/Node;Lorg/openide/loaders/DataFilter;)V
  # $ % isValid ()Z
  '  ( C(Lorg/openide/loaders/DataFolder;Lorg/openide/loaders/DataFilter;)V
  * +  	cloneNode - 1org/openide/loaders/DataFolder$ClonedFilterHandle
 , ' 0 )org/openide/loaders/DataFolder$FolderNode
 / 2 3 4 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 / 6 7 8 getChildren ()Lorg/openide/nodes/Children; : "org/openide/loaders/FolderChildren
 9 < = > 	getFilter "()Lorg/openide/loaders/DataFilter; @ A B C D org/openide/loaders/DataFilter equals (Ljava/lang/Object;)Z
  2 @ A
 H I J  K org/openide/nodes/Node ()I
  I Code LineNumberTable LocalVariableTable this -Lorg/openide/loaders/DataFolder$ClonedFilter; n Lorg/openide/nodes/Node; MethodParameters StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	getHandle !()Lorg/openide/nodes/Node$Handle; fn +Lorg/openide/loaders/DataFolder$FolderNode; ch Lorg/openide/nodes/Children; cf o Ljava/lang/Object; b org/openide/nodes/Children 
SourceFile DataFolder.java InnerClasses ClonedFilter ClonedFilterHandle 
FolderNode j org/openide/nodes/Node$Cookie Cookie m org/openide/nodes/Node$Handle Handle 0                       !  M   h     *+� *,+-� � *� *-� �    N      A B > C D O         P Q      R S        T     R        (  M   C     *++� ,� �    N   
   F 
G O        P Q         T   	      +   M   Z     *� � "� � Y*� *� � &�*� )�    N      J 
K M O        P Q   U     V     W    X Y  M   :     � ,Y*� *� � .�    N      R O        P Q   V     W    C D  M  2     x+� �+*� �+� /� 6+� /M,� 1*� � �,� 5N-� 9� -� 9� ;*� � ? W�+� � ++� M,� E*� � ,� *� � F � � ��    N   J   V W X Y Z [ \ &] (_ -` 4a Ec Gd Ne Sf hg uf vi O   4   . Z [  -  \ ]  S # ^ Q    x P Q     x _ `  U    �  /�  a� � , @�   T    _   V     W     K  M   �     >*� � 4*� � "� **� � � G� � **� L� *� � 	*�� *� �    N      n o p #s +v 3w 9{ O       > P Q   U    # V     W    c    d e   *    f  ,  g  /  h  i H k	 l H n	