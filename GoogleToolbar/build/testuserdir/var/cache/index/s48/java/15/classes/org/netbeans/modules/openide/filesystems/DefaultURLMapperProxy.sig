����   4 8	      >org/netbeans/modules/openide/filesystems/DefaultURLMapperProxy $assertionsDisabled Z	   	 
 DEFAULT #Lorg/openide/filesystems/URLMapper;  java/lang/AssertionError
     <init> ()V
    !org/openide/filesystems/URLMapper
     getURL 5(Lorg/openide/filesystems/FileObject;I)Ljava/net/URL;
     getFileObjects 5(Ljava/net/URL;)[Lorg/openide/filesystems/FileObject;
      ! java/lang/Class desiredAssertionStatus ()Z 
setDefault &(Lorg/openide/filesystems/URLMapper;)V Code LineNumberTable LocalVariableTable m StackMapTable MethodParameters this @Lorg/netbeans/modules/openide/filesystems/DefaultURLMapperProxy; fo $Lorg/openide/filesystems/FileObject; type I url Ljava/net/URL; <clinit> 
SourceFile DefaultURLMapperProxy.java #org.netbeans.SourceLevelAnnotations )Lorg/openide/util/lookup/ServiceProvider; service 1      
 	 
        	 " #  $   k     +� � � � � Y� �� � *� � Y� �*� �    %       $  % & & * ' &       + ' 
   (     )    '       $   /     *� �    %       , &        * +       $   h     � � � � � Y� �� +� �    %   
    /  0 &         * +      , -     . /  (     )   	 ,   .       $   ]     � � � � � Y� �� +� �    %   
    4  5 &        * +      0 1  (     )    0    2   $   4      � � � � �    %        (    @  3    4 5     6  7c 
