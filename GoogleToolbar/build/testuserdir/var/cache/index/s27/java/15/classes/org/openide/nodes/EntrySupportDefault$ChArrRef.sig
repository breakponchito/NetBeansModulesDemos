����   4 ?	      .org/openide/nodes/EntrySupportDefault$ChArrRef this$0 'Lorg/openide/nodes/EntrySupportDefault;
  	 
   org/openide/util/Utilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
      java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V	     chArr !Lorg/openide/nodes/ChildrenArray;
     get ()Ljava/lang/Object;  org/openide/nodes/ChildrenArray
     ! " %org/openide/nodes/EntrySupportDefault finalizedChildrenArray (Ljava/lang/ref/Reference;)V
  $  % #()Lorg/openide/nodes/ChildrenArray; ' java/lang/Runnable L(Lorg/openide/nodes/EntrySupportDefault;Lorg/openide/nodes/ChildrenArray;Z)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/nodes/EntrySupportDefault$ChArrRef; referent weak Z StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; isWeak ()Z run ()V 	Signature TLjava/lang/ref/WeakReference<Lorg/openide/nodes/ChildrenArray;>;Ljava/lang/Runnable; 
SourceFile EntrySupportDefault.java InnerClasses ChArrRef      &              (  )   �     *+� *,� � *� � ,� �    *      < = > ? +         , -      .      / 0  1   - �       �          2     .   /     %  )   M     *� � 
*� � 
*� � �    *      C +        , -   1    F  3     4     5 6  )   B     *� � � �    *      G +        , -   1    @  7 8  )   7     	*� *� �    *   
   L M +       	 , -   3     4  A    )   /     *� #�    *      9 +        , -   3     4    9    : ;    < =   
    > 