����   4 �
      org/openide/loaders/DataFolder getNodeDelegate ()Lorg/openide/nodes/Node;
  	 
   $org/openide/loaders/DataFolder$Index <init> ;(Lorg/openide/loaders/DataFolder;Lorg/openide/nodes/Node;)V
      org/openide/nodes/Index$Support ()V	     df  Lorg/openide/loaders/DataFolder;	     node Lorg/openide/nodes/Node;  -org/openide/loaders/DataFolder$Index$Listener
     )(Lorg/openide/loaders/DataFolder$Index;)V	    ! " listener /Lorg/openide/loaders/DataFolder$Index$Listener;
 $ % & ' ( org/openide/nodes/NodeOp weakNodeListener T(Lorg/openide/nodes/NodeListener;Ljava/lang/Object;)Lorg/openide/nodes/NodeListener;
 * + , - . org/openide/nodes/Node addNodeListener #(Lorg/openide/nodes/NodeListener;)V
 * 0 1 2 getChildren ()Lorg/openide/nodes/Children;
 4 5 6 7 8 "org/openide/loaders/FolderChildren checkChildrenMutex ()Z
 : ; < = > org/openide/nodes/Children getNodesCount (Z)I
 : @ A B getNodes (Z)[Lorg/openide/nodes/Node;
  D 1 E #()[Lorg/openide/loaders/DataObject; G org/openide/loaders/DataObject
  I A J ()[Lorg/openide/nodes/Node; L "java/lang/IllegalArgumentException N java/lang/StringBuilder
 M  Q !permutation of incorrect length: 
 M S T U append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 M W T X (I)Ljava/lang/StringBuilder; Z  rather than 
 M \ ] ^ toString ()Ljava/lang/String;
 K `  a (Ljava/lang/String;)V c java/util/HashMap
 b e  f (I)V
 F 
 * i j k 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 * m n ^ getName
 b p q r put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 b t u v get &(Ljava/lang/Object;)Ljava/lang/Object; x (cannot reorder node with no DataObject: 
 M z T { -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 F } ~  	getFolder "()Lorg/openide/loaders/DataFolder; � wrong folder for: 
 F � � � getPrimaryFile &()Lorg/openide/filesystems/FileObject;
  � � java/util/HashSet
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 � �  � (Ljava/util/Collection;)V � � � � � java/util/Set size ()I � .duplicate DataObject's among reordered childen � � � � remove (Ljava/lang/Object;)Z
  � � � setOrder $([Lorg/openide/loaders/DataObject;)V � java/io/IOException � EXC_ReorderFailed
 F � � � 	getString &(Ljava/lang/String;)Ljava/lang/String;
 � � � � � org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 � � � � printStackTrace (Ljava/lang/Throwable;)V
  � � � showIndexedCustomizer (Lorg/openide/nodes/Index;)V � javax/swing/event/ChangeEvent
 � �  � (Ljava/lang/Object;)V
  � � � fireChangeEvent "(Ljavax/swing/event/ChangeEvent;)V #(Lorg/openide/loaders/DataFolder;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/loaders/DataFolder$Index; MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; reorder ([I)V del i I d  Lorg/openide/loaders/DataObject; ex Ljava/io/IOException; perm [I curObjs ![Lorg/openide/loaders/DataObject; newObjs nodes [Lorg/openide/nodes/Node; names Ljava/util/HashMap; dperm dpermSet Ljava/util/Set; dindex LocalVariableTypeTable GLjava/util/HashMap<Ljava/lang/String;Lorg/openide/loaders/DataObject;>; 1Ljava/util/Set<Lorg/openide/loaders/DataObject;>; StackMapTable � � #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; fireChangeEventAccess 
SourceFile DataFolder.java InnerClasses Index � org/openide/nodes/Index Support Listener � org/openide/nodes/Node$Cookie Cookie !                 ! "      �  �   B     
*++� � �    �   
   � 	� �       
 � �     
    �      �     �     �       �   y     '*� *+� *,� *� Y*� � ,*� ,� #� )�    �      � � 	� � � &� �        ' � �     '      '    �   	       = �  �   8     *� � /� 3� 9�    �      � �        � �    A J  �   8     *� � /� 3� ?�    �      � �        � �    � �  �  Y  
  �*� � CM,�� FN*� H:�+�� *� KY� MY� OP� R+�� VY� R�� V� [� _�� bY,�h� d:6,�� +,2� g:F� h� � l,2� oW����+�� F:6+�� �2F� h� F:� 2� l� s� F:� "� KY� MY� Ow� R2� y� [� _�� |*� � 1� KY� MY� O�� R� �� yY� R*� � �� y� [� _�+.S���i� �Y� �� �:� � �� � KY�� _�66		,�� .,	2� � � -	�2S� -	,	2S�	���*� -� �� :		�� �� �W	� �� ��� �  �   � '  � � � � � C� P� Z� c� m� |� �� �� �� �� �� �� �� �� ��� �&�4�A�K�N�X�f�u�}����������������� �   �  c  �   S / � �  � ~ � �  � � � � Q 2 � � 	�  � � 	  � � �    � � �  � � �  � � �  � � �  PQ � �  � � � 4 m � � N S � �  �     PQ � � 4 m � �  �   @ � C � � ��  b(� � 	 �� , F#9� � $ �� #� J � �    �    �   �   3     *� ��    �   
   � � �        � �   �     �     �   �   ;     *� �Y*� �� ��    �   
   � � �        � �    �    � �   "    � 	  � �	   �  � * �	