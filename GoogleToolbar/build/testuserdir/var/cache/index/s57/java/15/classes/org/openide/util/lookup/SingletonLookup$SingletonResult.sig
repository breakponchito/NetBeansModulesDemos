����   4 G
      org/openide/util/Lookup$Result <init> ()V	  	 
   7org/openide/util/lookup/SingletonLookup$SingletonResult item Lorg/openide/util/Lookup$Item;
      org/openide/util/Lookup$Item getType ()Ljava/lang/Class;
      java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
     singletonList $(Ljava/lang/Object;)Ljava/util/List;
      getInstance ()Ljava/lang/Object; 	Signature #Lorg/openide/util/Lookup$Item<TT;>; !(Lorg/openide/util/Lookup$Item;)V Code LineNumberTable LocalVariableTable this 9Lorg/openide/util/lookup/SingletonLookup$SingletonResult; LocalVariableTypeTable >Lorg/openide/util/lookup/SingletonLookup$SingletonResult<TT;>; MethodParameters &(Lorg/openide/util/Lookup$Item<TT;>;)V addLookupListener $(Lorg/openide/util/LookupListener;)V l !Lorg/openide/util/LookupListener; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; removeLookupListener 
allClasses ()Ljava/util/Set; *()Ljava/util/Set<Ljava/lang/Class<+TT;>;>; allItems ()Ljava/util/Collection; >()Ljava/util/Collection<+Lorg/openide/util/Lookup$Item<TT;>;>; allInstances ()Ljava/util/Collection<+TT;>; ;<T:Ljava/lang/Object;>Lorg/openide/util/Lookup$Result<TT;>; 
SourceFile SingletonLookup.java InnerClasses A org/openide/util/Lookup Result D 'org/openide/util/lookup/SingletonLookup SingletonResult Item            !    "     #  $   b     
*� *+� �    %       �  � 	 � &       
 ' (     
    )       
 ' *     
  "  +       !    ,  - .  $   G      �    %       � &        ' (      / 0  )        ' *   +    /   1     2    3 .  $   G      �    %       � &        ' (      / 0  )        ' *   +    /   1     2    4 5  $   G     *� � � �    %       � &        ' (   )        ' *   !    6 1     2    7 8  $   D     *� � �    %       � &        ' (   )        ' *   !    9 1     2    : 8  $   G     *� � � �    %       � &        ' (   )        ' *   !    ; 1     2    !    < =    > ?      @ B	  C E   @ F	