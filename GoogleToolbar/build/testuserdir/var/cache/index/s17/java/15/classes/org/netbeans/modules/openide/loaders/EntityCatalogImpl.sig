����   4 N	      6org/netbeans/modules/openide/loaders/EntityCatalogImpl id2uri Ljava/util/Map;
   	 
 <init> (Ljava/util/Map;)V	     	catalogRP #Lorg/openide/util/RequestProcessor;
    	  org/openide/xml/EntityCatalog ()V      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  java/lang/String  org/xml/sax/InputSource
   	   (Ljava/lang/String;)V " !org/openide/util/RequestProcessor $ EntityCatalog/parser
 !  	Signature 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; Code LineNumberTable LocalVariableTable this 8Lorg/netbeans/modules/openide/loaders/EntityCatalogImpl; map LocalVariableTypeTable MethodParameters 8(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V resolveEntity ?(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource; publicID Ljava/lang/String; systemID res ret Lorg/xml/sax/InputSource; StackMapTable 
access$000 %()Lorg/openide/util/RequestProcessor; L(Ljava/util/Map;Lorg/netbeans/modules/openide/loaders/EntityCatalogImpl$1;)V x0 x1 :Lorg/netbeans/modules/openide/loaders/EntityCatalogImpl$1; 
access$202 X(Lorg/netbeans/modules/openide/loaders/EntityCatalogImpl;Ljava/util/Map;)Ljava/util/Map; <clinit> 
SourceFile EntityCatalogImpl.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses J 8org/netbeans/modules/openide/loaders/EntityCatalogImpl$1 L Lorg/netbeans/modules/openide/loaders/EntityCatalogImpl$RegistrationProcessor RegistrationProcessor 1          &    '        	 
  (   X     
*� *+� �    )       6  7 	 8 *       
 + ,     
 -   .       
 - '  /    -   &    0  1 2  (   �     (+� �*� +�  � N:-� � Y-� :�    )       >  @  B  C  D % H *   4    ( + ,     ( 3 4    ( 5 4    6 4    7 8  9    �    /   	 3   5   : ;  (         � �    )       .  	 <  (   D     *+� �    )       . *         + ,      =      > ?  @ A  (   ;     *+Z� �    )       . *        = ,      >    B   (   %      � !Y#� %� �    )       3  C    D E     F     G   H     I     K  M 	