����   4 �	      &org/openide/util/RequestProcessor$Item owner #Lorg/openide/util/RequestProcessor;
  	 
   java/lang/Exception <init> ()V	     action Ljava/lang/Object;	     counter I	     cnt
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;	     ! current Lorg/openide/util/Lookup;
 # $ % & ' java/lang/Thread currentThread ()Ljava/lang/Thread;
 # ) * + getContextClassLoader ()Ljava/lang/ClassLoader;	  - . / 	ctxLoader Ljava/lang/ClassLoader; 1 &org/openide/util/RequestProcessor$Task
  3 4 5 clear 0(Lorg/openide/util/RequestProcessor$Processor;)Z
 7 8 9 : ; !org/openide/util/RequestProcessor 
access$400 7(Lorg/openide/util/RequestProcessor;)Ljava/lang/Object;	  = > ? enqueued Z
 7 A B C 
access$600 :(Lorg/openide/util/RequestProcessor;)Ljava/util/SortedSet; E F G H I java/util/SortedSet remove (Ljava/lang/Object;)Z
 K L M N O )org/openide/util/RequestProcessor$TickTac cancel +(Lorg/openide/util/RequestProcessor$Item;)V Q +org/openide/util/RequestProcessor$Processor
  S T U getTask *()Lorg/openide/util/RequestProcessor$Task;
 0 W X Y getPriority ()I	  [ \ ] message Ljava/lang/String;
  W
  ` a b 	compareTo +(Lorg/openide/util/RequestProcessor$Item;)I d java/lang/Comparable when J N(Lorg/openide/util/RequestProcessor$Task;Lorg/openide/util/RequestProcessor;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/util/RequestProcessor$Item; task (Lorg/openide/util/RequestProcessor$Task; rp MethodParameters a StackMapTable t java/lang/Object 
clearOrNew (Z)Z canBeNew ret 	processor -Lorg/openide/util/RequestProcessor$Processor; | java/lang/Throwable isNew ()Z getProcessor /()Lorg/openide/util/RequestProcessor$Processor; t 
getMessage ()Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; o myp yrp (Ljava/lang/Object;)I access$1400 M(Lorg/openide/util/RequestProcessor$Item;)Lorg/openide/util/RequestProcessor; x0 	Signature ULjava/lang/Exception;Ljava/lang/Comparable<Lorg/openide/util/RequestProcessor$Item;>; 
SourceFile RequestProcessor.java InnerClasses Item Task 	Processor TickTac      c 	 
                  !    . /           > ?     \ ]     e f       g  h   �     -*� *+� *,� *� Y`� � *� � *� "� (� ,�    i      � � 	� � � "� ,� j        - k l     - m n    - o   p   	 m   o    T U  h   _     *� L+� 0� 
+� 0� �    i   
   � � j        k l     q   r    �  s@ 0   u v  h   :     *� 2�    i      � j        k l      w ?  p    w     4 5  h   �     :*� � 6YN�*� <� *� � @*� D � =*+� -ç 
:-��*� J�  
 * -   - 1 -    i      � 
� #� (� 4� 8� j   *  # 
 x ?    : k l     : y z  4  x ?  r    � !  s@J {�    P   p    y     } ~  h   ,     �    i      � j        k l     �  h   _     *� L+� P� 
+� P� �    i   
   � � j        k l     q   r    �  s@ P  X Y  h   Z     *� RL+� � +� V�    i   
   � � j        k l     � n  r   
 �  0C  � �  h   /     *� Z�    i      � j        k l   �     �    a b  h   �     $*+� �*� ^=+� ^>� *� +� d�d�    i      � � � �      j   *    $ k l     $ � l    �     �   r    �  p    �   �     �  A a �  h   3     	*+� � _�    i      � j       	 k l   p    �  �     �   � �  h   /     *� �    i      � j        � l    �    � �    � �   "   7 � 
 0 7 �  P 7 � 
 K 7 � 