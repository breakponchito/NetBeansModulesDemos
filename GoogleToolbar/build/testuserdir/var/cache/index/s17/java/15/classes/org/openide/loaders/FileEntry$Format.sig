����   4 t
      org/openide/loaders/FileEntry <init> L(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)V
  	 
   $org/openide/loaders/FileEntry$Format getFile &()Lorg/openide/filesystems/FileObject;
      "org/openide/filesystems/FileObject getExt ()Ljava/lang/String;
     getName
       org/openide/filesystems/FileUtil findFreeFileName \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
     createFormat \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format; ! &org/netbeans/api/templates/FileBuilder
   #  $ K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V
   & ' ( name <(Ljava/lang/String;)Lorg/netbeans/api/templates/FileBuilder;
 * + , - . +org/openide/loaders/DataObject$CreateAction getCallParameters #(Ljava/lang/String;)Ljava/util/Map;
   0 1 2 withParameters 9(Ljava/util/Map;)Lorg/netbeans/api/templates/FileBuilder;
   4 5 6 	useFormat <(Ljava/text/Format;)Lorg/netbeans/api/templates/FileBuilder;
   8 9 : build ()Ljava/util/List; < = > ? @ java/util/List get (I)Ljava/lang/Object;
 B C D E F org/openide/loaders/DataObject setTemplate ((Lorg/openide/filesystems/FileObject;Z)Z serialVersionUID J ConstantValue{w��:�- Code LineNumberTable LocalVariableTable this &Lorg/openide/loaders/FileEntry$Format; obj %Lorg/openide/loaders/MultiDataObject; fo $Lorg/openide/filesystems/FileObject; MethodParameters createFromTemplate \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; f Ljava/lang/String; ext frm Ljava/text/Format; fos Ljava/util/List; LocalVariableTypeTable 6Ljava/util/List<Lorg/openide/filesystems/FileObject;>; StackMapTable c java/lang/String 
Exceptions f java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; Ljava/lang/SuppressWarnings; value AssignmentToMethodParameter target n e 
SourceFile FileEntry.java InnerClasses Format CreateAction!       G H  I    J      L   I     *+,� �    M   
    �  � N         O P      Q R     S T  U   	 Q   S    V W  L       Z*� � N,� +*� � -� M*+,-� :�  Y*� +� ",� %,� )� /� 3� 7:� ; � :� AW�    M   2    �  �  �  �  �  � " � 3 � ; � C � P � W � N   H    Z O P     Z X T    Z ' Y   R Z Y  " 8 [ \  C  ] ^  P 
 S T  _     C  ] `  a    �  b d     e U   	 X   '   g     h   i  j[ s k    U    l   m   n    o    p q       r	 * B s 