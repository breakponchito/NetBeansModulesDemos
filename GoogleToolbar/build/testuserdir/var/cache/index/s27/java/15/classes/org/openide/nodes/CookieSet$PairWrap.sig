����   4 Y
      +org/openide/util/lookup/AbstractLookup$Pair <init> ()V	  	 
   $org/openide/nodes/CookieSet$PairWrap item Lorg/openide/util/Lookup$Item;
     getType ()Ljava/lang/Class;
      java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z	     created Z
     getInstance ()Ljava/lang/Object;
    ! org/openide/util/Lookup$Item
   
   $ % & getId ()Ljava/lang/String;
   ( ) & getDisplayName
 + , - . / java/lang/Object hashCode ()I
 + 1 2 3 equals (Ljava/lang/Object;)Z 	Signature !Lorg/openide/util/Lookup$Item<*>; !(Lorg/openide/util/Lookup$Item;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/nodes/CookieSet$PairWrap; LocalVariableTypeTable MethodParameters $(Lorg/openide/util/Lookup$Item<*>;)V 
instanceOf c Ljava/lang/Class; k Ljava/lang/Class<*>; 	creatorOf obj Ljava/lang/Object; StackMapTable (()Ljava/lang/Class<+Ljava/lang/Object;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; p object 
SourceFile CookieSet.java InnerClasses Q &org/openide/util/lookup/AbstractLookup Pair T org/openide/nodes/CookieSet PairWrap W org/openide/util/Lookup Item 0          4    5      	   6  7   X     
*� *+� �    8      � � 	� 9       
 : ;     
    <       
  5  =       4    >  ?   7   _     +M,*� � �    8   
   � � 9         : ;      @ A   	 B A  <      	 B C  =    @    D 3  7   T     *� � *� +� � �    8      � 9        : ;      E F  G    @ =    E       7   ;     *� *� � �    8   
   � � 9        : ;       7   2     *� � "�    8      � 9        : ;   4    H  % &  7   2     *� � #�    8      � 9        : ;    ) &  7   2     *� � '�    8      � 9        : ;    . /  7   6     	*� � *`�    8      � 9        : ;   I     J    2 3  7   m     +� � +� M*� ,� � 0��    8      � � � � 9        K ;     : ;      L F  G     =    L   I     J    M    N O      P R	  S U    V X	