����   4 Z  %org.openide.loaders.DefaultDataObject
      #org/openide/loaders/MultiFileLoader <init> (Ljava/lang/String;)V 
 Loaders/content/unknown/Actions  "org/openide/loaders/DataLoaderPool  LBL_default_loader_display_name
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
      "org/openide/filesystems/FileObject isFolder ()Z  %org/openide/loaders/DefaultDataObject
     L(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiFileLoader;)V ! org/openide/loaders/FileEntry
   #  $ L(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)V & 'java/lang/UnsupportedOperationException
 % (  ) ()V + 0org/openide/loaders/DataLoaderPool$DefaultLoader serialVersionUID J ConstantValue�(�d��E� Code LineNumberTable LocalVariableTable this 2Lorg/openide/loaders/DataLoaderPool$DefaultLoader; actionsContext ()Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; defaultDisplayName findPrimaryFile J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject; fo $Lorg/openide/filesystems/FileObject; StackMapTable MethodParameters createMultiObject K(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject; primaryFile 
Exceptions F -org/openide/loaders/DataObjectExistsException H java/io/IOException createPrimaryEntry v(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject$Entry; obj %Lorg/openide/loaders/MultiDataObject; createSecondaryEntry secondaryFile 
checkFiles ((Lorg/openide/loaders/MultiDataObject;)V 
SourceFile DataLoaderPool.java InnerClasses DefaultLoader V )org/openide/loaders/MultiDataObject$Entry X #org/openide/loaders/MultiDataObject Entry 0 *      , -  .    /    )  1   5     *� �    2   
   � � 3        4 5    6 7  1   -     	�    2      � 3        4 5   8     9    : 7  1   2     � �    2      � 3        4 5   8     9    ; <  1   L     +� � �+�    2   
   � 	� 3        4 5      = >  ?    	 @    =    A B  1   >     
� Y+*� �    2      � 3       
 4 5     
 C >  D     E G @    C    I J  1   H     
�  Y+,� "�    2      � 3        
 4 5     
 K L    
 C >  @   	 K   C    M J  1   F     � %Y� '�    2      � 3         4 5      K L     N >  @   	 K   N     O P  1   5      �    2      � 3        4 5      K L  @    K   8     9    Q    R S     *  T  U W Y