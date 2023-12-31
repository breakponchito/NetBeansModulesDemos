����   4 l
      org/openide/xml/EntityCatalog <init> ()V
  	 
   3org/netbeans/modules/openide/loaders/RuntimeCatalog name2uri &(Ljava/lang/String;)Ljava/lang/String;
     mapResource )(Ljava/lang/String;)Ljava/io/InputStream;  org/xml/sax/InputSource
     (Ljava/lang/String;)V
     setPublicId
     (Ljava/io/InputStream;)V	     id2uri Ljava/util/Map; ! java/util/HashMap
    $ % & ' ( java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	  * +  id2resource	  - .  	id2loader $ 0 1 2 get &(Ljava/lang/Object;)Ljava/lang/Object; 4 java/lang/String 6 java/lang/ClassLoader
 5 8 9  getSystemResourceAsStream
 5 ; <  getResourceAsStream 	Signature 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; :Ljava/util/Map<Ljava/lang/String;Ljava/lang/ClassLoader;>; Code LineNumberTable LocalVariableTable this 5Lorg/netbeans/modules/openide/loaders/RuntimeCatalog; resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; retval Lorg/xml/sax/InputSource; name Ljava/lang/String; systemId 	mappedURI stream Ljava/io/InputStream; StackMapTable Q java/io/InputStream 
Exceptions T java/io/IOException V org/xml/sax/SAXException MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; registerCatalogEntry '(Ljava/lang/String;Ljava/lang/String;)V publicId uri >(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V resourceName loader Ljava/lang/ClassLoader; 
SourceFile RuntimeCatalog.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; *Lorg/openide/util/lookup/ServiceProviders; value )Lorg/openide/util/lookup/ServiceProvider; service Lorg/openide/xml/EntityCatalog; 1          =    >  +   =    >  .   =    ?      @   /     *� �    A       / B        C D    E F  @   �     <*+� :*+� :� � Y� N-+� -�� � Y� N-+� -��    A   .    ;  <  ?  @  A " B $ D ) E 3 F 8 G : J B   H    G H  3  G H    < C D     < I J    < K J   5 L J   . M N  O    � $  3 P R     S U W   	 I   K   X     Y    Z [  @   r     *� � *�  Y� "� *� +,� # W�    A       O  P  R  S B         C D      \ J     ] J  O     W   	 \   ]    Z ^  @   �     A*� )� *�  Y� "� )*� )+,� # W-� !*� ,� *�  Y� "� ,*� ,+-� # W�    A   "    W  X  Z  \ " ] ) ^ 4 ` @ b B   *    A C D     A \ J    A _ J    A ` a  O    ! W    \   _   `       @   a     +� 
*� � �*� +� / � 3�    A       g  h  j B        C D      \ J  O     W    \       @   �     G+� 
*� )� �*� )+� / � 3MN,� �*� ,� *� ,+� / � 5N-� ,� 7�-,� :�    A   .    p  q  t  u  w ! x # { * | 8  < � A � B   *    G C D     G \ J   , _ J   * ` a  O    �  3 5 W    \    b    c d     e     f   X     g  h[ @ i  jc k@ i  jc D