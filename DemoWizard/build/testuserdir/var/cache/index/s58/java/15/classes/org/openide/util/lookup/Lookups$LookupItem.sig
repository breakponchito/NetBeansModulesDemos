����   4 O
      *org/openide/util/lookup/Lookups$LookupItem <init> '(Ljava/lang/Object;Ljava/lang/String;)V
  	 
   org/openide/util/Lookup$Item ()V	     id Ljava/lang/String;	     instance Ljava/lang/Object;
     getId ()Ljava/lang/String;
      java/lang/Object toString
      getClass ()Ljava/lang/Class;
  " # $ getInstance ()Ljava/lang/Object;
  & ' ( hashCode ()I 	Signature TT; (Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/util/lookup/Lookups$LookupItem; LocalVariableTypeTable 1Lorg/openide/util/lookup/Lookups$LookupItem<TT;>; MethodParameters (TT;)V (TT;Ljava/lang/String;)V getDisplayName StackMapTable 9 java/lang/String ()TT; getType ()Ljava/lang/Class<+TT;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked equals (Ljava/lang/Object;)Z object Ljava/lang/Override; 9<T:Ljava/lang/Object;>Lorg/openide/util/Lookup$Item<TT;>; 
SourceFile Lookups.java InnerClasses J org/openide/util/lookup/Lookups 
LookupItem M org/openide/util/Lookup Item                 )    *    +  ,   [     *+� �    -   
   ) * .        / 0         1        / 2       *  3       )    4     ,   u     *� *,� *+� �    -      , - 	. / .         / 0               1        / 2       *  3   	       )    5  6   ,   A     *� �    -      2 .        / 0   1        / 2       ,   _     *� � *� � � *� �    -      6 .        / 0   1        / 2   7    C 8  # $  ,   A     *� �    -      : .        / 0   1        / 2   )    :  ;    ,   D     *� � �    -      ? .        / 0   1        / 2   )    < =     >  ?[ s @  A B  ,   w     +� � *� +� � !� � ��    -      C D G .        / 0      C   1        / 2   7    @  3    C   =     D    ' (  ,   D     *� � %�    -      K .        / 0   1        / 2   =     D    )    E F    G H      I K 
  L N	