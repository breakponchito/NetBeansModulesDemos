����   4 t
      'org/openide/nodes/FilterNode$StackError <init> ()V
   	 java/lang/StackOverflowError	     nodes Ljava/util/IdentityHashMap;  java/util/IdentityHashMap
  
     containsKey (Ljava/lang/Object;)Z
     put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  java/lang/StringBuffer
    StackOver in FilterNodes:

     ! append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
  # $ % keySet ()Ljava/util/Set; ' ( ) * + java/util/Set iterator ()Ljava/util/Iterator; - . / 0 1 java/util/Iterator hasNext ()Z - 3 4 5 next ()Ljava/lang/Object; 7 org/openide/nodes/FilterNode 9 	  class: 
 ; < = > ? java/lang/Object getClass ()Ljava/lang/Class;
 A B C D E java/lang/Class getName ()Ljava/lang/String; G  id: 
 I J K L M java/lang/System identityHashCode (Ljava/lang/Object;)I
 O P Q R S java/lang/Integer toString (II)Ljava/lang/String; U 

  W R E 	Signature YLjava/util/IdentityHashMap<Lorg/openide/nodes/FilterNode;Lorg/openide/nodes/FilterNode;>; Code LineNumberTable LocalVariableTable this )Lorg/openide/nodes/FilterNode$StackError; add !(Lorg/openide/nodes/FilterNode;)V n Lorg/openide/nodes/FilterNode; StackMapTable MethodParameters 
getMessage f sb Ljava/lang/StringBuffer; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; #(Lorg/openide/nodes/FilterNode$1;)V x0  Lorg/openide/nodes/FilterNode$1; 
SourceFile FilterNode.java InnerClasses 
StackError s org/openide/nodes/FilterNode$1            X    Y      Z   /     *� �    [       \        ] ^    _ `  Z   v     (*� 
� *� Y� � 
*� 
+� � *� 
++� W�    [        ! $ % '' \       ( ] ^     ( a b  c     d    a    e E  Z   �     f� Y� L+� W*� 
� "� & M,� , � ?,� 2 � 6N+8� W+-� :� @� W+F� W+-� H� N� W+T� W���+� V�    [   * 
  + , . // 60 B1 I2 W3 ^4 a6 \      / / f b    f ] ^    ^ g h  c    �   -� D i     j     k  Z   9     *� �    [       \        ] ^      l m   n    o p      6 q 
 r    