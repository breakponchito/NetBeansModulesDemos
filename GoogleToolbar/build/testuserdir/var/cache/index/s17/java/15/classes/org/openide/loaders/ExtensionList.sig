����   4
      java/lang/Object <init> ()V
   	 
 clone ()Ljava/lang/Object;  !org/openide/loaders/ExtensionList	     list Ljava/util/Set;  java/util/HashSet
        java/util/Set addAll (Ljava/util/Collection;)Z	     	mimeTypes  $java/lang/CloneNotSupportedException   java/lang/InternalError
    # $ % add (Ljava/lang/Object;)Z  ' ( % remove
 * + , - . java/lang/String lastIndexOf (I)I
 * 0 1 2 	substring (I)Ljava/lang/String;  4 5 % contains 7 )java/lang/StringIndexOutOfBoundsException
 9 : ; < = "org/openide/filesystems/FileObject getExt ()Ljava/lang/String;  ? @ A toArray (([Ljava/lang/Object;)[Ljava/lang/Object; C [Ljava/lang/String;
 9 E F G getMIMEType '([Ljava/lang/String;)Ljava/lang/String;
  I J K en /(Ljava/util/Collection;)Ljava/util/Enumeration; M java/lang/StringBuilder
 L  P ExtensionList[
 L R S T append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 L V S W -(Ljava/lang/Object;)Ljava/lang/StringBuilder; Y ]
 L [ \ = toString	  ^ _ ` CASE_INSENSITIVE Z
  b c d 	equalSets "(Ljava/util/Set;Ljava/util/Set;Z)Z
  f g h normalizeSet !(Ljava/util/Set;Z)Ljava/util/Set;  j k l hashCode ()I  n o % equals  q r s isEmpty ()Z
 u v w x y java/util/Collections emptySet ()Ljava/util/Set;  { | l size
  ~   (I)V  � � � iterator ()Ljava/util/Iterator; � � � � s java/util/Iterator hasNext � � � 
 next	 � � � � � java/util/Locale US Ljava/util/Locale;
 * � � � toLowerCase &(Ljava/util/Locale;)Ljava/lang/String;
 � � � � � org/openide/util/Enumerations empty ()Ljava/util/Enumeration;
  � � � createExtensionSet -(Ljava/util/Collection;)Ljava/util/SortedSet;
 u � � K enumeration � java/util/TreeSet	 * � � � CASE_INSENSITIVE_ORDER Ljava/util/Comparator;
 � �  � (Ljava/util/Comparator;)V
 � 
 � 
 � � � � � java/io/ObjectInputStream 
readFields &()Ljava/io/ObjectInputStream$GetField; 
 � � � � � "java/io/ObjectInputStream$GetField get 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � java/util/Map � � � y keySet 
 � � � � s org/openide/util/Utilities 	isWindows
 � � � l getOperatingSystem � java/lang/Cloneable � java/io/Serializable 	Signature #Ljava/util/Set<Ljava/lang/String;>; serialVersionUID J ConstantValue{���8�s Code LineNumberTable LocalVariableTable this #Lorg/openide/loaders/ExtensionList; l ex &Ljava/lang/CloneNotSupportedException; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; addExtension (Ljava/lang/String;)V ext Ljava/lang/String; MethodParameters removeExtension addMimeType mime removeMimeType isRegistered (Ljava/lang/String;)Z +Ljava/lang/StringIndexOutOfBoundsException; s '(Lorg/openide/filesystems/FileObject;)Z fo $Lorg/openide/filesystems/FileObject; 
extensions -()Ljava/util/Enumeration<Ljava/lang/String;>; o Ljava/lang/Object; e x I s1 s2 flattenCase s1a s2a LocalVariableTypeTable J(Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;Z)Z item I(Ljava/util/Set<Ljava/lang/String;>;Z)Ljava/util/Set<Ljava/lang/String;>; c Ljava/util/Collection; *Ljava/util/Collection<Ljava/lang/String;>; W(Ljava/util/Collection<Ljava/lang/String;>;)Ljava/util/Enumeration<Ljava/lang/String;>; t Ljava/util/TreeSet; 'Ljava/util/TreeSet<Ljava/lang/String;>; U(Ljava/util/Collection<Ljava/lang/String;>;)Ljava/util/SortedSet<Ljava/lang/String;>; 
readObject (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; gf $Ljava/io/ObjectInputStream$GetField; 	whichList 
Exceptions java/io/IOException  java/lang/ClassNotFoundException Ljava/lang/SuppressWarnings; value 	unchecked <clinit> 
SourceFile ExtensionList.java InnerClasses GetField !    � �   _ `       �    �     �    �  � �  �    �      �   3     *� �    �   
    2  3 �        � �   ! 	 
  �   �     S*� � L*� � +� Y� � +� *� �  W*� � +� Y� � +� *� �  W+�L� Y� !�    I J   �   * 
   :  <  =  > ( A / B : C H F J G K I �       B � �  K  � �    S � �   �    � ( �      �     �   ! � �  �   g     *� � *� Y� � *� +� " W�    �       Q  R  U  V �        � �      � �  �     �    �    � �  �   X     *� � *� +� & W�    �       \  ]  _ �        � �      � �  �     �    �   ! � �  �   g     *� � *� Y� � *� +� " W�    �       e  f  i  j �        � �      � �  �     �    �    � �  �   X     *� � *� +� & W�    �       p  q  s �        � �      � �  �     �    �    � �  �   �     $*� � �++.� )`� /M*� ,� 3 �M�  	   ! 6  �       {  | 	 �  � ! � " � �   *    � �  "  � �    $ � �     $ � �  �    	W 6 �    �    � �  �   �     F*� � *� +� 8� 3 � �*� � '+*� � *� > � B� DM*� ,� 3 � ��    �       �  �  �   � 5 � B � D � �      5  � �    F � �     F � �  �    * �    �    � �  �   2     *� � H�    �       � �        � �   �    �   �  �   2     *� � H�    �       � �        � �   �    �  \ =  �   M     #� LY� NO� Q*� � U*� � UX� Q� Z�    �       � �       # � �   �     �    o %  �   �     4+� � �+� M*� ,� � ]� a� *� ,� � a� � �    �       � 	 �  � ( � 3 � �        4 � �     4 � �   & � �  �    	� ( @ �    �   �     �    k l  �        2<*� � *� � ]� e� i <*� � *� � e� i `<�    �       �  �  � 0 � �       2 � �    0 � �  �    �  �     �   
 c d  �   �      *� 	+� �*� eN+� e:-� m �    �       � 
 �  �  � �   4      �        �       � `    �    	 �   �         � �       � �  �    
 �    �   �   �   �    � 
 g h  �   �     Z*� *� p � � t�� F� Y*� z hl`� }M*� � N-� � �  -� � � *:,� �� �� " W���,�*�    �   "    �  �  � ) � D � S � V � X � �   *  D  � �  ) / �     Z �      Z � `  �     ) / � �    Z � �   �    �   �� %�  �   	 �   �   �    � 
 J K  �   ]     *� � ��*� �� ��    �       �  �  � �        �    �        �   �     �    �   �    
 � �  �   �     $� ]� � �Y� �� �L� � �Y� �L+*� �W+�    �       �  �  �  � " � �           $ 	       �           $ 	      �   	 �  � �    	   �      �   �     <+� �M,�� �N-� �� -� �� � N-� *-� � �� *,�� �� � �    �   "    �  �  �  �  � " � -  ; �   *    < � �     <	
   7   / �  �    �  �      �   	   �     [ s    �   I      !� �� � � � � �@ � � � ]�    �   
    (   ' �    @       
  � �	