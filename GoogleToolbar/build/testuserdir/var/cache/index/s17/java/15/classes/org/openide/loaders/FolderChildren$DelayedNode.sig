����   4 �  -org/openide/loaders/FolderChildren$DelayedLkp  'org/openide/util/lookup/InstanceContent
     <init> ()V
  
   P(Lorg/openide/loaders/FolderChildren;Lorg/openide/util/lookup/InstanceContent;)V
      .org/openide/loaders/FolderChildren$DelayedNode ~(Lorg/openide/loaders/FolderChildren;Lorg/openide/loaders/FolderChildrenPair;Lorg/openide/loaders/FolderChildren$DelayedLkp;)V  org/openide/nodes/AbstractNode	      %org/openide/nodes/FilterNode$Children LEAF Lorg/openide/nodes/Children;
     8(Lorg/openide/nodes/Children;Lorg/openide/util/Lookup;)V
     o(Lorg/openide/loaders/FolderChildren;Lorg/openide/loaders/FolderChildrenPair;Lorg/openide/nodes/AbstractNode;)V	    ! " ic )Lorg/openide/util/lookup/InstanceContent;	 $ % & ' ( &org/openide/loaders/FolderChildrenPair primaryFile $Lorg/openide/filesystems/FileObject;
  * + , add (Ljava/lang/Object;)V	  . / 0 node 0Lorg/openide/loaders/FolderChildren$DelayedNode;	  2 3 4 this$0 $Lorg/openide/loaders/FolderChildren;
 6 7 8  9 org/openide/nodes/FilterNode (Lorg/openide/nodes/Node;)V	  ; < = pair (Lorg/openide/loaders/FolderChildrenPair;
 ? @ A B C "org/openide/filesystems/FileObject 
getNameExt ()Ljava/lang/String;
  E F G setName (Ljava/lang/String;)V I org/openide/loaders/unknown.gif
  K L G setIconBaseWithExtension N constructor
  P Q G scheduleRefresh
 S T U V W "org/openide/loaders/FolderChildren 
createNode B(Lorg/openide/loaders/FolderChildrenPair;)Lorg/openide/nodes/Node;
 Y Z [ \ ] org/openide/nodes/Node isLeaf ()Z
  _ ` a changeOriginal (Lorg/openide/nodes/Node;Z)V
 S c d e 
access$300 9(Lorg/openide/loaders/FolderChildren;Ljava/lang/Object;)V	  g h i task (Lorg/openide/util/RequestProcessor$Task;
 S k l m 
access$000 @(Lorg/openide/loaders/FolderChildren;)Ljava/util/logging/Logger;	 o p q r s java/util/logging/Level FINE Ljava/util/logging/Level; u (delayed node refreshed {0} original: {1} w java/lang/Object
 y z { | } java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V  original before wait: {0}
  � � � getOriginal ()Lorg/openide/nodes/Node;
 y � | � @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 � � � �  &org/openide/util/RequestProcessor$Task waitFinished � original after wait: {0} � task after waitFinished {0}
 � � � � � 2org/netbeans/modules/openide/loaders/DataNodeUtils reqProcessor I(Lorg/openide/filesystems/FileObject;)Lorg/openide/util/RequestProcessor;
 � � � � � !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task; � &Task initialized by {0} to {1} for {2} � java/lang/Runnable O(Lorg/openide/loaders/FolderChildren;Lorg/openide/loaders/FolderChildrenPair;)V Code LineNumberTable LocalVariableTable this MethodParameters lkp /Lorg/openide/loaders/FolderChildren$DelayedLkp; an  Lorg/openide/nodes/AbstractNode; run n Lorg/openide/nodes/Node; StackMapTable � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; t by Ljava/lang/String; 
SourceFile FolderChildren.java InnerClasses 
DelayedLkp DelayedNode Children Task 0  6  �   < =    h i   3 4      �  �   N     *+,� Y+� Y� � 	� �    �   
   �   �        � 0      < =  �   	 3 <       �   l     "*+,� Y� -� � -� ,� #� )-*� -�    �         ! �        " � 0     " < =    " � �  �    3 <   �       �   }     '*+� 1*-� 5*,� :-,� #� >� D-H� J*M� O�    �       	 

     & �        ' � 0     ' < =    ' � �  �    3 <   �    �   �  	     ^*� 1*� :� RL+� *++� X� � � ^� *� 1*� :� b*YM�*� f,ç N,�-�*� 1� j� nt� vY*SY+S� x�  3 : =   = @ =    �   & 	     $ / 3 8 B ] �       ^ � 0    R � �  �   A �    Y   Y�     Y   Y
�    Y v  ��  �     �    � ]  �       Z*YM�*� fL+� ,ì,ç N,�-�*� 1� j� n~*� �� �+� �*� 1� j� n�*� �� �*� 1� j� n�*� f� ��                  �   * 
  ! " 	# $ & ' .( 2) E* X+ �      	  � i    Z � 0    ? � i  �   ) �  � v�     v  ��    �   0 Q G  �   q     5**� :� #� �*� �� f*� 1� j� n�� vY+SY*� fSY*S� x�    �      / 0 41 �       5 � 0     5 � �  �    �    �    � �   "   S �   S �   6 � 	 � � � 