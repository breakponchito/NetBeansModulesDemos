����   4 8
      java/lang/Object <init> ()V	  	 
   .org/openide/filesystems/FileObject$OnlyFolders folders Z
      "org/openide/filesystems/FileObject isFolder ()Z
     isData
     process `(Lorg/openide/filesystems/FileObject;Ljava/util/Collection;)Lorg/openide/filesystems/FileObject;  'org/openide/util/Enumerations$Processor (Z)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/filesystems/FileObject$OnlyFolders; MethodParameters obj $Lorg/openide/filesystems/FileObject; coll Ljava/util/Collection; fo LocalVariableTypeTable <Ljava/util/Collection<Lorg/openide/filesystems/FileObject;>; StackMapTable 	Signature �(Lorg/openide/filesystems/FileObject;Ljava/util/Collection<Lorg/openide/filesystems/FileObject;>;)Lorg/openide/filesystems/FileObject; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object; �Ljava/lang/Object;Lorg/openide/util/Enumerations$Processor<Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;>; 
SourceFile FileObject.java InnerClasses OnlyFolders 6 org/openide/util/Enumerations 	Processor 0                   F     
*� *� �          � � 	�        
   !     
    "              �     #+N*� � -� � -� �-� � -� �          � � 	� �    *    #   !     # # $    # % &   ! ' $  (       # % )  *    �  @  
@  "   	 #   %   +    , -     .  A  /     4     
*+� ,� �          �        
   !   "   	 #  %  -     .    +    0 1    2 3       4   5 7	