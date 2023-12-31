����   4*
      org/openide/loaders/DataShadow getDataShadowsSet ()Ljava/util/Map;
   	 
 writeOriginal �(Ljava/lang/String;Ljava/lang/String;Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;)Lorg/openide/filesystems/FileObject;	     nodes Ljava/util/LinkedList;
     updateShadowOriginal #(Lorg/openide/loaders/DataShadow;)V	     original  Lorg/openide/loaders/DataObject;
     setOriginal #(Lorg/openide/loaders/DataObject;)V
     writeShadowFile 5(Lorg/openide/filesystems/FileObject;Ljava/net/URL;)V	    ! " allDataShadows Ljava/util/Map; $ java/util/HashMap
 # & ' ( <init> ()V
 * + , - . org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject; 0 .org/openide/loaders/DataShadow$DSWeakReference
 / 2 ' 3 (Ljava/lang/Object;)V 5 6 7 8 9 java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; ; java/util/Set
 = > ? @ A java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set; 5 C D E put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; G java/util/HashSet
 F I ' J (Ljava/util/Collection;)V : L M N add (Ljava/lang/Object;)Z 5 P Q R isEmpty ()Z T java/util/ArrayList 5 V W X size ()I
 S Z ' [ (I)V 5 ] ^ _ values ()Ljava/util/Collection; a b c d e java/util/Collection iterator ()Ljava/util/Iterator; g h i j R java/util/Iterator hasNext g l m n next ()Ljava/lang/Object; : b q java/lang/ref/Reference
 p s 8 n u L v java/util/List x "org/openide/loaders/OperationEvent
 w z { | 	getObject "()Lorg/openide/loaders/DataObject; ~ )org/openide/loaders/OperationEvent$Rename � 'org/openide/loaders/OperationEvent$Move
  � � � refresh (Z)V
  � � � getAllDataShadows ()Ljava/util/List; u V u � 8 � (I)Ljava/lang/Object;
 � � � ' � #org/openide/loaders/MultiDataObject L(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/MultiFileLoader;)V	  � � � origL &Lorg/openide/loaders/DataShadow$OrigL; � java/util/LinkedList
 � &
  � �  init
 � � ' � G(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataLoader;)V � "java/lang/IllegalArgumentException
 � &
  � �  enqueueDataShadow
 � � � � � "org/openide/loaders/DataLoaderPool getShadowLoader '()Lorg/openide/loaders/MultiFileLoader;
  � ' � l(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiFileLoader;)V � shadow
  � � � create �(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Lorg/openide/loaders/DataObject;Ljava/lang/String;)Lorg/openide/loaders/DataShadow;
 � + � org/openide/loaders/DataFolder � +org/openide/loaders/DataShadow$CreateShadow
 � � ' � k(Ljava/lang/String;Ljava/lang/String;Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;)V
 � � � � � "org/openide/loaders/DataObjectPool getPOOL &()Lorg/openide/loaders/DataObjectPool;
 � � � � runAtomicAction X(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileSystem$AtomicAction;)V
 � � � � 	getShadow "()Lorg/openide/loaders/DataShadow;	  � � � MUTEX Lorg/openide/util/Mutex; �  org/openide/loaders/DataShadow$1
 � � ' � k(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Lorg/openide/loaders/DataObject;Ljava/lang/String;)V
 � � � � � org/openide/util/Mutex writeAccess <(Lorg/openide/util/Mutex$ExceptionAction;)Ljava/lang/Object; � "org/openide/filesystems/FileObject � org/openide/util/MutexException
 � � � � getException ()Ljava/lang/Exception; � java/io/IOException �  org/openide/loaders/DataShadow$2
 � � ' 
 � � � � lock $()Lorg/openide/filesystems/FileLock; � java/io/OutputStreamWriter
 � � � � getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream;	 � � � � � !java/nio/charset/StandardCharsets UTF_8 Ljava/nio/charset/Charset;
 � � ' � 3(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
 � � � � � java/net/URL toExternalForm ()Ljava/lang/String;
 java/io/Writer write (Ljava/lang/String;)V
 ( close

 (  org/openide/filesystems/FileLock releaseLock
  readOriginalFileAndFileSystem 9(Lorg/openide/filesystems/FileObject;)[Ljava/lang/String;	  $assertionsDisabled Z java/lang/AssertionError
 & java/net/URI
 ' java/net/URISyntaxException
 ! R 
isAbsolute
#$% toURL ()Ljava/net/URL;
'()*+ !org/openide/filesystems/URLMapper findFileObject 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject;
-./0 .  org/openide/filesystems/FileUtil getConfigRoot
 �234 toURI ()Ljava/net/URI;
67 � toString
9:;<= java/lang/String 
startsWith (Ljava/lang/String;)Z
?@ � 
getRawPath
9BC X length
9EFG 	substring (I)Ljava/lang/String;
IJKLM org/openide/util/Utilities 	translate &(Ljava/lang/String;)Ljava/lang/String;
9OP N equalsR java/lang/StringBuilder
Q &
QUVW append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
Q6	 Z[\ LOG Ljava/util/logging/Logger;	^_`ab java/util/logging/Level WARNING Ljava/util/logging/Level;d  Could not form URI from {0}: {1}f java/lang/Object
hijkl java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)Vn SystemFileSystem
 �pqr getFileSystem &()Lorg/openide/filesystems/FileSystem;
tuvwx "org/openide/filesystems/FileSystem findResource 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
-z{x getConfigFile
 }~ findOriginal J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject;
 *��� find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject;� java/io/FileNotFoundException
Q�V� (C)Ljava/lang/StringBuilder;
�
t�� . getRoot
 �#
 �� '� #(Ljava/net/URL;Ljava/lang/String;)V
 ���� getSize ()J� originalFile
 ���� getAttribute &(Ljava/lang/String;)Ljava/lang/Object;� originalFileSystem
 ��� � getPath�  org/openide/loaders/DataShadow$3
�� '� '(Lorg/openide/filesystems/FileObject;)V
 ��� � 
readAccess� [Ljava/lang/String;
  +
 ��� deserialize
 �� ( waitUpdatesProcessed� )org/openide/loaders/DataShadow$ShadowNode
�� ' 
 ��� R canWrite
 *��� 
getHelpCtx ()Lorg/openide/util/HelpCtx;
 ���� testNesting C(Lorg/openide/loaders/DataFolder;Lorg/openide/loaders/DataFolder;)V
 *��� handleCreateShadow B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataShadow;
���� N java/lang/Class 
isInstance
��� 9 cast� org/openide/nodes/Node$Cookie
 *��� 	getCookie R(Lorg/openide/loaders/DataShadow;Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
e��� getClass ()Ljava/lang/Class;	 ��� lookup )Lorg/openide/loaders/DataShadow$DSLookup;� 'org/openide/loaders/DataShadow$DSLookup
�� '� C(Lorg/openide/loaders/DataShadow;Lorg/openide/loaders/DataObject;)V
 ���� 	getLookup ()Lorg/openide/util/Lookup;
 �� ( 	tryUpdate
 ��� checkOriginal F(Lorg/openide/loaders/DataObject;)Lorg/openide/filesystems/FileObject;
 �� � setValid�  java/beans/PropertyVetoException
 ���� notifyAttributeChanged /(Lorg/openide/filesystems/FileAttributeEvent;)V
 ���� notifyFileChanged &(Lorg/openide/filesystems/FileEvent;)V
 ���� isOurs &(Lorg/openide/filesystems/FileEvent;)Z
 ��� readURL 4(Lorg/openide/filesystems/FileObject;)Ljava/net/URL;
 �O $org/openide/loaders/DataShadow$OrigL
 �
 * removePropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 *	 addPropertyChangeListener
� ��
 � V
 � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; ,[Lorg/openide/loaders/DataShadow$ShadowNode;
� 
access$100 .(Lorg/openide/loaders/DataShadow$ShadowNode;)V java/lang/IllegalStateException	 java/lang/System out Ljava/io/PrintStream;  5Please reopen the bug #18998 if you see this message.
"#$% java/io/PrintStream println' Old:
Q)V* -(Ljava/lang/Object;)Ljava/lang/StringBuilder;,  .  / 
 *01 R isValid
Q3V4 (Z)Ljava/lang/StringBuilder;
678 identityHashCode (Ljava/lang/Object;)I
Q:V; (I)Ljava/lang/StringBuilder;= New:? 'org/openide/loaders/DataShadow$1Updator
> &	>BCD sh  Lorg/openide/loaders/DataShadow;	>FGH primary $Lorg/openide/filesystems/FileObject;	 JK\ ERRM updateShadowOriginal: O 	 primary 
hQR fineT java/lang/ref/WeakReference	 VWX RP #Lorg/openide/util/RequestProcessor;Z java/lang/Thread
\]^_` !org/openide/util/RequestProcessor post @(Ljava/lang/Runnable;II)Lorg/openide/util/RequestProcessor$Task;
S 2	 cde lastTask Ljava/lang/ref/Reference;
\gh R isRequestProcessorThreadj org/openide/util/Task
ilm ( waitFinished
 �opq 
handleCopy B(Lorg/openide/loaders/DataFolder;)Lorg/openide/loaders/DataObject;
 �stu 
handleMove F(Lorg/openide/loaders/DataFolder;)Lorg/openide/filesystems/FileObject;
�wx R desiredAssertionStatus
 � &{ DataShadow validity check
\~ (org/openide/loaders/DataObject$Container serialVersionUID J ConstantValueW��O��=o SFS_NAME Ljava/lang/String; 	Signature CLjava/util/LinkedList<Lorg/openide/loaders/DataShadow$ShadowNode;>; SHADOW_EXTENSION �Ljava/util/Map<Lorg/openide/filesystems/FileObject;Ljava/util/Set<Ljava/lang/ref/Reference<Lorg/openide/loaders/DataShadow;>;>;>; 2Ljava/lang/ref/Reference<Lorg/openide/util/Task;>; Code LineNumberTable StackMapTable �()Ljava/util/Map<Lorg/openide/filesystems/FileObject;Ljava/util/Set<Ljava/lang/ref/Reference<Lorg/openide/loaders/DataShadow;>;>;>; LocalVariableTable ds m prim ref s Ljava/util/Set; LocalVariableTypeTable ;Ljava/lang/ref/Reference<Lorg/openide/loaders/DataShadow;>; LLjava/util/Set<Ljava/lang/ref/Reference<Lorg/openide/loaders/DataShadow;>;>; MethodParameters r refs Ljava/util/Iterator; ret Ljava/util/List; it QLjava/util/Iterator<Ljava/lang/ref/Reference<Lorg/openide/loaders/DataShadow;>;>; 2Ljava/util/List<Lorg/openide/loaders/DataShadow;>; bLjava/util/Iterator<Ljava/util/Set<Ljava/lang/ref/Reference<Lorg/openide/loaders/DataShadow;>;>;>; 4()Ljava/util/List<Lorg/openide/loaders/DataShadow;>; checkValidity (Ljava/util/EventObject;)V obj i I ev Ljava/util/EventObject; src shadows changed all� java/lang/Throwable� java/util/EventObject this fo loader %Lorg/openide/loaders/MultiFileLoader; 
Exceptions� -org/openide/loaders/DataObjectExistsException g(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataLoader;)V  Lorg/openide/loaders/DataLoader; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; G(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataObject;)V b(Lorg/openide/loaders/DataFolder;Lorg/openide/loaders/DataObject;)Lorg/openide/loaders/DataShadow; folder  Lorg/openide/loaders/DataFolder; t(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Lorg/openide/loaders/DataObject;)Lorg/openide/loaders/DataShadow; name ext cs -Lorg/openide/loaders/DataShadow$CreateShadow; e !Lorg/openide/util/MutexException; trg url Ljava/net/URL; "Lorg/openide/filesystems/FileLock; os Ljava/io/Writer; u Ljava/net/URI; Ljava/net/URISyntaxException; temp ex rootPathFragment cfgPart 
translated cfgRoot cfgURI prefix urlText target fs $Lorg/openide/filesystems/FileSystem; sfs 
fileObject fileAndFileSystem path fsname fileName Ljava/lang/Object; f orig getOriginal getChildren #()[Lorg/openide/loaders/DataObject; createNodeDelegate ()Lorg/openide/nodes/Node; isDeleteAllowed isCopyAllowed isMoveAllowed isRenameAllowed 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; c Ljava/lang/Class; Ljava/lang/Class<TT;>; ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; moved fae ,Lorg/openide/filesystems/FileAttributeEvent; fe #Lorg/openide/filesystems/FileEvent; !Ljava/lang/IllegalStateException; o oldOriginal n )Lorg/openide/loaders/DataShadow$1Updator; t Lorg/openide/util/Task; 
access$000 x0 x1 
access$200 
access$300 B(Lorg/openide/loaders/DataShadow;)Lorg/openide/loaders/DataObject; 
access$400 
access$500 8(Lorg/openide/loaders/DataShadow;)Ljava/util/LinkedList; 
access$700 x2 x3 
access$900 <clinit> 
SourceFile DataShadow.java InnerClasses DSWeakReference Rename Move OrigL CreateShadow /org/openide/filesystems/FileSystem$AtomicAction AtomicAction &org/openide/util/Mutex$ExceptionAction ExceptionAction 
ShadowNode" org/openide/nodes/Node Cookie DSLookup Updator' &org/openide/util/RequestProcessor$Task Task 	Container !  � }  � �   � �� �   m       � �      �   � ��   �� �    � 
 ! " �   � 
 � �   
WX   
de �   �   0 *   �   =      � � � #Y� %� � �   �       I  J  L�    �   � * �  �  (     d� L*� � )M� /Y*� 1N+,� 4 � ::� -� <:� ,� B W� +� F� � FY� H:� ,� B W-� K W�   �   2    P  R  S  T ! U & V , W ; Y C Z N [ Z ] c _�   4    d�D    `� "   X�H   O�e  ! C�� �       `��   O��  ! C�� �    � ;   5 � p :  �   �   * � � �  n     � � � � O � �� SY� � U � YK� � \ � ` L+� f � F+� k � :M,� o N-� f � )-� k � p:� r� :� *� t W��ԧ��*�   �   >    c  d  g # h 1 i : j D k K l T m _ n i o n p w r z s } u�   >  _ �e  i  �D  D 6��  K /��  # \��   1 N�� �   4  _ ��  D 6��  K /��  # \��   1 N�� �    �  u g�  : g+� �   � �� �  	  	  L*� w� *� w� yLMYN² � � � O � -ñ+� #� +� )� 4 � :M,� -ñ� FY,� HM-ç 
:-��N*� }� 
*� � *� w� yN,� G,� o :� f � 4� k � p:� r� :� � -� � � ���ȱ� �:� �� � 66� *� � � :� -� � � ����ձ   + U   , F U   G R U   U Y U   �   ~    |  } 	 ~  �  �  � , � 0 � @ � D � G � P � \ � ^ � l � t � x � � � � � � � � � � � � � � � � � � � � � � � � � � � ��   f 
 �  �D  � "�e  � �D  � .��   ��    �    ���  ^ ��   � A��  � 2 W� �      � "��   ���  � A�� �   � �  *�  :eD�� �  *�   g� 3 � * : *  g p   �   � * : *  g p   � �  � 
  u� � # 	� * : *  u   �   	� * : *  u   � �   �    ' � �   t     *+-� �*� �*� �Y� �� *,� ��   �       �  9  ;  �  ��   *    �D     �H          �� �    ��   �     �    '� �   t     *+-� �*� �*� �Y� �� *,� ��   �       �  9  ;  �  ��   *    �D     �H          �� �    ��   �     �  �    �    �    �  �   c     +� � �Y� ��*+� *� ��   �       �  �  �  �  ��       �D        �    �        '� �   L     
*+,� �� ��   �   
    � 	 ��        
�D     
�H    
   �    ��   	�      	 �� �   =     	*+�� ��   �       ��       	��     	   �     ��   	�      	 �� �   G     	*+,�� ��   �       ��        	��     	��    	   �     ��   �  �    	 � � �   �     $*� �:� �Y+-,� �:� �� �� ư   �         �   >    $��     $��    $      $��   �H   �� �     ��   �  �   �  
 	 
 �   �      � ʻ �Y,*-+� ж �� ٰ:� �� �      � �      % 9 :�   4   	��     ��      ��     �H     �  �    U ��     ��   � � � �   	  �   �     � ʻ �Y*+� � �W� M,� �� ῱      � �      C K I J L�       ��     �H     �� �    S ��     ��   	 � �  
   �   �     6*� �M� �Y*,� �� � �N-+� �� -�,�	� :-�,�	��    (   ( * (   �   * 
  T U W Y !Z %[ (Y .Z 2[ 5\�   *    6�H     6��   1 ��   !�� �    � (  � �
 ��     ��   	�  �   	~ �  �    9*�L+2M�� ,� �Y���Y,�:� ::+2:� ��� ��"�&N-� �,:�1:�5:�5:		�8� o�>:
�>
�A�D:�H:�N� H�Y�QY�S�T�T�X�:�"�&N� :�Y�]c�eYSYS�g� [m�N� �,�o:6� *�o:6,�sN-� � 6,�yN� -� ,�H:,�N� 	�yN-�   % ( � � � �   � (  l m 	n r %u (s *t -v 2w ?x Hy Lz Q{ X| _} f� p� w� �� �� �� �� �� �� �� �� �� �� �� �� �������"�(�1�7��   �  % ��  * ��  � 	��  � ��  w e�� 
 � V��  � O��  Q ��H  X ���  _ }��  f v�� 	 H ��H  � ��  � � ( ��  � 9��  6�   9�H   4��  	0��  1�H  -��  2�� �   � 
� �9L�  � �  ��9 �9 �99999 �   ��9 �9  �   ��9 9  � t�   ��9 �9t  � �     ��   �   �� �   �     8*�|L+� +���*�M,2N��Y�QY�S-�T:��,2�T�X���   �      � � 	� � � ��   *   %��   !��    8�H    3�H �    �  ��     ��   �   �� �  w     �*�L+2M�� ,� �Y���Y,�N� :N-� -�� -�"�+2:m�N� �  *�o,�s� ,�y� �,�o:� 	*�o:� �Y����,���   $ ' �   :   � � 	� � $� '� )� +� 6� ;� @� b� m� s��   \ 	 $ ��  ) ��  j ��  s ��  @ D��    ��H    ��  	 {��  + Y�� �   7 � �9K� � & 9
�   ��9t9  �     ��   �   
 �   �     r*��	�� Q*���L+�9� �9Y+�9SY*����9S�+� �� �9Y+� �� �SYS���Y*������ ʻ�Y*�������L+� �� �  W h i � �   * 
  � 	� � � 1� 8� K� W� i� j��       F��  j ��    r�H  �    � 1e� Q ��     ��   �  �� �   V     +� �*����� )�   �      � � ��       �D     �  �    �     ��   �   � | �   6     ��*� �   �   
    �       �D   �� �   6     � *Y*� S�   �      �       �D   �� �   3     	��Y*���   �      �       	�D   � R �   2     *�����   �      �       �D   � R �   ,     �   �      �       �D   � R �   2     *�����   �      &�       �D   � R �   2     *�����   �      -�       �D   �� �   2     *� ���   �      4�       �D   �� �   c     *� � �� *� � �+��*� +���   �      ? 
@ B�       �D     �� �    �     ��   �   �� �   r     +*�ę +*���̰*� *+�ΰ   �      H I K�       �D     �� �       �� �    �   �  �   ��    �   �� �   �     6*��� +YL�*��� *��Y**� �ܵ�*��+ðM+�,�*�߰   + ,   , / ,   �      P 	Q R S %U ,V 1X�       6�D  �    � %eF�� �    �    � ( �   4     *� ��   �   
   ^ _�       �D    � � �   �     7� *��**� ��M,� ,*� � )� *,��� �� M*�� M�    ( , � - 2 5� �   6   d e g h i  j (l )o ,n -r 2t 5s 6u�       �H    7�D     7� �    �  ��  B � G� �   �    �� �   G     *+��*� ��   �      y z 
{�       �D     �� �   �  �    �    �� �   [     *+��+��� *� ��   �       � � ��       �D     �� �    �   �  �    �   � ( �   {     )*����L+*� � )����� �*��*� � W�   �      � � � � (��       )�D    !�� �    �  ��     �    �  �    B*� �� *� Y*�� �*� � *� *� ��*� M+*� ��*+� *��� *��**� �
N*� Y:�*� *� �����Nç :��6-�� -2����� �:��!��QY�S&�T,�(,� 	+� '�QY�S-�T,�/�2-�T,�5�9�X�T�X�!��QY�S<�T*� �(*� � 	+� -�QY�S-�T*� �/�2-�T*� �5�9�X�T�X�!��  T l o   o t o   w � � �   n   � � � � %� *� 2� 7� >� J� L� T� i� w� �� �� �� �� �� �� �� �� �� ��;�>�A��   >  z ��  � ���   B�D    B�   *�   L �  �   � � $ *� $   * *e �� � � B� (   * * "Q� #   * * "Q9� ,   * * "Q� )   * * "Q9� �   �   
   �   �     Z�>Y�@L+*�A++�A� � )�E�I�QY�SL�T+�A�(N�T+�E�(�X�P�SY�U+d�[�a�b�   �      � � � � E� Y��       Z �D    R� �    �   � ( �   _     �U�f� �b� r�iK*� *�k�   �      � 	� � � ��        �     pq �   `     *� � �� *� � �+��*+�n�   �      � 
� ��       �D     �� �    �     ��   �   tu �   `     *� � �� *� � �+��*+�r�   �      � 
� ��       �D     �� �    �     ��   �    �   :     *+� �   �       0�       H     � �     �� �   :     *+� �   �       0�       D       	 �   /     *� �   �       0�       D  
  �   /     *� �   �       0�       D   �   /     *� �   �       0�       D   
 �   P     *+,-� �   �       0�   *    �     �    H      �     �  �         � �   �       0  ( �   b      3�v� � �� �Y�y� ʻ\Yz�|�U�SY�a�b�   �       0  E � '��    @       �  /   } w   w    
 �  
t	 �       �	 �      �      �   �!#	� $ 
>  %  &\( } *)	