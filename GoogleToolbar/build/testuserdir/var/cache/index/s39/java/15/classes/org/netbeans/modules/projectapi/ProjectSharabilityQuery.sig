����   4 ?
      java/lang/Object <init> ()V
  	 
   org/openide/util/BaseUtilities toURI (Ljava/io/File;)Ljava/net/URI;
      'org/netbeans/api/project/FileOwnerQuery getOwner 2(Ljava/net/URI;)Lorg/netbeans/api/project/Project;       org/netbeans/api/project/Project 	getLookup ()Lorg/openide/util/Lookup;  7org/netbeans/spi/queries/SharabilityQueryImplementation
       org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object;  " # $ getSharability (Ljava/io/File;)I & )org/netbeans/api/queries/SharabilityQuery ( 7org/netbeans/modules/projectapi/ProjectSharabilityQuery Code LineNumberTable LocalVariableTable this 9Lorg/netbeans/modules/projectapi/ProjectSharabilityQuery; sqi 9Lorg/netbeans/spi/queries/SharabilityQueryImplementation; file Ljava/io/File; p "Lorg/netbeans/api/project/Project; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile ProjectSharabilityQuery.java Ljava/lang/SuppressWarnings; value deprecation )Lorg/openide/util/lookup/ServiceProvider; service ! '           )   /     *� �    *       $ +        , -    # $  )   �     )+� � M,� ,�  � � N-� -+� ! ��    *       '  (  )  *  + ' . +   *    . /    ) , -     ) 0 1   ! 2 3  4    � '  5    0   6     7    8    9 6     :  ;[ s < =  >c /