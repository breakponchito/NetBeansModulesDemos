����   4 Y  !org.openide.loaders.XMLDataObject
      #org/openide/loaders/MultiFileLoader <init> (Ljava/lang/String;)V 
 Loaders/text/xml/Actions  !org/openide/loaders/XMLDataObject  PROP_XmlLoader_Name
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
      "org/openide/filesystems/FileObject getMIMEType ()Ljava/lang/String;  /xml
     ! " java/lang/String endsWith (Ljava/lang/String;)Z $ +xml
  &  ' L(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiFileLoader;)V ) org/openide/loaders/FileEntry
 ( +  , L(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)V . (org/openide/loaders/XMLDataObject$Loader serialVersionUID J ConstantValue6_��8ej ()V Code LineNumberTable LocalVariableTable this *Lorg/openide/loaders/XMLDataObject$Loader; actionsContext defaultDisplayName findPrimaryFile J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject; fo $Lorg/openide/filesystems/FileObject; mime Ljava/lang/String; StackMapTable MethodParameters createMultiObject K(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject; primaryFile 
Exceptions I -org/openide/loaders/DataObjectExistsException createPrimaryEntry v(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject$Entry; obj %Lorg/openide/loaders/MultiDataObject; createSecondaryEntry secondaryFile 
SourceFile XMLDataObject.java InnerClasses Loader U )org/openide/loaders/MultiDataObject$Entry W #org/openide/loaders/MultiDataObject Entry 0 -      / 0  1    2    4  5   5     *� �    6   
   � � 7        8 9    :   5   -     	�    6      � 7        8 9    ;   5   2     � �    6      � 7        8 9    < =  5   t     +� M,� � ,#� � +��    6      � � � � 7         8 9      > ?    @ A  B   	 �   C    >    D E  5   >     
� Y+*� %�    6      � 7       
 8 9     
 F ?  G     H C    F    J K  5   H     
� (Y+,� *�    6        7        
 8 9     
 L M    
 F ?  C   	 L   F    N K  5   H     
� (Y+,� *�    6       7        
 8 9     
 L M    
 O ?  C   	 L   O    P    Q R     -  S  T V X