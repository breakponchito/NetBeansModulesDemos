����   4k
      &org/openide/filesystems/AbstractFolder <init> ](Lorg/openide/filesystems/FileSystem;Lorg/openide/filesystems/FileObject;Ljava/lang/String;)V
  	 
   *org/openide/filesystems/AbstractFileObject lastModified ()Ljava/util/Date;	     Ljava/util/Date;
     getLastModified
     getAbstractFileSystem .()Lorg/openide/filesystems/AbstractFileSystem;	      *org/openide/filesystems/AbstractFileSystem info 1Lorg/openide/filesystems/AbstractFileSystem$Info;
      getPath ()Ljava/lang/String; " # $  % /org/openide/filesystems/AbstractFileSystem$Info $(Ljava/lang/String;)Ljava/util/Date;
  ' ( ) putLastModified "(Ljava/util/Date;)Ljava/util/Date;
  + , - getFileSystem &()Lorg/openide/filesystems/FileSystem;
  / 0 1 getChild <(Ljava/lang/String;)Lorg/openide/filesystems/AbstractFolder;	  3 4 5 list 1Lorg/openide/filesystems/AbstractFileSystem$List; 7 8 9 : ; /org/openide/filesystems/AbstractFileSystem$List children '(Ljava/lang/String;)[Ljava/lang/String;
  = > ? createFileObject l(Lorg/openide/filesystems/AbstractFileObject;Ljava/lang/String;)Lorg/openide/filesystems/AbstractFileObject;	  A B C folder Ljava/lang/Boolean;
 E F G H I java/util/Date getTime ()J	  K L M parent $Lorg/openide/filesystems/FileObject; " O B P (Ljava/lang/String;)Z
 R S T U V java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
 R X Y Z booleanValue ()Z
  \ ] Z isFolder
  _ ` Z isLastModifiedCacheEnabled
  b c d initLastModified (Z)Z
  f g Z 
isReadOnly " i j P readOnly " l m n mimeType &(Ljava/lang/String;)Ljava/lang/String;
  p q   getMIMEType
  s q t '([Ljava/lang/String;)Ljava/lang/String; " v w x size (Ljava/lang/String;)J
 z { | } ~ "org/openide/filesystems/StreamPool createInputStream ?(Lorg/openide/filesystems/AbstractFolder;)Ljava/io/InputStream;
  � � � getOutputStream ;(Lorg/openide/filesystems/FileLock;Z)Ljava/io/OutputStream;
 � f � "org/openide/filesystems/FileSystem � #org/openide/filesystems/FSException � 
EXC_FSisRO
 � � �   getDisplayName
 � � � � � org/openide/util/NbBundle 
getMessage I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
 � �  � (Ljava/lang/String;)V
  f � 	EXC_FisRO	  � � � name Ljava/lang/String;
 � � � � [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
  � � � testLock %(Lorg/openide/filesystems/FileLock;)V
 z � � � createOutputStream A(Lorg/openide/filesystems/AbstractFolder;Z)Ljava/io/OutputStream;	  � � � lock Ljava/lang/ref/Reference;
 � � � � � java/lang/ref/Reference get ()Ljava/lang/Object; �  org/openide/filesystems/FileLock � 2org/openide/filesystems/FileAlreadyLockedException
 � �  � ()V " � � � � 1org/openide/filesystems/AbstractFileObject$AfLock
 � �  � /(Lorg/openide/filesystems/AbstractFileObject;)V � java/lang/ref/WeakReference
 � �  � (Ljava/lang/Object;)V " � � � unlock
  � � Z isValid � EXC_InvalidLock
  � � java/lang/Object
 � � � � �(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
  � � � markImportant (Ljava/lang/String;Z)V
  � � � getAttribute 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;	  � � � attr 1Lorg/openide/filesystems/AbstractFileSystem$Attr;
 � � � � � "org/openide/filesystems/XMLMapAttr readAttribute �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/AbstractFileSystem$Attr;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
  � � � setAttribute ((Ljava/lang/String;Ljava/lang/Object;Z)V
  � � � &(Ljava/lang/String;)Ljava/lang/Object; � � � � � /org/openide/filesystems/AbstractFileSystem$Attr writeAttribute 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
  � � Z hasAtLeastOneListeners � *org/openide/filesystems/FileAttributeEvent
 � �  � ](Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  � � � fileAttributeChanged0 /(Lorg/openide/filesystems/FileAttributeEvent;)V
  �  getAttributes +(Ljava/lang/String;)Ljava/util/Enumeration; � 
attributes
  createReference ?(Lorg/openide/filesystems/FileObject;)Ljava/lang/ref/Reference;
 /
 java/lang/String contains (Ljava/lang/CharSequence;)Z \ EXC_SlashNotAllowed
 � � beginAtomicAction EXC_FoNotFolder
 � � m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;	   change 3Lorg/openide/filesystems/AbstractFileSystem$Change;" java/lang/StringBuilder
! �
!%&' append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
!)&* (C)Ljava/lang/StringBuilder;
!,-   toString/012 � 1org/openide/filesystems/AbstractFileSystem$Change createFolder
 45 � registerChild
 789 getAbstractChild @(Ljava/lang/String;)Lorg/openide/filesystems/AbstractFileObject;; 1org/openide/filesystems/FileStateInvalidException= EXC_ApplicationCreateError
: �
 @A Z hasListenersC !org/openide/filesystems/FileEvent
BE F K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V
 HIJ fileCreated0 '(Lorg/openide/filesystems/FileEvent;Z)V
 �LM � finishAtomicActionO java/io/IOExceptionQ $Use FileUtil.createData() instead! [S  U .W ]
N �
Z[\ equals (Ljava/lang/Object;)Z/^_ � 
createDataa EXC_CannotRenameRoot
cde indexOf (I)Ig EXC_CannotRenameFromTo
 ij Z isData
lm   trim
opq length ()I
stuv Z "org/openide/filesystems/FileObject isRoot
s 
 yz   getName
 |}   getExt/�� rename '(Ljava/lang/String;Ljava/lang/String;)V
���� � #org/openide/filesystems/MIMESupport 
freeCaches
 ��� refresh� 'org/openide/filesystems/FileRenameEvent
�� � K(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)V
 ��� fileRenamed0 ,(Lorg/openide/filesystems/FileRenameEvent;)V ���� renameAttributes� EXC_CannotDeleteRoot/�� � delete
 z��� find J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/StreamPool;
 z��� annotate (Ljava/lang/Exception;)V	 ��� 	validFlag Z
 ��� ((Ljava/lang/String;Ljava/lang/String;Z)V ��� � deleteAttributes
B� � '(Lorg/openide/filesystems/FileObject;)V
 ��� fileDeleted0 &(Lorg/openide/filesystems/FileEvent;)V	 ��� transfer 5Lorg/openide/filesystems/AbstractFileSystem$Transfer;
 ��� copy n(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
s�� Z canWrite����� 3org/openide/filesystems/AbstractFileSystem$Transfer \(Ljava/lang/String;Lorg/openide/filesystems/AbstractFileSystem$Transfer;Ljava/lang/String;)Z
 ��� move �(Lorg/openide/filesystems/FileLock;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;����
 �� P checkVirtual
 ��� <(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V
 �
 z�� Z isOutputStreamOpen
����� java/lang/Math abs (J)J
B� � L(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Z)V
 ��� fileChanged0
s��� getFileObject J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 ��   
getNameExt
 ��� refreshFolder
 ��� outputStreamClosed (Z)V
 �� P
 �� P canRead
 �
 �� Z serialVersionUID J ConstantValue�y���'' EXT_SEP C   . PATH_SEP   / 	Signature =Ljava/lang/ref/Reference<Lorg/openide/filesystems/FileLock;>; m(Lorg/openide/filesystems/AbstractFileSystem;Lorg/openide/filesystems/AbstractFileObject;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/filesystems/AbstractFileObject; fs ,Lorg/openide/filesystems/AbstractFileSystem; MethodParameters force retval StackMapTable ()[Ljava/lang/String; 
createFile lastModDate exists result 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; retVal #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; withinMIMETypes [Ljava/lang/String; getSize getInputStream ()Ljava/io/InputStream; 
Exceptions  java/io/FileNotFoundException :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream; "Lorg/openide/filesystems/FileLock; fireFileChanged $Lorg/openide/filesystems/FileSystem; $()Lorg/openide/filesystems/FileLock; f l fLock currentLock+ java/lang/Throwable isLocked setImportant b attrName path '(Ljava/lang/String;Ljava/lang/Object;)V value Ljava/lang/Object; fire oldValue ()Ljava/util/Enumeration; -()Ljava/util/Enumeration<Ljava/lang/String;>; ?(Ljava/lang/String;)Ljava/util/Enumeration<Ljava/lang/String;>; C(Lorg/openide/filesystems/AbstractFolder;)Ljava/lang/ref/Reference; fo (Lorg/openide/filesystems/AbstractFolder; m(Lorg/openide/filesystems/AbstractFolder;)Ljava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFolder;>; 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject; n ext fName I(Lorg/openide/filesystems/FileLock;Ljava/lang/String;Ljava/lang/String;)V on oe oldName newFullName oldFullName handleDelete p $Lorg/openide/filesystems/StreamPool; ex Ljava/io/IOException; fullName target from abstractTarget 
abstractFS to oldN 	isVirtual )(Ljava/lang/String;Ljava/lang/String;ZZ)V added removed expected isInitialization strPool ev #Lorg/openide/filesystems/FileEvent; refreshParent superCanWrite superCanRead 
SourceFile AbstractFileObject.java InnerClasses Info List AfLock Attr Change Transferi 2org/openide/filesystems/AbstractFileObject$Invalid Invalid 0      �� �   � �� �   � �� �   �  � �       B C        ,      `     *+,-� **� � �          C  :  D   *         	     L     � � 
      L   �    c d    �     ,� 
