����   4 ;	      $org/openide/filesystems/StreamPool$2 val$fo (Lorg/openide/filesystems/AbstractFolder;
  	 
   java/io/OutputStream <init> ()V  2org/openide/filesystems/FileAlreadyLockedException
      &org/openide/filesystems/AbstractFolder getPath ()Ljava/lang/String;
     (Ljava/lang/String;)V
      "org/openide/filesystems/StreamPool 
access$100 J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/StreamPool;
     ! annotate (Ljava/lang/Exception;)V +(Lorg/openide/filesystems/AbstractFolder;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/StreamPool$2; MethodParameters write (I)V b I alreadyLockedEx 4Lorg/openide/filesystems/FileAlreadyLockedException; 
Exceptions 1 java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile StreamPool.java EnclosingMethod 8 9 createOutputStream A(Lorg/openide/filesystems/AbstractFolder;Z)Ljava/io/OutputStream; InnerClasses                "  #   4     
*+� *� �    $       w %       
 & '   (      ) *  #   b     � Y*� � � M*� � ,� ,�    $       z  {  | %         & '      + ,    - .  /     0 (    +   2     3    4    5 6     7 :   
        