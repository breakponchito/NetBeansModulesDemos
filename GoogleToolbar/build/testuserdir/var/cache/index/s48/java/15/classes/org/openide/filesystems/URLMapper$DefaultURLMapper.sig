����   4k
      2org/openide/filesystems/URLMapper$DefaultURLMapper toFile (Ljava/net/URL;)Ljava/io/File;
  	 
   !org/openide/filesystems/URLMapper <init> ()V
      java/net/URL getProtocol ()Ljava/lang/String;  org/openide/filesystems/FileURL  nbfs
      java/lang/String equals (Ljava/lang/Object;)Z
      	decodeURL 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject; " "org/openide/filesystems/FileObject $ jar
  & ' ( getFileObjectsForJarProtocol 5(Ljava/net/URL;)[Lorg/openide/filesystems/FileObject; * file
  , - . findFileObjectsInRepository 5(Ljava/io/File;)[Lorg/openide/filesystems/FileObject;
 0 1 2 3 4  org/openide/filesystems/FileUtil normalizeFile (Ljava/io/File;)Ljava/io/File;
 6  7 java/io/File 9 "java/lang/IllegalArgumentException ; java/lang/StringBuilder
 : 	 > 'Parameter file was not normalized. Was 
 : @ A B append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 : D A E -(Ljava/lang/Object;)Ljava/lang/StringBuilder; G  instead of 
 : I J  toString
 8 L  M (Ljava/lang/String;)V
 O P Q R S "org/openide/filesystems/Repository 
getDefault &()Lorg/openide/filesystems/Repository;
 O U V W getFileSystems ()Ljava/util/Enumeration; Y java/util/LinkedList
 X 	
 6 \ ]  getAbsolutePath _ ` a b c java/util/Enumeration hasMoreElements ()Z _ e f g nextElement ()Ljava/lang/Object; i "org/openide/filesystems/FileSystem
 h k l m getRoot &()Lorg/openide/filesystems/FileObject;
  o p q findFileInRepository 4(Lorg/openide/filesystems/FileObject;)Ljava/io/File; s FileSystem.rootPath
 ! u v w getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
  y z { indexOf (Ljava/lang/String;)I
  } ~  length ()I
  � � � 	substring (I)Ljava/lang/String;	 6 � � � separatorChar C
  � � � replace (CC)Ljava/lang/String;
 h � � � findResource 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 � � � � � java/lang/Object getClass ()Ljava/lang/Class;
 � I � java/lang/Class � .org.netbeans.modules.masterfs.MasterFileObject
 X � � � addFirst (Ljava/lang/Object;)V
 X � � � addLast
 X � �  size
 X � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � 'org/openide/filesystems/MultiFileObject
  � � � toURL B(Ljava/io/File;Lorg/openide/filesystems/FileObject;)Ljava/net/URL; � java/net/MalformedURLException	  � � � $assertionsDisabled Z � java/lang/AssertionError
 � �  �
 ! � � � getFileSystem &()Lorg/openide/filesystems/FileSystem; � 1org/openide/filesystems/FileStateInvalidException � %org/openide/filesystems/JarFileSystem
 � � � � 
getJarFile ()Ljava/io/File; � __EXCLAMATION_REPLACEMENT__ � jar:
 ! � �  getPath
 6 �  � #(Ljava/io/File;Ljava/lang/String;)V
 � � � � � org/openide/util/BaseUtilities toURI (Ljava/io/File;)Ljava/net/URI;
 � I � java/net/URI � / � !/
  � � � replaceFirst 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 ! � � c isFolder
 ! � � c isRoot �  
  L
 � � �  printStackTrace � %org/openide/filesystems/XMLFileSystem
 � � � � getURL "(Ljava/lang/String;)Ljava/net/URL; � nbres
  � � � 
startsWith (Ljava/lang/String;)Z � java/io/FileNotFoundException
 � � � � ()Ljava/net/URL;
  � �  toExternalForm
  � endsWith java.io.File ?org/openide/filesystems/URLMapper$DefaultURLMapper$JarURLParser
 	 (Ljava/net/URL;)V
 �
  getEntryName
  findJarFileSystem 7(Ljava/io/File;)Lorg/openide/filesystems/JarFileSystem;
 � � java/lang/NullPointerException
 	
 � L
 �  (Ljava/net/URI;)Ljava/io/File; java/net/URISyntaxException
 � c desiredAssertionStatus Code LineNumberTable LocalVariableTable this 4Lorg/openide/filesystems/URLMapper$DefaultURLMapper; getFileObjects retVal $Lorg/openide/filesystems/FileObject; foRes %[Lorg/openide/filesystems/FileObject; f Ljava/io/File; url Ljava/net/URL; prot Ljava/lang/String; StackMapTable( MethodParameters rootPath Ljava/lang/Object; res fo file2Fo fs $Lorg/openide/filesystems/FileSystem; rootName fsRoot root en Ljava/util/Enumeration; list Ljava/util/LinkedList; fileName results LocalVariableTypeTable >Ljava/util/Enumeration<+Lorg/openide/filesystems/FileSystem;>; <Ljava/util/LinkedList<Lorg/openide/filesystems/FileObject;>; 5(Lorg/openide/filesystems/FileObject;I)Ljava/net/URL; mfx  Ljava/net/MalformedURLException; fsex 3Lorg/openide/filesystems/FileStateInvalidException; 	toReplace jfs 'Lorg/openide/filesystems/JarFileSystem; 
isInternal fnx Ljava/io/FileNotFoundException; type I fFile retURL urlDef pathSeparator 
Exceptions jarUrlParser ALorg/openide/filesystems/URLMapper$DefaultURLMapper$JarURLParser; 	entryName 	fsJarFile jarFile uri Ljava/net/URI; use Ljava/net/URISyntaxException; iae $Ljava/lang/IllegalArgumentException; u 
access$100 x0 <clinit> 
SourceFile URLMapper.java InnerClasses DefaultURLMapper JarURLParser        � �           3     *� �       
    !       "#   $ (        [+� M,� � +� N-� � � !Y-S�,#� � +� %�,)� � !+� N-� *-� +:� �� ��       6   
    $ - 2 ; @ D K V  Y%!   >   %&  K '(  @ )*    ["#     [+,   V-. /    �   !G0�  &1   +    - .   �    ++� /� 5� *� 8Y� :Y� <=� ?+� CF� ?+� /� C� H� K�� N� TM� XY� ZN+� [:,� ^ � �,� d � h::� j:� n:� r� t:		� ���	� :� 
� [:� x� c� |� �� �/� �:		� �:

� 
� n� :
� 1� ,+� 5� #
� �� ��� x� -
� �� 	-
� ���H-� �� !:-� �W�       v   ) * %, 21 92 A3 G5 P6 [7 ^8 e9 l; q< z> �? �E �F �J �K �L �M �O �P �Q �S �WYZ\!   �  z 23 	 � L4. 	 � C5& 
 � 36*  [ �78  ^ �9.  e �:&  l �;*   "#    )*  9 �<=  A �>?  G �@.  
A( B     9 �<C  A �>D /   \ 	2�  _ X � A 	  6 _ X  h  ! 6  � 3  !@ 6� . 6�    6 _ X   1   )    �E   �  	  :+� �� �+� �� 	� �+� nN-� -+� ��:� �� � �Y� ���::+� �:� :�� �� �� �:� �:� ��:� Y� :Y� <Ƕ ?� 6Y� :Y� <� ?+� ɶ ?� H� ̸ ϶ ջ :Y� <ض ?� ?� Hڶ ܶ ?+� �� +� � ا � ?� H� �:� :� ��� I� � A:� �+� ɶ �:� �� �� � �6� � ��:��  # ( ) � C I L � m � � � �3 �3 �03 �123 �     � -  a b e f i l o q #s )t +u ;w ={ @| C I� L� N� P� X� _� f� k� m� q� �� �� �� �� �� �� �� �� ��
�����$�.�1�3�5�7�!   �  + FG  N HI  q qJ.  � FG  _ �KL  f �)* $ M � 5 NO  � ;%,   :"#    :5&   :PQ  R*  @ �S,  C �78 /   � �    ! 6  ��  �� �    ! 6  h  ��  � 6� g 	  ! 6  h � 6   q q :�  	  ! 6  h � 6   q q : �    ! 6  h � 6  �� �  � �    ! 6  h   �� 1   	5  P   
 � �    �     B*� ϶ �M,� 7+� �� 0,� �N�:-ض � � Y� :Y� <-� ?ض ?� H� �M,�          � � � � � %� @�!   4   (T.   $U.    BR*     B5&   :%, /    � @ V     �1   	R  5   
 p q    b     *� t� 6L+� 
+� /� �       
   � �!       5&    )* /    �  6@ 61   5   
 ' (    �     GL�Y*�M,�
N,�:-� -�:� � �:�L+� � � !Y+S�       .   � � � � � �  � %� *� .� 6�!   >    7L    G+,    E%&   <WX   7 **   1Y. /   # � .   ! 6  �  � G01   +   
    �     BL� N� TM,� ^ � 1,� d � hN-� �� -� �� �:*� 5� -� �L� ���+�       .   � � 	� � � #� ,� 5� :� =� @�!   4  , Z*   !78    B[*    @%L  	 9<= B     	 9<C /    � 	 � _31   [   
      �     &*� �Y��� �Y*� ��L+�� /�L�L�        # 8     "   � � � �  � !� #� $!   *   \]  ! ^_  $ `a    &b,  /    SB 81   b  c     /     *� �          !       d,   e     4      �� � � ��          /    @ f   gh      i 
 j 