*� � � =� **� � *� � ! � &W�          G  H  I * K        ,     ,�   �    
 @� 
      "      /     *� �          O          " ( )    B     
*+� *� �      
    S  T       
     
   
             2     *� *� �          Y          89    =     	*+� .� �          _       	     	 � � 
    �    4    ;     *� � 2*� � 6 �          k           1    >     
*� *+� <�          s       
     
 � � 
    �    ] Z    �     a*� @� U*� � *� � ! L+� +� D	�� � =*� J� *� � *� � N � � >� *� Q� @�*� @� W�      & 	   ~    � + � 3 � K � O � W � Y �   *   A   + .�  K �    a      � ) E@� @� �  j Z    B     *� [� � �          �             @       a     **� � ^� � � aW*� �      
    �  �             O �        g Z    k     "*� L+� e� +� *� � h � � �      
    �  �       "    	     �  @            q      j     *� � *� � k L+� *� oL+�          �  �  �  �            �     �        � q t    u     *� � *� � k M,� 	*+� rM,�          �  �  �  �                 �     � 
             I    ;     *� � *� � u �          �              /     *� y�          �               �!    ;     *+� �          �             �"     N
    �     � �    �     H*� N-� �� � �Y�-� �� �� ��*� �� � �Y�*� �-� �� �� ��*+� �*� ��          �  �  �  � & � = � B �   *    H     H �"    H#�   C$    	 �  �    N
   	 �  #   ! �%    �     E*� �� *� �� �� �L+� � �Y� ��*� � *� � � � �Y*� �L*� �Y+� µ �+�      "    �  �  �  �  � . � 7 � C �       &"    E   7 '"         N   � �    �     QM*YN�*� �� *� �� �� �M,+� *� &W*� �-ç 
:-��*� � *� � � *� ș *� W�   * -   - 1 -      2       
  # ( 4 D K P        Q     Q("   O)"     �  � �D*� 
   (   !, Z    L     *� �� *� �� �� � �                      @        � �    � 	    \*� �� &� �Y�+*� *� � �*� �� θ з ��*� �� �+� )� �Y�+*� *� � �*� �� �� θ з ���      & 	  ! " # #" *& 5' ?( T' [*       \     \'"     *0    N
   '   -�    E     *� *� � ӱ      
   . /            .� 
   .              � �    >     
*+*� � װ         6       
     
/ � 
   /    � �    L     **� � �,+� ߰         ;             / �    0 � 
   	/  0    �1    J     *+,� �      
   E F             / �    23     N
   	/  2     � �    �     B:� 
*+� �:*� � �*� +,� � �  ,� *� � *� �Y*+,� �� ��         M R S V  X 1Y A[   4    B     B/ �    B23    B4�   ?53    	 �  �2    N
   /  2  4    6    3     	**� � ��         a       	      7      B     *� � �+� �         e            0 � 
   0      8 9    =     	*� +��         n       	     	:; 
   :      < 2=   S    +	�� +�� � �Y+� �� ��*� *�*YN�*� :� e� � �Y�� ͸ �� ��*� �� � �Y�+� ͸ �� ��*� [� � �Y+*� � ͸� ��*� ��!Y�#*� �$/�(+�$�+�. *+�3*+�6M,� �:Y<*� +� ��>�*�?� *�BY*,�D�G-ç 
:-��*� *�K� :*� *�K�,�  0 � �   � � �   % �        b   y z % ,� 0� 6� >� R� Y� n� u� �� �� �� �� �� �� �� �� ������   >  6 �	  � 3:  � 
:        � �  :    c � ,  �  � I    �   � �     � *�      � 	   *�      N
    �   _�   _  
  �+	�� +�� F�NY�!Y�#P�$+�$,� 	R� �!Y�#T�$,�$�+�$V�$�+�X�N*� *�:*Y:�*� :� e� � �Y�� ͸ �� ��*� �� � �Y�+� ͸ �� ��,� R,�Y� +� �!Y�#+�$.�(,�$�+:*� [� � �Y*� � ͸� ���!Y�#*� �$/�(�$�+Nç :��*� �-�] *Y:�*�3*�6:� �:Y<*� � ��>�*�?� *�BY*�D�G:�*� *�K�:��:	*� *�K	�  h    /u  �   Yu�  ��      ~   � � )� W� Y� `� c� h� n� v� �� �� �� �� �� ����*�/�5�=�B�X�_�n�u�|������   H  n �	 = B:  c$> �   �    � � �   �? �  Y:@ �    � �      !�      !� 2   �   V#� !   � *� � : � �    � *�    *    N
   	 �  ?   �A   R    �*� J� � �Y`*� � ͸ �� ��,/�b� )-� -/�b� ,\�b� -� @-\�b� 6� �Yf*� *� � ͻ!Y�#,�$T�$-�$�+�� ��*� *�::*� JY:�*+� �*�h� )-� %-�k�n� �!Y�#,�$.�(-�$�+M*� J�r� ,�  �!Y�#*� J�w�$/�(,�$�+:*� :*� ��  � �Yf*� *� � ��� ��*� *� �� � �Y�*� � ͸ �� ��*�x:*�{:*� ��~ ��*� �:	*,� �*� J� � *� J� ,	��*� � *��Y*����ç :
�
�*� � ��� *� *�K� :*� *�K��  ���  ���   ���  ���      � )  � � � !� G� N� X� z� �� �� �  � � � � � � � �)?EK[^di's(�+�,�.�0�2�3�2�3�4   \ 	E RB � K LC � d 3D � 	 �*E �  �'F �   �    � �"   � � �   �? �    F 2� F �\+� @� E*� �    � *    N
    �   �  ?    G �   &     �*� J� � �Y�*� � ͸ �� ��*� *�*� JYN�*+� �*� M*� �,�� � :*��:� 
���*� �:*��*� J� � *� J� ��-ç 
:-��*� � �,�� *� � *�BY*����*� *�K� :*� *�K��  6 C FN , � �   � � �    � �   � � �      j   = > D %F ,G 1I 6L CU FM HN NP SQ ZT ]W cX hZ r[ �] �_ �a �b �e �f �e �f �g   R  N HI  H JK  c > �  6 OL �  � *L �    �     � �"  � L �    a 
� '   � � N� N z� "�    �  � *�    �  � 	   � *�     N
    �   ��   �    R*� ��:� 
+� � *+,-���+� :� :��:�*� *�Y:�� e� � �Y�� ͸ �� ��+��� � �Y�+�w� ͸ �� ��R-�Y� ,� �!Y�#,�$.�(-�$�+:	*� �!Y�#+�w�$/�(	�$�+�� � Y	�3	�6:

� �:Y<� 	� ��>��?� �BY
�D�G
:�*� *�K�ç :��*� *�K� :*� *�K�*+,-���  C,  &),  ,1,   6>  &4>  >@>      ~   x 	z { ~ # *� 1� 6� =� C� K� _� f� ~� �� �� �� �� �� �� �����#�&�4�;�>�G�J�   f 
 � F: 
 � �> � 	  R    RM M   R � �   R? �  	IN�  #/O  *(P	  1!Q�    J � �� A 	 s�  � �  V� X � E*� I*    N
   M   �  ?   ��   �    �*� :*� J� � �Y�� ͸ �� ��*� ��:� 
,� � *+,-�İ,� :� :��:		�V*� *�*� JY:
�*+� �� e� � �Y�� ͸ �� ��,��� � �Y�,�w� ͸ �� ��R�Y� -� �!Y�#-�$.�(�$�+:*� :	�!Y�#,�w�$/�(�$�+�� � �-:*��*� J� � *� J� ���3�6:� �:Y<� � ��>�*� � *�BY*�����?� �BY�D�G:
�*� *�K�
ç :
��*� *�K� :*� *�K�*+,-�İ  i�  ���  ���   Z�  ���  ���      � *  � � � "� +� 7� A� G� N� U� Z� a� i� n� v� �� �� �� �� ����	�� �'�0�5�@�L�S�_�g�x� ����� �� ��   �  �R � 0 Y:  � �> �  � �L �   �    � �"   �M M   � � �   �? �  �	  +�N�  GpO  NiP	  UbQ� 	   � � " � �	� H   �s �  � �  W� O� + �    �s �  � �  E*� I*    N
    �  M   �  ?   S Z    6     *� *� �ʬ                   �T    a     *+,�ͱ      
    
   4         U �    V �    4�    W� 
   U  V  4  W   ��   �    -:6*� *�*� [� *+,�Ч �*��:� �љ *� *�K�*Y:	�:
*� a6� 	�*� *�K�*� � *� � ! :
*� � D
� De��	�� T*
� &W� *� � �BY**��:
� D	��  *��� $*��� 	*��6� � 	*��	ç :	��� 2*� J*�x*�{���  *� J� � *� J� *����*� *�K� :*� *�K��  B T �   \ � �   � � �    5    = T    \    "       � %  " # & ( ) "+ (. 5j </ =2 B4 E6 L7 Q8 Tj [8 \: nH �O �Q �R �U �V �W �Y �Z �] �_ �` �c �fgjk j)k,n   p  E �'  
 L �X�  ( �YI   -    -U �   -V �   -4�   -W�   - 4  *Z[  '\�    . � "B�  z�  � E� E � 
E*� 3I*
   U  V  4  W   4   ��    �     *YM�*� &W*� W,ç N,�-�*��                  w x 
y z | }            #�     �    � *� 
   #   � Z    F     *� L+*� ��      
   � �           		  � Z    F     *� L+*� ��      
   � �           		  ] Z    /     *��         �          ^ Z    /     *���         �          _   `a   :  " b	 7 c	 � d  � e	/ f	� g	h j 