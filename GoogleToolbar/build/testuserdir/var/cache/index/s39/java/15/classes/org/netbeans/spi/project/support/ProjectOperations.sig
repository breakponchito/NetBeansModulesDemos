Êþº¾   4 
      java/lang/Object <init> ()V  java/util/ArrayList
         org/netbeans/api/project/Project 	getLookup ()Lorg/openide/util/Lookup;  8org/netbeans/spi/project/DataFilesProviderImplementation
      org/openide/util/Lookup 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection;      java/util/Collection iterator ()Ljava/util/Iterator;    ! " # java/util/Iterator hasNext ()Z  % & ' next ()Ljava/lang/Object;  ) * + getMetadataFiles ()Ljava/util/List; - . / 0 1 java/util/List addAll (Ljava/util/Collection;)Z	 3 4 5 6 7 2org/netbeans/spi/project/support/ProjectOperations $assertionsDisabled Z - 9 : ; contains (Ljava/lang/Object;)Z = java/lang/AssertionError ? java/lang/StringBuilder
 >  B 	Nulls in 
 > D E F append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 > H E I -(Ljava/lang/Object;)Ljava/lang/StringBuilder; K  from 
 > M N O toString ()Ljava/lang/String;
 < Q  R (Ljava/lang/Object;)V  T U + getDataFiles W 6org/netbeans/spi/project/DeleteOperationImplementation
  Y Z [ lookup %(Ljava/lang/Class;)Ljava/lang/Object; V ] ^  notifyDeleting V ` a  notifyDeleted c 4org/netbeans/spi/project/CopyOperationImplementation b e f  notifyCopying b h i j notifyCopied E(Lorg/netbeans/api/project/Project;Ljava/io/File;Ljava/lang/String;)V l 4org/netbeans/spi/project/MoveOperationImplementation k n o  notifyMoving k q r j notifyMoved
 t u v w # java/lang/Class desiredAssertionStatus Code LineNumberTable LocalVariableTable this 4Lorg/netbeans/spi/project/support/ProjectOperations; 4(Lorg/netbeans/api/project/Project;)Ljava/util/List; i :Lorg/netbeans/spi/project/DataFilesProviderImplementation; prj "Lorg/netbeans/api/project/Project; result Ljava/util/List; LocalVariableTypeTable 6Ljava/util/List<Lorg/openide/filesystems/FileObject;>; StackMapTable MethodParameters 	Signature Z(Lorg/netbeans/api/project/Project;)Ljava/util/List<Lorg/openide/filesystems/FileObject;>; isDeleteOperationSupported %(Lorg/netbeans/api/project/Project;)Z %(Lorg/netbeans/api/project/Project;)V 8Lorg/netbeans/spi/project/DeleteOperationImplementation; 
Exceptions  java/io/IOException isCopyOperationSupported 6Lorg/netbeans/spi/project/CopyOperationImplementation; g(Lorg/netbeans/api/project/Project;Lorg/netbeans/api/project/Project;Ljava/io/File;Ljava/lang/String;)V original nue originalPath Ljava/io/File; name Ljava/lang/String; 6Lorg/netbeans/spi/project/MoveOperationImplementation; isMoveOperationSupported <clinit> 
SourceFile ProjectOperations.java 1 3     6 7        x   3     *· ±    y   
    *  + z        { |   	 * }  x   í     r» Y· 	L*¹ 
 ¶ ¹  M,¹   Q,¹ $ À N+-¹ ( ¹ , W² 2 1+¹ 8  '» <Y» >Y· @A¶ C+¶ GJ¶ C-¶ G¶ L· P¿§ÿ¬+°    y       6  8 , 9 9 : m ; p = z      , A ~     r      j          j        ý  - û Sú              	 U }  x   í     r» Y· 	L*¹ 
 ¶ ¹  M,¹   Q,¹ $ À N+-¹ S ¹ , W² 2 1+¹ 8  '» <Y» >Y· @A¶ C+¶ GJ¶ C-¶ G¶ L· P¿§ÿ¬+°    y       I  K , L 9 M m N p P z      , A ~     r      j          j        ý  - û Sú              	    x   I     *¹ 
 V¶ XÆ § ¬    y       Z z                @        	 ^   x        .*¹ 
 V¶ ¹  L+¹   +¹ $ À VM,¹ \ §ÿç±    y       g $ h * i - j z     $  ~     .         ü  ú               	 a   x        .*¹ 
 V¶ ¹  L+¹   +¹ $ À VM,¹ _ §ÿç±    y       t $ u * v - w z     $  ~     .         ü  ú               	    x   I     *¹ 
 b¶ XÆ § ¬    y        z                @        	 f   x        .*¹ 
 b¶ ¹  L+¹   +¹ $ À bM,¹ d §ÿç±    y        $  *  -  z     $  ~     .         ü  ú               	 i   x   ù     k*¹ 
 b¶ ¹  :¹   ¹ $ À b:,-¹ g §ÿà+¹ 
 b¶ ¹  :¹   ¹ $ À b:*,-¹ g §ÿà±    y       ¢ ( £ 2 ¤ 5 ¥ ] ¦ g § j ¨ z   >  ( 
 ~   ] 
 ~     k       k      k      k        ü  ú "ü  ú "                       	 o   x        .*¹ 
 k¶ ¹  L+¹   +¹ $ À kM,¹ m §ÿç±    y       ´ $ µ * ¶ - · z     $  ~     .         ü  ú               	 r   x   ù     k*¹ 
 k¶ ¹  :¹   ¹ $ À k:,-¹ p §ÿà+¹ 
 k¶ ¹  :¹   ¹ $ À k:*,-¹ p §ÿà±    y       Ê ( Ë 2 Ì 5 Í ] Î g Ï j Ð z   >  ( 
 ~   ] 
 ~     k       k      k      k        ü  ú "ü  ú "                       	    x   I     *¹ 
 k¶ XÆ § ¬    y       Ú z                @            x   4      3¶ s § ³ 2±    y       (     @      