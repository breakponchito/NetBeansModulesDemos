Êþº¾   4 ²
      java/lang/Object <init> ()V
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  8org/openide/loaders/CreateFromTemplateAttributesProvider
     lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	      5org/netbeans/modules/templates/AttributeHandlerBridge 	providers  Lorg/openide/util/Lookup$Result;
      +org/netbeans/api/templates/CreateDescriptor getTemplate &()Lorg/openide/filesystems/FileObject;
    !  	getTarget
 # $ % & ' org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; ) * + , - java/util/Collection isEmpty ()Z
 / 0 1 2 3 java/util/Collections emptyMap ()Ljava/util/Map;
 5 6 7 8 9 org/openide/loaders/DataObject find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject;
 ; < = > ? org/openide/loaders/DataFolder 
findFolder F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataFolder; A /org/openide/loaders/DataObjectNotFoundException
 C D E F G org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V I java/util/HashMap
 H  ) L M N iterator ()Ljava/util/Iterator; P Q R S - java/util/Iterator hasNext P U V W next ()Ljava/lang/Object;	 Y Z [ \ ] 7org/netbeans/modules/openide/loaders/DataObjectAccessor DEFAULT 9Lorg/netbeans/modules/openide/loaders/DataObjectAccessor;
 Y _ ` a getOrigName ()Ljava/lang/String;  c d e attributesFor c(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;Ljava/lang/String;)Ljava/util/Map; g h i j k java/util/Map entrySet ()Ljava/util/Set; m L n java/util/Set p java/util/Map$Entry o r s W getKey u java/lang/String o w x W getValue
 H z { | put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; ~ 7org/netbeans/api/templates/CreateFromTemplateAttributes 	Signature \Lorg/openide/util/Lookup$Result<Lorg/openide/loaders/CreateFromTemplateAttributesProvider;>; Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/modules/templates/AttributeHandlerBridge; >(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/Map; d  Lorg/openide/loaders/DataObject; fld  Lorg/openide/loaders/DataFolder; ex 1Lorg/openide/loaders/DataObjectNotFoundException; e Ljava/util/Map$Entry; map Ljava/util/Map; p :Lorg/openide/loaders/CreateFromTemplateAttributesProvider; desc -Lorg/netbeans/api/templates/CreateDescriptor; template $Lorg/openide/filesystems/FileObject; target c Ljava/util/Collection; all Ljava/util/HashMap; LocalVariableTypeTable <Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/lang/Object;>; 6Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>; SLjava/util/Collection<+Lorg/openide/loaders/CreateFromTemplateAttributesProvider;>; 9Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>; StackMapTable £ "org/openide/filesystems/FileObject MethodParameters S(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/Map<Ljava/lang/String;*>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile AttributeHandlerBridge.java )Lorg/openide/util/lookup/ServiceProvider; service 9Lorg/netbeans/api/templates/CreateFromTemplateAttributes; position   InnerClasses Result Entry !    }                   C     *· *¸ ¶ µ ±           -  .  /              d     +     ¿+¶ M+¶ N*´ ¶ ":¹ (  ¸ .°,¸ 4:-¸ ::§ :¸ B¸ .°» HY· J:¹ K :¹ O  h¹ T À :		² X¶ ^¹ b :

Æ A
¹ f ¹ l :¹ O  )¹ T À o:¹ q À t¹ v ¶ yW§ÿÓ§ÿ°  ! - 0 @     R    3  4 
 5  6  7 ! = ' > - C 0 ? 2 A 7 B ; D D E c H v I { J  K ¶ L ¹ N ¼ P      ' 	    -     2 	         v C   
 c V   	   ¿       ¿     º    
 µ     ¬    ;     ;     D {       *       v C   
  ¬    D {     ¡   6 þ ! ¢ ¢ )N @ý 
 5 ;ý  H Pþ ;  g Pø /ú  ¤           ¥ ¦     §    ¨    © ¦     ª  «c ¬ ­I ® ¯     #  °	 o g ±	