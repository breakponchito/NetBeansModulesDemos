Êþº¾   4 Ê
      2org/openide/filesystems/FileSystem$EventDispatcher <init> ()V	  	 
   %org/openide/filesystems/FileObject$ED op 'Lorg/openide/filesystems/FCLSupport$Op;	     en Ljava/util/Enumeration;	     fe #Lorg/openide/filesystems/FileEvent;
      !org/openide/filesystems/FileEvent getFile &()Lorg/openide/filesystems/FileObject;
       "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem; " 1org/openide/filesystems/FileStateInvalidException
 $ % & ' ( $org/openide/filesystems/ExternalUtil 	exception (Ljava/lang/Exception;)V
 * + , - . "org/openide/filesystems/FileSystem getFCLSupport &()Lorg/openide/filesystems/FCLSupport;	 0 1 2 3 4 "org/openide/filesystems/FCLSupport 	listeners &Lorg/openide/filesystems/ListenerList;
 * 6 7 8 getRepository &()Lorg/openide/filesystems/Repository;
 : + ; "org/openide/filesystems/Repository
 = > ? @ A $org/openide/filesystems/ListenerList allListeners 8(Lorg/openide/filesystems/ListenerList;)Ljava/util/List;	  C D E fsList Ljava/util/List;	  G H E repList
  J  K d(Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Enumeration;Lorg/openide/filesystems/FileEvent;)V
  M N O isFolder ()Z	 Q R S T  %org/openide/filesystems/FCLSupport$Op FOLDER_CREATED	 Q V W  DATA_CREATED Y java/util/LinkedList
 X  \ ] ^ _ O java/util/Enumeration hasMoreElements \ a b c nextElement ()Ljava/lang/Object; e *org/openide/filesystems/FileChangeListener
  g h i isPriorityListener /(Lorg/openide/filesystems/FileChangeListener;)Z
 X k l m add (Ljava/lang/Object;)Z
 0 o p q dispatchEvent (Lorg/openide/filesystems/FileChangeListener;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection;)V
 s t u v w java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration;	 y z { | } $org/openide/filesystems/FileObject$2 0$SwitchMap$org$openide$filesystems$FCLSupport$Op [I
 Q    ordinal ()I
    c 	getSource
     m java/lang/Object equals
 0  p  y(Ljava/util/Collection;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection;)V
     setAtomicActionLink :(Lorg/openide/filesystems/EventControl$AtomicActionLink;)V 	Signature ELjava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>; >Ljava/util/List<Lorg/openide/filesystems/FileChangeListener;>; Code LineNumberTable LocalVariableTable ex 3Lorg/openide/filesystems/FileStateInvalidException; this 'Lorg/openide/filesystems/FileObject$ED; fs $Lorg/openide/filesystems/FileSystem; fsll repll LocalVariableTypeTable TLorg/openide/filesystems/ListenerList<Lorg/openide/filesystems/FileChangeListener;>; StackMapTable MethodParameters (Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileEvent;)V =(Ljava/util/Enumeration;Lorg/openide/filesystems/FileEvent;)V k(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileEvent;)V dispatch (ZLjava/util/Collection;)V fcl ,Lorg/openide/filesystems/FileChangeListener; fsix rep $Lorg/openide/filesystems/Repository; onlyPriority Z 
postNotify Ljava/util/Collection; newEnum Ljava/util/LinkedList; fo $Lorg/openide/filesystems/FileObject; transmit ,Ljava/util/Collection<Ljava/lang/Runnable;>; DLjava/util/LinkedList<Lorg/openide/filesystems/FileChangeListener;>; ¹ java/util/Collection 0(ZLjava/util/Collection<Ljava/lang/Runnable;>;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; propID 7Lorg/openide/filesystems/EventControl$AtomicActionLink; 
SourceFile FileObject.java InnerClasses EventDispatcher ED Op Æ 5org/openide/filesystems/EventControl$AtomicActionLink È $org/openide/filesystems/EventControl AtomicActionLink                       D E        H E               K    s     p*· *+µ *,µ *-µ :*´ ¶ ¶ :§ 
:¸ #Æ ¶ )´ /§ :Æ ¶ 5Æ ¶ 5¶ 9´ /§ :*¸ <µ B*¸ <µ F±   " % !     :   a b 	c d e g "j %h 'i ,k ?l ]m fn oo    R  '       p       p      p      p     Z    ? 1  4  ]   4          p    ? 1     ]      ¡   + ÿ %   Q \  *  !@ =ü  =@ = ¢                 £   ¤     \     *+,· I±       
   r s                                     ¢   	           ¥  ¦ §    å  	  Y*´ Ç **´ ¶ ¶ L 	² P§ ² Uµ » XY· ZN*´ ¹ [  8*´ ¹ ` À d: ¸ f -¶ jW§ÿÓ*´ *´ ,¸ n§ÿÂ *-¸ rµ *´ ¶ :6Æ h² x*´ ¶ ~.«    #         *´ ¶ ¶ 6§ :*´ ¶ ¶  § 6 *´ Á \ *´ À \¹ [  6*´ ¹ [  c ^ Z::*´ ¶ ¶ :¶ 5:§ :±Æ *´ BÆ *´ B*´ *´ ,¸ Æ *´ FÆ *´ F*´ *´ ,¸ ±  !      "  z { !~ ) 5 C O V Y g j n v    ¤ ² µ Ë é ì¢£¤§¨«©ª ¬,­<±H²Xµ    f 
 C $ ¨ ©   ª   T    Q « ¬   Y      Y ­ ®   Y ¯ °  )0 ± ²   Ú ³ ´   × µ ®        Y ¯ ¶  )0 ± ·  ¡   Z [ ÿ    ¸   Qü  Xü / dú ý - @"ÿ 0   ¸ X  * :  !ù  ¢   	 ­   ¯       º »     ¼          A     	*´ +¶ ±       
   ¹ º        	       	 ½ ¾  ¢    ½   »     ¼    ¿    À Á   *   * Â   Ã 
 Q 0 Ä@ y     Å Ç É 