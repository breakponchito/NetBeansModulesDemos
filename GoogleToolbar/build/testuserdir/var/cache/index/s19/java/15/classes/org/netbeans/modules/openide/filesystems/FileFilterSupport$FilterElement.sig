����   4 =
      Horg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement <init> ()V
   	 java/lang/Object  dorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ExtensionBasedFilterElement
 
    (Ljava/lang/String;)V  _org/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$NameBasedFilterElement
     )(Ljava/lang/String;Ljava/lang/String;ZZ)V Code LineNumberTable LocalVariableTable this JLorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement; getName ()Ljava/lang/String; accept (Ljava/io/File;)Z MethodParameters f compare �(Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;)Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult; e createForExtension ^(Ljava/lang/String;)Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement; ext Ljava/lang/String; createForFileName r(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement; name 	extension 	substring Z 
ignoreCase A(Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$1;)V x0 >Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$1; 
SourceFile FileFilterSupport.java InnerClasses 4 :org/netbeans/modules/openide/filesystems/FileFilterSupport FilterElement ExtensionBasedFilterElement NameBasedFilterElement 9 Yorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult ComparisonResult < <org/netbeans/modules/openide/filesystems/FileFilterSupport$1                /     *� �                                             !   	 " #     3     	� 
Y*� �          '        	 $ %       $   	 & '     T     � Y*+� �          ,    *     ( %      ) %     * +     , +      (   )   *   ,     -     9     *� �                          . /   0    1 2   *   3 5
 
  6 
   7 
 8  :@ ;      