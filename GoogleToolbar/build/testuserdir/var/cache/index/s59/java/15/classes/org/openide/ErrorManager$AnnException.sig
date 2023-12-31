����   4 �	      %org/openide/ErrorManager$AnnException extras Ljava/util/Map;  java/lang/StringBuilder
  
   <init> ()V   	     records Ljava/util/List;      java/util/List iterator ()Ljava/util/Iterator;      java/util/Iterator hasNext ()Z    ! " next ()Ljava/lang/Object; $ java/util/logging/LogRecord
 # & ' ( 
getMessage ()Ljava/lang/String;
  * + , append -(Ljava/lang/String;)Ljava/lang/StringBuilder; . 

  0 1 ( toString
  3 4 5 findOrCreate0 ?(Ljava/lang/Throwable;Z)Lorg/openide/ErrorManager$AnnException; 7 java/lang/IllegalStateException	  9 : ; $assertionsDisabled Z = java/lang/AssertionError
 < 
 @ A B C D java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
  

  G H I 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; K org/openide/ErrorManager
 M N O P ( java/lang/Class getName
 R S T U V java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 X Y Z [ \ java/util/logging/Level FINE Ljava/util/logging/Level; ^ +getCause was null yet initCause failed for 
  ` + a -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 R c d e log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V @ g h i put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 k l m n o java/lang/Throwable getCause ()Ljava/lang/Throwable;
 k G
 r 
 s java/lang/Exception u java/util/ArrayList
 t 
  x y z add (Ljava/lang/Object;)Z  | } ~ toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Ljava/util/logging/LogRecord;
 r � � � printStackTrace (Ljava/io/PrintStream;)V
  � � � 
logRecords (Ljava/lang/Appendable;)V
 r � � � (Ljava/io/PrintWriter;)V	 � � � � � java/lang/System err Ljava/io/PrintStream;
  � � � � + � java/lang/Appendable 0(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
 # � � o 	getThrown � java/io/StringWriter
 � 
 � java/io/PrintWriter
 � �  � (Ljava/io/Writer;)V
 k �
 � 0 � java/io/IOException
 � � � 
  � � � call  ()[Ljava/util/logging/LogRecord;
 M � �  desiredAssertionStatus � java/util/WeakHashMap
 � 
 � java/util/concurrent/Callable 	Signature /Ljava/util/List<Ljava/util/logging/LogRecord;>; MLjava/util/Map<Ljava/lang/Throwable;Lorg/openide/ErrorManager$AnnException;>; Code LineNumberTable LocalVariableTable r Ljava/util/logging/LogRecord; this 'Lorg/openide/ErrorManager$AnnException; sb Ljava/lang/StringBuilder; sep Ljava/lang/String; arr LocalVariableTypeTable StackMapTable � java/lang/String #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; findOrCreate ann x !Ljava/lang/IllegalStateException; t Ljava/lang/Throwable; create MethodParameters 	addRecord  (Ljava/util/logging/LogRecord;)V rec empty s Ljava/io/PrintWriter; w Ljava/io/StringWriter; ex Ljava/io/IOException; a Ljava/lang/Appendable; 
Exceptions 
access$000 ()Ljava/util/Map; <clinit> TLjava/lang/Exception;Ljava/util/concurrent/Callable<[Ljava/util/logging/LogRecord;>; 
SourceFile ErrorManager.java InnerClasses AnnException 0  r  �      �    � 
    �    � : ;     ' (  �       U� Y� 	LM*� N-� ?-�  :�  � -�  � #:� %� +,� )W+� %� )W-M���+� /�    �   .   8 9 : ; < 2= :> @? J@ MB PD �   4  2  � �    U � �    M � �   J � �   E �   �      E � �  �    �     �    0�  �     �    � 5  �       j*� 2M� bN� 8� � � <Y� >�� *� ? � M,� >� Y� EM,*� FWJ� L� Q� W� Y� 	]� )*� _� /-� b� *,� f W,�     	 6  �   .   J T 	K 
L M )N -O 5P ;Q ]R hU �   4    � �  
 ^ � �    j � �     j � ;  ) A � �  �    I 6�   6� K  k    �   	 �   �   
 4 5  �   �     4*� � *� �*� j� � *� Y� E� pW*� j� �*� j� 2�    �      Y Z \ ] ^ #` +b �       4 � �     4 � ;  �     �   	 �   �       �   3     *� q�    �   
   e f �        � �   ! � �  �   g     *� � *� tY� v� *� +� w W�    �      i j l m �        � �      � �  �     �    �    � �  �   �     *� L� #M+� ,� +,� { � �    �      p q 
r �         � �     �   
  � �  �       � �  �    �   I   � �  �   G     *+� �*+� ��    �      w x 
y �        � �      � �  �    �   �     �    � �  �   G     *+� �*+� ��    �      } ~ 
 �        � �      � �  �    �   �     �    �   �   6     *� �� ��    �   
   � � �        � �   �     �    � �  �  T     �*� M,� �,�  N-�  � a-�  � #:� %� +� %� � -� � W� �� 0� �Y� �:� �� �Y� �� �+� �� � -� � W���� N-� ��  
 x { �  �   >   � � 	� 
� %� -� @� H� Q� b� u� x� {� |� �� �   >  Q $ � �  % P d �  |  � �    � � �     � � �   | �   �      | � �  �    � 
 �  � . #� 4� B � �    �  A � "  �   /     *� ��    �      1 �        � �   �     r � �  �         � �    �      1  �   �   B      J� �� � � 8� �Y� �� �    �   
   1 4 �    @  �    � �    � �   
   J � 