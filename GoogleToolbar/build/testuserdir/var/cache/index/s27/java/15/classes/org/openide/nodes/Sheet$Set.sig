����   4 �  java/util/ArrayList
     <init> ()V
  	 
   org/openide/nodes/Sheet$Set (Ljava/util/List;)V
    "org/openide/nodes/Node$PropertySet   java/beans/PropertyChangeSupport
     (Ljava/lang/Object;)V	     supp "Ljava/beans/PropertyChangeSupport;	     props Ljava/util/List;
     (Ljava/util/Collection;)V
    ! " 	findIndex (Ljava/lang/String;)I $ % & ' ( java/util/List get (I)Ljava/lang/Object; * org/openide/nodes/Node$Property	  , - . array "[Lorg/openide/nodes/Node$Property; $ 0 1 2 size ()I $ 4 5 6 toArray (([Ljava/lang/Object;)[Ljava/lang/Object;
 ) 8 9 : getName ()Ljava/lang/String; $ < = > set '(ILjava/lang/Object;)Ljava/lang/Object; $ @ A B add (Ljava/lang/Object;)Z
  D E  refresh $ G H ( remove
  J K L addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  N O L removePropertyChangeListener
 Q R S T B java/lang/String equals
  V W X firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V 	Signature 6Ljava/util/List<Lorg/openide/nodes/Node$Property<*>;>; %[Lorg/openide/nodes/Node$Property<*>; Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/Sheet$Set; al LocalVariableTypeTable MethodParameters 9(Ljava/util/List<Lorg/openide/nodes/Node$Property<*>;>;)V cloneSet ()Lorg/openide/nodes/Sheet$Set; 5(Ljava/lang/String;)Lorg/openide/nodes/Node$Property; name Ljava/lang/String; indx I StackMapTable 8(Ljava/lang/String;)Lorg/openide/nodes/Node$Property<*>; getProperties $()[Lorg/openide/nodes/Node$Property; '()[Lorg/openide/nodes/Node$Property<*>; put D(Lorg/openide/nodes/Node$Property;)Lorg/openide/nodes/Node$Property; removed !Lorg/openide/nodes/Node$Property; p $Lorg/openide/nodes/Node$Property<*>; J(Lorg/openide/nodes/Node$Property<*>;)Lorg/openide/nodes/Node$Property<*>; %([Lorg/openide/nodes/Node$Property;)V i ar (([Lorg/openide/nodes/Node$Property<*>;)V } java/lang/Throwable l #Ljava/beans/PropertyChangeListener; s 
SourceFile 
Sheet.java InnerClasses � org/openide/nodes/Sheet Set � org/openide/nodes/Node PropertySet Property 1          Y    Z  - .  Y    [           \   :     *� Y� � �    ]   
    �  � ^        _ `       \   h     *� *� Y*� � *+� �    ]        �   ^        _ `      a   b        a Z  c    a   Y    d ! e f  \   =     � Y� Y*� � � �    ]      	 ^        _ `    ' g  \   o     *+� =� � *� � # � )�    ]   
     ^         _ `      h i    j k  l   
 � L ) c    h   Y    m ! n o  \   i     **� +� !**� � / � )� +*� *� +� 3 W*� +�    ]         % ^       * _ `   l    % Y    p ! q r  \   �     3*+� 7� =� *� +� ; � )N� *� +� ? WN*� C-�    ]      & 	) +  . +/ -3 15 ^   4    s t    3 _ `     3 u t  	 * j k  -  s t  b        s v    3 u v  -  s v  l    �  �  ) c    u   Y    w ! q x  \   �     F=+�� <+2N+2N*-� 7� 6� *� -� ; W� *� -� ? W����*� C�    ]   * 
  = > ? A C  E 0H ;= AM EN ^   4   / u t   ! j k   ? y k    F _ `     F z .  b      / u v    F z [  l    � � - )� 
�  c    z   Y    { ! H g  \   �     **+� =�  *� � F � )N*� C-�:*� C��        !     ]   "   U W Y \ Y \ %] (_ ^        * _ `     * h i   $ j k  l    �    Q  | c    h   Y    m  K L  \   A     	*� +� I�    ]   
   f g ^       	 _ `     	 ~   c    ~    O L  \   A     	*� +� M�    ]   
   l m ^       	 _ `     	 ~   c    ~    ! "  \   �     6*� � / =>� &*� � # � ):� 7+� P� ������    ]      t 
v w  y ,z .v 4~ ^   4     u t   ( y k    6 _ `     6 h i  
 , � k  b        u v  l    � !�  c    h    E   \   B     *� +*� � U�    ]      � � � ^        _ `    �    � �      � �   � �	 ) � �	