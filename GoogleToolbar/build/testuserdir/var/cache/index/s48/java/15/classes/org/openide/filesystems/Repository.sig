����   4�
      "org/openide/filesystems/Repository delayFileSystemAttachImpl E(Ljava/util/concurrent/Callable;)Lorg/openide/filesystems/Repository;	   	 
 names Ljava/util/Hashtable;
     getDefaultFileSystem &()Lorg/openide/filesystems/FileSystem;  )org/openide/filesystems/Repository$MainFS
     refreshLayers ()V
     
getDefault &()Lorg/openide/filesystems/Repository;
      java/util/Collections 	emptyList ()Ljava/util/List;   java/util/ArrayList
  " #  <init>
 % & ' ( ) 0org/openide/filesystems/Repository$LayerProvider registerLayers (Ljava/util/Collection;)V
 + , - . / java/lang/Class getClassLoader ()Ljava/lang/ClassLoader; 1 META-INF/MANIFEST.MF
 3 4 5 6 7 java/lang/ClassLoader getResources +(Ljava/lang/String;)Ljava/util/Enumeration;
 9 : ; < = org/openide/util/NbCollections iterable -(Ljava/util/Enumeration;)Ljava/lang/Iterable; ? @ A B C java/lang/Iterable iterator ()Ljava/util/Iterator; E F G H I java/util/Iterator hasNext ()Z E K L M next ()Ljava/lang/Object; O java/net/URL
 N Q R S 
