����   4 Z
      2org/openide/util/NbCollections$CheckedMap$EntrySet <init> .(Lorg/openide/util/NbCollections$CheckedMap;)V	   	 
 this$0 +Lorg/openide/util/NbCollections$CheckedMap;
      java/util/AbstractSet ()V  4org/openide/util/NbCollections$CheckedMap$EntrySet$1
      )org/openide/util/NbCollections$CheckedMap 
access$100 <(Lorg/openide/util/NbCollections$CheckedMap;)Ljava/util/Map;      java/util/Map entrySet ()Ljava/util/Set;    ! " # java/util/Set iterator ()Ljava/util/Iterator;
  %  & K(Lorg/openide/util/NbCollections$CheckedMap$EntrySet;Ljava/util/Iterator;)V ( ) * + , java/util/Iterator hasNext ()Z ( . / 0 next ()Ljava/lang/Object; 2 java/util/Map$Entry
  4 5 6 
access$200 C(Lorg/openide/util/NbCollections$CheckedMap;Ljava/util/Map$Entry;)Z Code LineNumberTable LocalVariableTable this 4Lorg/openide/util/NbCollections$CheckedMap$EntrySet; LocalVariableTypeTable <Lorg/openide/util/NbCollections$CheckedMap<TK;TV;>.EntrySet; MethodParameters 	Signature 5()Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; size ()I c I it Ljava/util/Iterator; +Ljava/util/Iterator<Ljava/util/Map$Entry;>; StackMapTable P(Lorg/openide/util/NbCollections$CheckedMap;Lorg/openide/util/NbCollections$1;)V x0 x1 "Lorg/openide/util/NbCollections$1; 6Ljava/util/AbstractSet<Ljava/util/Map$Entry<TK;TV;>;>; 
SourceFile NbCollections.java InnerClasses T org/openide/util/NbCollections 
CheckedMap EntrySet Entry Y  org/openide/util/NbCollections$1 0      	 
        7   F     
*+� *� �    8      j 9       
 : ;   <       
 : =   >    	  " #  7   V     � Y**� � �  �  � $�    8      n 9        : ;   <        : =   ?    @ A     B    C D  7   �     8<*� � �  �  M,� ' � *� ,� - � 1� 3�������    8      x y z { 0| 6 9        8 : ;    6 E F   $ G H  <       8 : =    $ G I  J   
 �  (! A     B     K  7   V     *+� �    8      j 9         : ;      L 
     M N  <        : =    ?    O P    Q R   *   S U    V         1  W	 X      