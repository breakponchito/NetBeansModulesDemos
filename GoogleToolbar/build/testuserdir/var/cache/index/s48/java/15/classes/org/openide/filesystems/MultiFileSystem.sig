����   4�  "org/openide/filesystems/FileSystem
      'org/openide/filesystems/MultiFileSystem <init> (([Lorg/openide/filesystems/FileSystem;)V
  
   ()V	     propagateMasks Z  )org/openide/filesystems/MultiFileSystem$1
     ,(Lorg/openide/filesystems/MultiFileSystem;)V	     insideWritableLayer Ljava/lang/ThreadLocal;
      %[Lorg/openide/filesystems/FileSystem; clone ()Ljava/lang/Object;	    !  systems
  # $ % getMultiRoot +()Lorg/openide/filesystems/MultiFileObject;
 ' ( ) * + 'org/openide/filesystems/MultiFileObject existingSubFiles (Z)Ljava/util/Enumeration; - . / 0 1 java/util/Enumeration hasMoreElements ()Z - 3 4  nextElement 6 "org/openide/filesystems/FileObject
 5 8 9 : refresh (Z)V
 < = > ? @ java/util/Arrays equals )([Ljava/lang/Object;[Ljava/lang/Object;)Z
 ' B C  freeAllAttribCaches	  E F G rootAttributes Ljava/util/Set;
 ' I J  updateAllAfterSetDelegates
 < L M N asList %([Ljava/lang/Object;)Ljava/util/List; P java/util/HashSet
 O R  S (Ljava/util/Collection;)V U V W X Y java/util/Set 	removeAll (Ljava/util/Collection;)Z U [ \ ] iterator ()Ljava/util/Iterator; _ ` a b 1 java/util/Iterator hasNext _ d e  next
  g h  removeNotify
  j k  	addNotify
  m n 1 
isReadOnly p CTL_MultiFileSystem
 r s t u v org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;	  x y z root )Lorg/openide/filesystems/MultiFileObject;
 '  } java/util/StringTokenizer  .
 | �  � '(Ljava/lang/String;Ljava/lang/String;)V � java/lang/String
 � � � � � org/openide/util/NbCollections checkedEnumerationByFilter B(Ljava/util/Enumeration;Ljava/lang/Class;Z)Ljava/util/Enumeration; � java/lang/StringBuilder
 � 

 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � (C)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 � � � � � org/openide/util/Enumerations 	singleton +(Ljava/lang/Object;)Ljava/util/Enumeration;
 � � � � concat G(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;
 ' � � � find =(Ljava/util/Enumeration;)Lorg/openide/filesystems/FileObject;
 � � � � length ()I � /
 ' � � � getLeaderFileSystem &()Lorg/openide/filesystems/FileSystem; � 1org/openide/filesystems/FileStateInvalidException � "java/lang/IllegalArgumentException
 5 � � � getPath
 � �  � (Ljava/lang/String;)V
  � � � createWritableOn 8(Ljava/lang/String;)Lorg/openide/filesystems/FileSystem;
  � � � maskFile 9(Lorg/openide/filesystems/FileSystem;Ljava/lang/String;)V
  � � � 
unmaskFile
 5 � � + getChildren � 3org/openide/filesystems/MultiFileSystem$1OnlyHidden
 � 

 � � � � filter Y(Ljava/util/Enumeration;Lorg/openide/util/Enumerations$Processor;)Ljava/util/Enumeration;
  � � � findResource 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  m � #org/openide/filesystems/FSException � 
EXC_FSisRO
  � � � getDisplayName
 r � u � I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
 � �
 � � � �  java/lang/ThreadLocal get � java/lang/Boolean
 � � � 1 booleanValue
 � � � � valueOf (Z)Ljava/lang/Boolean;
 � � � � set (Ljava/lang/Object;)V � java/io/IOException
 � � � � � java/util/Collections #(Ljava/lang/Object;)Ljava/util/Set;
 � � � � array ,([Ljava/lang/Object;)Ljava/util/Enumeration; � 2org/openide/filesystems/MultiFileSystem$1Resources
 �   >(Lorg/openide/filesystems/MultiFileSystem;Ljava/lang/String;)V
  getRoot &()Lorg/openide/filesystems/FileObject;
 	 findResourceOn \(Lorg/openide/filesystems/FileSystem;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; _hidden
  org/openide/filesystems/FileUtil 
createData \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 5 lock $()Lorg/openide/filesystems/FileLock;
 5 delete %(Lorg/openide/filesystems/FileLock;)V
   org/openide/filesystems/FileLock releaseLock
  !" getDelegates '()[Lorg/openide/filesystems/FileSystem;
 5$% � getExt
 �'() endsWith (Ljava/lang/String;)Z
 O 

 5,-. getAttributes ()Ljava/util/Enumeration; U012 add (Ljava/lang/Object;)Z
 �456 emptySet ()Ljava/util/Set; U892 contains serialVersionUID J ConstantValue�YPn x MASK Ljava/lang/String; WRITE_SYSTEM_INDEX I     	Signature #Ljava/util/Set<Ljava/lang/String;>; ,Ljava/lang/ThreadLocal<Ljava/lang/Boolean;>; Code LineNumberTable LocalVariableTable this )Lorg/openide/filesystems/MultiFileSystem; fileSystems MethodParameters fo $Lorg/openide/filesystems/FileObject; expected en Ljava/util/Enumeration; LocalVariableTypeTable ALjava/util/Enumeration<Lorg/openide/filesystems/AbstractFolder;>; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setDelegates fs $Lorg/openide/filesystems/FileSystem; 
oldSystems oldList Ljava/util/List; newList toRemove toAdd 6Ljava/util/List<Lorg/openide/filesystems/FileSystem;>; 5Ljava/util/Set<Lorg/openide/filesystems/FileSystem;>;d java/util/List getPropagateMasks setPropagateMasks pm retvalj java/lang/Objectl java/lang/Throwable \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; aPackage name ext st +Ljava/util/Enumeration<Ljava/lang/String;>; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; tok 
findSystem J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileSystem; mfo ex 3Lorg/openide/filesystems/FileStateInvalidException; 
Exceptions hideResource (Ljava/lang/String;Z)V res hide hiddenFiles >(Lorg/openide/filesystems/FileObject;Z)Ljava/util/Enumeration; folder rec allFiles >Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>; R(Lorg/openide/filesystems/FileObject;Z)Ljava/util/Enumeration<Ljava/lang/String;>; writableLayer path createWritableOnForRename J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileSystem; oldName newName createLocksOn #(Ljava/lang/String;)Ljava/util/Set; writable J(Ljava/lang/String;)Ljava/util/Set<+Lorg/openide/filesystems/FileSystem;>; notifyMigration '(Lorg/openide/filesystems/FileObject;)V markUnimportant i 	delegates +(Ljava/lang/String;)Ljava/util/Enumeration; =Ljava/util/Enumeration<Lorg/openide/filesystems/FileSystem;>; Q(Ljava/lang/String;)Ljava/util/Enumeration<Lorg/openide/filesystems/FileObject;>; where "Lorg/openide/filesystems/FileLock; unmaskFileOnAll fss 
isMaskFile '(Lorg/openide/filesystems/FileObject;)Z  canHaveRootAttributeOnReadOnlyFS tmp 
SourceFile MultiFileSystem.java InnerClasses 
OnlyHidden� 'org/openide/util/Enumerations$Processor 	Processor 	Resources !      :; <   = ?@ <   
 AB <   C  !         � y z   � F G D   E    D   F     G   7     	*� � �   H   
    �  �I       	JK   �   G   e     !*� 	*� *� Y*� � *+� � � �   H       �  | 	�  �   �I       !JK     !L  M   L    9 : G   �     %*� "� &M,� , � ,� 2 � 5N-� 7���   H       � 	 �  �  � ! � $ �I   *   NO    %JK     %P   	 QR S     	 QT U   	 � 	 -M   P  V    W   �X  G  �  	   �+*� � ;� �� A*� M*+� *� D*� ",� H,� KN*� � K:� OY-� Q:� T W� Z :� ^ � � c � :� � f��� OY� Q:-� T W� Z :� ^ � � c � :� � i���   H   Z    �  �  �  �  �  �  � & � + � 4 � > � H � g � l � q � t �  � � � � � � � � � � �I   \ 	 g 
YZ  � 
YZ    �JK     �L    �[   + �\]  4 �^]  > w_ G   6` G S   *  + �\a  4 �^a  > w_b   6`b U   0 � D    cc U _  � �  U _� M   L   !" G   /     *� �   H       �I       JK   e 1 G   /     *� �   H       �I       JK   f : G   >     *� �   H   
    �  �I       JK     g  M   g    n 1 G   Z     $*� �� *� 2� *� 2� l� � �   H       �I       $JK  U    @V    W    � � G   2     o� q�   H       �I       JK  V    W    G   /     *� "�   H       �I       JK  V    W    $ % G   �     LLYM�*� w� *� wL,ç N,�-�+� � 'Y*� {LYM�*� w� *+� w,ç 
:,��*� w�            / = @   @ D @   H   2    �  �  �  �  �  � ! � * � / � 6 � ; GI       LJK    Jh z U     �  'iDk� � iDk�   �m G   �     L� |Y+~� ��� �:,� -� 
:� $� �Y� �,� �.� �-� �� �� �� �:*� "� ��   H      	   ! BI   H   QR    LJK     Ln@    Lo@    Lp@   :qR  B 
QR S       Qr   :qr  B 
Qr U    �  -�   -M   n  o  p  s    t    u  V    W    � � G   �     &+� �� *� "�� |Y+�� ��� �M*� ",� ��   H      ! " $ %I       	vR    &JK     &o@ S      	vr U    M   o  V    W   wx G   �     #+� '� +� 'M,� ��� M*�� �Y+� �� ��      � H      8 9 ; A = @ CI   *   y z   z{    #JK     #NO U    B �|     �M   N   }~ G   p     � **+� �+� �� **+� �+� ñ   H      O Q S UI        JK     @    �  U    	|     �M   	  �   �� G   f     *� �M,� �Y� ˸ ̰   H   
   ` nI        �O     �    �R S      �� M   	�  �  D   � 	 G   D     +,� а   H      I        JK     YZ    @ M   	Y      � � G   f     !*� ԙ � �Y�*� ٸ ܷ ߿*� 2�   H      � � �I       !JK     !o@ U    |     �M   o    � � G   �     e*� � �� � � E*� Ԛ >*� � � �*+� �M*� � � �,�M*� � � � N*� � � �-�*� �� *� 2� �  " ( 5 � " ( D   H   .   � � "� (� 3� 5� 6� A� D� P� R�I       eJK     e�@ U    u �Nk@ M   �   �� G   D     *,� ��   H      �I        JK     �@    �@ |     �M   	�  �   �� G   M     *+� �M,� ��   H   
   � �I        JK     o@   �Z |     �M   o  D   � �� G   5      �   H      �I       JK     NO M   N   �� G   5      �   H      �I       JK     NO M   N    k  G   �     (*� i<*� �� *� 2� *� 2� i����   H      � � � � !� '�I      !�B    (JK  U   
 � � V    W    h  G   �     (*� f<*� �� *� 2� *� 2� f����   H      � � � � !� '�I      !�B    (JK  U   
 � � V    W    �� G   j     *� � �M,� �Y*+� �� ̰   H   
   � I        JK     o@   QR S      Q� M   o D   �   � � G   w     '*++�� ��N-� �Y� �,� �
� �� ��W�   H        &I   *    'JK     'YZ    '@   �O |     �M   	Y       � � G   �     =*+� �Y� �,� �
� �� ��N-� !-�:-��� :���  $ * 2   2 4 2   H   & 	     $  *" /# 2" 9# <%I   4  $ �    =JK     =YZ    =@   #NO U    � 2    � 5 k� 	|     �M   	Y      � � G   �     <*�N6-�� /-2� "-2� l� � *-2,� �-2+� ����б   H   & 	  . 0 1  2 #5 ,8 49 50 ;<I   4   3�B    <JK     <YZ    <@   7�  U    �  � |     �M   	Y     �� G   5     *�#
�&�   H      ?I       NO  M   N    �) G  ]     �*� DM,� j� OY�*M*�N-�66� O-2:� � ;� l� � 0��+:� , � ,� 2 � ��/ W���*,� D����,�3� �,+�7 �   H   B   C D 	E F *G /H 2J :K =M GN QO eQ jF pT wU yWI   4  G #QR  * @YZ    �JK     �o@   |� G S     G #Qr   |�E U   , �    � U   �  
� 	 -� � M   o   �   ��   "         �  �  � ��	 �  �  