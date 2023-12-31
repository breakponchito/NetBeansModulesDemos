����   4 X
      org/openide/nodes/Children <init> ()V  java/lang/Object
  	      'org/openide/nodes/Children$LazyChildren originalLock Ljava/lang/Object;	     factory Ljava/util/concurrent/Callable;	     original Lorg/openide/nodes/Children;      java/util/concurrent/Callable call ()Ljava/lang/Object;  java/lang/Exception ! java/lang/RuntimeException
   #  $ (Ljava/lang/Throwable;)V
  & ' ( getOriginal ()Lorg/openide/nodes/Children;
  * + , add ([Lorg/openide/nodes/Node;)Z
  . / , remove
  1 2  	addNotify
  4 5  removeNotify
  7 8 9 entrySupport "()Lorg/openide/nodes/EntrySupport;
  ; < = 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node; 	Signature =Ljava/util/concurrent/Callable<Lorg/openide/nodes/Children;>; "(Ljava/util/concurrent/Callable;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/nodes/Children$LazyChildren; LocalVariableTypeTable MethodParameters @(Ljava/util/concurrent/Callable<Lorg/openide/nodes/Children;>;)V ex Ljava/lang/Exception; StackMapTable M java/lang/Throwable nodes [Lorg/openide/nodes/Node; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; name Ljava/lang/String; 
SourceFile Children.java InnerClasses LazyChildren            >    ?               @  A   g     *� *� Y� 	� 
*+� �    B      !  " # C        D E         F         ?  G       >    H   ' (  A   �     7*� 
YL�*� �  **� �  � � � M�  Y,� "�*� +ðN+�-�    !   1 2   2 5 2    B   "   & ' ) , !* "+ +. 2/ C     " 	 I J    7 D E   K    � !     	F L  + ,  A   =     	*� %+� )�    B      4 C       	 D E     	 N O  G    N   P     Q    / ,  A   =     	*� %+� -�    B      9 C       	 D E     	 N O  G    N   P     Q    2   A   6     *� %� 0�    B   
   > ? C        D E   P     Q    5   A   6     *� %� 3�    B   
   C D C        D E   P     Q     8 9  A   2     *� %� 6�    B      H C        D E   P     Q    < =  A   =     	*� %+� :�    B      M C       	 D E     	 R S  G    R   P     Q    T    U V   
    W 