openStream ()Ljava/io/InputStream; U java/util/jar/Manifest
 T W # X (Ljava/io/InputStream;)V
 T Z [ \ getMainAttributes ()Ljava/util/jar/Attributes; ^ OpenIDE-Module-Layer
 ` a b c d java/util/jar/Attributes getValue &(Ljava/lang/String;)Ljava/lang/String;
 3 f g h getResource "(Ljava/lang/String;)Ljava/net/URL; j k l m n java/util/List add (Ljava/lang/Object;)Z	 p q r s t "org/openide/filesystems/FileSystem LOG Ljava/util/logging/Logger; v java/lang/StringBuilder
 u " y No such layer: 
 u { | } append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 u  � � toString ()Ljava/lang/String;
 � � � � � java/util/logging/Logger warning (Ljava/lang/String;)V
 � � � �  java/io/InputStream close � META-INF/generated-layer.xml
 � � �  � org/openide/util/Lookup ()Lorg/openide/util/Lookup;
 � � � � 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; � @ � java/util/Collection j � � � addAll (Ljava/util/Collection;)Z
 � " � java/lang/Object	  � � � fileSystemsClone Ljava/util/List; � java/util/Hashtable
 � "	  � � 
 	listeners � $org/openide/filesystems/Repository$1
 � � # � '(Lorg/openide/filesystems/Repository;)V	  � � � vetoListener #Ljava/beans/VetoableChangeListener; � $org/openide/filesystems/Repository$2
 � �	  � � � propListener #Ljava/beans/PropertyChangeListener;	  � � � system $Lorg/openide/filesystems/FileSystem;
  � �  init	  � � � fileSystems Ljava/util/ArrayList;
  � � � addFileSystemDelayed '(Lorg/openide/filesystems/FileSystem;)Z
  � � � addFileSystem '(Lorg/openide/filesystems/FileSystem;)V	  � � � 
repository $Lorg/openide/filesystems/Repository; � $org/openide/filesystems/Repository$3
 � � # � (Lorg/openide/util/Lookup;)V � java/io/IOException � java/lang/IllegalStateException
 � � # � (Ljava/lang/Throwable;)V	  � � � lastDefLookup Ljava/lang/ref/Reference;
 � � � � M java/lang/ref/Reference get	  � � � lastLocalProvider 2Lorg/openide/filesystems/Repository$LocalProvider; � 0org/openide/filesystems/Repository$LocalProvider
 � � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object;	  � � � NO_PROVIDER
 � � �  getRepository
 � � � � � org/openide/util/Exceptions printStackTrace � java/lang/ref/WeakReference
 �  # (Ljava/lang/Object;)V	  ADD_FS Ljava/lang/ThreadLocal;
 � java/lang/ThreadLocal
 %[Lorg/openide/filesystems/FileSystem;	  $assertionsDisabled Z java/lang/AssertionError
 "
 n java/lang/Thread 	holdsLock	 p assigned
  n contains
 p � setRepository
  k
 " # )
 p$% � getSystemName
 �' �( &(Ljava/lang/Object;)Ljava/lang/Object;*  
,-./ n java/lang/String equals
 �123 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 p567 setValid (Z)V
 p9:; addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 p=>? addVetoableChangeListener &(Ljava/beans/VetoableChangeListener;)V
 pAB  	addNotify
 DE � addFileSystemImpl
 GHI fireFileSystem ((Lorg/openide/filesystems/FileSystem;Z)V
 pKL I 	isDefault
 NO n remove
 pQR I isValid
 �TO(
 pVW; removePropertyChangeListener
 pYZ? removeVetoableChangeListener
 p\]  removeNotify_ "java/lang/IllegalArgumentExceptiona null permutation
^c # �
 efg size ()Ii permutation is wrong size: 
 uk |l (I)Ljava/lang/StringBuilder;n  elements but should be 
 pqr isPermutation ([I)Zt java/lang/StringBufferv (permutation is not really a permutation:
sc
sy |z (C)Ljava/lang/StringBuffer;
s| |} (I)Ljava/lang/StringBuffer;
s 
 � #� (I)V
 � �� (I)Ljava/lang/Object;
 ��� fireFileSystemReordered ([I)V� #java/lang/IndexOutOfBoundsException
 ��� enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration;
 ��� getFileSystems ()Ljava/util/Enumeration; je j��� toArray (([Ljava/lang/Object;)[Ljava/lang/Object;
  @� &org/openide/util/io/NbMarshalledObject
� ���� java/io/ObjectOutput writeObject���� M java/io/ObjectInput 
readObject
� �
����� $org/openide/filesystems/ExternalUtil 	exception (Ljava/lang/Exception;)V�  java/lang/ClassNotFoundException���� I java/util/Enumeration hasMoreElements��� M nextElement
 �� � removeFileSystem� Deprecated.
 
 p��� find \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 p��� findResource 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;� java/util/Vector
��
��� 
addElement
���� elements
� "� 'org/openide/filesystems/RepositoryEvent
�� #� L(Lorg/openide/filesystems/Repository;Lorg/openide/filesystems/FileSystem;Z)V� java/util/HashSet
 ���� values ()Ljava/util/Collection;
�"
� @� *org/openide/filesystems/RepositoryListener���� fileSystemAdded ,(Lorg/openide/filesystems/RepositoryEvent;)V���� fileSystemRemoved� 0org/openide/filesystems/RepositoryReorderedEvent
�� #� )(Lorg/openide/filesystems/Repository;[I)V���� fileSystemPoolReordered 5(Lorg/openide/filesystems/RepositoryReorderedEvent;)V� +org/openide/filesystems/Repository$Replacer
� "� "org/openide/filesystems/FCLSupport	 ��� 
fclSupport $Lorg/openide/filesystems/FCLSupport;
� "
 ��� getFCLSupport &()Lorg/openide/filesystems/FCLSupport;
���� addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V
�� removeFileChangeListener
 set	
 M java/util/concurrent/Callable call java/lang/Exception
 � �
 + I desiredAssertionStatus $org/openide/filesystems/Repository$4
 "
 " java/io/Serializable serialVersionUID J ConstantValue�����]� 	Signature ;Ljava/util/ArrayList<Lorg/openide/filesystems/FileSystem;>; 6Ljava/util/List<Lorg/openide/filesystems/FileSystem;>; MLjava/util/Hashtable<Ljava/lang/String;Lorg/openide/filesystems/FileSystem;>; oLjava/util/Hashtable<Lorg/openide/filesystems/RepositoryListener;Lorg/openide/filesystems/RepositoryListener;>; 4Ljava/lang/ref/Reference<Lorg/openide/util/Lookup;>; >Ljava/lang/ThreadLocal<[Lorg/openide/filesystems/FileSystem;>; refreshAdditionalLayers Code LineNumberTable LocalVariableTable this StackMapTable 
findLayers D(Lorg/openide/filesystems/Repository$LayerProvider;)Ljava/util/List; p 2Lorg/openide/filesystems/Repository$LayerProvider; urls LocalVariableTypeTable  Ljava/util/List<Ljava/net/URL;>; MethodParameters U(Lorg/openide/filesystems/Repository$LayerProvider;)Ljava/util/List<+Ljava/net/URL;>; provideLayers *(Ljava/lang/ClassLoader;Ljava/util/List;)V layer Ljava/net/URL; mani Ljava/util/jar/Manifest; layerLoc Ljava/lang/String; is Ljava/io/InputStream; manifest generatedLayer newURLs l Ljava/lang/ClassLoader; 	layerUrlsC java/lang/Throwable 
Exceptions :(Ljava/lang/ClassLoader;Ljava/util/List<Ljava/net/URL;>;)V def newRepo ex Ljava/io/IOException; lkp Lorg/openide/util/Lookup; getLocalRepository c q inst reset fs store 
systemName isReg 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; fireIt reorder i I message Ljava/lang/StringBuffer; newList len perm [Ia e %Ljava/lang/IndexOutOfBoundsException; bool [Zf @()Ljava/util/Enumeration<+Lorg/openide/filesystems/FileSystem;>; '()[Lorg/openide/filesystems/FileSystem; tempFileSystems fss findFileSystem 8(Ljava/lang/String;)Lorg/openide/filesystems/FileSystem; writeExternal (Ljava/io/ObjectOutput;)V oos Ljava/io/ObjectOutput; readExternal (Ljava/io/ObjectInput;)V mar (Lorg/openide/util/io/NbMarshalledObject; "Ljava/lang/ClassNotFoundException; obj Ljava/lang/Object; 
fileSystem ois Ljava/io/ObjectInput; temp ee Ljava/util/Enumeration; >Ljava/util/Enumeration<+Lorg/openide/filesystems/FileSystem;>; fo $Lorg/openide/filesystems/FileObject; aPackage name ext en findAllResources v Ljava/util/Vector; 8Ljava/util/Vector<Lorg/openide/filesystems/FileObject;>; R(Ljava/lang/String;)Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>; findAll O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration; ret v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>; list ,Lorg/openide/filesystems/RepositoryListener; ev )Lorg/openide/filesystems/RepositoryEvent; 2Lorg/openide/filesystems/RepositoryReorderedEvent; addRepositoryListener /(Lorg/openide/filesystems/RepositoryListener;)V removeRepositoryListener writeReplace fcl ,Lorg/openide/filesystems/FileChangeListener; addLater Ljava/lang/Exception; Ljava/util/concurrent/Callable; previous ELjava/util/concurrent/Callable<Lorg/openide/filesystems/Repository;>; k(Ljava/util/concurrent/Callable<Lorg/openide/filesystems/Repository;>;)Lorg/openide/filesystems/Repository; 
access$000 ;(Lorg/openide/filesystems/Repository;)Ljava/util/Hashtable; x0 
access$100 <clinit> 
SourceFile Repository.java InnerClasses MainFS LayerProvider LocalProvider Replacer !  �   
 � �         � �     � � �      � �    	 
     ���    � 
       � �    � �   
 � �    ! 
 � �    � �       "   % #  $   P     *� � � *� � � �   %       � 
 �  �&       ' �  (     )* $   �     *� � � �� Y� !M+,� $,�   %       �  �  �  �  �&        ' �     +,   - � .      -/ (    0   +     1 23 $  ]  	   *� 	� *K*0� 2� 8� > M,� D � w,� J � NN-� P:� TY� V:� Y]� _:� 6*� e:� +� i W� � o� uY� wx� z� z� ~� �� �� :� �����*�� 2� 8� > M,� D � ,� J � NN+-� i W��� �%� �� � M,� D � (,� J � %N� Y� !:-� $+� � W��ձ  2 � �   � � �   %   f    �  � 
 � , � 2 � = � I � N � V � [ � g � � � � � � � � � � � � � � � � � � � � � � � � � � � � �&   f 
 V +45  = D67  I 889  2 a:;  , g<5  � =5  � > �  � +,    ?@     A � .     � >/    A/ (   G 
�  E� M  3 j E N � T, N  � GB� 	� �  E� �  E� -D     �0   	?  A     E  # � $   �     8*� �*� � �*� �Y� �� �*� �Y*� �� �*� �Y*� �� �*+� �*� ��   %   "   =  �   "! .> 3? 7@&       8' �     8F � 0   F    �  $   l     )*� Y� !� �*� �Y� �� *� �� Ǚ **� �� ˱   %      F G H  I (K&       )' �  (    ( 	   $  '     O� �KYL² �� 	� �+ð+ç M+�,�� �Y*� ո LYM² �� +� ϲ �,ðN,�-�L� �Y+� ܿ  	               0 ? @   @ C @    ? E � @ E E � %   6   ] _ 	` a c e +o 0p 6q :s @t Eu Fv&      + G �  F 	HI   KJK  (   , �  � �DB� �   �EB�   �  � L  $        �� �KMY:² �L+� �� �:*� � �M,Nç :��,� *� �� �N-� � �N:-� �:� :� ��,� -Y:² �+� -� � �Y*� �� �ç :���   ( +   + 0 +   L R U � h � �   � � �   %   j   � � � � � � � #� %� 3� 7� A� E� I� L� R� U� W� \� ^� b� h� o� s� ~� ��&   \ 	  ?K   M �  % N �  W HI   �JK   3 \M �   �+ �  3 \N �  L CO � .      M!  3 \M! (   i 	� #  � � �  � �  �   �  �  � B�   � � � �  �   � � � �   ��  �EB�  (P  $   8      � �� � �Y� �� ߱   %      � � � � 
 � � $   �     *���	L+� �� +2� �Y��+*S��   %      � 
� � "� &� (�&       *Q �   
  R
 (   	 � "	0   Q   E � $  ,     �*�W+�� �*� �+�� v+*�*� �+� W*� Y*� ÷!� �+�#M*� ,�&� � >� ,)�+� *� ,+�0W+�4� +�4+�+*� ��8+*� ��<+�@��   %   F   � � � � %� 4� 9� J� X� b� j� o� t� |� �� �� �&   *  9 QS9  J @T    �' �     �Q � (    � H,@�  � 0   Q      $   /     *� ��   %      &       ' �  U    V    W    � � $   �     !*YN�*+�C=-ç 
:-��� 	*+�F�            %        
 ! "  $&   *  
 X    !' �     !Q �   X (   % �    p  � B�    p  	0   Q  U    V    W   � � $  ,     y=*YN�+�J� -ñ*� �+�MY=� C+�*� Y*� ÷!� �+�P� *� +�#�SW+�4+*� ��U+*� ��X+�[+�-ç 
:-��� 	*+�F�    g    d g   g k g   %   J   , . / 0 3 4 "5 18 8: D; I? Q@ YC ]G bH nK rL xN&        y' �     yQ �   wX (    �  �8IB� 	0   Q  U    V    W   Y� $       �*YM�+� �^Y`�b�+�*� öd� 0�^Y� uY� wh� z+��jm� z*� öd�j� ~�b�+�o� :�sYu�wN6+�� - �xW-+.�{W����^Y-�~�b�� Y*� öd�N+�66� -*� �+.��� p� W����*-� �*� Y*� ÷!� �,ç 
:,��*+���   � �   � � �   %   ^   X Y Z [ \ ?] L_ S` ^b hc od xb ~g �j �k �m �n �m �q �r �s �u �v&   H  a Z[  ^ ,\]  �  Z[  � ;^ �  � 7_[    �' �     �`a .     � ;^ (   7 	�  �8� s� � �  � �   b � B� 0   `  U    V    W   
qr $   �     )*�<�M>� ,*.3� �,*.T�����N�    &�  % &� %   * 
  z { ~  � � ~ $� &� '�&   4  	 Z[  ' cd    )`a    &_[   "ef (    � 	g� A�0   `   �� $   2     *� ����   %      �&       ' �  U       hV    W    �� $   /     *���   %      �&       ' �  U       hV    W   �i $   u     *� �L+�� � pM+,�� W,�   %      � � � �&        ' �    j �   
k
 .      j U    V    W   lm $   P     *� +�&� pM,�   %   
   � �&        ' �     S9   Q � 0   S  U    V    W   1no $   �     ;*� ö�M,� D � %,� J � pN-�J� +��Y-���� ���+�� �   %      � � "� 0� 3� :�&       Q �    ;' �     ;pq (    �  E'� D     �0   p  U    V    W   1rs $  A     �� Y
�M+�� N-� � L-� p� -� p:� --��:��� p:� :��:� :��:� 
,� W���*��N-�� � -�� � p:�J���*�����*� ��*� �,��:� D � � J � p:*� ˧��  ( 8 ; � ( 8 H� %   z   � 
� � � � � (� .� 8� ;� =� B� E� H� J� O� R� W� ^� a� f� o� z� �� � � � �	 �
 �&   �  % Q �  . 
tu  8 Q �  = HI  E Q �  J Hv   Mwx  R Q �  z Q �  � y �    �' �     �z{  
 �| �  f W}~ .     
 �|  f W} (   2 � 
 �  �R �L�� 	 p� � �$�   E� D     ��0   z  U    V    W   �� $   �     D�� �Y����*��:�� � $�� � p:+,-��:� �����   %   & 	     " !# -$ 7& <( ?* B,&   H  - Q �  7 ��    D' �     D�9    D�9    D�9   -�~ .      -� (    � �'0   �  �  �  U    V    W   �� $   �     =�� �Y����*��M,�� � ,�� � pN-+��:� �����   %   & 	  7 9 ; < )= 0? 5A 8C ;E&   4  ) Q �  0 ��    =' �     =�9   '�~ .      '� (    � �!0   �  U    V    W   � 7 $   �     O�� �Y������Y��M*��N-�� � $-�� � p:+��:� 	,�ȧ��,�˰   %   * 
  O Q R  T )U 4V <X AY G[ J]&   >  4 Q �  < ��    O' �     O�9   4��    /�~ .      4��    /� (    � ��&0   �  U       �V    W   �� $       U�� �Y����*��:��Y��:�� � (�� � p:+,-��:� 
�ȧ���˰   %   * 
  n p q  s *t 6u @w Ex Lz O|&   R  6 Q �  @ ��    U' �     U�9    U�9    U�9   >�~    5�� .      >�    5�� (    � ��+0   �  �  �  U       �V    W   HI $   �     O��Y*+��N��Y*� ��ַڶ�:� D � )� J ��:� -�� � -�� ��ӱ   %      � � 4� 8� C� K� N�&   4  4 ��    O' �     OQ �    O m   D�� (    � � E� $�� � 0   	Q   m   �� $   �     <��Y*+��M��Y*� ��ַڶ�N-� D � -� J ��:,�� ���   %      � 
� 0� 8� ;�&   *  0 ��    <' �     <`a  
 2�� (    � � E� 0   `   �� $   C     *� �++�0W�   %   
   � 
�&       ' �     �� 0   �  U    V    W   �� $   B     
*� �+�SW�   %   
   � 	�&       
' �     
�� 0   �  U    V    W   � M $   2     ��Y��   %      �&       ' �   �� $   �     '�YL�*��� *��Y����+ç M+�,�*��             %      � � � � "�&       '' �  (    �  �DB�  �� $   A     	*��+���   %   
   � �&       	' �     	�� 0   �  U    V    W   � $   A     	*��+� �   %   
   � �&       	' �     	�� 0   �  U    V    W   
   $  �     {���	L� pM�,�*� � N-� :�+��-Y:�,2� p� -,2�CWç :��-:�+��M,�M� �Y,��:�+�� 	 6 J M   M R M   
 ' b � 1 X b � 
 ' e 1 X e 
 ' o   1 X o   b q o   %   V   � 
� � �  � $� '� .� 1� 6� ?� G� U� X� _� b� c� e� f� o� x�&   >   S�
    BG �  c HI  f 	H�    { ��   
 q�
 .       { ��  (   3 � 1		 �  �EB� �  	  �BIBD     �0    �     ��� $   /     *� �   %       ?&       � �  �  $   /     *� �   %       ?&       ��  D     � �  $   g      4�� � �� �Y� �� �� �Y�� �Y���   %       ? } � � )�(    @ �   ��   B   �  % �	 �       �       �       � �	� � 
      