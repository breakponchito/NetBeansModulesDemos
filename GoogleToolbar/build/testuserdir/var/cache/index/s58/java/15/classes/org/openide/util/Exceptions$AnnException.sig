����   4 �  org/openide/util/Exceptions	      (org/openide/util/Exceptions$AnnException records Ljava/util/List;	  
   extras Ljava/util/Map;
      java/lang/Exception <init> ()V
     (Ljava/lang/String;)V  java/lang/StringBuilder
            java/util/List iterator ()Ljava/util/Iterator; " # $ % & java/util/Iterator hasNext ()Z " ( ) * next ()Ljava/lang/Object; , java/util/logging/LogRecord
 + . / 0 
getMessage ()Ljava/lang/String; 2 msg
 4 5 6 7 8 java/lang/String equals (Ljava/lang/Object;)Z
  : ; < append -(Ljava/lang/String;)Ljava/lang/StringBuilder; > 

  @ A 0 toString
  C D E findOrCreate0 B(Ljava/lang/Throwable;Z)Lorg/openide/util/Exceptions$AnnException; G java/lang/IllegalStateException	  I J K $assertionsDisabled Z M java/lang/AssertionError
 L  P Q R S T java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
 V . W java/lang/Throwable
  
  Z [ \ 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;	  ^ _ ` LOG Ljava/util/logging/Logger;	 b c d e f java/util/logging/Level FINE Ljava/util/logging/Level; h +getCause was null yet initCause failed for 
  j ; k -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 m n o p q java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V P s t u put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 V w x y getCause ()Ljava/lang/Throwable;
  
 V Z
 F  ~ java/util/ArrayList
 }   � � 8 add  � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Ljava/util/logging/LogRecord;
  � � � printStackTrace (Ljava/io/PrintStream;)V
  � � � 
logRecords (Ljava/lang/Appendable;)V
  � � � (Ljava/io/PrintWriter;)V
  . � � � ; � java/lang/Appendable 0(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
 + � � y 	getThrown � java/io/StringWriter
 �  � java/io/PrintWriter
 � �  � (Ljava/io/Writer;)V
 V �
 � @ � java/io/IOException
 � � � 
  � � � call  ()[Ljava/util/logging/LogRecord;
 � � � � & java/lang/Class desiredAssertionStatus � java/util/WeakHashMap
 �  � java/util/concurrent/Callable 	Signature /Ljava/util/List<Ljava/util/logging/LogRecord;>; PLjava/util/Map<Ljava/lang/Throwable;Lorg/openide/util/Exceptions$AnnException;>; Code LineNumberTable LocalVariableTable this *Lorg/openide/util/Exceptions$AnnException; Ljava/lang/String; MethodParameters m r Ljava/util/logging/LogRecord; sb Ljava/lang/StringBuilder; sep rec LocalVariableTypeTable StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; findOrCreate ann ex !Ljava/lang/IllegalStateException; t Ljava/lang/Throwable; create ae 	addRecord  (Ljava/util/logging/LogRecord;)V empty s Ljava/io/PrintStream; Ljava/io/PrintWriter; fillInStackTrace w Ljava/io/StringWriter; Ljava/io/IOException; a Ljava/lang/Appendable; 
Exceptions 
access$000 ()Ljava/util/Map; 
access$100 <(Lorg/openide/util/Exceptions$AnnException;)Ljava/util/List; x0 <clinit> TLjava/lang/Exception;Ljava/util/concurrent/Callable<[Ljava/util/logging/LogRecord;>; 
SourceFile Exceptions.java InnerClasses AnnException 0    �      �    � 
    �    � J K        �   3     *� �    �   
    �  � �        � �       �   >     *+� �    �   
    �  � �        � �      2 �  �    2    / 0  �       `� Y� LM*� N-� J-�  :� ! � 8� ' � +:� -:� 1� 3� +,� 9W+� 9W=M���+� ?�    �   .    �  �  �  � 2 � 9 � H � N � U � X � [ � �   >  9  � �  2 & � �    ` � �    X � �   U � �   P �   �      P � �  �    �     4  "  ;�  �     �    � E  �  *     o*� BM,� ,�� aN� H� � � LY� N�� 	*� O � M,� =� Y*� U� XM,*� YW� ]� a� Y� g� 9*� i� ?-� l� 	*,� r W,�      F  �   6    �  � 
 �  �  �  � " � / � 3 � ? � E � b � m � �   4   	 � �   ] � �    o � �     o � K  / @ � �  �   + �  �   V  F�   F� J  V    �   	 �   �   
 D E  �   �     F*� � *� �*� v� -� !� Y� zM*,� {W,*� v� � FY� |�*� v� �*� v� B�    �   * 
   �  �  �  �  �   % - 5 = �        � �    F � �     F � K  �    ( �   	 �   �   ! � �  �   g     *� � *� }Y� � *� +� � W�    �          �        � �      � �  �     �    �    � �  �   �     *� L� +M+� ,� +,� � � ��    �        
 �         � �     �   
  � �  �       � �  �    �   �I �  � �  �   G     *+� �*+� ��    �        
 �        � �      � �  �    �   �     �    � �  �   G     *+� �*+� ��    �         
! �        � �      � �  �    �   �     �    � y  �   ,     *�    �      % �        � �   �     �    A 0  �   /     *� ��    �      * �        � �   �     �    � �  �  T     �*� M,� �,�  N-� ! � a-� ' � +:� -� +� -� � =� � W� �� 0� �Y� �:� �� �Y� �� �+� �� � =� � W���� N-� ��  
 x { �  �   >   . / 	0 
4 %5 -6 @8 H9 Q: b; u= x@ {> |? �A �   >  Q $ � �  % P p �  |  � �    � � �     � � �   | �   �      | � �  �    � 
 �  "� . +� 4� B � �    �  A � *  �   /     *� ��    �       � �        � �   �      � �  �         � 	�    �       � � �  �   /     *� �    �       � �        � �    �   �   B      � �� � � H� �Y� �� 	�    �   
    �  � �    @  �    � �    � �   
    � 