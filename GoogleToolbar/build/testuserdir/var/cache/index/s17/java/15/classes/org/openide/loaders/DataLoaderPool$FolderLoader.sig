����   4 h  org.openide.loaders.DataFolder
      !org/openide/loaders/UniFileLoader <init> (Ljava/lang/String;)V 
 Loaders/folder/any/Actions  "org/openide/loaders/DataLoaderPool  LBL_folder_loader_display_name
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
      "org/openide/filesystems/FileObject isFolder ()Z  $org/openide/loaders/FileEntry$Folder
     L(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)V ! org/openide/loaders/DataFolder
   #  $ L(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiFileLoader;)V & Forg/openide/loaders/DataLoaderPool$FolderLoader$1NodeSharingDataFolder
 % (  ) x(Lorg/openide/loaders/DataLoaderPool$FolderLoader;Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataFolder;)V
  + , - readExternal (Ljava/io/ObjectInput;)V / java/io/OptionalDataException 1 /org/openide/loaders/DataLoaderPool$FolderLoader serialVersionUID J ConstantValue�u�D��! ()V Code LineNumberTable LocalVariableTable this 1Lorg/openide/loaders/DataLoaderPool$FolderLoader; actionsContext ()Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; defaultDisplayName findPrimaryFile J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject; fo $Lorg/openide/filesystems/FileObject; StackMapTable MethodParameters createPrimaryEntry v(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject$Entry; obj %Lorg/openide/loaders/MultiDataObject; primaryFile createMultiObject K(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject; 
Exceptions Q -org/openide/loaders/DataObjectExistsException S java/io/IOException k(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/MultiDataObject; original  Lorg/openide/loaders/DataFolder; oi Ljava/io/ObjectInput; Z  java/lang/ClassNotFoundException 
SourceFile DataLoaderPool.java InnerClasses _ org/openide/loaders/FileEntry Folder FolderLoader NodeSharingDataFolder d )org/openide/loaders/MultiDataObject$Entry f #org/openide/loaders/MultiDataObject Entry 0 0      2 3  4    5    7  8   5     *� �    9   
     :        ; <    = >  8   -     	�    9      " :        ; <   ?     @    A >  8   2     � �    9      * :        ; <   ?     @    B C  8   P     +� � +��    9      / 0 	2 :        ; <      D E  F    	 G    D   ?     @    H I  8   H     
� Y+,� �    9      7 :        
 ; <     
 J K    
 L E  G   	 J   L   ?     @    M N  8   >     
�  Y+*� "�    9      ; :       
 ; <     
 L E  O     P R G    L     M T  8   I     � %Y*+,� '�    9      U :         ; <      L E     U V  O     P R G   	 L   U   , -  8   _     
*+� *� M�      .  9      [ ^ \ 	_ :       
 ; <     
 W X  F    H .  O     R Y G    W   ?     @    [    \ ]   "   ^ `  0  a  %   b   c e g