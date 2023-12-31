����   4�
      4org/openide/filesystems/MIMESupport$CachedFileObject getResolvers )()[Lorg/openide/filesystems/MIMEResolver;
  	 
   "org/openide/filesystems/FileObject <init> ()V	     fileObj $Lorg/openide/filesystems/FileObject;
     
freeCaches	     	resolvers Lorg/openide/util/Union2;
      org/openide/util/Union2 hasFirst ()Z
     ! first ()Ljava/lang/Object; # '[Lorg/openide/filesystems/MIMEResolver;
  % & ! second ( java/util/Set
 * + , - . java/lang/Thread currentThread ()Ljava/lang/Thread; ' 0 1 2 contains (Ljava/lang/Object;)Z
 4 5 6 7 8 #org/openide/filesystems/MIMESupport 
access$100 ()Ljava/util/logging/Logger;	 : ; < = > java/util/logging/Level FINE Ljava/util/logging/Level;
 @ A B C D java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z F java/lang/StringBuilder
 E 	 I 8Stack Overflow prevention. Returning previousResolvers: 
 E K L M append -(Ljava/lang/String;)Ljava/lang/StringBuilder;	  O P # previousResolvers
 E R L S -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 E U V W toString ()Ljava/lang/String;
 @ Y Z [ fine (Ljava/lang/String;)V ] $org/openide/filesystems/MIMEResolver _ java/util/HashSet
 ^ 	
  b c d createSecond -(Ljava/lang/Object;)Lorg/openide/util/Union2;	  f g h result  Lorg/openide/util/Lookup$Result;
 j k l m n org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
 j p q r lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result; t 6org/openide/filesystems/MIMESupport$CachedFileObject$1
 s 	
 w x y z { org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V ' } ~ 2 add � Computing resolvers � java/util/ArrayList
  � � � declarativeResolvers ()Ljava/util/List;
 � �  � (Ljava/util/Collection;)V
 w � � � allInstances ()Ljava/util/Collection; � � � � � java/util/List addAll (Ljava/util/Collection;)Z � � � � size ()I � � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � Resolvers computed
  � �  	hasSecond
  � � d createFirst � Resolvers assigned � "Somebody else computes resolvers:  � Clearing cache
 4 � � ! 
access$200
 4 � � � 
access$300 ()Ljava/lang/ref/Reference;
 � � � � ! java/lang/ref/Reference get
  � �  clear
 4 � � � 
access$400
 4 � � � 
access$302 4(Ljava/lang/ref/Reference;)Ljava/lang/ref/Reference;
 � 		  � �  declarativeFolder � Services/MIMEResolver
 � � � � �  org/openide/filesystems/FileUtil getConfigFile 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  � � � getChildren '()[Lorg/openide/filesystems/FileObject;
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 � � � � �  org/openide/filesystems/Ordering getOrder )(Ljava/util/Collection;Z)Ljava/util/List; � � � � iterator ()Ljava/util/Iterator; � � � �  java/util/Iterator hasNext � � � ! next � xml
  � � � hasExt (Ljava/lang/String;)Z
 � � � � � Borg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl forDescriptor L(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/MIMEResolver; � } � java/io/IOException
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V	  � �  weakDeclarativeFolderListener ,Lorg/openide/filesystems/FileChangeListener;
  removeFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V
  addFileChangeListener	 	
 fixIt 7Lorg/openide/filesystems/MIMESupport$CachedInputStream;	  mimeType Ljava/lang/String;	  lastModified Ljava/util/Date;	  ext [Ljava/lang/String;
  getMIMEType '([Ljava/lang/String;)Ljava/lang/String;
  resolveMIME
 !" W getExt
$%&' � java/lang/String equalsIgnoreCase) text/xml+ content/unknown
 �-./ isDeclarative )(Lorg/openide/filesystems/MIMEResolver;)Z
 �123 getMIMETypes ;(Lorg/openide/filesystems/MIMEResolver;)[Ljava/lang/String;
 \526 ()[Ljava/lang/String;	 89: warningPrinted Ljava/util/Set;
<=>?@ java/lang/Object getClass ()Ljava/lang/Class;
BCDE W java/lang/Class getNameG O's constructor should call super(String...) with list of resolvable MIME types.
 @IJ [ warning
$LM 2 equals
 OPQ canResolveMIMETypes <(Lorg/openide/filesystems/MIMEResolver;[Ljava/lang/String;)Z
 \STU findMIMEType 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;
WXYZ  5org/openide/filesystems/MIMESupport$CachedInputStream internalClose
 \] ()Ljava/util/Date;_ java/util/logging/LogRecorda MSG_CACHED_INPUT_STREAM
^c d .(Ljava/util/logging/Level;Ljava/lang/String;)V
^fgh setParameters ([Ljava/lang/Object;)V
jklmn org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle;
^pqr setResourceBundle (Ljava/util/ResourceBundle;)V
 @tuv log  (Ljava/util/logging/LogRecord;)V
 xyz getInputStream ()Ljava/io/InputStream;
W| } <(Ljava/io/InputStream;Lorg/openide/filesystems/FileObject;)V
W�  cacheToStart
 ��� 	getParent &()Lorg/openide/filesystems/FileObject;
 ��� getPackageNameExt (CC)Ljava/lang/String;
 ��� copy n(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 ��� fireFileDeletedEvent =(Ljava/util/Enumeration;Lorg/openide/filesystems/FileEvent;)V
 ��� fireFileFolderCreatedEvent
 ��� setImportant (Z)V
 ��  isData
 ��� getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 ��� 
getFolders (Z)Ljava/util/Enumeration;
 ��� delete %(Lorg/openide/filesystems/FileLock;)V
 ��  isRoot
 ��� getData
 �� W 
getNameExt
 ��  isValid
 ��  
isReadOnly
 ��  canRead
 ��  canWrite
 !
 C
 ��� fireFileRenamedEvent C(Ljava/util/Enumeration;Lorg/openide/filesystems/FileRenameEvent;)V
 ��� refresh
 ��� fireFileAttributeChangedEvent F(Ljava/util/Enumeration;Lorg/openide/filesystems/FileAttributeEvent;)V	 � �� Ljava/lang/Long;
����� java/lang/Long 	longValue ()J
 ��� getSize
���� valueOf (J)Ljava/lang/Long;
 ��� getAttributes ()Ljava/util/Enumeration;
 ��� rename I(Lorg/openide/filesystems/FileLock;Ljava/lang/String;Ljava/lang/String;)V
 ��� fireFileChangedEvent
 ��� getFileObject J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 �� 
 ��� 
createData
 ��� fireFileDataCreatedEvent
 ��  isFolder
 �� � createFolder
 � ��
 ��� setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V
 ��� getPackageName (C)Ljava/lang/String;
  getFileSystem &()Lorg/openide/filesystems/FileSystem;
  getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream;
 	
 � 	existsExt
  move �(Lorg/openide/filesystems/FileLock;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
   isLocked
  lock $()Lorg/openide/filesystems/FileLock;
< � hashCode
<L
  W getPath 6org/openide/filesystems/MIMESupport$CachedFileObject$2
 		 !"  declarativeFolderListener
 �$%& weakFileChangeListener l(Lorg/openide/filesystems/FileChangeListener;Ljava/lang/Object;)Lorg/openide/filesystems/FileChangeListener; 	Signature HLorg/openide/util/Lookup$Result<Lorg/openide/filesystems/MIMEResolver;>; eLorg/openide/util/Union2<[Lorg/openide/filesystems/MIMEResolver;Ljava/util/Set<Ljava/lang/Thread;>;>; #Ljava/util/Set<Ljava/lang/String;>; '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this 6Lorg/openide/filesystems/MIMESupport$CachedFileObject; fo MethodParameters toRet creators all Ljava/util/List; LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/Thread;>; 8Ljava/util/List<Lorg/openide/filesystems/MIMEResolver;>; StackMapTable< java/lang/Throwable 
resetCache cfo prev ex Ljava/io/IOException; f 	declmimes :()Ljava/util/List<Lorg/openide/filesystems/MIMEResolver;>; isAnyResolver #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; withinMIMETypes resolvedMimeType j I i resolver &Lorg/openide/filesystems/MIMEResolver; desiredMIMETypes resolvableMIMETypes retVal local rec Ljava/util/logging/LogRecord; is Ljava/io/InputStream; 
ExceptionsY java/io/FileNotFoundException separatorChar C 
extSepChar 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; target name en Ljava/util/Enumeration; fe #Lorg/openide/filesystems/FileEvent; ELjava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>; k(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileEvent;)V b Z attrName A(Z)Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>; "Lorg/openide/filesystems/FileLock; fcl )Lorg/openide/filesystems/FileRenameEvent; q(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileRenameEvent;)V expected ,Lorg/openide/filesystems/FileAttributeEvent; t(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileAttributeEvent;)V -()Ljava/util/Enumeration<Ljava/lang/String;>; value Ljava/lang/Object;w 1org/openide/filesystems/FileStateInvalidException fileFolderCreated &(Lorg/openide/filesystems/FileEvent;)V fileDataCreated fileAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V obj 
access$000 <clinit> 
SourceFile MIMESupport.java InnerClasses CachedFileObject Result CachedInputStream         g h '   ( 
   '   ) 
 P #   9: '   *           ��    
            "     �    
 �    A   + ,   F     
*� *+� �   -       �  � 	 �.       
/0     
1  2   1    �  ,   3     *� �   -   
    �  �.       /0   
   ,  �    VYL² � � � � � � � "+ð� � Q� � $� 'K*� )� / � J� 3� 9� ?� � 3� EY� GH� J� N� Q� T� X� NM,� � \M,+ð� ^Y� `K*� a� � e� � i\� o� e� e� sY� u� v*� )� | W+ç N+�-�� 3� X� �Y� �� �L+� e� �� � W++� � � \� � � "M� 3�� XYN² � ,� � �� #� � $*� ,� �� � N� 3�� X� *� 3� 9� ?� � 3� EY� G�� J� � Q� T� X,-ð:-��    �     s �   t � �   � � �   �NO  OSO   -   ~    �  �  �   � & � 0 � < � c � g � k � p � t � | � � � � � � � � � � � � � � � � � � � � � � � � � � � �$ �K �O �.   >  g 3 #  0 D4:   | 44:   � �4:   � �56  � n3 # 7   *  0 D48   | 448   � �48   � �59 :   ^ �   <� B  '<  �  "�   <  �   '<  �   < ;�   '  � n � "<&C; (=  ,   �     O� 3�� X� K*� *� � *� � "� N� � �YL¸ �� �� M,� ,� �� �� �W+ç N+�-��  + F I   I L I   -   2    �  �  �  � ! � % � + � 5 � 9 � = � D � N �.     5 >0   C?   7      C?)  :   $ � ! � < �   < ;�  * � � ,  /     u� �Y� �K� �� ĸ Ƴ �� �� Z� �� ̸ �� ֹ � L+� � � ,+� � � M,� � *,� � � W� N-� ���Ѳ �� ��� �� ��*�  K V Y � -   :    �  �  �  �  � B � K  V Y Z ^ a j s	.      Z @A  B B    mC6  7      mC9  :   ( �  ��  �� )  � �   �� � '   D 	E  ,   0      � �� � �   -      :    @    ,   O     *�*�*�*��   -        
  .       /0    W ,   3     	*���   -      .       	/0  F    G   � ,   �     9*�M,� 1*+�M,� *� �#� 
(M� *M� +�� *,�,�   -   * 
    	   " # && -( 2* 7-.        9/0     9H   4I :   
 � &$	2   H   �PQ ,  J     �,�� �N+�,� +�0N� +�4N-� -�� 7�7+�;�A� | � #� 3� EY� G+�;�A� JF� J� T�H�6,�� )6-�� -2,2�K� ���������   -   F   9 : < 	= > @ B &C 8D XF ZH dI nJ |K ~I �H �O.   >  g JK  ] -LK    �/0     �MN    �O  	 �P :    � 1� � 	� � 2   	M  O   � ,  �     zM� N6-�� =-2:*+�N� 
*�RM,� ,:*�� 
*��V*������*�� 
*��V*�� :*�� 
*��V*��,�   . `   D J `   ` b `   -   Z   S T W X Y  Z '\ +] .a 5b <e A] DW Ja Qb Xe ]f `a ib pe uf xg.   >   .MN  	 ALK    z/0     zH   xQ   tR # :   O 	� 	$ "�  \� $� � G;�   $ "   ;  �   $ "  2   H   ] ,   R     *�� **� �[�*��   -      k l n.       /0  :     yz ,   �     a*�� Q� 3� 9� ?� -�^Y� 9`�bL+�<Y*S�e+4�i�o� 3+�s*� �wL*�WY+*� �{�*��~*��   -   * 
  r s t !u -v 6w =y E{ U~ \�.      ! ST  E UV    a/0  :    =W    X �� ,   2     *� ���   -      �.       /0   �� ,   H     
*� ���   -      �.        
/0     
Z[    
\[ 2   	Z  \  ]    ^    _  F    G   �� ,   S     *� +,-���   -      �.   *    /0     `     a     W     �2   `  a    F    G   �� ,   ^     
*� +,���   -   
   � 	�.        
/0     
bc    
de 7       
bf 2   	b  d  '   gF    G   �� ,   ^     
*� +,���   -   
   � 	�.        
/0     
bc    
de 7       
bf 2   	b  d  '   gF    G   �� ,   A     	*� ���   -   
   � �.       	/0     	hi 2   h  ]    ^    _   �  ,   2     *� ���   -      �.       /0   �� ,   =     	*� +���   -      �.       	/0     	j 2   j   �� ,   =     	*� ���   -      �.       	/0     	Si 2   S  '   kF    G   �� ,   A     	*� +���   -   
   � �.       	/0     	l W     �2      �  ,   2     *� ���   -      �.       /0   �� ,   =     	*� ���   -      �.       	/0     	Si 2   S  '   kF    G    � � ,   2     *� � ̰   -      �.       /0   � W ,   2     *� ���   -      �.       /0  F    G   �  ,   2     *� ���   -      �.       /0   �  ,   2     *� ���   -      �.       /0  ]    ^    _   �  ,   2     *� ���   -      �.       /0  F    G   �  ,   2     *� ���   -      �.       /0  F    G   " W ,   R     *�� **� ���*��   -      � � �.       /0  :     E W ,   2     *� ���   -      �.       /0    ,   A     	*� +��   -   
   � �.       	/0     	m  2   m   �� ,   ^     
*� +,���   -   
   � 	�.        
/0     
bc    
dn 7       
bf 2   	b  d  '   oF    G   �� ,   A     	*� �±   -   
   � �.       	/0     	pi 2   p  F    G   �� ,   ^     
*� +,�ű   -   
   � 	�.        
/0     
bc    
dq 7       
bf 2   	b  d  '   rF    G   �� ,   ]     "*��� *�ɶ̭**� �Ҹ�Z�ɶ̭   -      � � �.       "/0  :     �� ,   2     *� �ٰ   -       .       /0  '   s �� ,   W     *� +,-�ݱ   -   
    
.   *    /0     l    a     W     �2     a     �� ,   ^     
*� +,��   -   
   
 	.        
/0     
bc    
de 7       
bf 2   	b  d  '   gF    G   �� ,   H     
*� +,��   -      .        
/0     
a    
 2   	a     �  ,   6     *� ��   -   
    .       /0  F    G   �� ,   H     
*� +,��   -      .        
/0     
a    
 W     �2   	a      ,   A     	*� +��   -   
    .       	/0     	m  2   m   �� ,   ^     
*� +,���   -   
   ! 	".        
/0     
bc    
de 7       
bf 2   	b  d  '   gF    G   �  ,   2     *� ��   -      %.       /0   � � ,   =     	*� +��   -      ).       	/0     	a W     �2   a    �� ,   =     	*� ���   -      ..       	/0     	Si 2   S  '   kF    G   �� ,   L     
*� +,���   -   
   3 	4.        
/0     
j    
tu W     �2   	j  t   �� ,   =     	*� ���   -      9.       	/0     	Z[ 2   Z  ]    ^    _  F    G    ,   2     *� � �   -      =.       /0  W    v  ,   =     	*� +��   -      B.       	/0     	l W     �2      
 � ,   =     	*� +��   -      G.       	/0     	 2     F    G    ,   _     *� +,-��   -      M.   4    /0     l    `     a     W     �2     `  a    F    G   !  ,   2     *� ��   -      R.       /0  F    G    ,   2     *� ��   -      V.       /0  W     � xy ,   5      �   -      Z.       /0     de 2   d   zy ,   5      �   -      ].       /0     de 2   d   {| ,   5      �   -      `.       /0     dq 2   d    � ,   2     *� ��   -      f.       /0  F    G   M 2 ,   a     +� � +� � *� ��*+��   -      k l o.       /0     }u :    2   }  F    G    W ,   2     *� ��   -      t.       /0  F    G  ~  ,         � �   -       �   ,   G      #� ^Y� `�7�Y�� � �#� �� ��   -       � 
 �  �  � �   ��   *   4� 
 w j�	 s      W 4� 
      