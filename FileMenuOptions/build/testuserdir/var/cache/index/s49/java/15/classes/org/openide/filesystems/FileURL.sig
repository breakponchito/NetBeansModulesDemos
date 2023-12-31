����   4 �
      java/net/URLConnection <init> (Ljava/net/URL;)V	  	 
   org/openide/filesystems/FileURL iStream Ljava/io/InputStream;	     oStream Ljava/io/OutputStream;
       org/openide/filesystems/NbfsUtil getURL 4(Lorg/openide/filesystems/FileObject;)Ljava/net/URL;
     getFileObject 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject;	     fo $Lorg/openide/filesystems/FileObject;	    ! " url Ljava/net/URL;
  $ %  	decodeURL ' java/io/FileNotFoundException ) java/lang/StringBuilder
 ( +  , ()V . Cannot find: 
 ( 0 1 2 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ( 4 1 5 -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 ( 7 8 9 toString ()Ljava/lang/String;
 & ;  < (Ljava/lang/String;)V
  > ? , connect
 A B C D E "org/openide/filesystems/FileObject isFolder ()Z G #org/openide/filesystems/FileURL$FIS
 F I  J '(Lorg/openide/filesystems/FileObject;)V
 A L M N getInputStream ()Ljava/io/InputStream;
 P Q R S T $org/openide/filesystems/ExternalUtil 	exception (Ljava/lang/Exception;)V V  java/net/UnknownServiceException
 U +
 A Y Z [ lock $()Lorg/openide/filesystems/FileLock; ] &org/openide/filesystems/FileURL$LockOS
 A _ ` a getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream;
 \ c  d ;(Ljava/io/OutputStream;Lorg/openide/filesystems/FileLock;)V
 A f g h getSize ()J j java/io/IOException l content-type
 n o p q r java/lang/String equalsIgnoreCase (Ljava/lang/String;)Z t 	text/html
 A v w 9 getMIMEType
  y z { getHeaderField &(Ljava/lang/String;)Ljava/lang/String; } last-modified
 A  � � lastModified ()Ljava/util/Date;
 � � � � h java/util/Date getTime
  � � � getHeaderFieldDate (Ljava/lang/String;J)J
 � � � � �  org/openide/filesystems/FileUtil toFile 4(Lorg/openide/filesystems/FileObject;)Ljava/io/File; � java/io/FilePermission
 � � � � 9 java/io/File getAbsolutePath � read
 � �  � '(Ljava/lang/String;Ljava/lang/String;)V
 A � � � getFileSystem &()Lorg/openide/filesystems/FileSystem; � %org/openide/filesystems/JarFileSystem
 � � � � 
getJarFile ()Ljava/io/File; � 1org/openide/filesystems/FileStateInvalidException � <<ALL FILES>> PROTOCOL Ljava/lang/String; ConstantValue � nbfs Code LineNumberTable LocalVariableTable this !Lorg/openide/filesystems/FileURL; u MethodParameters encodeFileObject StackMapTable 
Exceptions e Ljava/io/FileNotFoundException; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/io/OutputStream; flock "Lorg/openide/filesystems/FileLock; getContentLength ()I ex Ljava/io/IOException; name Default J getPermission ()Ljava/security/Permission; fs $Lorg/openide/filesystems/FileSystem; f Ljava/io/File; 
SourceFile FileURL.java InnerClasses FIS LockOS � 'org/openide/filesystems/FileURL$Handler Handler         � �  �    �                  
     �   P     *+� *� *� �    �       G  : 
 =  H �        � �      � "  �    �   	 �   �   /     *� �    �       O �            �       	 %   �   /     *� �    �       W �        � "   �    �    ? ,  �   �     9*� � �**� � #� *� � !� &Y� (Y� *-� /*� � 3� 6� :��    �       ]  ^  a  c  d 8 f �       9 � �   �    / �     i  M N  �   �     A*� =*� � 4*� � @� *� FY*� � H� � **� � K� � 
L+� O+�*� �   2 5 &  �   * 
   m  o  q  r ' t 2 y 5 v 6 w : x < | �     6  � �    A � �   �   	 '
B & �     i U �     �    ` �  �   �     >*� =*� � @� � UY� W�*� � *� � XL*� \Y*� +� ^+� b� *� �    �       �  �  �  �  � % � 9 � �     %  � �    > � �   �    " �     i U �     �    � �  �   d     *� =*� � e��L�      i  �       �  �  �  � �       � �     � �   �    M i �     �    z {  �   �     )+k� m� *� =*� � @� s�*� � u�M*+� x�  	  " i  ! " i  �       � 	 �  �  �  � " � # � �       ) � �     ) � �  �    G i  �    �   �     �    � �  �   �     !+|� m� *� =*� � ~� ��:*+ � ��  	   i  �       � 	 �  �  �  � �        ! � �     ! � �    ! � �  �    X i �   	 �   �   �     �    � �  �   �     T*� � D*� � �L+� � �Y+� ��� ��*� � �M,� �� � �Y,� �� �� ��� ��� M� �Y��� ��  ! C G �  �   * 
   �  �  �  � ! � ) � 0 � D � G � H � �      )  � �   9 � �    T � �   �    � ! �"B ��   �     i �     �    �    � �     F  �  \  � 
 �  � 	