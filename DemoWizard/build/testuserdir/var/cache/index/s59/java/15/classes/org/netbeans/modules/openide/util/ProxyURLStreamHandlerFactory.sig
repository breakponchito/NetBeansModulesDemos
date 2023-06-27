Êþº¾   4 	      >org/netbeans/modules/openide/util/ProxyURLStreamHandlerFactory handlers Ljava/util/Map;
  	 
   java/lang/Object <init> ()V  java/util/HashMap
  		     results	     STANDARD_PROTOCOLS Ljava/util/Set;      java/util/Set contains (Ljava/lang/Object;)Z     !  java/util/Map containsKey # java/lang/StringBuilder
 " 	 & URLStreamHandler/
 " ( ) * append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 " , - . toString ()Ljava/lang/String;
 0 1 2 3 4 org/openide/util/lookup/Lookups forPath -(Ljava/lang/String;)Lorg/openide/util/Lookup; 6 java/net/URLStreamHandler
 8 9 : ; < org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result; > @org/netbeans/modules/openide/util/ProxyURLStreamHandlerFactory$1
 = @  A u(Lorg/netbeans/modules/openide/util/ProxyURLStreamHandlerFactory;Lorg/openide/util/Lookup$Result;Ljava/lang/String;)V
 C D E F G org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V I J K L M org/openide/util/LookupListener resultChanged !(Lorg/openide/util/LookupEvent;)V  O P Q put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  S T U get &(Ljava/lang/Object;)Ljava/lang/Object; W java/util/HashSet Y java/lang/String [ jar ] file _ http a https c resource
 e f g h i java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 V k  l (Ljava/util/Collection;)V n  java/net/URLStreamHandlerFactory 	Signature `Ljava/util/Map<Ljava/lang/String;Lorg/openide/util/Lookup$Result<Ljava/net/URLStreamHandler;>;>; >Ljava/util/Map<Ljava/lang/String;Ljava/net/URLStreamHandler;>; #Ljava/util/Set<Ljava/lang/String;>; Code LineNumberTable LocalVariableTable this @Lorg/netbeans/modules/openide/util/ProxyURLStreamHandlerFactory; createURLStreamHandler /(Ljava/lang/String;)Ljava/net/URLStreamHandler; result  Lorg/openide/util/Lookup$Result; listener !Lorg/openide/util/LookupListener; protocol Ljava/lang/String; LocalVariableTypeTable =Lorg/openide/util/Lookup$Result<Ljava/net/URLStreamHandler;>; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
access$000 Q(Lorg/netbeans/modules/openide/util/ProxyURLStreamHandlerFactory;)Ljava/util/Map; x0 <clinit> 
SourceFile !ProxyURLStreamHandlerFactory.java )Lorg/openide/util/lookup/ServiceProvider; service "Ljava/net/URLStreamHandlerFactory; InnerClasses Result 1    m      o    p     o    q     o    r      s   M     *· *» Y· µ *» Y· µ ±    t       )  +  , u        v w   ! x y  s   î     h² +¹   °*´ +¹   B» "Y· $%¶ '+¶ '¶ +¸ /5¶ 7M» =Y*,+· ?N,-¶ B-¹ H *´ +,¹ N W*´ +¹ R À 5°    t   & 	   0  2  4  5 7 6 B > G ? N @ Z B u   *  7 # z {  B  | }    h v w     h ~        7 # z       û K     ~             s   /     *´ °    t       ) u         w       s   C      +» VY½ XYZSY\SY^SY`SYbS¸ d· j³ ±    t       -              c       C 8 	 =      