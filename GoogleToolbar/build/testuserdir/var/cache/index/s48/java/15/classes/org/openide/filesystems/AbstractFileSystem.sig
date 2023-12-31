����   4
      "org/openide/filesystems/FileSystem <init> ()V
  	 
   *org/openide/filesystems/AbstractFileSystem getAbstractRoot .()Lorg/openide/filesystems/AbstractFileObject;
      *org/openide/filesystems/AbstractFileObject existingSubFiles (Z)Ljava/util/Enumeration;
      org/openide/util/NbCollections iterable -(Ljava/util/Enumeration;)Ljava/lang/Iterable;      java/lang/Iterable iterator ()Ljava/util/Iterator;   ! " # $ java/util/Iterator hasNext ()Z   & ' ( next ()Ljava/lang/Object; * "org/openide/filesystems/FileObject
 ) , - . refresh (Z)V
 0 1 2 3 4 java/lang/String length ()I	  6 7 8 lastEnum &Lorg/openide/filesystems/PathElements;
 : ; < = > $org/openide/filesystems/PathElements getOriginalName ()Ljava/lang/String;
 0 @ A B equals (Ljava/lang/Object;)Z
 : D  E (Ljava/lang/String;)V
 : G H I getEnumeration ()Ljava/util/Enumeration;
  K L M find =(Ljava/util/Enumeration;)Lorg/openide/filesystems/FileObject; O java/lang/ref/WeakReference
 N Q  R (Ljava/lang/Object;)V T java/util/StringTokenizer V /
 S X  Y '(Ljava/lang/String;Ljava/lang/String;)V
  [ \ ] checkedEnumerationByFilter B(Ljava/util/Enumeration;Ljava/lang/Class;Z)Ljava/util/Enumeration;
  _ ` a findRefIfExists 2(Ljava/util/Enumeration;)Ljava/lang/ref/Reference;	  c d e 	refresher (Lorg/openide/filesystems/RefreshRequest;
 g h i j  &org/openide/filesystems/RefreshRequest stop l netbeans.debug.heap
 n o p q r java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
 g t  u 0(Lorg/openide/filesystems/AbstractFileSystem;I)V
 g w x 4 getRefreshTime	  z { | root ,Lorg/openide/filesystems/AbstractFileObject;	  ~  � 	validFlag Z �  
  � � � createFileObject l(Lorg/openide/filesystems/AbstractFileObject;Ljava/lang/String;)Lorg/openide/filesystems/AbstractFileObject;
  � �  refreshRootImpl
  � � � findResourceIfExists 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  � - � )(Ljava/lang/String;Ljava/lang/String;ZZ)V � &org/openide/filesystems/AbstractFolder
  � � � existingFileObjects A(Lorg/openide/filesystems/AbstractFolder;)Ljava/util/Enumeration;
 � � � � � org/openide/util/Enumerations 	singleton +(Ljava/lang/Object;)Ljava/util/Enumeration; � <org/openide/filesystems/AbstractFileSystem$1OnlyValidAndDeep
 � �  � /(Lorg/openide/filesystems/AbstractFileSystem;)V
 � � � � queue Y(Ljava/util/Enumeration;Lorg/openide/util/Enumerations$Processor;)Ljava/util/Enumeration;
 � � � � removeNulls 0(Ljava/util/Enumeration;)Ljava/util/Enumeration;
  � � M findIfExists
  �  � m(Lorg/openide/filesystems/AbstractFileSystem;Lorg/openide/filesystems/AbstractFileObject;Ljava/lang/String;)V
 � � � � � java/io/ObjectOutputStream 	putFields '()Ljava/io/ObjectOutputStream$PutField; � change	  � � � 3Lorg/openide/filesystems/AbstractFileSystem$Change;
 � � � � � #java/io/ObjectOutputStream$PutField put '(Ljava/lang/String;Ljava/lang/Object;)V � info	  � � � 1Lorg/openide/filesystems/AbstractFileSystem$Info; � attr	  � � � 1Lorg/openide/filesystems/AbstractFileSystem$Attr; � list	  � � � 1Lorg/openide/filesystems/AbstractFileSystem$List; � transfer	  � � � 5Lorg/openide/filesystems/AbstractFileSystem$Transfer;
 � � �  writeFields
  w
 � � � � writeInt (I)V
 � � � � � java/io/ObjectInputStream 
readFields &()Ljava/io/ObjectInputStream$GetField;
  � � � readImpl J(Ljava/lang/String;Ljava/io/ObjectInputStream$GetField;)Ljava/lang/Object; � 1org/openide/filesystems/AbstractFileSystem$Change � /org/openide/filesystems/AbstractFileSystem$Info � /org/openide/filesystems/AbstractFileSystem$Attr � /org/openide/filesystems/AbstractFileSystem$List � 3org/openide/filesystems/AbstractFileSystem$Transfer
 � � � 4 readInt
  � � � setRefreshTime
 � � � � � "java/io/ObjectInputStream$GetField get 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � 'org/openide/filesystems/LocalFileSystem  ,org/openide/filesystems/LocalFileSystem$Impl
 �  ,(Lorg/openide/filesystems/LocalFileSystem;)V %org/openide/filesystems/JarFileSystem *org/openide/filesystems/JarFileSystem$Impl
	 
 *(Lorg/openide/filesystems/JarFileSystem;)V
  � findResource
  $ superCanWrite
  $ superCanRead � E markUnimportant serialVersionUID J ConstantValueѓ����� Code LineNumberTable LocalVariableTable this ,Lorg/openide/filesystems/AbstractFileSystem; fo $Lorg/openide/filesystems/FileObject; expected StackMapTable MethodParameters getDisplayName getRoot &()Lorg/openide/filesystems/FileObject; name Ljava/lang/String; local createReference ?(Lorg/openide/filesystems/FileObject;)Ljava/lang/ref/Reference; LocalVariableTypeTable TT; 	Signature K<T:Lorg/openide/filesystems/FileObject;>(TT;)Ljava/lang/ref/Reference<TT;>; findReference -(Ljava/lang/String;)Ljava/lang/ref/Reference; tok Ljava/util/Enumeration; resourceName +Ljava/util/Enumeration<Ljava/lang/String;>; T(Ljava/lang/String;)Ljava/lang/ref/Reference<+Lorg/openide/filesystems/FileObject;>; isEnabledRefreshFolder ms I r refreshRoot refreshResource (Ljava/lang/String;Z)V =(Lorg/openide/filesystems/FileObject;)Ljava/util/Enumeration; d(Lorg/openide/filesystems/FileObject;)Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>; (Lorg/openide/filesystems/AbstractFolder; ref Ljava/lang/ref/Reference; singleEn CLjava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>; \Ljava/util/Enumeration<Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>;>; h(Lorg/openide/filesystems/AbstractFolder;)Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>; isLastModifiedCacheEnabled parentL java/lang/ObjectN java/lang/Throwable writeObject (Ljava/io/ObjectOutputStream;)V oos Ljava/io/ObjectOutputStream; fields %Ljava/io/ObjectOutputStream$PutField; 
ExceptionsW java/io/IOException 
readObject (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; $Ljava/io/ObjectInputStream$GetField; o1 Ljava/lang/Object; o2 o3 o4 o5d  java/lang/ClassNotFoundException o checkVirtual (Ljava/lang/String;)Z canWrite afo canRead markImportant 	important 
SourceFile AbstractFileSystem.java InnerClasses OnlyValidAndDeepr 'org/openide/util/Enumerations$Processor 	Processor PutField Change Info Attr List Transfer GetField Impl} 6org/openide/filesystems/AbstractFileSystem$SymlinkInfo SymlinkInfo!     	      � 7 8   � { |   � d e    � �    � �    � �    � �    � �          /     *� �          `            - .    �     -*� � � �  M,�  � ,� % � )N-� +���          � $ � ) � , �      $ !"    -      -# � $    �   � %   #  & >   '(    /     *� �          �            �    �     8+� /� *� �� 5M,� ,� 9+� ?� � :Y+� CM,� 5*� ,� F� J�          �  �  �  �  � ( � , �        8      8)*   (+ 8 $   
 �  :%   )   ,-    O     	� NY+� P�          �       	      	!" .       	!/ %   !  0   1 23    �     #+� /� �� SY+U� W0� ZM*� ,� ^�          �  � 	 �  �       	45    #      #6* .      	47 $    	%   6  0   8  9 $    B     *� b� � �          �          $    @ 4 � �    �     0*� b� 
