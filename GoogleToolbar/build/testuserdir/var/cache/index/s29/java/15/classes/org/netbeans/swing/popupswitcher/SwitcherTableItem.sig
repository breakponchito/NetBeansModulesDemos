����   4 u
      2org/netbeans/swing/popupswitcher/SwitcherTableItem <init> g(Lorg/netbeans/swing/popupswitcher/SwitcherTableItem$Activatable;Ljava/lang/String;Ljavax/swing/Icon;)V
    	 z(Lorg/netbeans/swing/popupswitcher/SwitcherTableItem$Activatable;Ljava/lang/String;Ljava/lang/String;Ljavax/swing/Icon;Z)V
     �(Lorg/netbeans/swing/popupswitcher/SwitcherTableItem$Activatable;Ljava/lang/String;Ljava/lang/String;Ljavax/swing/Icon;ZLjava/lang/String;)V
      java/lang/Object ()V	     activatable @Lorg/netbeans/swing/popupswitcher/SwitcherTableItem$Activatable;	     name Ljava/lang/String;	     htmlName	      icon Ljavax/swing/Icon;	  " # $ active Z	  & '  description ) * + ,  >org/netbeans/swing/popupswitcher/SwitcherTableItem$Activatable activate . java/lang/StringBuilder
 - 
  1 2 3 toString ()Ljava/lang/String;
 - 5 6 7 append -(Ljava/lang/String;)Ljava/lang/StringBuilder; 9 [name= ; , icon=
 - = 6 > -(Ljava/lang/Object;)Ljava/lang/StringBuilder; @ ]
 - 1
  C D 3 getName
 F G H I J java/lang/String equals (Ljava/lang/Object;)Z
  L M N getActivatable B()Lorg/netbeans/swing/popupswitcher/SwitcherTableItem$Activatable; ) G
 F Q R S hashCode ()I ) Q
 F V W X compareToIgnoreCase (Ljava/lang/String;)I Z java/lang/Comparable U(Lorg/netbeans/swing/popupswitcher/SwitcherTableItem$Activatable;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this 4Lorg/netbeans/swing/popupswitcher/SwitcherTableItem; MethodParameters getHtmlName getDescription getIcon ()Ljavax/swing/Icon; isActive ()Z item result o Ljava/lang/Object; StackMapTable 	compareTo (Ljava/lang/Object;)I name1 name2 
SourceFile SwitcherTableItem.java InnerClasses Activatable !    Y             '           # $           [  \   J     *+,� �    ]   
    8  9 ^         _ `               a   	           \   V     
*+,,-� �    ]   
    = 	 > ^   *    
 _ `     
      
      
     a               	  \   m     *+,-� 
�    ]   
    C  D ^   >     _ `                               # $  a                #       \   �     &*� *+� *,� *-� *� *� !*� %�    ]   "    H  I 	 J  K  L  M  N % O ^   H    & _ `     &      &      &      &       & # $    & '   a                #   '    ,   \   8     
*� � ( �    ]   
    X 	 Y ^       
 _ `    D 3  \   /     *� �    ]       ] ^        _ `    b 3  \   /     *� �    ]       b ^        _ `    c 3  \   /     *� %�    ]       k ^        _ `    d e  \   /     *� �    ]       p ^        _ `    M N  \   /     *� �    ]       w ^        _ `    f g  \   /     *� !�    ]       | ^        _ `    2 3  \   Y     /� -Y� /*� 0� 48� 4*� � 4:� 4*� � <?� 4� A�    ]       � ^       / _ `    I J  \   �     ;+*� �+� � .+� M,� B*� � E� ,� K*� � O � � >��    ]   "    �  �  �  �  � " � 7 � 9 � ^   *   & h `  7  i $    ; _ `     ; j k  l    � - @�  a    j    R S  \   R     *� � � 
*� � P*� � T h�    ]       � ^        _ `   l    F  m n  \   �     2*� BMN+� � +� � BN-� ,� � �,� � ,-� U�    ]       �  �  �  �  �  � $ � ^   *    2 _ `     2 j k   - o    + p   l    �  F F@ D a    j    q    r s   
  )  t	