����   4 1
      java/lang/Object <init> ()V
  	 
    org/openide/filesystems/FileUtil createMemoryFileSystem &()Lorg/openide/filesystems/FileSystem;
      "org/openide/filesystems/FileSystem getRoot &()Lorg/openide/filesystems/FileObject;	      org/openide/util/Lookup EMPTY Lorg/openide/util/Lookup;  UNOWNED  )org/netbeans/api/project/FileOwnerQuery$2   org/netbeans/api/project/Project Code LineNumberTable LocalVariableTable this +Lorg/netbeans/api/project/FileOwnerQuery$2; getProjectDirectory #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	getLookup ()Lorg/openide/util/Lookup; toString ()Ljava/lang/String; 
SourceFile FileOwnerQuery.java EnclosingMethod / 'org/netbeans/api/project/FileOwnerQuery InnerClasses                  /     *� �            � !        " #    $      1     � � �            � !        " #   %     &    ' (     .     � �            � !        " #   %     &    ) *     -     �            � !        " #   %     &    +    , -    .   0   
        