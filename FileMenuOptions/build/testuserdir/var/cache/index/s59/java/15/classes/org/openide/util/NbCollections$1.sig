����   4 J	       org/openide/util/NbCollections$1 val$type Ljava/lang/Class;	   	 
 
val$strict Z
      .org/openide/util/NbCollections$CheckedIterator <init> (Ljava/util/Iterator;)V
      java/lang/Class 
isInstance (Ljava/lang/Object;)Z  java/lang/ClassCastException  java/lang/StringBuilder
     ()V
     ! append -(Ljava/lang/Object;)Ljava/lang/StringBuilder; #  was not a 
  %   & -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ( ) * getName ()Ljava/lang/String;
  , - * toString
  /  0 (Ljava/lang/String;)V )(Ljava/util/Iterator;Ljava/lang/Class;Z)V Code LineNumberTable LocalVariableTable this "Lorg/openide/util/NbCollections$1; it Ljava/util/Iterator; MethodParameters accept o Ljava/lang/Object; StackMapTable 	Signature 5Lorg/openide/util/NbCollections$CheckedIterator<TE;>; 
SourceFile NbCollections.java EnclosingMethod D org/openide/util/NbCollections F G checkedIteratorByFilter <(Ljava/util/Iterator;Ljava/lang/Class;Z)Ljava/util/Iterator; InnerClasses CheckedIterator            	 
       1  2   D     *,� *� *+� �    3       � 4        5 6      7 8  9    7    	  :   2   �     A+� �*� +� � �*� � (� Y� Y� +� "� $*� � '� $� +� .��    3       �  �  �  �  �  � ? � 4       A 5 6     A ; <  =    + 9    ;    >    ? @    A B    C E H             C I