*� b� f� k� m� *� b� *� gY*� s� b�          �  �  �  � " � / �       0      0:; $    %   :    x 4    Z     *� bL+� � +� v�      
    �  �            < e $   
 �  gC 0 �     ^     *� y� *� y� }**�� �� y*� y�          �  �  �  �          $     =(    /     *� ��                    >?    x     *+� �� N-� -� ��          	     *          )*    # �  	 ! | $    �  %   	)  #    �@    =     	*+� �� ��                	      	!" %   !  0   A  � �    �     � NY+� PM,� �N-� �Y*� �� �� ��         4 	5 6 7 6   *          !B  	 CD   E5 .     	 CF   EG %   !  0   H  I $    ,     �         @            � �    �     &+� /� *� �� SY+U� W0� ZM*� ,� ��         N O Q S       	45    &      &)* .      	47 $    %   )     � �    I     � Y*+,� ��         ^              J |    )* %   	J  )         �     !*YL�*� y� 
*� �+ð+ç M+�,�*� y�                       e f g i k       !   $    � KDM�  OP    �     D+� �M,�*� �� �,�*� ö �,�*� ȶ �,�*� Ͷ �,�*� Ҷ �+� �+*� ض ٱ      & 	  q s t u #v -w 7x ;z C{        D      DQR   ?ST U    V%   Q   XY        a+� �M�,� �N�,� �:�,� �:�,� �:�,� �:*-� � �*� � �*� � �*� �� �*� � �*+� � ��      6   � � � � � $� ,� 4� =� F� O� X� `�   R    a      aZ[   \S\   U]^   M_^   E`^  $ =a^  , 5b^ U    Vc%   Z    � �    �     /+*� �M,� �� � �Y,� ���,�� �Y,���,�         � � � � !� -�        /)*     /S\   (e^ $   	 � KU    cV%   	)  S   fg    6     �         �             )* %   )   hg    h     *+�� M,� 
,�� �      
   � 	�              )*  	 i | $   
 �  @%   )   jg    h     *+�� M,� 
,�� �      
   � 	�              )*  	 i | $   
 �  @%   )   k?    e     � *� �� *� �+� �         � � �              )*    l � $    %   	)  l   m   no   b  �  p  q �s	 � �t	 � u	 � v	 � w	 � x	 � y	 � �z	 � �{ 	{ 	| ~	