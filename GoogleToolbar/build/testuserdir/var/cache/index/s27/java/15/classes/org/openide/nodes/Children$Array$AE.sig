����   4 X	      #org/openide/nodes/Children$Array$AE this$0 "Lorg/openide/nodes/Children$Array;
  	 
   java/lang/Object <init> ()V
       org/openide/nodes/Children$Array getCollection ()Ljava/util/Collection;      java/util/Collection isEmpty ()Z
      java/util/Collections 	emptyList ()Ljava/util/List;
    ! " 
access$100 ()Ljava/lang/Object; $ java/util/ArrayList
 # &  ' (Ljava/util/Collection;)V ) java/lang/StringBuilder
 ( 	 , Children.Array.AE
 ( . / 0 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ( 2 / 3 -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 ( 5 6 7 toString ()Ljava/lang/String; 9  org/openide/nodes/Children$Entry %(Lorg/openide/nodes/Children$Array;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/nodes/Children$Array$AE; MethodParameters nodes *(Ljava/lang/Object;)Ljava/util/Collection; source Ljava/lang/Object; c Ljava/util/Collection; LocalVariableTypeTable 0Ljava/util/Collection<Lorg/openide/nodes/Node;>; StackMapTable K java/lang/Throwable 	Signature D(Ljava/lang/Object;)Ljava/util/Collection<Lorg/openide/nodes/Node;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile Children.java InnerClasses T org/openide/nodes/Children Array AE Entry 0    8          :  ;   8     
*+� *� �    <   
   J 	K =       
 > ?   @      A B  ;   �     -*� � M,�  � � �� YN» #Y,� %-ð:-��   % &   & * &    <      Q S T V W &X =        - > ?     - C D   % E F  G      % E H  I    �  �        J @    C   L    M N     O    6 7  ;   D     � (Y� *+� -*� � � 1� 4�    <      ^ =        > ?   N     O    P    Q R      S U 	   V  8 S W