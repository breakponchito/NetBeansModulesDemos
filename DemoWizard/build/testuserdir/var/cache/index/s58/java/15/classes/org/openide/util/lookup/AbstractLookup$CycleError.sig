����   4 n
      java/lang/StackOverflowError <init> (Ljava/lang/String;)V  java/util/HashSet
  
   ()V	      1org/openide/util/lookup/AbstractLookup$CycleError print Ljava/util/Set;      java/util/Set add (Ljava/lang/Object;)Z  java/lang/StringBuilder
  
  StackOverflowError. There is 
      append -(Ljava/lang/String;)Ljava/lang/StringBuilder;  " # $ size ()I
  &  ' (I)Ljava/lang/StringBuilder; )  listeners:  + , - iterator ()Ljava/util/Iterator; / 0 1 2 3 java/util/Iterator hasNext ()Z / 5 6 7 next ()Ljava/lang/Object; 9 java/util/Collection ; 
Round  = 
 8 + @ 
  
  B  C -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  E F $ length H listeners are null
  J K L toString ()Ljava/lang/String; 	Signature ;Ljava/util/Set<Ljava/util/Collection<Ljava/lang/Object;>;>; Code LineNumberTable LocalVariableTable this 3Lorg/openide/util/lookup/AbstractLookup$CycleError; s Ljava/lang/String; MethodParameters (Ljava/util/Collection;)V evAndListeners Ljava/util/Collection; LocalVariableTypeTable *Ljava/util/Collection<Ljava/lang/Object;>; -(Ljava/util/Collection<Ljava/lang/Object;>;)V 
getMessage o Ljava/lang/Object; list sb Ljava/lang/StringBuilder; round I StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile AbstractLookup.java InnerClasses l &org/openide/util/lookup/AbstractLookup 
CycleError            M    N      O   M     *+� *� Y� 	� �    P      9 6 : Q        R S      T U  V    T     W  O   V     *� +�  W�    P   
   = > Q        R S      X Y  Z        X [  V    X   M    \  ] L  O  `     �� Y� L+� *� � ! � %(� W=*� � * N-� . � k-� 4 � 8:+:� �� %<� W� >� > :� . � (� 4 :+?� � AW+� D'� � ��ԧ 
+G� W���+� I�    P   :   B C  D "E @F SG XH tI �J �K �M �O �Q �R Q   4  t  ^ _  @ Z ` Y    � R S    � a b  " � c d  Z     @ Z ` [  e     � ,  /� 4 8 /+� � �  f     g    h    i j   
   k m 
