Êþº¾   4 Á	      5org/openide/util/lookup/implspi/NamedServicesProvider namedServicesProviders Ljava/util/Map;  	 
   java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  java/lang/ref/Reference
     ()Ljava/lang/Object;  org/openide/util/Lookup
     
getDefault ()Lorg/openide/util/Lookup;
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;	     IN Ljava/lang/ThreadLocal;
 !  " java/lang/ThreadLocal
 $ % & ' ( java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
 ! * + , set (Ljava/lang/Object;)V
  . / 0 create -(Ljava/lang/String;)Lorg/openide/util/Lookup; 2 java/lang/ClassLoader
 4 5 6 7 8 java/lang/Thread currentThread ()Ljava/lang/Thread;
 4 : ; < getContextClassLoader ()Ljava/lang/ClassLoader;
 > ? @ A < java/lang/Class getClassLoader C java/lang/StringBuilder
 B E F G <init> ()V I META-INF/namedservices/
 B K L M append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 B O P Q toString ()Ljava/lang/String;
 S T U V W org/openide/util/lookup/Lookups metaInfServices D(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/openide/util/Lookup; Y java/lang/ref/WeakReference
 X [ F ,  ] ^ _ put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  a b c lookupObject 7(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
  e f g 	lookupFor -(Ljava/lang/Object;)Lorg/openide/util/Lookup;	  i j k $assertionsDisabled Z m java/lang/AssertionError
 l E p java/lang/IllegalStateException
 o E  s t G clear
 v E w java/lang/Object
 v y z { getClass ()Ljava/lang/Class;
 > } ~ Q getName  *org.openide.util.lookup.PathInLookupTest$P
      java/lang/String equals (Ljava/lang/Object;)Z  8org.openide.util.UtilitiesTest$NamedServicesProviderImpl  ?org.netbeans.modules.openide.filesystems.RecognizeInstanceFiles  6org.netbeans.modules.settings.RecognizeInstanceObjects
 >    desiredAssertionStatus ()Z  java/util/HashMap
  E
      java/util/Collections synchronizedMap  (Ljava/util/Map;)Ljava/util/Map;
 ! E 	Signature WLjava/util/Map<Ljava/lang/String;Ljava/lang/ref/Reference<Lorg/openide/util/Lookup;>;>; ,Ljava/lang/ThreadLocal<Ljava/lang/Boolean;>; forPath Code LineNumberTable LocalVariableTable l Ljava/lang/ClassLoader; path Ljava/lang/String; ref Ljava/lang/ref/Reference; lkp Lorg/openide/util/Lookup; prov 7Lorg/openide/util/lookup/implspi/NamedServicesProvider; LocalVariableTypeTable 4Ljava/lang/ref/Reference<Lorg/openide/util/Lookup;>; StackMapTable ° java/lang/Throwable MethodParameters getConfigObject filePath type Ljava/lang/Class; Ljava/lang/Class<TT;>; C<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT; createLookupFor obj Ljava/lang/Object; 
clearCache 	assertsOn this <clinit> 
SourceFile NamedServicesProvider.java!  v             
         j k   	 	  0    ±     ¸² *¹  À L+Ç § 
+¶ À M,Æ ,°¸ ¶ À N-Æ 5² ¶  Ç ,² ¸ #¶ )-*¶ -M² ¶ )§ :² ¶ )¿§ B¸ 1¶ À 1:Ç ¸ 3¶ 9:Ç 
¶ =:» BY· DH¶ J*¶ J¶ N¸ RM² *» XY,· Z¹ \ W,°  F L V   V X V        R    B  C  D ! E # G / H < I F K L M S N V M _ N e P r Q w R  S  T  W ¤ Z ¶ [ ¡   4  r 2 ¢ £    ¸ ¤ ¥    « ¦ §    ¨ ©  /  ª «  ¬      « ¦ ­  ®   3 ü  F ü  ÿ 2       ¯ü % 1ú  ±    ¤   	 ² c          ¸ ¶ À M,Æ ,*+¶ `§ °        
    e  f ¡         ³ ¥      ´ µ    ª «  ¬        ´ ¶  ®    ü  @ v ±   	 ³   ´       · 	 ¸ g     d     ¸ ¶ À L+Æ +*¶ d§ °        
    q  r ¡        ¹ º     ª «  ®    ü  @  ±    ¹    » G     v     +;² h Y; » lY· n¿ » oY· q¿² ¹ r ±            v  w  x  y " { * | ¡      ) ¼ k   ®    ü   F G     ¯     L*· u*¶ x¶ |¶  ±*¶ x¶ |¶  ±*¶ x¶ |¶  ±*¶ x¶ |¶  ±» oY· q¿        * 
          #  $  3  4  C  D  ¡       L ½ «   ®    ÿ      / 0  ±    ¤    b c     Z     
*+¶ -,¶ °            ¤ ¡        
 ½ «     
 ¤ ¥    
 ´ µ  ¬       
 ´ ¶  ±   	 ¤   ´       ·  f g     6     °            ¯ ¡        ½ «      ¹ º  ±    ¹    ¾ G     S      (¶  § ³ h» Y· ¸ ³ » !Y· ³ ±            <  =  > ®    @  ¿    À