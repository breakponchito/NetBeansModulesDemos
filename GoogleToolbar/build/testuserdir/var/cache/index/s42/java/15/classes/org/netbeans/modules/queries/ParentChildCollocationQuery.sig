����   4 C
      java/lang/Object <init> ()V
  	 
   java/net/URI equals (Ljava/lang/Object;)Z
     toString ()Ljava/lang/String;  /
      java/lang/String endsWith (Ljava/lang/String;)Z  java/lang/StringBuilder
  
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  
  " #  
startsWith % 8org/netbeans/modules/queries/ParentChildCollocationQuery ' 8org/netbeans/spi/queries/CollocationQueryImplementation2 Code LineNumberTable LocalVariableTable this :Lorg/netbeans/modules/queries/ParentChildCollocationQuery; areCollocated (Ljava/net/URI;Ljava/net/URI;)Z file1 Ljava/net/URI; file2 f1 Ljava/lang/String; f2 StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; findRoot (Ljava/net/URI;)Ljava/net/URI; file 
SourceFile  ParentChildCollocationQuery.java )Lorg/openide/util/lookup/ServiceProvider; service :Lorg/netbeans/spi/queries/CollocationQueryImplementation2; position   d ! $   &        (   /     *� �    )       ! *        + ,    - .  (   �     j+,� � �+� N-� � � Y� -� � �  N,� :� � � Y� � � �  :-� !� -� !� � �    )   & 	   $  % 
 '  (  ) , + 2 , < - R / *   4    j + ,     j / 0    j 1 0   [ 2 3  2 8 4 3  5    
� ! � % @ 6   	 /   1   7     8    9 :  (   6     �    )       3 *        + ,      ; 0  6    ;   7     8    <    = 7     >  ?c @ AI B