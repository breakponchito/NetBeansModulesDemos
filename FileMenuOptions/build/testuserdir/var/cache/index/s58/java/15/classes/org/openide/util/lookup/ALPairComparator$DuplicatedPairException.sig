����   4 r
      java/lang/IllegalStateException <init> ()V	  	 
   @org/openide/util/lookup/ALPairComparator$DuplicatedPairException i1 -Lorg/openide/util/lookup/AbstractLookup$Pair;	     i2  java/io/ByteArrayOutputStream
    java/io/PrintStream
     (Ljava/io/OutputStream;)V  java/lang/StringBuilder
    Duplicate pair in treePair1: 
      append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  "  # -(Ljava/lang/Object;)Ljava/lang/StringBuilder; %  pair2:  ' 	 index1: 
 ) * + , - +org/openide/util/lookup/AbstractLookup$Pair getIndex ()I
  /  0 (I)Ljava/lang/StringBuilder; 2 	 index2:  4  item1: 
 ) 6 7 8 getInstance ()Ljava/lang/Object; :  item2:  <  id1: 
 > ? @ A B java/lang/System identityHashCode (Ljava/lang/Object;)I
 D E F G H java/lang/Integer toHexString (I)Ljava/lang/String; J  id2: 
  L M N toString ()Ljava/lang/String;
  P Q R println (Ljava/lang/String;)V
  T U  close
  L 	Signature 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; ](Lorg/openide/util/lookup/AbstractLookup$Pair;Lorg/openide/util/lookup/AbstractLookup$Pair;)V Code LineNumberTable LocalVariableTable this BLorg/openide/util/lookup/ALPairComparator$DuplicatedPairException; LocalVariableTypeTable MethodParameters c(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;Lorg/openide/util/lookup/AbstractLookup$Pair<*>;)V 
getMessage bs Ljava/io/ByteArrayOutputStream; ps Ljava/io/PrintStream; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ALPairComparator.java InnerClasses m (org/openide/util/lookup/ALPairComparator DuplicatedPairException p &org/openide/util/lookup/AbstractLookup Pair 0          W    X     W    X    Y  Z   u     *� *+� *,� �    [       8  9 	 :  ; \         ] ^               _         X      X  `   	       W    a  b N  Z       �� Y� L� Y+� M,� Y� � *� � !$� *� � !&� *� � (� .1� *� � (� .3� *� � 5� !9� *� � 5� !;� *� � =� C� I� *� � =� C� � K� O,� S+� V�    [   .    ?  @  B : D I E X F v G � H � B � L � N \        � ] ^    � c d   � e f  g     h    i    j k      l n  ) o q	