����   4 W
      &org/openide/util/lookup/AbstractLookup <init> ()V	  	 
   )org/openide/loaders/XMLDataObject$InfoLkp info (Lorg/openide/loaders/XMLDataObject$Info;
      &org/openide/loaders/XMLDataObject$Info processorClasses ()Ljava/util/Iterator;  java/util/ArrayList	     
processors Ljava/util/List;      java/util/List size ()I
     ! (I)V # $ % & ' java/util/Iterator hasNext ()Z # ) * + next ()Ljava/lang/Object; - java/lang/Class / 2org/openide/loaders/XMLDataObject$InfoLkp$InfoPair
 . 1  2 7(Lorg/openide/loaders/XMLDataObject;Ljava/lang/Class;)V
  4 5 6 add (Ljava/lang/Object;)Z
  8 9 : setPairs (Ljava/util/Collection;)V N(Lorg/openide/loaders/XMLDataObject;Lorg/openide/loaders/XMLDataObject$Info;)V Code LineNumberTable LocalVariableTable c Ljava/lang/Class; this +Lorg/openide/loaders/XMLDataObject$InfoLkp; obj #Lorg/openide/loaders/XMLDataObject; it Ljava/util/Iterator; arr Ljava/util/ArrayList; LocalVariableTypeTable Ljava/lang/Class<*>; *Ljava/util/Iterator<Ljava/lang/Class<*>;>; KLjava/util/ArrayList<Lorg/openide/loaders/XMLDataObject$InfoLkp$InfoPair;>; StackMapTable O !org/openide/loaders/XMLDataObject MethodParameters 
SourceFile XMLDataObject.java InnerClasses InfoLkp Info InfoPair 0              ;  <       N*� *,� ,� N� Y,� �  � :-� " � !-� ( � ,:� .Y+� 0� 3W���*� 7�    =   * 
  � � 	� �  � )� 4� D� G� M� >   >  4  ? @    N A B     N C D    N     @ E F    . G H  I      4  ? J   @ E K    . G L  M    �     N  #   & P   	 C       Q    R S      N T   N U  .  V 