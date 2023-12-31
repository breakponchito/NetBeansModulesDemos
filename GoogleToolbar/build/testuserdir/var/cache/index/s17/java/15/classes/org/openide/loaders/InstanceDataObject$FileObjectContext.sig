����   4 �  &org/openide/loaders/InstanceDataObject
      "org/openide/filesystems/FileObject <init> ()V	 
     8org/openide/loaders/InstanceDataObject$FileObjectContext parent $Lorg/openide/filesystems/FileObject;	 
    name Ljava/lang/String;  settings
     getFileObject J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;	 
    fo  'java/lang/UnsupportedOperationException  �The Restricted FileObject implementation allowing to get just read-only informations about name and location. It should prevent any manipulation with file or its content.
  !  " (Ljava/lang/String;)V
  $ % & getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 ( ) * + , org/openide/util/Enumerations empty ()Ljava/util/Enumeration;
  . / , getAttributes
  1 2 3 getFileSystem &()Lorg/openide/filesystems/FileSystem;
  5 6 7 getSize ()J
  9 : ; 
isReadOnly ()Z
  = > ; isValid
  @ A B lastModified ()Ljava/util/Date; UNSUPPORTED ConstantValue 9(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this :Lorg/openide/loaders/InstanceDataObject$FileObjectContext; MethodParameters addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V fcl ,Lorg/openide/filesystems/FileChangeListener; 
createData ext 
Exceptions T java/io/IOException createFolder 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; delete %(Lorg/openide/filesystems/FileLock;)V lock "Lorg/openide/filesystems/FileLock; attrName StackMapTable ^ java/lang/Object ` java/util/Enumeration 	Signature -()Ljava/util/Enumeration<Ljava/lang/String;>; getChildren '()[Lorg/openide/filesystems/FileObject; getExt ()Ljava/lang/String; h 1org/openide/filesystems/FileStateInvalidException getInputStream ()Ljava/io/InputStream; l java/io/FileNotFoundException getName getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream; 	getParent &()Lorg/openide/filesystems/FileObject; isData isFolder isRoot v java/util/Date $()Lorg/openide/filesystems/FileLock; removeFileChangeListener rename I(Lorg/openide/filesystems/FileLock;Ljava/lang/String;Ljava/lang/String;)V setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V value Ljava/lang/Object; setImportant (Z)V b Z 
SourceFile InstanceDataObject.java InnerClasses FileObjectContext 0 
      C   D                       E  F   h     *� *+� 	*,� *+,� � �    G        	 	 
 H         I J               K   	        L M  F   >     
� Y�  �    G       H       
 I J     
 N O  K    N    P   F   H     
� Y�  �    G       H        
 I J     
      
 Q   R     S K   	    Q    U V  F   >     
� Y�  �    G       H       
 I J     
    R     S K        W X  F   >     
� Y�  �    G       H       
 I J     
 Y Z  R     S K    Y    % &  F   U     *� � � *� +� #�    G       H        I J      [   \    G ] K    [    / ,  F   L     *� � 	� '� 
*� � -�    G      ! H        I J   \    F _ a    b  c d  F   /     � �    G      % H        I J    e f  F   -     �    G      ) H        I J       F   @     �    G      - H         I J            Q   K   	    Q    2 3  F   2     *� 	� 0�    G      1 H        I J   R     g  i j  F   4     
� Y�  �    G      5 H       
 I J   R     k  m f  F   /     *� �    G      9 H        I J    n o  F   >     
� Y�  �    G      = H       
 I J     
 Y Z  R     S K    Y    p q  F   /     *� 	�    G      A H        I J    6 7  F   H     *� � 	� 
*� � 4�    G      E H        I J   \    F  r ;  F   ,     �    G      I H        I J    s ;  F   ,     �    G      M H        I J    : ;  F   2     *� 	� 8�    G      Q H        I J    t ;  F   ,     �    G      U H        I J    > ;  F   H     *� � � 
*� � <�    G      Y H        I J   \    F  A B  F   P     *� � *� 	� ?� 
*� � ?�    G      ] H        I J   \    F u  Y w  F   4     
� Y�  �    G      a H       
 I J   R     S  x M  F   >     
� Y�  �    G      e H       
 I J     
 N O  K    N    y z  F   R     
� Y�  �    G      i H   *    
 I J     
 Y Z    
      
 Q   R     S K    Y      Q    { |  F   H     
� Y�  �    G      m H        
 I J     
 [     
 } ~  R     S K   	 [   }     �  F   >     
� Y�  �    G      q H       
 I J     
 � �  K    �    �    � �   
  
  � 