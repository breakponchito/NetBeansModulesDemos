����   4 L
      !org/openide/nodes/PropertySupport <init> L(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V	  	 
   4org/openide/nodes/PropertySupport$FunctionalProperty supplier Ljava/util/function/Supplier;	     consumer Ljava/util/function/Consumer;      java/util/function/Supplier get ()Ljava/lang/Object;   java/lang/IllegalAccessException  #Cannod read from WriteOnly property
     (Ljava/lang/String;)V    ! " # java/util/function/Consumer accept (Ljava/lang/Object;)V % !Cannot write to ReadOnly property 	Signature "Ljava/util/function/Supplier<TT;>; "Ljava/util/function/Consumer<TT;>; `(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/nodes/PropertySupport$FunctionalProperty; name Ljava/lang/String; type Ljava/lang/Class; LocalVariableTypeTable ;Lorg/openide/nodes/PropertySupport$FunctionalProperty<TT;>; Ljava/lang/Class<TT;>; StackMapTable 8 java/lang/String : java/lang/Class MethodParameters o(Ljava/lang/String;Ljava/lang/Class<TT;>;Ljava/util/function/Supplier<TT;>;Ljava/util/function/Consumer<TT;>;)V getValue 
Exceptions ()TT; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setValue val Ljava/lang/Object; TT; (TT;)V ><T:Ljava/lang/Object;>Lorg/openide/nodes/PropertySupport<TT;>; 
SourceFile PropertySupport.java InnerClasses FunctionalProperty 0          &    '     &    (    )  *  5     '*+,-� � � � � *-� *� �    +      � �  � &� ,   4    ' - .     ' / 0    ' 1 2    '      '    3   *    ' - 4     ' 1 5    '  '    '  (  6   z �   7 9    7 9�    7 9    7 9�   7 9    7 9�    7 9    7 9 ;    /   1         &    <  =   *   h     *� � *� �  �� Y� �    +      � � � ,        - .   3        - 4   6     >      &    ? @     A    B #  *   �     *� � *� +�  � � Y$� ��    +      � � � � ,        - .      C D  3        - 4      C E  6    	 >      ;    C   &    F @     A    &    G H    I J   
    K 