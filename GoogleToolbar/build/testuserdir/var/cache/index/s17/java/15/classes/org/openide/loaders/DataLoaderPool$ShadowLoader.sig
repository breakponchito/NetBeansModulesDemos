����   4 s  org.openide.loaders.DataShadow
      !org/openide/loaders/UniFileLoader <init> (Ljava/lang/String;)V 
 "org/openide/loaders/DataLoaderPool  LBL_shadow_loader_display_name
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
      "org/openide/filesystems/FileObject isData ()Z  org/openide/loaders/DataShadow  shadow
      hasExt (Ljava/lang/String;)Z " org/openide/loaders/FileEntry
 ! $  % L(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)V
  ' ( ) deserialize F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject;
  +  , l(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiFileLoader;)V . java/io/IOException 0 $org/openide/loaders/BrokenDataShadow
 / 2  3 L(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiFileLoader;)V 5 'org/openide/loaders/ShadowChangeAdapter
 4 7  8 ()V	 : ; < = > /org/openide/loaders/DataLoaderPool$ShadowLoader changeAdapter )Lorg/openide/loaders/ShadowChangeAdapter; serialVersionUID J ConstantValue���]�=а Code LineNumberTable LocalVariableTable this 1Lorg/openide/loaders/DataLoaderPool$ShadowLoader; defaultDisplayName ()Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; findPrimaryFile J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject; fo $Lorg/openide/filesystems/FileObject; StackMapTable MethodParameters createPrimaryEntry v(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject$Entry; obj %Lorg/openide/loaders/MultiDataObject; primaryFile createMultiObject K(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject; d  Lorg/openide/loaders/DataObject; 
Exceptions ^ -org/openide/loaders/DataObjectExistsException writeExternal (Ljava/io/ObjectOutput;)V oo Ljava/io/ObjectOutput; readExternal (Ljava/io/ObjectInput;)V oi Ljava/io/ObjectInput; h  java/lang/ClassNotFoundException <clinit> 
SourceFile DataLoaderPool.java InnerClasses ShadowLoader o )org/openide/loaders/MultiDataObject$Entry q #org/openide/loaders/MultiDataObject Entry 0 :      ? @  A    B 
 = >      8  D   5     *� �    E   
   � � F        G H    I J  D   2     	� �    E      � F        G H   K     L    M N  D   Y     +� � +� � +��    E      � � � F        G H      O P  Q     R    O   K     L    S T  D   H     
� !Y+,� #�    E      � F        
 G H     
 U V    
 W P  R   	 U   W   K     L    X Y  D   �     "+� &M,� � Y+,*� *�� M� /Y+*� 1�      -  E        	   F        Z [    " G H     " W P  Q    B -  \     ] - R    W    _ `  D   5      �    E       F        G H      a b  \     - R    a   K     L    c d  D   5      �    E       F        G H      e f  \     - g R    e   K     L    i 8  D   #      � 4Y� 6� 9�    E      �  j    k l     : 	 m  n p r