����   4 �	      Aorg/openide/nodes/FilterNode$Children$LazySupport$FilterNodeEntry this$1 3Lorg/openide/nodes/FilterNode$Children$LazySupport;	  	 
   1org/openide/nodes/FilterNode$Children$LazySupport this$0 'Lorg/openide/nodes/FilterNode$Children;
      "org/openide/nodes/Children$Keys$KE <init> $(Lorg/openide/nodes/Children$Keys;)V	     	origEntry "Lorg/openide/nodes/Children$Entry;  /org/openide/nodes/EntrySupportLazy$LazySnapshot
     get <(Lorg/openide/nodes/Children$Entry;)Lorg/openide/nodes/Node;	      origSupport $Lorg/openide/nodes/EntrySupportLazy;
 " # $ %  "org/openide/nodes/EntrySupportLazy getNode	  ' ( ) key Ljava/lang/Object;
 " + , - isDummyNode (Lorg/openide/nodes/Node;)Z
 / 0 1 2 3 java/util/Collections 	emptyList ()Ljava/util/List;
 5 6 7 8 9 %org/openide/nodes/FilterNode$Children createNodes 3(Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node;
 ; < = > ? java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; A B C D E  org/openide/nodes/Children$Entry hashCode ()I A G H I equals (Ljava/lang/Object;)Z K java/lang/StringBuilder
 J M  N ()V P FilterNodeEntry[
 J R S T append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 J V S W -(Ljava/lang/Object;)Ljava/lang/StringBuilder; Y ]@
  B
 \ ] ^ _ ` java/lang/Integer toString (II)Ljava/lang/String;
 J b _ c ()Ljava/lang/String; X(Lorg/openide/nodes/FilterNode$Children$LazySupport;Lorg/openide/nodes/Children$Entry;)V Code LineNumberTable LocalVariableTable this CLorg/openide/nodes/FilterNode$Children$LazySupport$FilterNodeEntry; MethodParameters getKey ()Ljava/lang/Object; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getCnt nodes *(Ljava/lang/Object;)Ljava/util/Collection; origSnapshot 1Lorg/openide/nodes/EntrySupportLazy$LazySnapshot; node Lorg/openide/nodes/Node; source [Lorg/openide/nodes/Node; StackMapTable z org/openide/nodes/Node w 	Signature D(Ljava/lang/Object;)Ljava/util/Collection<Lorg/openide/nodes/Node;>; o 8Lorg/openide/nodes/Children$Keys<Ljava/lang/Object;>.KE; 
SourceFile FilterNode.java InnerClasses � org/openide/nodes/FilterNode Children LazySupport FilterNodeEntry � org/openide/nodes/Children$Keys � org/openide/nodes/Children Keys KE Entry LazySnapshot 0                   d  e   O     *+� *+� � *,� �    f      H I J g        h i         j   	      k l  e   ,     *�    f      N g        h i   m     n    o E  e   ,     �    f      S g        h i   m     n    p q  e   �     Q+� +� N-*� � M� *� � *� � !M*,� &,� 
,� *� � .�*� � ,� 4N-� � .�-� :�    f   2   Y Z 	[ \ ] $` )a 4b 8d De Hf Lh g   >  	 	 r s    t u    Q h i     Q v )  $ - t u  D  p w  x    �  y�  { j    v   |    } m     n    D E  e   4     
*� � @ �    f      m g       
 h i   m     n    H I  e   [     +� � *� +� � � F � �    f      r g        h i      ~ )  x    @ j    ~   m     n    _ c  e   R     (� JY� LO� Q*� � UX� Q*� Z� [� Q� a�    f      w g       ( h i   m     n    |     �    � �   :  5 � � 	  5 �    �  � � �	  � �   A � �  " �  