����   4 F
      java/io/Writer <init> ()V	  	 
   5org/openide/loaders/InstanceDataObject$WriterProvider orig Ljava/io/Writer;	     ctx :Lorg/openide/loaders/InstanceDataObject$FileObjectContext;
     close
     flush
     write ([CII)V	     lookup Lorg/openide/util/Lookup;
   ! " # $ org/openide/util/lookup/Lookups 	singleton -(Ljava/lang/Object;)Lorg/openide/util/Lookup; &  org/openide/util/Lookup$Provider M(Ljava/io/Writer;Lorg/openide/loaders/InstanceDataObject$FileObjectContext;)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/loaders/InstanceDataObject$WriterProvider; w MethodParameters 
Exceptions 1 java/io/IOException cbuf [C off I len 	getLookup ()Lorg/openide/util/Lookup; StackMapTable 
SourceFile InstanceDataObject.java InnerClasses > &org/openide/loaders/InstanceDataObject WriterProvider A 8org/openide/loaders/InstanceDataObject$FileObjectContext FileObjectContext D org/openide/util/Lookup Provider 0    %                    '  (   Y     *� *+� *,� �    )      � � 	� � *         + ,      -         .   	 -          (   6     *� � �    )   
   � � *        + ,   /     0     (   6     *� � �    )   
   � � *        + ,   /     0     (   W     *� +� �    )   
   � 
� *   *     + ,      2 3     4 5     6 5  /     0 .    2   4   6    7 8  (   R     *� � **� � � *� �    )      � � � *        + ,   9      :    ; <      = ?  @ = B  % C E	