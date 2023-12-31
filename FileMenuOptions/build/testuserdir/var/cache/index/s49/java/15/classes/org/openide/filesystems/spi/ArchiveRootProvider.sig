����   4 6  !org/openide/filesystems/URLMapper
     findURL 5(Lorg/openide/filesystems/FileObject;I)Ljava/net/URL;  	 
   /org/openide/filesystems/spi/ArchiveRootProvider isArchiveFile (Ljava/net/URL;Z)Z     isArchiveArtifact (Ljava/net/URL;)Z
       org/openide/filesystems/FileUtil getArchiveFile (Ljava/net/URL;)Ljava/net/URL;
     findFileObject 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject;
     getArchiveRoot  java/lang/Object MethodParameters url strict ((Lorg/openide/filesystems/FileObject;Z)Z Code LineNumberTable LocalVariableTable this 1Lorg/openide/filesystems/spi/ArchiveRootProvider; fo $Lorg/openide/filesystems/FileObject; Z Ljava/net/URL; StackMapTable / java/net/URL '(Lorg/openide/filesystems/FileObject;)Z J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject; rootURL 
archiveURL 
SourceFile ArchiveRootProvider.java               	 !   "     #  $   s     +� N-� � *-�  �    %   
    7  8 &   *     ' (      ) *     " +    ! ,  -   
 �  .G     	 )   "           !     0  $   h     +� M,� � 
*,�  �    %   
    J  K &         ' (      ) *    ! ,  -   
 �  .F      )           !     1  $   l     +� M,� �,� � �    %       e  f 
 g  i &         ' (      ) *    2 ,  -    �  .      )           !     1  $   l     +� M,� �,� � �    %         � 
 �  � &         ' (      ) *    3 ,  -    �  .      )    4    5