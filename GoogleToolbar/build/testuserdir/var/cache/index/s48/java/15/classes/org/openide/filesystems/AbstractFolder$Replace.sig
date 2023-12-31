Êþº¾   4 ¡
      java/lang/Object <init> ()V	  	 
   .org/openide/filesystems/AbstractFolder$Replace f $Lorg/openide/filesystems/FileObject;
      "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;
      "org/openide/filesystems/FileSystem getSystemName ()Ljava/lang/String;	     fsname Ljava/lang/String;
     getPath	  ! "  path
  $ % & toURL ()Ljava/net/URL;	  ( ) * url Ljava/net/URL;	  , - . $assertionsDisabled Z 0 java/lang/AssertionError 2 java/lang/StringBuilder
 1  5 No URL for 
 1 7 8 9 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 1 ; <  toString
 / >  ? (Ljava/lang/Object;)V
 A B C D  java/io/ObjectOutputStream defaultWriteObject
 F G H I  java/io/ObjectInputStream defaultReadObject K )Should always have a non-null fsname here
 M N O P Q "org/openide/filesystems/Repository 
getDefault &()Lorg/openide/filesystems/Repository;
 M S T U findFileSystem 8(Ljava/lang/String;)Lorg/openide/filesystems/FileSystem; W 'Should always have a non-null path here
  Y Z [ findResource 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; ] &Should always have a non-null URL here
 _ ` a b c !org/openide/filesystems/URLMapper findFileObject 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject; e java/io/FileNotFoundException g Could not restore: 
 1 i 8 j -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 d l  m (Ljava/lang/String;)V o Did not read  q &org/openide/filesystems/AbstractFolder
 s t u v w java/lang/Class desiredAssertionStatus ()Z y java/io/Serializable serialVersionUID J ConstantValue        '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/filesystems/AbstractFolder$Replace; MethodParameters writeObject (Ljava/io/ObjectOutputStream;)V oos Ljava/io/ObjectOutputStream; StackMapTable 
Exceptions  java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation 
readObject (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; fs $Lorg/openide/filesystems/FileSystem;   java/lang/ClassNotFoundException readResolve ()Ljava/lang/Object; <clinit> 
SourceFile AbstractFolder.java InnerClasses Replace 0    x   z {  |    }            "     ) *   - .           F     
*· *+µ ±          ä å 	æ        
       
                  §     T**´ ¶ ¶ µ **´ ¶ µ  **´ ¶ #µ '² + (*´ 'Ç !» /Y» 1Y· 34¶ 6*´  ¶ 6¶ :· =¿+¶ @±          ë ì í $î Oï Sð        T       T        û O                     [ s             +¶ E² + *´ Ç » /YJ· =¿¸ L*´ ¶ RM,Æ &² + *´  Ç » /YV· =¿*,*´  ¶ Xµ *´ Ç J² + *´ 'Ç » /Y\· =¿**´ '¸ ^µ *´ Ç !» dY» 1Y· 3f¶ 6*´ '¶ h¶ :· k¿±       2   ô õ ø &ú *û Aü Mÿ T k v } 	                    & v        ü % /                      g     0² + (*´ Ç !» /Y» 1Y· 3n¶ 6*´ '¶ h¶ :· =¿*´ °       
    +        0         +        4      p¶ r § ³ +±          Ý     @          
   p   