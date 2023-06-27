����   4
      "org/openide/text/DataEditorSupport decrementCacheCounter #(Lorg/openide/loaders/DataObject;)I	   	 
 env .Lorg/openide/windows/CloneableOpenSupport$Env;
     incrementCacheCounter	     charsets Ljava/util/Map;
     isEnvReadOnly ()Z	     obj  Lorg/openide/loaders/DataObject;
     saveFromKitToStream :(Ljavax/swing/text/StyledDocument;Ljava/io/OutputStream;)V	     ! warnedEncodingFiles Ljava/util/Set; # .org/openide/text/DataEditorSupport$DOEnvLookup
 " % & ' <init> #(Lorg/openide/loaders/DataObject;)V
  ) & * i(Lorg/openide/loaders/DataObject;Lorg/openide/util/Lookup;Lorg/openide/text/CloneableEditorSupport$Env;)V
 , - . / 0 org/openide/loaders/DataObject 	getLookup ()Lorg/openide/util/Lookup;
 2 3 4 & 5 'org/openide/text/CloneableEditorSupport I(Lorg/openide/text/CloneableEditorSupport$Env;Lorg/openide/util/Lookup;)V 7 +org/openide/text/CloneableEditorSupport$Env 9 -org/netbeans/modules/openide/loaders/SimpleES
 8 ; & < k(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;)V
 8 > & ? �(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;Ljava/util/concurrent/Callable;)V A CTL_ObjectOpen
 , C D E getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 G H I J K "org/openide/filesystems/FileObject 
getNameExt ()Ljava/lang/String;
 M N O P Q  org/openide/filesystems/FileUtil getFileDisplayName 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;
 S T U V W org/openide/util/NbBundle 
