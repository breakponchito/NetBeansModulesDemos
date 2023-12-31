����   4 �
      "org/openide/filesystems/FileObject <init> ()V
  	 
   java/lang/String lastIndexOf (I)I
     length ()I
     	substring (I)Ljava/lang/String;	      2org/openide/filesystems/AbstractFileObject$Invalid name Ljava/lang/String;
     (Ljava/lang/String;)V	      fileSystemName
  "  # (II)Ljava/lang/String; %   ' 1org/openide/filesystems/FileStateInvalidException ) java/lang/StringBuilder
 ( 
 ( , - . append -(Ljava/lang/String;)Ljava/lang/StringBuilder; 0 [ 2 ]
 ( 4 5 6 toString ()Ljava/lang/String;
 & 8  9 '(Ljava/lang/String;Ljava/lang/String;)V	  ; < = ROOT 4Lorg/openide/filesystems/AbstractFileObject$Invalid; ? java/util/Date
 >  B content/unknown D java/io/FileNotFoundException
 C  G java/io/IOException
 F 
 J K L M N org/openide/util/Enumerations empty ()Ljava/util/Enumeration; serialVersionUID J ConstantValue��/��$a Code LineNumberTable LocalVariableTable this i I StackMapTable MethodParameters fs getName getExt getFileSystem &()Lorg/openide/filesystems/FileSystem; 
Exceptions isRoot ()Z isFolder lastModified ()Ljava/util/Date; isData 
isReadOnly 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; isValid getMIMEType getSize ()J getInputStream ()Ljava/io/InputStream; getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream; lock "Lorg/openide/filesystems/FileLock; $()Lorg/openide/filesystems/FileLock; setImportant (Z)V b Z getAttribute &(Ljava/lang/String;)Ljava/lang/Object; attrName setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V value Ljava/lang/Object; getAttributes 	Signature -()Ljava/util/Enumeration<Ljava/lang/String;>; createFolder 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; 
createData J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; ext rename I(Lorg/openide/filesystems/FileLock;Ljava/lang/String;Ljava/lang/String;)V delete %(Lorg/openide/filesystems/FileLock;)V 	getParent &()Lorg/openide/filesystems/FileObject; getChildren '()[Lorg/openide/filesystems/FileObject; getFileObject refresh addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V fcl ,Lorg/openide/filesystems/FileChangeListener; removeFileChangeListener <clinit> 
SourceFile AbstractFileObject.java InnerClasses � *org/openide/filesystems/AbstractFileObject Invalid 0       O P  Q    R  < =                   T   �     '*� +/� `=*� +� � +� +� � �    U      � � � &� V        ' W =     '      X Y  Z   + �      C �        [         9  T   Q     *,� *+� �    U      � � 
� V         W =      \         [   	 \       ] 6  T   g     *� .� <� 
*� � *� � !�    U   
   � 
� V        W =   
  X Y  Z   
 � H   ^ 6  T   s     **� .� `<� *� � � $� *� � �    U   
   � � V       * W =     X Y  Z    � G   _ `  T   U     +� &Y� (Y� **� � +/� +*� � +1� +� 3� 7�    U      � V       + W =   a     &  b c  T   B     *� :� � �    U      � V        W =   Z    @  d c  T   B     *� :� � �    U      � V        W =   Z    @  e f  T   2     � >Y� @�    U      � V        W =    g c  T   ,     �    U        V        W =    h c  T   ,     �    U       V        W =   i     j     k    l c  T   ,     �    U       V        W =    m 6  T   -     A�    U       V        W =    n o  T   ,     	�    U      " V        W =    p q  T   2     � CY� E�    U      * V        W =   a     C ! r s  T   <     � FY� H�    U      5 V        W =      t u  a     F [    t   ! t v  T   2     � FY� H�    U      = V        W =   a     F  w x  T   5      �    U      B V        W =      y z  [    y   i     j     k    { |  T   6     �    U      I V        W =      }   [    }    ~   T   F     � FY� H�    U      S V         W =      }      � �  a     F [   	 }   �    � N  T   .     � I�    U      Z V        W =   �    � ! � �  T   <     � FY� H�    U      f V        W =         a     F [       ! � �  T   F     � FY� H�    U      t V         W =            �   a     F [   	    �    � �  T   P     � FY� H�    U      � V   *     W =      t u           �   a     F [    t      �    � �  T   <     � FY� H�    U      � V        W =      t u  a     F [    t    � �  T   F     *� :� � � :�    U      � V        W =   Z    B  ! � �  T   /     � �    U      � V        W =   ! � �  T   @     �    U      � V         W =            �   [   	    �    �   T   +      �    U      � V        W =    � �  T   5      �    U      � V        W =      � �  [    �    � �  T   5      �    U      � V        W =      � �  [    �    �   T   %      � Y$� � :�    U      �  �    � �   
   � � 