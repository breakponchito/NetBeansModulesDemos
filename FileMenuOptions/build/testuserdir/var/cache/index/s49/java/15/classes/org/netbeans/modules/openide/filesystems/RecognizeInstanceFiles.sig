Êþº¾   4 ¦	      ?org/netbeans/modules/openide/filesystems/RecognizeInstanceFiles LOG Ljava/util/logging/Logger;
  	 
   5org/openide/util/lookup/implspi/NamedServicesProvider <init> ()V  Iorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$OverFiles
     (Ljava/lang/String;)V
       org/openide/filesystems/FileUtil getConfigFile 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
      "org/openide/filesystems/FileObject isData ()Z
    ! " # Forg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem createInstanceFor I(Lorg/openide/filesystems/FileObject;Ljava/lang/Class;)Ljava/lang/Object;	  % & ' 	factories  Lorg/openide/util/Lookup$Result;
 ) * + , - org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; / 1org/openide/filesystems/spi/CustomInstanceFactory
 ) 1 2 3 lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;
 5 6 7 8 9 org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;
  ; < 9 getInstanceFactories > ? @ A B java/util/Collection iterator ()Ljava/util/Iterator; D E F G  java/util/Iterator hasNext D I J K next ()Ljava/lang/Object; . M N O createInstance %(Ljava/lang/Class;)Ljava/lang/Object; Q java/lang/Class
 P S T U getDeclaredConstructor 3([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
 W X Y Z [ java/lang/reflect/Constructor setAccessible (Z)V ] java/lang/Object
 W _ ` a newInstance '([Ljava/lang/Object;)Ljava/lang/Object;
 P c d e getName ()Ljava/lang/String;
 g h i j k java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; 	Signature ULorg/openide/util/Lookup$Result<Lorg/openide/filesystems/spi/CustomInstanceFactory;>; Code LineNumberTable LocalVariableTable this ALorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles; create -(Ljava/lang/String;)Lorg/openide/util/Lookup; path Ljava/lang/String; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; lookupObject 7(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object; type Ljava/lang/Class; fo $Lorg/openide/filesystems/FileObject; LocalVariableTypeTable Ljava/lang/Class<TT;>; StackMapTable C<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/Class<TT;>;)TT; fr N()Ljava/util/Collection<+Lorg/openide/filesystems/spi/CustomInstanceFactory;>; fif 3Lorg/openide/filesystems/spi/CustomInstanceFactory; init Ljava/lang/reflect/Constructor; r Ljava/lang/Object; $Ljava/lang/reflect/Constructor<TT;>; TT; 
Exceptions   java/lang/InstantiationException   java/lang/IllegalAccessException  +java/lang/reflect/InvocationTargetException  java/lang/NoSuchMethodException 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; 
access$100 ()Ljava/util/logging/Logger; <clinit> 
SourceFile RecognizeInstanceFiles.java )Lorg/openide/util/lookup/ServiceProvider; service 7Lorg/openide/util/lookup/implspi/NamedServicesProvider; position  ô InnerClasses 	OverFiles FOItem Result 1           J & '  l    m      n   /     *· ±    o       ; p        q r    s t  n   =     	» Y+· °    o       A p       	 q r     	 u v  w    u   x     y    z {  n        +¸ N-Æ -¶  	-,¸ °°    o       E  F  G  I p   *     q r      u v     | }    ~           |       ü   w   	 u   |   l     x     y   
 < 9  n   l     ² $YKÇ ¸ (.¶ 0YK³ $*¶ 4°    o       Ä  Å  Ç p        '           m       ü  5 l      N O  n   ù     ML¸ :¹ = M,¹ C  ,¹ H À .N-*¹ L L+Æ § §ÿÞ+Ç *½ P¶ RM,¶ V,½ \¶ ^L+°    o   .    Ì  Í  Î & Ï * Ð - Ò 0 Ó 4 Ô = Õ B Ö K Ø p   *       =       M | }    K          =       M |     K        ý  \ D!ú     
      w    |   l        n         ² °    o       ;     n   $      ¶ b¸ f³ ±    o       <       x       c   I ¡ ¢       £    ¤  5 ) ¥	