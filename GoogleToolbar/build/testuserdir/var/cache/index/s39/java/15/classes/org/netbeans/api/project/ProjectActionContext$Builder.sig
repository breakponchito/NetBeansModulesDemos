����   4 �
      java/lang/Object <init> ()V  -org/netbeans/api/project/ProjectActionContext
  
   %(Lorg/netbeans/api/project/Project;)V	      5org/netbeans/api/project/ProjectActionContext$Builder ctx /Lorg/netbeans/api/project/ProjectActionContext;  lkp
      org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V
     
access$000 J(Lorg/netbeans/api/project/ProjectActionContext;)Lorg/openide/util/Lookup;
     ! 
access$002 c(Lorg/netbeans/api/project/ProjectActionContext;Lorg/openide/util/Lookup;)Lorg/openide/util/Lookup;
  # $ % 
access$102 U(Lorg/netbeans/api/project/ProjectActionContext;Ljava/lang/String;)Ljava/lang/String;
  ' ( ) 
access$202 �(Lorg/netbeans/api/project/ProjectActionContext;Lorg/netbeans/spi/project/ProjectConfiguration;)Lorg/netbeans/spi/project/ProjectConfiguration;
  + , - 
access$300 @(Lorg/netbeans/api/project/ProjectActionContext;)Ljava/util/Map; / java/util/HashMap
 . 
  2 3 4 
access$302 O(Lorg/netbeans/api/project/ProjectActionContext;Ljava/util/Map;)Ljava/util/Map; 6 7 8 9 : java/util/Map putAll (Ljava/util/Map;)V
  < = > 
access$400 @(Lorg/netbeans/api/project/ProjectActionContext;)Ljava/util/Set; @ java/util/HashSet
 ? 
  C D E 
access$402 O(Lorg/netbeans/api/project/ProjectActionContext;Ljava/util/Set;)Ljava/util/Set; G H I J K java/util/Set addAll (Ljava/util/Collection;)Z 6 M N O put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 Q R S T U java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
  W X Y withProfiles O(Ljava/util/Collection;)Lorg/netbeans/api/project/ProjectActionContext$Builder; Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/api/project/ProjectActionContext$Builder; p "Lorg/netbeans/api/project/Project; MethodParameters 
withLookup R(Lorg/openide/util/Lookup;)Lorg/netbeans/api/project/ProjectActionContext$Builder; Lorg/openide/util/Lookup; StackMapTable forProjectAction K(Ljava/lang/String;)Lorg/netbeans/api/project/ProjectActionContext$Builder; projectAction Ljava/lang/String; RuntimeInvisibleAnnotations -Lorg/netbeans/api/annotations/common/NonNull; useConfiguration h(Lorg/netbeans/spi/project/ProjectConfiguration;)Lorg/netbeans/api/project/ProjectActionContext$Builder; configuration /Lorg/netbeans/spi/project/ProjectConfiguration; withProperties H(Ljava/util/Map;)Lorg/netbeans/api/project/ProjectActionContext$Builder; 
properties Ljava/util/Map; LocalVariableTypeTable 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; 	Signature n(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lorg/netbeans/api/project/ProjectActionContext$Builder; profiles Ljava/util/Collection; *Ljava/util/Collection<Ljava/lang/String;>; c(Ljava/util/Collection<Ljava/lang/String;>;)Lorg/netbeans/api/project/ProjectActionContext$Builder; withProperty ](Ljava/lang/String;Ljava/lang/String;)Lorg/netbeans/api/project/ProjectActionContext$Builder; n v L([Ljava/lang/String;)Lorg/netbeans/api/project/ProjectActionContext$Builder; [Ljava/lang/String; context 1()Lorg/netbeans/api/project/ProjectActionContext; 
SourceFile ProjectActionContext.java InnerClasses Builder 1           	      Z   M     *� *� Y+� 	� �    [       �  �  � \        ] ^      _ `  a    _    b c  Z   k     +� *� � +� *�*� +� W*�    [       �  �  �  �  � \        ] ^       d  e     a        f g  Z   C     *� +� "W*�    [   
    � 	 � \        ] ^      h i  a    h   j     k    l m  Z   C     *� +� &W*�    [   
    � 	 � \        ] ^      n o  a    n   j     k    p q  Z   �     .+� *�*� � *� *� � .Y� 0� 1W*� � *+� 5 *�    [       �  �  �  �  � , � \       . ] ^     . r s  t       . r u  e     a    r   v    w j     k    X Y  Z   �     /+� *�*� � ;� *� � ?Y� A� BW*� � ;+� F W*�    [       �  �    - \       / ] ^     / x y  t       / x z  e     a    x   v    { j     k    | }  Z   }     **� � *� *� � .Y� 0� 1W*� � *+,� L W*�    [       
  ( \        * ] ^     * ~ i    *  i  e     a   	 ~      j     k   � X �  Z   =     	*+� P� V�    [       \       	 ] ^     	 x �  a    x   j     k    � �  Z   /     *� �    [      # \        ] ^   j     k    �    � �   
    � 