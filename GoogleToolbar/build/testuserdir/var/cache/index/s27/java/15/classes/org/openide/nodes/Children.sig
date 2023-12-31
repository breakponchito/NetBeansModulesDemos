����   4K
      org/openide/nodes/Children <init> (Z)V
  	 
   java/lang/Object ()V	     lazySupport Z
     getEntrySupport "()Lorg/openide/nodes/EntrySupport;	     LOG Ljava/util/logging/Logger;  Initializing entrySupport
      java/util/logging/Logger finer (Ljava/lang/String;)V ! "org/openide/nodes/EntrySupportLazy
   #  $ (Lorg/openide/nodes/Children;)V & %org/openide/nodes/EntrySupportDefault
 % #
  ) * + setEntrySupport #(Lorg/openide/nodes/EntrySupport;)V
  - . + postInitializeEntrySupport	  0 1 2 LEAF Lorg/openide/nodes/Children;	  4 5 6 parent Lorg/openide/nodes/Node; 8 java/lang/IllegalStateException : FAn instance of Children may not be used for more than one parent node.
 7 <  
  > ? @ 	testNodes ()[Lorg/openide/nodes/Node;	  B C D PR #Lorg/openide/util/Mutex$Privileged;
 F G H I  !org/openide/util/Mutex$Privileged enterReadAccess
 F K L  exitReadAccess
 N O P Q R org/openide/nodes/Node assignTo  (Lorg/openide/nodes/Children;I)V
 N T U V fireParentNodeChange 3(Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)V X 2Trying to detach children which do not have parent
 N Z [ $ deassignFrom ] java/lang/NullPointerException _ Null factory
 \ < b  org/openide/nodes/AsynchChildren
 a d  e #(Lorg/openide/nodes/ChildFactory;)V
 g h i j k org/openide/nodes/ChildFactory setObserver ,(Lorg/openide/nodes/ChildFactory$Observer;)V m org/openide/nodes/SynchChildren
 l d p 'org/openide/nodes/Children$LazyChildren
 o r  s "(Ljava/util/concurrent/Callable;)V
  u v w clone ()Ljava/lang/Object;
  u
  z { @ getNodes
 } ~  � � org/openide/util/Enumerations array ,([Ljava/lang/Object;)Ljava/util/Enumeration;
 N � � � getName ()Ljava/lang/String;
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z
  � �  entrySupport
 � � � � � org/openide/nodes/EntrySupport isInitialized ()Z
  � �  checkSupport
 � � � � 	getNodeAt (I)Lorg/openide/nodes/Node;
 � � { � (Z)[Lorg/openide/nodes/Node;
 � � � � getNodesCount (Z)I
 � � � � snapshot ()Ljava/util/List; � � � � � java/util/List size ()I
  � �  	addNotify
  � �  removeNotify
 � >	  � � �  Lorg/openide/nodes/EntrySupport;	  � �  $assertionsDisabled
 � � � � � java/lang/Thread 	holdsLock � java/lang/AssertionError
 � 	
 � � � � � java/lang/Class desiredAssertionStatus
 F 	 � org/openide/util/Mutex � 9org/openide/nodes/Children$ProjectManagerDeadlockDetector
 � �  � !(Lorg/openide/nodes/Children$1;)V
 � �  � E(Lorg/openide/util/Mutex$Privileged;Ljava/util/concurrent/Executor;)V	  � � � MUTEX Lorg/openide/util/Mutex; �  org/openide/nodes/Children$Empty
 � 	
 � �
  � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Code LineNumberTable LocalVariableTable this lazy MethodParameters es StackMapTable � java/lang/Throwable isLazy attachTo (Lorg/openide/nodes/Node;)V node i I n nodes [Lorg/openide/nodes/Node; � 
Exceptions 
detachFrom 	oldParent create ?(Lorg/openide/nodes/ChildFactory;Z)Lorg/openide/nodes/Children; ch "Lorg/openide/nodes/AsynchChildren; !Lorg/openide/nodes/SynchChildren; factory  Lorg/openide/nodes/ChildFactory; asynchronous LocalVariableTypeTable 'Lorg/openide/nodes/AsynchChildren<TT;>; &Lorg/openide/nodes/SynchChildren<TT;>; %Lorg/openide/nodes/ChildFactory<TT;>; 	Signature Z<T:Ljava/lang/Object;>(Lorg/openide/nodes/ChildFactory<TT;>;Z)Lorg/openide/nodes/Children; 
createLazy =(Ljava/util/concurrent/Callable;)Lorg/openide/nodes/Children; Ljava/util/concurrent/Callable; =Ljava/util/concurrent/Callable<Lorg/openide/nodes/Children;>; [(Ljava/util/concurrent/Callable<Lorg/openide/nodes/Children;>;)Lorg/openide/nodes/Children; getNode ()Lorg/openide/nodes/Node; cloneHierarchy $java/lang/CloneNotSupportedException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; add ([Lorg/openide/nodes/Node;)Z remove ()Ljava/util/Enumeration; 3()Ljava/util/Enumeration<Lorg/openide/nodes/Node;>; 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node; name Ljava/lang/String; list index optimalResult ,()Ljava/util/List<Lorg/openide/nodes/Node;>; getSnapshotIdxs (Ljava/util/List;)[I Ljava/util/List; idxs [I *Ljava/util/List<Lorg/openide/nodes/Node;>;  .(Ljava/util/List<Lorg/openide/nodes/Node;>;)[I callAddNotify callRemoveNotify destroyNodes ([Lorg/openide/nodes/Node;)V arr <clinit> 
SourceFile Children.java InnerClasses 
Privileged/ 'org/openide/nodes/ChildFactory$Observer Observer LazyChildren ProjectManagerDeadlockDetector4 org/openide/nodes/Children$1 Empty7 org/openide/nodes/Children$Dupl Dupl: org/openide/nodes/Children$Keys Keys= $org/openide/nodes/Children$SortedMap 	SortedMap@ &org/openide/nodes/Children$SortedArray SortedArrayC org/openide/nodes/Children$Map MapF  org/openide/nodes/Children$Array ArrayI  org/openide/nodes/Children$Entry Entry!       C D    � �    1 2         � �     5 6         �    "     �   4     *� �    �   
    r  s �        � 2        �   F     
*� *� �    �       u  v 	 w �       
 � 2     
 �   �    �     �   �   �     EYL�*� � 0� � *� � �  Y*� "� � %Y*� 'M*,� (*,� ,*� +ðN+�-�   ? @   @ C @    �   "    }  ~    � / � 4 � 9 � @ � �     / 
 � �    E � 2   �    � & G �
F �   � �  �   /     *� �    �       � �        � 2     �   �   +      �    �       � �        � 2     . +  �   5      �    �       � �        � 2      � �  �    �    � �  �  �     �*� /� �*YM�*� 3� � 7Y9� ;�*+� 3,ç N,�-�*� =M,� �� A� E*� =M,� 
� A� J�>,�� ,2:*� M*� 3� S���� A� J� :� A� J��   $ '   ' * '   6 E y   L p y   y { y    �   f    �  �  �  �  �  � " � , � 1 � 5 � 6 � < � A � E � K � L � T � Y � ` � j � p � v � y � � � � � �   4  Y  � 6  N " � �    � � 2     � � 6  1 T � �  �   # 
�  I �� � 	 �� � !H �
 �     7 �    �   �   �       ~*� /� �L*YM�*� 3� � 7YW� ;�*� 3L*� 3,ç N,�-�� A� E*� =M,� 
� A� J�>,�� ,2:*� Y+� S���� A� J� :� A� J��   + .   . 1 .   3 B r   I i r   r t r    �   b    �  �  � 
 �  �  �  � $ � ) � 3 � 9 � > � B H � I � Q � V � \ � c � i o r z } �   4  V  � 6  K  � �  > + � �    ~ � 2   
 t � 6  �   % 	�  N N �� �  �� � H �
 	 � �  �   �     2*� � \Y^� `�� � aY*� cM*,� f,�� lY*� nM*,� f,�    �   "       !  " "$ +% 0& �   *    � �  +  � �    2 � �     2 �   �        � �  +  � �    2 �    �     �   	 �   �      	  �   E     	� oY*� q�    �      4 �       	 �   �       	 �   �    �      	  �   /     *� 3�    �      ; �        � 2   
 w  �   /     *� t�    �      C �        � 2   �      v w  �   �      YL�*� x� M,� 3,� (,+ðN+�-�             �      Q R S T U V �       � 2      � 2   �    �      � �            �    �   �    �   �  �   2     *� y� |�    �      v �        � 2        �   �     5*� yM,�� �+� ,2�>,�� +,2� �� �� ,2������    �   * 
  � � 
� � � � � )� -� 3� �   *    � �    5 � 2     5   0 �  �    �  �� �  �       � �  �   2     *� �� ��    �      � �        � 2    � �  �   E     *� �*� �� ��    �   
   � � �        � 2      �  �       { @  �   ;     *� �*� �� ��    �   
   � � �        � 2    { �  �   E     *� �*� �� ��    �   
   � � �        � 2        �       � �  �   ;     *� �*� �� ��    �   
   � � �        � 2    � �  �   E     *� �*� �� ��    �   
   � � �        � 2        �       � �  �   2     *� �� ��    �      � �        � 2        �   �     *� � �
L=+�� +O����+�    �      � 	      �        � �     �   	    �        �!   �    � "�  �    �     #  �   �   +      �    �       �        � 2    �   �   +      �    �       �        � 2    $   �   3     *� ��    �   
   & ( �        � 2   %   �   3     *� ��    �   
   + , �        � 2    &'  �   5      �    �      7 �        � 2     ( �  �   (    ? @  �   J     *� � � 
*� �� ��    �      = �        � 2   �    F �     �   /     *� ��    �      D �        � 2    * +  �   a     � �� � �� � �Y� ��*+� ��    �      K L M �        � 2      � �  �     �    �   )   �   x      E�  � � �� FY� ǳ A� �Y� A� �Y� ̷ ϳ һ �Y� س /� ٸ ڳ �    �       @  D  P / V 9 X �    @ *   +,   j  F �- . g0 o 1  � 2 3     � 5 6 89 ;	< > 	? A 	B D 	E G 	H J