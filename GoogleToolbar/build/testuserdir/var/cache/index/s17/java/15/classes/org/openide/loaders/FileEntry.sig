Êþº¾   4 ¡
      java/util/Objects requireNonNull &(Ljava/lang/Object;)Ljava/lang/Object;
  	 
   )org/openide/loaders/MultiDataObject$Entry <init> L(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)V
      org/openide/loaders/FileEntry getFile &()Lorg/openide/filesystems/FileObject;  java/lang/StringBuilder
     ()V
      "org/openide/filesystems/FileObject getName ()Ljava/lang/String;
     ! append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  # $  toString
  & '  getExt
  ) * + copy n(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  - . / isLocked ()Z
  1 2 3 takeLock $()Lorg/openide/filesystems/FileLock;
  5 6 7 rename I(Lorg/openide/filesystems/FileLock;Ljava/lang/String;Ljava/lang/String;)V
 9 : ; <   org/openide/filesystems/FileLock releaseLock
  > ? @ move (Lorg/openide/filesystems/FileLock;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; B java/io/IOException
  D   E -(Ljava/lang/Object;)Ljava/lang/StringBuilder; G move( I ,  K  yields null!
 A M  N (Ljava/lang/String;)V
  P Q R delete %(Lorg/openide/filesystems/FileLock;)V
 T U V W X +org/openide/loaders/DataObject$CreateAction getCallParameters #(Ljava/lang/String;)Ljava/util/Map;	 Z [ \ ] ^ +org/netbeans/api/templates/FileBuilder$Mode COPY -Lorg/netbeans/api/templates/FileBuilder$Mode;
 ` a b c d &org/netbeans/api/templates/FileBuilder createFromTemplate ¼(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/Map;Lorg/netbeans/api/templates/FileBuilder$Mode;)Lorg/openide/filesystems/FileObject;
 f g h i j org/openide/loaders/DataObject setTemplate ((Lorg/openide/filesystems/FileObject;Z)Z serialVersionUID J ConstantValueRãc¿Tã/ Code LineNumberTable LocalVariableTable this Lorg/openide/loaders/FileEntry; obj %Lorg/openide/loaders/MultiDataObject; fo $Lorg/openide/filesystems/FileObject; MethodParameters \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; f suffix Ljava/lang/String; newName 
Exceptions 
copyRename name ext #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; locked Z lock "Lorg/openide/filesystems/FileLock; StackMapTable  java/lang/String  java/lang/Throwable dest 
SourceFile FileEntry.java InnerClasses  #org/openide/loaders/MultiDataObject Entry CreateAction Mode  $org/openide/loaders/FileEntry$Folder Folder  "org/openide/loaders/FileEntry$Numb Numb  $org/openide/loaders/FileEntry$Format Format !       k l  m    n      p   N     *+Y¸ W,· ±    q   
    *  + r         s t      u v     w x  y   	 u   w    * z  p        (*¶ N» Y· -¶ ¶ ,¶ ¶ ":-+-¶ %¶ (°    q       2  3  4 r   4    ( s t     ( { x    ( | }   # w x    ~ }       A y   	 {   |     +  p   e     *¶ :+,-¶ (°    q   
    9  : r   4     s t      { x      }      }   	 w x       A y    {                  6   p   Ô     7*¶ ,=*¶ 0N*¶ -+*¶ ¶ %¶ 4 -¶ 8§ : -¶ 8¿*¶ °  
  %   % ' %    q   & 	   D  F 
 H  J  K % J + K / L 2 M r   *    7 s t     7  }   2    
 -        ÿ %    9  ü 	 ú       A y        ? z  p  ¹  
   £*¶ ,>*¶ :*¶ 0:» Y· ¶ ¶ ,¶ ¶ ":+¶ %¶ =:Ç I» AY» Y· ¶ CF¶ ¶ CH¶ +¶ CH¶ ¶ H¶ ¶ %¶ J¶ ¶ "· L¿: ¶ 8°:	 ¶ 8	¿             q   :    V  X  Y  [ ) \ : ] ? ^  `  b  c  `  b  c   d r   R  ) l ~ }  : [  x    £ s t     £ { x    £ | }         w x          \ ÿ       9    ü  ÿ       9  ÿ 
 
     9            A y   	 {   |    Q   p   ±     )*¶ ,<*¶ 0M*¶ ,¶ O ,¶ 8§ N ,¶ 8-¿±  
      q   & 	   p  r 
 t  w  x  w " x & y ( z r        ) s t    $    
         ÿ    9  ü  ú       A  c z  p   q     *¶ +,,¸ S² Y¸ _N-¸ eW-°    q                r   *     s t      { x      }    w x       A y   	 {                       2     T f   Z ` @            	