getMessage [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String; Y MSG_SaveFile
 S [ V \ I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; ^ original
 ` a b c d org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V	  f g h TABNAMES_HTML Z j <html>
 l m n o p java/lang/String 
startsWith (Ljava/lang/String;)Z
 l r s t 	substring (I)Ljava/lang/String; v java/lang/StringBuilder
 u x & y ()V { <b>
 u } ~  append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � </b>
 u � � K toString � <i> � </i> � LAB_EditorName
 � � � � � java/lang/Integer valueOf (I)Ljava/lang/Integer; � "java/lang/IllegalArgumentException
 S � V � 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;	  � � � ERR Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level; � $#166035: formatting failed. pattern= � 
, version=
 u � ~ � (I)Ljava/lang/StringBuilder; � , name=
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 , � �  isValid �  
 , � � � getNodeDelegate ()Lorg/openide/nodes/Node;
 � � � � K org/openide/nodes/Node getDisplayName
  � �  
isModified
 G � �  canWrite
  � � � annotateName )(Ljava/lang/String;ZZZ)Ljava/lang/String;
 � � � K getHtmlDisplayName
 � � � � � org/openide/xml/XMLUtil toElementContent &(Ljava/lang/String;)Ljava/lang/String; � java/io/CharConversionException � TIP_editor_modified � TIP_editor_ro
  � � � toolTip :(Lorg/openide/filesystems/FileObject;ZZ)Ljava/lang/String; � FMT_LineDisplayName2
 � � � � � org/openide/text/Line getLineNumber ()I
 � � & � (I)V
 S � V � m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
 � � � � �  org/openide/text/CloneableEditor setActivatedNodes ([Lorg/openide/nodes/Node;)V � java/beans/BeanInfo
 � � � � getIcon (I)Ljava/awt/Image;
 � � � � setIcon (Ljava/awt/Image;)V � 3org/openide/text/DataEditorSupport$DataNodeListener
 � � & � I(Lorg/openide/text/DataEditorSupport;Lorg/openide/text/CloneableEditor;)V
 � �  org/openide/nodes/NodeOp weakNodeListener T(Lorg/openide/nodes/NodeListener;Ljava/lang/Object;)Lorg/openide/nodes/NodeListener;
 � addNodeListener #(Lorg/openide/nodes/NodeListener;)V	 	
 nodeL  Lorg/openide/nodes/NodeListener;
 2 y notifyClosed
 2 createStyledDocument ?(Ljavax/swing/text/EditorKit;)Ljavax/swing/text/StyledDocument; javax/swing/text/Document title javax/swing/text/StyledDocument putProperty '(Ljava/lang/Object;Ljava/lang/Object;)V stream TIMER
 �!"# 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 �%& � FINE( Document* java/lang/Object
 �, �- A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 /01 desEnv /()Lorg/openide/text/CloneableEditorSupport$Env; 6 �4 &org/openide/text/DataEditorSupport$Env
3678 
access$000 N(Lorg/openide/text/DataEditorSupport$Env;)Lorg/openide/filesystems/FileObject;
:;<= p 7org/netbeans/modules/openide/loaders/AskEditorQuestions askFileReadOnlyOnClose
 2?@  canClose
 BCD getDataObject "()Lorg/openide/loaders/DataObject;FGHIJ java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;L java/nio/charset/Charset
NOPQR *org/netbeans/api/queries/FileEncodingQuery getEncoding @(Lorg/openide/filesystems/FileObject;)Ljava/nio/charset/Charset;T default-line-separator
 GVWX getAttribute &(Ljava/lang/String;)Ljava/lang/Object;Z[\]^ java/util/Set contains (Ljava/lang/Object;)Z` java/io/InputStreamReader
_b &c 2(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
Kefg 
newDecoder #()Ljava/nio/charset/CharsetDecoder;
ijklg java/nio/charset/CharsetDecoder reset
_n &o 9(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V
qrstu javax/swing/text/EditorKit read /(Ljava/io/Reader;Ljavax/swing/text/Document;I)Vw )java/nio/charset/CharacterCodingExceptiony Encoding problem using 
 u{ ~| -(Ljava/lang/Object;)Ljava/lang/StringBuilder;~ � 	getLength��� remove (II)V
 ��� !createAndThrowIncorrectCharsetUQE A(Lorg/openide/filesystems/FileObject;Ljava/nio/charset/Charset;)Z� java/lang/IllegalStateException	 ��� � INFO� "Encoding problem using {0} for {1}� $org/openide/text/DataEditorSupport$1� MSG_EncodingProblem
 G�� K getPath
�� &� 9(Ljava/lang/String;Lorg/openide/filesystems/FileObject;)V	 ��  cacheCounter
 ��� � intValueF��� put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	 �� h $assertionsDisabled� java/lang/AssertionError
� xF��J� java/lang/NullPointerException� Document is null
�� &� (Ljava/lang/String;)V� Kit is null� $org/openide/text/DataEditorSupport$2
�� &� =(Lorg/openide/text/DataEditorSupport;Ljava/io/OutputStream;)V� java/io/OutputStreamWriter
�� &� 3(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
q��� write 0(Ljava/io/Writer;Ljavax/swing/text/Document;II)V
���� y java/io/Writer close
 2��� openDocument #()Ljavax/swing/text/StyledDocument;� openDocument - charset removed
 ���� finest� +org/openide/text/DataEditorSupport$SaveImpl
�� &� '(Lorg/openide/text/DataEditorSupport;)V
 M��� runAtomicAction 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)V
 2�� y saveDocument
 �� y updateTitles
� x
 � -
����� org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 M�� � getExtension
 , �
 ��� getDocument
����� org/openide/loaders/DataFolder 
findFolder F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataFolder;
 G��� getFileObject 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 G�� y delete	����  7org/netbeans/modules/openide/loaders/DataObjectAccessor DEFAULT 9Lorg/netbeans/modules/openide/loaders/DataObjectAccessor;
  � getFileNameNoExtension
� 
copyRename �(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/loaders/DataObject;
 M	
 
createData \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 G getOutputStream ()Ljava/io/OutputStream;
  saveDocumentAs (Ljava/io/OutputStream;)V
 , setModified (Z)V
 , find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; org/openide/cookies/OpenCookie
 , ! 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 #�$ (Z)Z&' y open) .
 l+,- lastIndexOf (Ljava/lang/String;)I
 l/ s0 (II)Ljava/lang/String;2 0org/openide/text/DataEditorSupport$1SaveAsWriter
14 &5 ^(Lorg/openide/text/DataEditorSupport;Ljava/io/OutputStream;Ljavax/swing/text/StyledDocument;)V789 render (Ljava/lang/Runnable;)V
1;< y after
 >?@ createEditorKit ()Ljavax/swing/text/EditorKit;
 B C V(Ljavax/swing/text/StyledDocument;Ljavax/swing/text/EditorKit;Ljava/io/OutputStream;)V
EFGH  java/lang/Class desiredAssertionStatusJ "org.openide.text.DataEditorSupportL nb.tabnames.htmlN true
PQRST java/lang/System getProperty 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
VWXY p java/lang/Boolean parseBoolean[ org/openide/util/WeakSet
Z x^ java/util/HashMap
] x
abcde java/util/Collections synchronizedMap  (Ljava/util/Map;)Ljava/util/Map; 	Signature 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; KLjava/util/Map<Lorg/openide/loaders/DataObject;Ljava/nio/charset/Charset;>; DLjava/util/Map<Lorg/openide/loaders/DataObject;Ljava/lang/Integer;>; P(Lorg/openide/loaders/DataObject;Lorg/openide/text/CloneableEditorSupport$Env;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/text/DataEditorSupport; -Lorg/openide/text/CloneableEditorSupport$Env; MethodParameters lkp Lorg/openide/util/Lookup; StackMapTable $RuntimeInvisibleParameterAnnotations 1Lorg/netbeans/api/annotations/common/NullAllowed; create �(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;)Lorg/openide/text/CloneableEditorSupport; entry +Lorg/openide/loaders/MultiDataObject$Entry; set Lorg/openide/nodes/CookieSet; �(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;Ljava/util/concurrent/Callable;)Lorg/openide/text/CloneableEditorSupport; paneFactory Ljava/util/concurrent/Callable; LocalVariableTypeTable OLjava/util/concurrent/Callable<Lorg/openide/text/CloneableEditorSupport$Pane;>; �(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/nodes/CookieSet;Ljava/util/concurrent/Callable<Lorg/openide/text/CloneableEditorSupport$Pane;>;)Lorg/openide/text/CloneableEditorSupport; messageOpening #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; messageOpened messageSave pattern Ljava/lang/String; iae $Ljava/lang/IllegalArgumentException; version I label html modified readOnly messageName messageHtmlName ex !Ljava/io/CharConversionException; name 
documentID file $Lorg/openide/filesystems/FileObject; tip messageToolTip messageLine +(Lorg/openide/text/Line;)Ljava/lang/String; line Lorg/openide/text/Line; initializeCloneableEditor %(Lorg/openide/text/CloneableEditor;)V ourNode Lorg/openide/nodes/Node; nl editor "Lorg/openide/text/CloneableEditor; kit Ljavax/swing/text/EditorKit; doc !Ljavax/swing/text/StyledDocument; fileName loadFromStreamToKit U(Ljavax/swing/text/StyledDocument;Ljava/io/InputStream;Ljavax/swing/text/EditorKit;)V r Ljava/io/Reader; decoder !Ljava/nio/charset/CharsetDecoder; e +Ljava/nio/charset/CharacterCodingException; !Ljava/lang/IllegalStateException; Ljava/io/InputStream; c Ljava/nio/charset/Charset; fo� java/io/Reader 
Exceptions� java/io/IOException� %javax/swing/text/BadLocationException charset� &org/openide/util/UserQuestionException count Ljava/lang/Integer; tmpObj� java/lang/Throwable Ljava/io/OutputStream; fos Ljava/io/FilterOutputStream; w Ljava/io/Writer;� java/io/OutputStream� java/io/FilterOutputStream aa 1Lorg/openide/filesystems/FileSystem$AtomicAction; superSaveDoc myEnv getDataObjectHack2 callUpdateTitles findDataObject 9(Lorg/openide/text/Line;)Lorg/openide/loaders/DataObject; l saveAs 9(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)V df  Lorg/openide/loaders/DataFolder; newFile  Lorg/openide/cookies/OpenCookie; newExtension newDob 
currentDob folder index output myDoc saveAsWriter 2Lorg/openide/text/DataEditorSupport$1SaveAsWriter; os 
access$100 ()Ljava/util/Set; 
access$200 ^(Lorg/openide/text/DataEditorSupport;Ljavax/swing/text/StyledDocument;Ljava/io/OutputStream;)V x0 x1 x2 
access$900 F(Lorg/openide/text/DataEditorSupport;)Lorg/openide/loaders/DataObject; access$1000 '(Lorg/openide/text/DataEditorSupport;)Z access$1100 T(Lorg/openide/text/DataEditorSupport;)Lorg/openide/windows/CloneableOpenSupport$Env; access$1200 ()Ljava/util/Map; access$1300 access$1400 access$1500 <clinit> 
SourceFile DataEditorSupport.java InnerClasses ,org/openide/windows/CloneableOpenSupport$Env (org/openide/windows/CloneableOpenSupport Env DOEnvLookup )org/openide/loaders/MultiDataObject$Entry	 #org/openide/loaders/MultiDataObject Entry DataNodeListener SaveImpl /org/openide/filesystems/FileSystem$AtomicAction "org/openide/filesystems/FileSystem AtomicAction org/openide/nodes/Node$Cookie Cookie SaveAsWriter .org/openide/text/DataEditorSupport$EnvListener EnvListener ,org/openide/text/CloneableEditorSupport$Pane Pane !  2     � �        	
    g h   
   ! f   g 
   f   h �  f   i� h   .  &j k   Q     *+� "Y+� $,� (�   l   
    o  pm        no            	p q   	    	    & * k   �     *-,� 
+� +� ,� 1*+� �   l       |  }  ~m   *    no           rs     	p t   / �   ,� 6  6�    ,� 6  6�q      r   	  u      v     01 k   2     *� � 6�   l       �m       no   	wx k   I     � 8Y*+,� :�   l       �m               yz    {| q      y  {   	w} k   f     � 8Y*+,-� =�   l       �m   *           yz    {|    ~ �       ~� q      y  {  ~  f   �u          v   CD k   /     *� �   l       �m       no   � K k   R     ,@*� � B� F*� � B� L� R�   l       �  �  �  �m       no  �    �   � K k   ,     �   l       �m       no  �    �   � K k   D     ,X*� � B� F� Z�   l       �  �  �m       no  �    �   	 � � k  �     �]*� _� g� e� a*i� k� 
*� qK� � uY� wz� |*� |�� |� �K� � uY� w�� |*� |�� |� �K� uY� wi� |*� |� ���  *i� k� � uY� wi� |*� |� �K� � � � � � 6,�� �*� R�:,�� �:� �� �� uY� w�� |� |�� |� ��� |*� |� �� �*�  � � � � l   F    �  �  �  �   � $  = A Z n { �
 � � � � �m   H  � 4��  � =��  � M��    ���     �� h    �� h    �� h t    
  @�   l  �q   �  �  �  �   � K k   �     2*� � �� ��*� � �� �*� �*� � B� �� � � ð   l       
 m       2no  t   " �     l�      l�    �   � K k   �     K*� � �� �*� � �� �L+� *� � �� �� �L� M�+*� �*� � B� �� � � ð   ) , � l   & 	  $ 
% ( ) + ). ,, -- /1m      - ��    Kno    4�� t   9 �    l  ��    l  l�     l  l�    �   � K k   S     *� � �� ��*� � B� F�   l      6 
7 9m       no  t    �    �   	 � � k   �     G*� LN� e� =� � uY� w-� |,Ҹ �� |� �N� � uY� w-� |,Ը �� |� �N-�   l      G H I J (L ,M EPm   *    G��     G� h    G� h   B�� t   	 � ( lq   �  �  �   � K k   p     !*� � B*� �*� � B� �� � � ְ   l      Zm       !no  t    �     G�      G�    �   �� k   m     ),�*� � B� F*� � B� L� �Y+� �`� � �   l      g h i j %gm       )no     )�� q   �  �    �   �� k   �     @*� � �� 8*� � �M+� �Y,S� �+,� � �� �Y*+� �N,-,� ��*-��   l   "   { 
| } ~ ' 1� :� ?�m   *   -��  1 �
    @no     @�� t    ?q   �  �    �    y k   <     
*�*��   l      � � 	�m       
no  �    �    k   �     I*+�M,*� � B� L� ,*� � � �$'�)Y*� � BSY,S�+,�   l      � � � � � &� G�m        Ino     I��   C�� q   �  �    �   @  k   t     +*�.�2 � *� � *� �3�5� FL+�9�*�>�   l      � � !� &�m     ! ��    +no  t    &�    �   �� k       � *�A�E �K:� *�A� B�M:*�A� B:+SS�U� � �Y � �_Y,�a:� �d:�hW�_Y,�m:-+�p� t:� ��$� uY� wx� |�z� �� �++�} �� ��W� ::� ��$� uY� wx� |�z� �� �++�} �� ��W�  q y |v q y �� l   Z   � � � "� +� <� I� X� _� e� q� y� |� ~� �� �� �� �� �� �� �� ��m   p  U ��  _ ��  ~ 5��  � 5��    �no     ���    ��    ���   ���  + ���  q }�� t    � "K� 5 G� �Jvy�6�    ��q   �    �  �    �   
�� k   f     .� �����)Y+SY*S�+��Y,�+*��� R*���   l   
   � �m       .��     .�� �    �q   	� �   
   k   �     C��YL²�*�E � �M,� � �M,N,��`� �M-W��*,�� W,��+ì:+��   ; <   < @ <   l   "   � � � � � *� 5� <�m      )��    C�   t    � ) ��   ,) �q   �   *   k   �     `��YL²�*�E � �M��� ,� ��Y���,N,��d� �M-W,��� ��*�� W� ��*,�� W,��+ì:+��   X Y   Y ] Y   l   & 	  � � � %� 3� :� G� R� Y�m      F��    `�   t    � %) �!
�   ,) �q   �    C k  W     y+� ��Y����,� ��Y����� *�A�E �K:� *�A� B�M:��Y*-��:��Y��:,++�} ���§ :����  X f n   n p n   l   >     
   / 4 @ K X f k n u xm   H    yno     y��    y��    y�  / J��  K .��  X !�� t   * � !K� -  q�K�� �	�    ��q   �  �    �    �   �� k  %     n*�AL� +�E �KM,� +� B�MM� +,�� W+� W*��N+� � � +�� W� �˶�-�:+� � � +�� W� �˶��   3 O   O Q O   l   >   " # $ % ( )) .* 3, :- D/ M* O, X- b/ k0m        nno    i�    \�� t   + �  ,K� %� 
   ,K ��  ��    ��    �   � y k   J     ��Y*��L+�ձ   l      7 	8 9m       no   	 �� �    ��    �   � y k   3     *�ٱ   l   
   < =m       no  �    �    k   g     *�.L+�3� +�3�5� �� � �   l   
   A Bm       no    �p t   
 �  6@ �D k   /     *� �   l      Gm       no   � y k   3     *�ܱ   l   
   M Nm       no   	�� k   T     *� ��Y�߿*��,��� ,�   l      Z [ ]m       ��  t    q   �   �� k  �     �*� �3� �,��N:*�A:�� *�� 0+��:+,��:� ����*,�-�:�  +,�:*����:� #��:� *�"W�% �   l   V   h 
k m n o (q .s 5t ;v @y Rz U| \} e~ k r� x� �� �� �� ��m   f 
 . $��  5 ��  \ ��  � ��   ���   ��    ��     �no     ���    ��� t    � ( l , ,� � G� � %�    �q   	�  �    � k   l     +(�*=� +�+�.�   l      � � � �m        no     ��   �� t    � q   �    k   t     *��M�1Y*+,�3N,-�6 -�:�   l      � � � � �m   *    no     ��   ��   �� �    �q   �     k   ]     *�=N*+-,�A�   l      � � �m   *    no     ��    ��   �� �    ��q   	�  �  �� k         � �   l       `�� k   E     *+,� �   l       `m        �o     ��    �� �    ���� k   /     *� �   l       `m       �o  �� k   /     *� �   l       `m       �o  �� k   /     *� �   l       `m       �o  �� k         � �   l       `�  k   /     *� �   l       `m       �   �� k   /     *� �   l       `m       �o  �  k   /     *� �   l       `m       �    � y k   �      M�D� � ��I� � �KM�O�U� e�ZY�\� �]Y�_�`� �]Y�_�`���   l       `  b  � (� 2� ?�t    @ �   ��   r  	 "  
 6 2	
 �  3 	�      �      �  
	 �	1       2	