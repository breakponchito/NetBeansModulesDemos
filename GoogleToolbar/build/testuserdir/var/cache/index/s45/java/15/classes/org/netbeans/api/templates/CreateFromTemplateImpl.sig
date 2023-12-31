����   4�
      java/lang/Object <init> ()V	  	 
   1org/netbeans/api/templates/CreateFromTemplateImpl builder (Lorg/netbeans/api/templates/FileBuilder;
      &org/netbeans/api/templates/FileBuilder getDescriptor /()Lorg/netbeans/api/templates/CreateDescriptor;	     desc -Lorg/netbeans/api/templates/CreateDescriptor;
     +(Lorg/netbeans/api/templates/FileBuilder;)V  +java/util/concurrent/atomic/AtomicReference
  
     ! " +org/netbeans/api/templates/CreateDescriptor 	getTarget &()Lorg/openide/filesystems/FileObject;
 $ % & ' ( "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;   * + , run �(Ljava/util/concurrent/atomic/AtomicReference;Lorg/netbeans/api/templates/CreateFromTemplateImpl;)Lorg/openide/filesystems/FileSystem$AtomicAction;
 . / 0 1 2 "org/openide/filesystems/FileSystem runAtomicAction 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)V
  4 5 6 get ()Ljava/lang/Object; 8 java/util/List
  : ; < computeEffectiveName 0(Lorg/netbeans/api/templates/CreateDescriptor;)V
  > ? @ findTemplateParameters ()Ljava/util/Map;
  B C D withParameters 9(Ljava/util/Map;)Lorg/netbeans/api/templates/FileBuilder; F java/util/ArrayList
 H I J K L org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; N 6org/netbeans/api/templates/CreateFromTemplateDecorator
 H P Q R 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection;
 E T  U (Ljava/util/Collection;)V	  W X Y 
decorators Ljava/util/List; 7 [ \ ] iterator ()Ljava/util/Iterator; _ ` a b c java/util/Iterator hasNext ()Z _ e f 6 next M h i j accept 0(Lorg/netbeans/api/templates/CreateDescriptor;)Z _ l m  remove
  o p " getTemplate	  r s t defaultMode -Lorg/netbeans/api/templates/FileBuilder$Mode;	  v w x format Ljava/text/Format; z f
 | } ~  � org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V � folder	  � � � $assertionsDisabled Z	 � � � � t +org/netbeans/api/templates/FileBuilder$Mode FORMAT � java/lang/AssertionError � 'Format must be provided for Mode.FORMAT
 � �  � (Ljava/lang/Object;)V
 $ � � c isFolder � "java/lang/IllegalArgumentException � java/lang/StringBuilder
 �  � Not a folder: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 � �  � (Ljava/lang/String;)V
  � �  setupDecorators
 E 
  � � � callDecorators #(ZLjava/util/List;)Ljava/util/List;
  � � L 	getLookup � 4org/netbeans/api/templates/CreateFromTemplateHandler � � � � � java/util/Collection stream ()Ljava/util/stream/Stream; � � � � � java/util/stream/Stream concat M(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;  � � � test S(Lorg/netbeans/api/templates/CreateFromTemplateImpl;)Ljava/util/function/Predicate; � � � � filter 9(Ljava/util/function/Predicate;)Ljava/util/stream/Stream; � � � � 	findFirst ()Ljava/util/Optional; � template.createTemplateHandler
 $ � � � getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
 � � � � � java/util/Optional orElse &(Ljava/lang/Object;)Ljava/lang/Object;	  � � � handler 6Lorg/netbeans/api/templates/CreateFromTemplateHandler;
 � � � � createFromTemplate ?(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/List; 7 � � c isEmpty
 � 	 � � � t FAIL
  � � � defaultCreate ()Ljava/util/List;	  � � � originalParams Ljava/util/Map;	  � � � 
parameters 7 � � � addAll (Ljava/util/Collection;)Z M � � c isBeforeCreation M � � c isAfterCreation M decorate O(Lorg/netbeans/api/templates/CreateDescriptor;Ljava/util/List;)Ljava/util/List; 7 � 	removeAll
 �	
 mapParameters 5(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String; javax/script/ScriptEngine 
getContext ()Ljavax/script/ScriptContext; javax/script/ScriptContext getBindings (I)Ljavax/script/Bindings; javax/script/Bindings putAll (Ljava/util/Map;)V name !" put 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;$ java/io/StringWriter
# ' java/io/PrintWriter
&) * (Ljava/io/Writer;)V,-* 	setWriter
/012 � java/lang/Class getName4 .owner678 setAttribute ((Ljava/lang/String;Ljava/lang/Object;I)V: javax.script.filename
 $<= � 
getNameExt?@ � eval
&BC  flush
# �F javax/script/ScriptException	 HIJ LOG Ljava/util/logging/Logger;	LMNOP java/util/logging/Level SEVERE Ljava/util/logging/Level;R .Errors encountered during interpolation of {0}
TUVWX java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)VZ Cannot interpolate name
T\W] C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 0
 `a @ getParameterscde 5 � java/util/Map
ghijk Aorg/netbeans/modules/templates/ScriptingCreateFromTemplateHandler engine A(Lorg/openide/filesystems/FileObject;)Ljavax/script/ScriptEngine;m java/lang/String
  �
 $0
 qrs interpolateName t(Ljavax/script/ScriptEngine;Ljava/lang/String;Ljava/util/Map;Lorg/openide/filesystems/FileObject;)Ljava/lang/String;	uvwxy java/lang/Boolean TRUE Ljava/lang/Boolean;{ template.mergeFolders
 }~ � getValue
u��� equals (Ljava/lang/Object;)Zc�!� 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 $�� � getExt
�����  org/openide/filesystems/FileUtil findFreeFileName \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;	 ��� proposedName Ljava/lang/String;� java/util/HashMap
� 
�� 7org/netbeans/api/templates/CreateFromTemplateAttributes � [���� attributesFor >(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/Map;c��� entrySet ()Ljava/util/Set;� [� java/util/Set� java/util/Map$Entry��� 6 getKeyc��� containsKey��~ 6
��
 �� � getProposedName
��
 �� c hasFreeExtension� [.].*�  
l��� replaceFirst 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;� java/util/Date
� � dateTime� 
nameAndExt
l��� length ()I
l��� indexOf (I)I
 �� �� (C)Ljava/lang/StringBuilder;
���� createFolder \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 ���� copyAttributesFromTemplate �(Lorg/netbeans/api/templates/CreateFromTemplateHandler;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V
 ���� defaultCopyContents �(Lorg/netbeans/api/templates/CreateDescriptor;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)Ljava/util/List;
 �� � defaultCreateFolder	 ��� t COPY� org/openide/util/MapFormat
��� @ getMap
�� 
��� setMap
 $��� 
createData J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
����� *org/netbeans/api/queries/FileEncodingQuery getEncoding @(Lorg/openide/filesystems/FileObject;)Ljava/nio/charset/Charset;
 $��� lock $()Lorg/openide/filesystems/FileLock;
 $��� getInputStream ()Ljava/io/InputStream;  java/io/InputStreamReader
�  2(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V java/io/BufferedReader
  (Ljava/io/Reader;)V
 
 c isPreformatted
g indentEngine ()Ljavax/script/ScriptEngine;
 $ getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream; java/io/OutputStreamWriter
  3(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
 � readLine 

 ! �" java/io/Writer *(Ljava/lang/CharSequence;)Ljava/io/Writer;
$%& w' java/text/Format &(Ljava/lang/Object;)Ljava/lang/String;
B* mimeType
 $,- � getMIMEType/ java/io/StringReader
. �2@3 $(Ljava/io/Reader;)Ljava/lang/Object;
56  close8 java/lang/Throwable
7:;< addSuppressed (Ljava/lang/Throwable;)V
5
?5@ java/io/OutputStream
5
C5D java/io/Reader
F5G java/io/InputStream
 $IJK delete %(Lorg/openide/filesystems/FileLock;)V
MNOP   org/openide/filesystems/FileLock releaseLockR java/io/IOException
ETUV getCause ()Ljava/lang/Throwable;
QX <
Z[\]^ java/util/Collections singletonList $(Ljava/lang/Object;)Ljava/util/List;
 � h
 ab � prepare
 def build "(Ljava/util/List;)Ljava/util/List;
 hi � set
/kl c desiredAssertionStatus
Tnop 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; NEWLINE ConstantValue 	Signature $Ljava/util/Map<Ljava/lang/String;*>; JLjava/util/List<Lorg/netbeans/api/templates/CreateFromTemplateDecorator;>; Code LineNumberTable LocalVariableTable this 3Lorg/netbeans/api/templates/CreateFromTemplateImpl; MethodParameters :(Lorg/netbeans/api/templates/FileBuilder;)Ljava/util/List; flb impl fos -Ljava/util/concurrent/atomic/AtomicReference; LocalVariableTypeTable eLjava/util/concurrent/atomic/AtomicReference<Ljava/util/List<Lorg/openide/filesystems/FileObject;>;>; 
Exceptions `(Lorg/netbeans/api/templates/FileBuilder;)Ljava/util/List<Lorg/openide/filesystems/FileObject;>; collectAttributes dec 8Lorg/netbeans/api/templates/CreateFromTemplateDecorator; it Ljava/util/Iterator; NLjava/util/Iterator<Lorg/netbeans/api/templates/CreateFromTemplateDecorator;>; StackMapTable $Lorg/openide/filesystems/FileObject; frm initialFiles 6Ljava/util/List<Lorg/openide/filesystems/FileObject;>; 8()Ljava/util/List<Lorg/openide/filesystems/FileObject;>; pf result n(Ljava/util/List<Lorg/openide/filesystems/FileObject;>;)Ljava/util/List<Lorg/openide/filesystems/FileObject;>; preFiles deco 	preCreate o(ZLjava/util/List<Lorg/openide/filesystems/FileObject;>;)Ljava/util/List<Lorg/openide/filesystems/FileObject;>; sw Ljava/io/StringWriter; pw Ljava/io/PrintWriter; ex Ljavax/script/ScriptException; eng Ljavax/script/ScriptEngine; values template bind Ljavax/script/Bindings; �(Ljavax/script/ScriptEngine;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;*>;Lorg/openide/filesystems/FileObject;)Ljava/lang/String; o Ljava/lang/Object; 	scriptEng n merge e Ljava/util/Map$Entry; map provider 9Lorg/netbeans/api/templates/CreateFromTemplateAttributes; all Ljava/util/HashMap; d Ljava/util/Date; ext <Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/lang/Object;>; 6Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>; 9Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>; 7()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; tn fo entry mf Lorg/openide/util/MapFormat; m x line current iw Ljava/io/Writer; w Ljava/io/OutputStreamWriter; os Ljava/io/OutputStream; en r Ljava/io/BufferedReader; reader Ljava/io/Reader; is Ljava/io/InputStream; Ljava/io/IOException; io params preformatted encoding Ljava/nio/charset/Charset; success "Lorg/openide/filesystems/FileLock; *Ljava/util/Map$Entry<Ljava/lang/String;*>; 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;� java/nio/charset/Charset lambda$prepare$1 9(Lorg/netbeans/api/templates/CreateFromTemplateHandler;)Z h lambda$build$0 c(Ljava/util/concurrent/atomic/AtomicReference;Lorg/netbeans/api/templates/CreateFromTemplateImpl;)V <clinit> 
SourceFile CreateFromTemplateImpl.java BootstrapMethods�
����� "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; �
 �����
 ���� InnerClasses� /org/openide/filesystems/FileSystem$AtomicAction AtomicAction Mode Entry� %java/lang/invoke/MethodHandles$Lookup� java/lang/invoke/MethodHandles Lookup 0      IJ   q� r               � � s   t  X Y s   u  � �   � �       v   R     *� *+� *+� � �   w       L  M 	 N  Ox       yz        {       e| v   �     -� Y*� L� Y� M+� � � #,+� )  � -,� 3� 7�   w       R 	 S  T % Yx        -}    	 $~z   � �      � �    Q{   }  s   � �  v   Z     � Y*� L+� � 9*+� =� AW�   w       ] 	 ^  _  `x       }    	 ~z {   }    �  v   �     G*� EY� GM� O� S� V*� V� Z L+� ^ � #+� d � MM,*� � g � 	+� k ��ڱ   w       c  d & e 0 f = g C i F jx      0 ��   )��    Gyz  �      )�� �    �  _%�   b � v  �     �*� � nL*� � M*� � qN*� � u:y+� {�,� {� �� -� �� � � �Y�� ��,� �� � �Y� �Y� ��� �,� �� �� ��*� =W*� �*� � 9*� EY� �� �:*� � 9**� � ��� O� � � G�� O� � � �*� �  � � � � +ж �� �� �� �� ��   w   Z    o  p  q  r ! s ' t - u I w P x k { p | t } {  � � � � � � � � � � � � � � � � � �x   >    �yz    � z�   � ��   � s t  ! �� x  � N� Y �     � N�� �    � I   $ $ �$  !�    Qs   �  ef v  �     �M*� �� **� �*� � �M� �� ,� ,� � � � �Y� �,� *� � q� � *� �M,� ,N*� � *� � �-�� EY,� SN-+� � W*-� �W-:*� � *� � ��:*� � *� � ��    L �   \ w �   � � �   w   J    �  � 	 �  � 0 � A � F � J � L � Z � \ � e � m � t � w � � � � � � �x   *   �� Y  e #� Y    �yz     �� Y �       ���  e #��    ��� �    � ( 7� +   7 7�    Q{   �  s   �  � � v       c*� V� Z N-� ^ � Q-� d � M:� � � � 5� � � � (*� ,�  :� ,� W,� � W���,�   w   "    �  � 9 � G � L � U � ^ � a �x   4  G � Y   @��    cyz     c� �    c� Y �     G ��    c�� �    � 
 _� $ M	� $� �    Q{   	�  �  s   � rs v  �     �*� 	+,��*� d� :,� +� W�#Y�%:�&Y�(:*� �+ *� � �Y� �$�.� �3� �� �-d�5 *� 9-�;d�5 *+�> W�A�D�:�G�KQ+�S�G�KY�[+�  - � �E w   F    �  � 
 �  � ! � - � 6 � A � N � t � � � � � � � � � � � � � � �x   R  6 e��  A Z��  � ��    ���     ��    �� �    ���   ��� �       ��t �    
� � lc $ E{   �    �  �  s   �  ; < v  p     �*�^L+� �*�_�b M*� n�fN,�l� 
,�n� 
*� n�o:-*�_*� n�pL�t*z�|�� �t*� nz� Ҷ� � 6*� n� �� � *� �z�t�� W� *� +*� n����L*+���   w   B    �  � 	 �  �  � 5 � D � K � X � n � } � � � � � � � � � � �x   >   ���   ���  5 k��  n 2� �    �      �� �   , � ,l Fl� 3l@� #�   l  {        ? @ v  �    ���Y��L+*� �_��**� � � �*� +� � G�� O�� M,� ^ � x,� d ��N-*� �� :� Z�� �� :� ^ � B� d ��:*� �� *� ��� �� � +�� �l�� ��W������*� �^M,� *� ��M+��� ',� #,N*� ��� ,����N+-��W��Y��N+¶�� +�-��W*� � n��:+Ķ�� [,� W� I�ƞ A*� �� :*� ��� ,.��� &+Ļ �Y� �,� �.��� �� ���W� +�,��W+�   w   z    �  �  �  � & � H � T � Y � }  � � � � � � �
 � � � � � �*BRu~x   \ 	 } 0��  T \� �  H h��  � ��   �yz   x��  � ��  � ���  d�� �      } 0��  T \��  x�� �   C � 5� _� 1�c _� /�� � � � l� $l� � �� Al"s   � � � v   z     0*� ��L*� � +��M*� � n,��*� *� � n,�ٰ   w      # $ &  'x        0yz    (��   �� �    Qs   �  � � v  	�    D*� � n� �� *�ݰ*� �_L*� � qM*� � uN,�� �-�� -��:��::+�� �� :� ^ � L� d ��:�� �� � ���� ��Y��:�� �� �� W���� 
��*� � n:*� � n��:*� � *� ����:6��:6	��:
��:��Y�:�Y�:*� �	6��:*� �	� � �:�#Y�%:
�:�Y�:� � � ::�Y:� /� �W-� -�#:� :�W����W�(� ;� )�+d�5 � �+ �.Y�D�0�1 W� &�4� :� �4� :�9��=� :�=� :�9�� &�>� :� �>� :�9���6	�A� :�A� :�9��B� :�B� :�9�� &�E� :� �E� :�9�	� 

�H
�L� e:
�H� :�:�S�Q� �S�Q� :
�H� :� �QY�W� �:	� 

�H
�L��Y� f��7�7S7"%7F1>7EJM7dl7nsv7��7���7 ���7���7 ���Q���Q ���EQ ��(  �*(   w  N S  0 1 3 4 "5 *7 88 >9 E: H; k< |= ? �@ �B �C �D �E �H �I �J �K �L �M �N �O �PQST!W4Z=\F]S^f`ictdyf�h�i�k�m�o�p�r�s�t�u�w�[w[1w>[YxaydzlO�z�O�z�O���������z�|�~�}���������(�/�6�;�>�x    k :��  > v��  E o� �  H l� � i ��� q z�� f ��� S ��� F�� 40�� ='�� q�� ���  ���� � ��   �� � 9��   Dyz   *� �  "" s t  *� x  �� z�  �{��  �f��  �c� �  �\��  �Y� � 	 �R�� 
�      k :��  E o��  *�t �  l 7� B  c �$�cc _  � )�� � � z  c �$ $l $�MFC  B� *  c �$ $l $�MFC#?  A� l� l
� JL7�   c �$ $l $�MFC#?7 7� G7� 	  c �$ $l $�MFC#?7 7� L7�   c �$ $l $�MFC#?7 7� �   c �$ $l $�MFC 7� 	  c �$ $l $�MFC7 7� G7� 	  c �$ $l $�MFC7 7� L7�   c �$ $l $�MF7 7� GQ�   c �$ $l $�MQ Q�   c �$ $l $�M E� E@Q�   c �$ $l $�MEQ QAQ�    c �$ $l $�M 7�   c �$ $l $�M          7  �   c �$ $l $�M  �    Qs   ��� v   =     	+*� �_�   w       �x       	yz     	� � 
�� v   M     *++�`�c�g�   w       U  V 	 U  Xx       �     ~z �    Q �  v   C      �j� � � ��.�m�G�   w   
    >  ?�    @ �   ��    � ���� ����   " � .�	 � �@�c�	��� 