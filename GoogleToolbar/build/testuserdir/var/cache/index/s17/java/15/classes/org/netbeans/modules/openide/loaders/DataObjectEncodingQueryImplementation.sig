Êþº¾   4 À
      8org/netbeans/spi/queries/FileEncodingQueryImplementation <init> ()V	  	 
   Jorg/netbeans/modules/openide/loaders/DataObjectEncodingQueryImplementation TARGET Ljava/lang/ThreadLocal;
      java/lang/ThreadLocal get ()Ljava/lang/Object;  org/openide/loaders/DataFolder
     set (Ljava/lang/Object;)V	     $assertionsDisabled Z  java/lang/AssertionError
  
 ! " # $ % "org/openide/filesystems/FileObject getMIMEType ()Ljava/lang/String;
 ' ( ) * + -org/netbeans/api/editor/mimelookup/MimeLookup 	getLookup -(Ljava/lang/String;)Lorg/openide/util/Lookup;
 - . / 0 1 org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object;
  3 4 5 getEncoding @(Lorg/openide/filesystems/FileObject;)Ljava/nio/charset/Charset;
  7 8 9 getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 ! ; < 9 	getParent
 > ? @ A B java/lang/Object equals (Ljava/lang/Object;)Z	  D E F MIME_TYPE_CHECK_MAP Ljava/util/Map; H I J  K java/util/Map &(Ljava/lang/Object;)Ljava/lang/Object; M java/lang/Boolean
 L O P Q booleanValue ()Z S content/unknown
 U ? V java/lang/String
 X Y Z [ \ org/openide/loaders/DataObject find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; ^ /org/openide/loaders/DataObjectNotFoundException	  ` a b LOG Ljava/util/logging/Logger; d java/lang/StringBuilder
 c  g Invalid DataObject: 
 c i j k append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 m n o p q  org/openide/filesystems/FileUtil getFileDisplayName 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;
 c s t % toString
 v w x y z java/util/logging/Logger warning (Ljava/lang/String;)V
 X | * } ()Lorg/openide/util/Lookup;	 L    TRUE Ljava/lang/Boolean; H    put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	 L    FALSE
     Q java/lang/Class desiredAssertionStatus
  
    % getName
 v    	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;  java/util/HashMap
   	Signature 9Ljava/lang/ThreadLocal<Lorg/openide/loaders/DataFolder;>; 6Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>; Code LineNumberTable LocalVariableTable this LLorg/netbeans/modules/openide/loaders/DataObjectEncodingQueryImplementation; enterIgnoreTargetFolder B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataFolder; df  Lorg/openide/loaders/DataFolder; prev MethodParameters exitIgnoreTargetFolder #(Lorg/openide/loaders/DataFolder;)V charset Ljava/nio/charset/Charset; dobj  Lorg/openide/loaders/DataObject; ex 1Lorg/openide/loaders/DataObjectNotFoundException; file $Lorg/openide/filesystems/FileObject; mimeType Ljava/lang/String; impl :Lorg/netbeans/spi/queries/FileEncodingQueryImplementation; useDataObjectLookup StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile *DataObjectEncodingQueryImplementation.java )Lorg/openide/util/lookup/ServiceProvider; service position   d !      
          a b    E F                   3     *· ±       
    -  .              	 ¡ ¢     O     ² ¶ À L² *¶ +°           1 
 2  3         £ ¤   
 	 ¥ ¤  ¦    £   	 § ¨     6     ² *¶ ±       
    6  7         ¥ ¤   ¦    ¥    4 5    ê     Ü²  +Ç » Y· ¿² ¶ À M+¶  N-¸ &¶ ,À :Æ +¶ 2:Æ °,Æ ,¶ 6+¶ :¶ = °² C-¹ G À L:Æ ¶ N R-¶ T a+¸ W:§ #:² _» cY· ef¶ h+¸ l¶ h¶ r¶ u°¶ {¶ ,À :Æ ² C-² ~¹  W+¶ 2°² C-² ¹  W°  |   ]     ^    C  D  E ! F / G 4 H < I A J D M V O X Q f R | U  Y  V  W £ X ¥ Z ´ [ ¹ \ Æ ] Í _ Ú b    f 
 <  © ª    « ¬    ­ ®  ¥ 5 « ¬    Ü        Ü ¯ °   À £ ¤  ! » ± ²  / ­ ³ ´  f v µ   ¶   $ þ 1  U ü # LH ]ü  X'ú  ¦    ¯   ·     ¸    ¹      _      0¶  § ³ » Y· ³ ¶ ¸ ³ _» Y· ³ C±           %  '  ( % * ¶    @  º    » ·     ¼  ½c ´ ¾I ¿