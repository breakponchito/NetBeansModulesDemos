����   4�
      java/lang/Object <init> ()V
  	 
   "org/openide/filesystems/FileObject isFolder ()Z
       org/openide/filesystems/FileUtil 
isParentOf K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)Z  #org/openide/filesystems/FSException  EXC_OperateChild
      org/openide/util/NbBundle 
getMessage [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
     (Ljava/lang/String;)V
  ! " # createFolder 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  % & ' copyAttributes K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V
  ) * + getChildren '()[Lorg/openide/filesystems/FileObject;
  - . / getName ()Ljava/lang/String;
  1 2 / getExt
  4 5 6 copy n(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  8 9 : copyFileImpl �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  < = > 	getParent &()Lorg/openide/filesystems/FileObject;
  @ A B equals (Ljava/lang/Object;)Z
  D E F rename I(Lorg/openide/filesystems/FileLock;Ljava/lang/String;Ljava/lang/String;)V
  H I J delete %(Lorg/openide/filesystems/FileLock;)V
 L M N O ' %org/openide/filesystems/FileObjectLkp reassign
  Q R S getClass ()Ljava/lang/Class;
 U - V java/lang/Class
 X Y Z [ \ java/lang/String lastIndexOf (I)I
 X ^ _ ` 	substring (I)Ljava/lang/String; b java/lang/StringBuilder
 a 
 a e f g append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 a i f j (C)Ljava/lang/StringBuilder;
 l m n o p java/lang/System identityHashCode (Ljava/lang/Object;)I
 r s t u ` java/lang/Integer toHexString
  w x  isRoot z root of 
  | } ~ getFileSystem &()Lorg/openide/filesystems/FileSystem;
 a � f � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 a � � / toString
  � � / getPath � 1org/openide/filesystems/FileStateInvalidException � [???]
  � � � constructName ([Ljava/lang/StringBuilder;CI)V	  � � � $assertionsDisabled Z � java/lang/AssertionError � Deprecated.
 � �  � (Ljava/lang/Object;)V
  � � / 
getNameExt �  
 X @
 X � � � length ()I � java/io/IOException � unknown � java/lang/IllegalStateException � (Dangerous self-reproductive parentship:  �  type:  �  fs: 
 � 
 � 
 a �  � (I)V
  � � � getFileObject J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  � � � lock $()Lorg/openide/filesystems/FileLock;
 � � � �   org/openide/filesystems/FileLock releaseLock
 L � � � create N(Lorg/openide/filesystems/FileObject;Z)Lorg/openide/filesystems/FileObjectLkp;
 � � � � B java/lang/Thread 	holdsLock	  � � � lkp 'Lorg/openide/filesystems/FileObjectLkp; � Should be null, but was 
  � �  isHasExtOverride
  � � � hasExtOverride (Ljava/lang/String;)Z
  � � � addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V � 'org/openide/filesystems/LocalFileSystem � )org/openide/filesystems/RecursiveListener
 � �  � T(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileChangeListener;Z)V
 � � � "org/openide/filesystems/FileSystem	 � � � � � $org/openide/filesystems/ExternalUtil LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level; � Cannot remove listener from 
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � � � removeFileChangeListener
 � �	  %org/openide/filesystems/FCLSupport$Op DATA_CREATED 'Lorg/openide/filesystems/FCLSupport$Op;
  dispatchEvent d(Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Enumeration;Lorg/openide/filesystems/FileEvent;)V	 
 FOLDER_CREATED	  FILE_CHANGED	  FILE_DELETED	  ATTR_CHANGED	  FILE_RENAMED %org/openide/filesystems/FileObject$ED
 
 � 7(Lorg/openide/filesystems/FileSystem$EventDispatcher;)V
  ! =(Ljava/util/Enumeration;Lorg/openide/filesystems/FileEvent;)V
 #$% getMIMEType 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;' content/unknown
 )$* K(Lorg/openide/filesystems/FileObject;[Ljava/lang/String;)Ljava/lang/String;
 ,-. getSize ()J    ���2 Too big file 
 � 
 567 getInputStream ()Ljava/io/InputStream;
9:;<= java/io/InputStream read ([BII)I? Just 
 aA fB (I)Ljava/lang/StringBuilder;D  bytes read from 
9FG  close
 IJK asBytes ()[B
 XM N ([BLjava/lang/String;)V
PQRST java/nio/charset/Charset defaultCharset ()Ljava/nio/charset/Charset;
PVW / name
 YZ[ asText &(Ljava/lang/String;)Ljava/lang/String;
 ]^_ asLines $(Ljava/lang/String;)Ljava/util/List;a 'org/openide/filesystems/FileObjectLines
`c d 9(Ljava/lang/String;Lorg/openide/filesystems/FileObject;)V
 fg  isValid
 �ij > getRoot
 lmn 
createData \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 pqr getOutputStreamImpl ()Ljava/io/OutputStream;
 tuv getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream;x $org/openide/filesystems/FileObject$1
wz { u(Lorg/openide/filesystems/FileObject;Ljava/io/OutputStream;Ljava/io/OutputStream;Lorg/openide/filesystems/FileLock;)V
 �f~ 2org/openide/filesystems/FileAlreadyLockedException
����� org/openide/util/Enumerations array ,([Ljava/lang/Object;)Ljava/util/Enumeration;� 0org/openide/filesystems/FileObject$1WithChildren
�� � ((Lorg/openide/filesystems/FileObject;Z)V
���� queue Y(Ljava/util/Enumeration;Lorg/openide/util/Enumerations$Processor;)Ljava/util/Enumeration;
 � *� (Z)Ljava/util/Enumeration;� .org/openide/filesystems/FileObject$OnlyFolders
�� � (Z)V
���� filter
 � �� 9(Ljava/lang/String;Z)Lorg/openide/filesystems/FileObject;� /
 X�� � 
startsWith� //� java/util/StringTokenizer
�� � '(Ljava/lang/String;Ljava/lang/String;)V
��� / 	nextToken
���  hasMoreTokens� ..� .� )org/openide/filesystems/VirtualFileObject
�� � ^(Lorg/openide/filesystems/FileSystem;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Z)V
 �� � (Ljava/lang/Throwable;)V
 �m �� %org/openide/filesystems/FileObject$1R
�� � 9(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)V
 ���� runAtomicAction 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)V	���� os Ljava/io/OutputStream;
 ��� toFile 4(Lorg/openide/filesystems/FileObject;)Ljava/io/File;
����  java/io/File canWrite
 ��  
isReadOnly
���  canRead� removeWritables
 ��� getAttribute &(Ljava/lang/String;)Ljava/lang/Object;� java/util/concurrent/Callable���� call ()Ljava/lang/Object;� java/lang/Exception
 ��
 ��� refresh
 ��� toURL ()Ljava/net/URL;
 ��� 
computeURL� !org/openide/filesystems/URLMapper
���� findURL 5(Lorg/openide/filesystems/FileObject;I)Ljava/net/URL;
����� java/net/URL toURI ()Ljava/net/URI;
��   java/net/URI 
isAbsolute
 org/openide/util/BaseUtilities normalizeURI (Ljava/net/URI;)Ljava/net/URI;
� @
  ==   from  java/net/URISyntaxException =org/openide/filesystems/FileObject$PriorityFileChangeListener
 U  desiredAssertionStatus java/io/Serializable  org/openide/util/Lookup$Provider DEFAULT_LINE_SEPARATOR_ATTR Ljava/lang/String; ConstantValue default-line-separator DEFAULT_PATHNAME_SEPARATOR_ATTR default-pathname-separator serialVersionUID J/y}Zz� REMOVE_WRITABLES_ATTR Code LineNumberTable LocalVariableTable this $Lorg/openide/filesystems/FileObject; 
Exceptions MethodParameters ext fo peer target dest StackMapTable3 %[Lorg/openide/filesystems/FileObject; move �(Lorg/openide/filesystems/FileLock;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; "Lorg/openide/filesystems/FileLock; x 3Lorg/openide/filesystems/FileStateInvalidException; cname 
cnameShort #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; buf [Ljava/lang/StringBuilder; getPackageNameExt (CC)Ljava/lang/String; separatorChar C 
extSepChar arr> 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; getPackageName (C)Ljava/lang/String; n e fs Ljava/lang/Object; ex Ljava/io/IOException; sepChar lengthSoFar I myName myLen parent lastModified ()Ljava/util/Date; isData 	existsExt\ java/lang/Throwable 	getLookup ()Lorg/openide/util/Lookup; lookup )()Lorg/openide/filesystems/FileObjectLkp; assignLookup *(Lorg/openide/filesystems/FileObjectLkp;)V attrName setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V value getAttributes ()Ljava/util/Enumeration; 	Signature -()Ljava/util/Enumeration<Ljava/lang/String;>; hasExt fcl addRecursiveListener allowsExternalChanges ,Lorg/openide/filesystems/FileChangeListener; removeRecursiveListener fireFileDataCreatedEvent en Ljava/util/Enumeration; fe #Lorg/openide/filesystems/FileEvent; LocalVariableTypeTable ELjava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>; k(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileEvent;)V fireFileFolderCreatedEvent fireFileChangedEvent fireFileDeletedEvent fireFileAttributeChangedEvent F(Ljava/util/Enumeration;Lorg/openide/filesystems/FileAttributeEvent;)V ,Lorg/openide/filesystems/FileAttributeEvent; t(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileAttributeEvent;)V fireFileRenamedEvent C(Ljava/util/Enumeration;Lorg/openide/filesystems/FileRenameEvent;)V )Lorg/openide/filesystems/FileRenameEvent; q(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileRenameEvent;)V $Lorg/openide/filesystems/FileSystem; op �(Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileEvent;)V mimeType '([Ljava/lang/String;)Ljava/lang/String; withinMIMETypes [Ljava/lang/String;� java/io/FileNotFoundException [B pos len is Ljava/io/InputStream;� encoding ()Ljava/util/List; &()Ljava/util/List<Ljava/lang/String;>; 8(Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>; recreate iex isLocked fax 4Lorg/openide/filesystems/FileAlreadyLockedException; fLock setImportant b rec A(Z)Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>; 
getFolders getData relativePath nextObj nameExt onlyExisting myObj st Ljava/util/StringTokenizer; createAndOpen *(Ljava/lang/String;)Ljava/io/OutputStream; r 'Lorg/openide/filesystems/FileObject$1R; f Ljava/io/File; 	canRevert revert Ljava/lang/Exception; v expected getURL uri Ljava/net/URI; Ljava/net/URISyntaxException; 	isVirtual isSymbolicLink readSymbolicLink readSymbolicLinkPath getCanonicalFileObject isPriorityListener /(Lorg/openide/filesystems/FileChangeListener;)Z <clinit> 
SourceFile FileObject.java InnerClasses� "org/openide/filesystems/FCLSupport Op ED� 2org/openide/filesystems/FileSystem$EventDispatcher EventDispatcher WithChildren� 'org/openide/util/Enumerations$Processor 	Processor OnlyFolders R� /org/openide/filesystems/FileSystem$AtomicAction AtomicAction PriorityFileChangeListener� org/openide/util/Lookup Provider� $org/openide/filesystems/FileObject$2!                !    "  � �   $    � � �   W    %   /     *� �   &       5'       ()   . /   2 /   E F *     �+    �  W  ,    5 6 %  (  	   p*� � `*+� � � Y*+� � �+,�  :*� $*� (:�66� "2:� ,� 0� 3W�����*+,-� 7:�   &   .      �  �   � ' � - � I � [ � a � d � m �'   H  I -)  ' =.)    p()     p/)    pW    p,  m 0) 1   $  �     X X 2  � %� *     �+   /  W  ,   45 %   �     -*� ;,� ?� *+-� C*�*,-� 3:*+� G*� K�   &       �  �  �  �  � $ � * �'   >   0)    -()     - �6    -/)    -W    -, 1    *     �+    �  /  W  ,    � / %       �*� P� TL++.� W`� ]M� aY� c,� d@� h*� k� q� d[� h*� v� � aY� cy� d*� {� � �� *� �� d]� h� ��N� aY� c,� d@� h*� k� q� d�� d� ��   c d � &       �  �  � d � e �'   *  e #78    �()    �9   s: 1   / � T   X X  a�    X X  a XK �;    <    � / %   T     � aYSL*+/� �+2� ��   &       � 	 �  �'       ()   	 =>  ?@ %  
     ~� �� � �Y�� ��*� v� *� ;� v� *� ��� aN*� ;-2� �*� 0:� �� �� -2� h*� �� dW� -2� h*� ,� d� h*� 0� dW-2� ��   &   * 
   �  � ! � & � + � 6 � < � K � ] � w �'   4    ~()     ~AB    ~CB  + SD>  < B, 1    � $E X+   	A  C  F    G    H   IJ %   �     ^� �� � �Y�� ��*� v� *� ;� v� *� � 
*� �� *� ,�� aM*� ,N*� ;,-� �� �,2� h-� dW,2� ��   &   "    �  � ! � 4 9 > K W'   *    ^()     ^AB  9 %D>  >  W 1   
 C X +   A  F    G    H    � / %   �     1*� ,L*� 0M,� 
,� �� +� � aY� c+� d.� h,� d� ��   &        
'        1()    ,K  
 'L 1    �  X XV X  � � %  �  	   �*� �:� �`6*� ;:*� C*� {:� 	:�:� �Y� aY� c�� d*� �� d*� P� �� d� � �� ��� !� v� +`� �+2� hW� #� �� +2� � �Y� ��+� aY� �S+2*� �� dW�   ! $ � &   B       " !% $# &$ *& [) h* s+ ~- �. �0 �1'   f 
 ! MN  & OP  * 1MN    �()     �D>    �QB    �RS   �T   �US   �V) 1   ' � $  E X   ��  � 0"+   D  Q  R   } ~ *     � = >      WX   x   Y   g    Z � %   m     *� ;M,� ,*� ,+� �� � �   &   
   i k'        ()     ,   V) 1   
 �  @+   ,   I J *     �+    �    I  %   �     *� �L*+� G+� �� 
M+� �,��   
    &       � 
� � � � �'       ()     �6 1    �    � [*     � ]^ %   0     *� ð   &      �'       ()  ;    <   _` %   R     � �� L� ǚ � �Y� ��*� ̰   &   
   � �'       ()  1     ab %   �     P� �� L� ǚ � �Y� ��*� �+� �� �� (*� �� !� �Y� aY� cж d*� ̶ � �� ��*+� ̱   &      � � � � J� O�'       P()     P � � 1    *+    �  �� +   c  de *     �+   	c  f  gh i   j k � %   [     *� ҙ 	*+� լ*� 0+� ��   &      � � �'       ()     , 1    +   ,     �  %   ,     �   &      �'       ()     � � %   6     �   &      �'       ()     , +   ,   � � +   l   � � +   l   m � %   �     H*� � 	*+� ٱ*� {� �=*� {� �Y*+� � � !M� � �� aY� c� d*� � �,� ��   & ) � &   & 	       &" )  *! G#'   *   n �  * O8    H()     Hlo 1    [ �+   l   p � %   �     @*� � 	*+� ��*� {� �Y*+� � �� !M� � �� aY� c� d*� � �,� ��    ! � &   "   + , - 0 3 !1 "2 ?4'      " O8    @()     @lo 1    S �+   l   q! %   ^     
*� �+,��   &   
   ; 	<'        
()     
rs    
tu v       
rw +   	r  t  i   x y! %   ^     
*�	+,��   &   
   C 	D'        
()     
rs    
tu v       
rw +   	r  t  i   x z! %   ^     
*�+,��   &   
   K 	L'        
()     
rs    
tu v       
rw +   	r  t  i   x {! %   ^     
*�+,��   &   
   S 	T'        
()     
rs    
tu v       
rw +   	r  t  i   x |} %   ^     
*�+,��   &   
   [ 	\'        
()     
rs    
t~ v       
rw +   	r  t  i    �� %   ^     
*�+,��   &   
   c 	d'        
()     
rs    
t� v       
rw +   	r  t  i   �  %   �     *� {:�Y+,-��� :�      � &      j k n l o'   4   M�    ()     �    rs    tu v       rw 1    X �+   �  r  t  i   � ! %   �     *� {�Y+,��� N�      � &      s v t w'        ()     rs    tu v       rw 1    S � +   	r  t  i   x $ / %   [     *�"L+� 	&� +�   &   
   � �'       ()    � 1    �  X@ X �$� %   :     *+�(�   &      �'       ()     �� +   �  -.  67 *    � JK %  �     �*�+@/�� "� �Y� aY� c1� d*� �� d� ��3�*�4N��:6�� &-�d�86� � `6����� -� �Y� aY� c>� d�@C� d*� �� d� ��3�:-�E�:-�E�  1 � �   � � �   &   N   � � � ,� 1� 7� :� B� R� X� [� b� e� m� �� �� �� �� ��'   >  R <S  7 kD�  : h�S    �()    ��!  1 z�� 1   ) � ,� 9��  � 	1� 
  9 [*     � Z[ %   A     � XY*�H+�L�   &      �'       ()     � *     �+   �   Z / %   5     *�O�U�X�   &      �'       ()  *     � ^� %   5     *�O�U�\�   &      �'       ()  *     �i   � ^_ %   >     
�`Y+*�b�   &       '       
()     
� *     �+   � i   �uv *     �+    �   ur %   q     $*�e� *� {�h*� ��kL+� +�o�*�o�   &          '      	�)    $()  1    *    } � qr %   �     %*� �L*+�sM�wY*,,+�y�N+�|� +� �-�     � &      ! $ % ; < = #?'   *   ��   �P    %()      �6 1    �    �  ��   �*     � � � *     � �  %  S     CL*� �L+� 1+� �� *M>+� +� ��M>+� +� ��:+� +� ��+� � �    }    �   ,     ,    " ,   , . ,   &   J   U W ] ^ X Y ] ^ Y Z  [ "] &^ *[ ,] 2^ 6` 9a'   *   ��    OP    C()    A�6 1   N 	�    � }� 
}�    �  �� 
 ��    � [� 	  [� @�� +   �  F    G    H   * +    *� %   H     *� (���Y*�����   &      �'       ()     � � +   � i   � �� %   E     *����Y�����   &      �'       ()     � � +   �  i   � �� %   E     *����Y�����   &      �'       ()     � � +   �  i   � � � +   	W  ,    � # %   ;     *+���   &      �'       ()     � +   �    �� %  �     �+���� +���� 	+� ]L*N��Y+���:+���� /-� aY� c�� d��� d�� d��� d� �� �N-� l��� d��:�� �� -� ;N� G�� �� <-� �:� +� '��Y-� {-����:� :� �Y���N���-�  � � � � &   R   � � � � )� 3� _� k� r� }� �� �� �� �� �� �� �� �� �� ��'   R  � 
O8  � 0�)  r W�    �()     ��    �� �   ��)  ) ��� 1   4 � D �� % X� 4   X � X   �� +   	�  �   " # *     �+   W  m � *     �+   	W  ,   m # %   <     *+����   &      '       ()     W *     �+   W   �� %   ]     ��Y*+��M*� {,��,�Ű   &      B 
C D'        ()     W  
 �� *     �+   W �  F    G    H   �  %   l     *��L+� +�ͬ*�Қ � �   &      � � 	� �'       ()    �� 1    � �
@ �  %   ^     *��L+� +�լ�   &      � � 	� �'       ()    �� 1    � � �  %   5     *ض��ެ   &      �'       ()   �  %   �     **ض�L+�ޙ +�޹� W� M,�M� �Y,�濱     �   � &   & 	  � � � � � � �  � )�'   *   7P    	7�    *()    "�N 1    �      �B�	*     � �� %   5      �   &      �'       ()     � � +   �   �  %   4     *��   &   
   � �'       ()   �� %   /     *��   &      �'       ()  *     �F    G    H   �� %   /     *��   &      �'       ()    �� %   0     *��   &      �'       ()   �� %   �     h*���L� �� +��� � �Y+� ��� �� ;++��� 0� �Y� aY� c+� 	� d+�� � d*� � �� ��+�L� �Y+���    ] ^ &      � � � \� ^� _�'       V��  _ 	7�    h()  1    � �=�     �  %   ,     �   &      '       ()   �  %   ,     �   &      '       ()  *     � � > %   ,     �   &      ''       ()  *     � � / %   /     *� ��   &      9'       ()  *     � � > %   ,     *�   &      H'       ()  *     � �� %   F     *�� ��   &      O P 	R'       lo  1    	+   l   �  %   4      �� � � ��   &       51    @ �   ��   b  ��@ � 
� ��w      �  �  ���	� � �  �  � ��	 ���	�    