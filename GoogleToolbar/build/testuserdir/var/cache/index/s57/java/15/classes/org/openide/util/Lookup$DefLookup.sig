����   4 o  org/openide/util/Lookup
      #org/openide/util/lookup/ProxyLookup <init> ([Lorg/openide/util/Lookup;)V
 
     org/openide/util/lookup/Lookups 	singleton -(Ljava/lang/Object;)Lorg/openide/util/Lookup;  java/util/ArrayList
     ()V      java/util/List add (Ljava/lang/Object;)Z  org.openide.util.Lookup.paths
      ! java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
  # $ % 
access$000 ()Ljava/util/logging/Logger;	 ' ( ) * + java/util/logging/Level FINE Ljava/util/logging/Level; - Adding search paths {0}
 / 0 1 2 3 java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V 5 :
 7 8 9 : ; java/lang/String split '(Ljava/lang/String;)[Ljava/lang/String;
 
 = > ? forPath -(Ljava/lang/String;)Lorg/openide/util/Lookup;	 ' A B + FINER D Setting DefLookup delegates {0}  F G H toArray (([Ljava/lang/Object;)[Ljava/lang/Object; J [Lorg/openide/util/Lookup;
 L M N O  !org/openide/util/Lookup$DefLookup 
setLookups Code LineNumberTable LocalVariableTable this #Lorg/openide/util/Lookup$DefLookup; init 4(Ljava/lang/ClassLoader;Lorg/openide/util/Lookup;Z)V p Ljava/lang/String; loader Ljava/lang/ClassLoader; metaInfLookup Lorg/openide/util/Lookup; addPath Z clLookup arr Ljava/util/List; paths LocalVariableTypeTable +Ljava/util/List<Lorg/openide/util/Lookup;>; StackMapTable g java/lang/ClassLoader i [Ljava/lang/String; MethodParameters 
SourceFile Lookup.java InnerClasses 	DefLookup 0 L           P   7     	*� � �    Q   
    �  � R       	 S T    U V  P  m     �+� 	:� Y� :,�  W�  W� :� G� B� "� &,� .4� 6:�66		� 	2:

� <�  W�	��� "� @C� .*� � E � I� K�    Q   6    �  �  �  � " � ) � 2 � ? � ^ � k � q � ~ � � � R   R  ^  W X 
   � S T     � Y Z    � [ \    � ] ^   � _ \   � ` a  ) h b X  c      � ` d  e   $ � P 
 L f    7 h  �   j    Y   [   ]    k    l m   
  L  n 