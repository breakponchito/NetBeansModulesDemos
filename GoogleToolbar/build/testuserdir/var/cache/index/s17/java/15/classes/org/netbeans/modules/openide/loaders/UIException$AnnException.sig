����   4 R  =org/netbeans/modules/openide/loaders/UIException$AnnException
      java/lang/Throwable getCause ()Ljava/lang/Throwable;
  
   <init> ()V
     	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;
     findOrCreate W(Ljava/lang/Throwable;Z)Lorg/netbeans/modules/openide/loaders/UIException$AnnException;
  
  java/lang/Exception	     records Ljava/util/List;  java/util/ArrayList
  
   ! " # $ java/util/List add (Ljava/lang/Object;)Z & java/util/logging/LogRecord   ( ) * toArray (([Ljava/lang/Object;)[Ljava/lang/Object; , [Ljava/util/logging/LogRecord;
  . / 0 call  ()[Ljava/util/logging/LogRecord; 2 java/util/concurrent/Callable 	Signature /Ljava/util/List<Ljava/util/logging/LogRecord;>; Code LineNumberTable LocalVariableTable t Ljava/lang/Throwable; create Z StackMapTable > java/lang/Object MethodParameters this ?Lorg/netbeans/modules/openide/loaders/UIException$AnnException; 	addRecord  (Ljava/util/logging/LogRecord;)V rec Ljava/util/logging/LogRecord; r empty LocalVariableTypeTable ()Ljava/lang/Object; 
Exceptions TLjava/lang/Exception;Ljava/util/concurrent/Callable<[Ljava/util/logging/LogRecord;>; 
SourceFile UIException.java InnerClasses P 0org/netbeans/modules/openide/loaders/UIException AnnException 0    1      3    4      5   �     D*� � *� �*YM�*� � � *� Y� 	� W*� � ,ð,ç N,�-�*� � �   0 6   1 3 6   6 9 6    6   & 	   J  K  M  N  O  P ' R 1 T ; U 7       D 8 9     D : ;  <    �  =	D �  ?   	 8  :       5   3     *� �    6   
    X  Y 7        @ A   ! B C  5   g     *� � *� Y� � *� +�  W�    6       \  ]  _  ` 7        @ A      D E  <     ?    D    / 0  5   �     *� L� %M+� ,� +,� ' � +�    6       c  d 
 e 7         @ A     F   
  G ,  H       F 4  <    �    +I +A / I  5   /     *� -�    6       F 7        @ A   J       3    K L    M N   
   O Q 