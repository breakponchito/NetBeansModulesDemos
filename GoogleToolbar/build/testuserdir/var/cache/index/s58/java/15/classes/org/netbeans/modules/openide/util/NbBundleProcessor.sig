����   4	
      -javax/annotation/processing/AbstractProcessor <init> ()V  "org/openide/util/NbBundle$Messages
 
     java/lang/Class getCanonicalName ()Ljava/lang/String;
      java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
      javax/lang/model/SourceVersion latest "()Ljavax/lang/model/SourceVersion;       ,javax/annotation/processing/RoundEnvironment processingOver ()Z " java/util/HashMap
 !   % & ' getElementsAnnotatedWith "(Ljava/lang/Class;)Ljava/util/Set; ) * + , - java/util/Set iterator ()Ljava/util/Iterator; / 0 1 2   java/util/Iterator hasNext / 4 5 6 next ()Ljava/lang/Object; 8  javax/lang/model/element/Element 7 : ; < getAnnotation 4(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
 > ? @ A B 3org/netbeans/modules/openide/util/NbBundleProcessor findPackage 6(Ljavax/lang/model/element/Element;)Ljava/lang/String; D E F G H java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; J java/util/HashSet
 I  D M N O put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; ) Q R S add (Ljava/lang/Object;)Z D U V W entrySet ()Ljava/util/Set; Y java/util/Map$Entry X [ \ 6 getKey ^ java/lang/String X ` a 6 getValue	 > c d e processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment; g h i j k 1javax/annotation/processing/ProcessingEnvironment getElementUtils "()Ljavax/lang/model/util/Elements; m n o p q javax/lang/model/util/Elements getPackageElement C(Ljava/lang/CharSequence;)Ljavax/lang/model/element/PackageElement; s t u v w 'javax/lang/model/element/PackageElement getEnclosedElements ()Ljava/util/List; ) y z { addAll (Ljava/util/Collection;)Z } java/lang/RuntimeException g  � � getMessager (()Ljavax/annotation/processing/Messager;	 � � � � � javax/tools/Diagnostic$Kind WARNING Ljavax/tools/Diagnostic$Kind; � java/lang/StringBuilder
 �  � #196556: reading 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; �  failed with 
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  in 
 | � � � getStackTrace  ()[Ljava/lang/StackTraceElement; � ; do a clean build!
 � � �  toString � � � � � $javax/annotation/processing/Messager printMessage 8(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V  � � W getRootElements ) � � { 	removeAll
 > � � � addToAnnotatedElements ((Ljava/util/Collection;Ljava/util/Set;)V � *Could not check for other source files in 
 > � � B findCompilationUnitName � java/util/ArrayList
 �   � � � value ()[Ljava/lang/String; � #
 ] � � � 
startsWith (Ljava/lang/String;)Z � Q � java/util/List � # +(PART)?(NO)?I18N *
 ] � � � matches	 � � � � ERROR � 4#NOI18N and related keywords must not include spaces � � � � Z(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V
 ] � � � indexOf (I)I � Bad key=value: 
 ] � � � 	substring (II)Ljava/lang/String;
 ] � �   isEmpty
 ] � �  trim
 ] � � S equals � !Whitespace not permitted in key: 
 > � � � toIdentifier &(Ljava/lang/String;)Ljava/lang/String; � Duplicate key: 
 ] � � � (I)Ljava/lang/String; � � � � � � size ()I � � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Ljava/lang/String; � � �  clear  Comments must precede keys D values ()Ljava/util/Collection;
 I  (Ljava/util/Collection;)V
 I �
 #[Ljavax/lang/model/element/Element; #org/openide/util/EditableProperties
  (Z)V g getFiler %()Ljavax/annotation/processing/Filer;	 javax/tools/StandardLocation SOURCE_PATH Ljavax/tools/StandardLocation; Bundle.properties ! !javax/annotation/processing/Filer getResource p(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljavax/tools/FileObject;#$%&' javax/tools/FileObject openInputStream ()Ljava/io/InputStream;
)*+ load (Ljava/io/InputStream;)V
-./0  java/io/InputStream close2 java/io/IOException
45 W keySet D78 S containsKey: Key < - is a duplicate of one from Bundle.properties	>? CLASS_OUTPUT
ABC putAll (Ljava/util/Map;)V
EFG 
setComment )(Ljava/lang/String;[Ljava/lang/String;Z)VIJK createResource �(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject;#MNO openOutputStream ()Ljava/io/OutputStream;
QRS store (Ljava/io/OutputStream;)V
U.V java/io/OutputStreamX java/util/TreeMap
W [     /**
] {
 �_ �` (I)Ljava/lang/StringBuilder;
 ]bcd contains (Ljava/lang/CharSequence;)Zf argh # [{](\d+)[}] - (.+)
jklmn java/util/regex/Pattern compile -(Ljava/lang/String;)Ljava/util/regex/Pattern;
jpqr matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
tuv �   java/util/regex/Matcher
txy � group
{|}~ java/lang/Integer parseInt (Ljava/lang/String;)I ���� set '(ILjava/lang/Object;)Ljava/lang/Object;�      * @param  �� G� (I)Ljava/lang/Object;�  
 >�� � 	toJavadoc� 
� java/lang/StringBuffer� <i>
�� � (Ljava/lang/String;)V� [{](\d+)[}]
t��   find� </i>{@code � }<i>
t�y 
t��� appendReplacement E(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
t��� 
appendTail 2(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;� </i>
�� �� ,(Ljava/lang/String;)Ljava/lang/StringBuffer;�      * @return 
� �� <i></i>�  
 ]��� replace D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
 �� �� (C)Ljava/lang/StringBuilder;�      * @see �      */
�     static String � ( � *
 >��� warnUndocumented 8(ILjavax/lang/model/element/Element;Ljava/lang/String;)V� , � Object � ) {
� C        return org.openide.util.NbBundle.getMessage(Bundle.class, "� "� );
�     }
� java/util/TreeSet
� � z    /[*][*]?
(?:     [*].+?
)+     [*] @see (?:[\w-]+)?
     [*]/?
    static String (\w+).+?
        .+?
    [}]?
	�� SOURCE_OUTPUT� Bundle.java#��� getCharContent (Z)Ljava/lang/CharSequence;� .Bundle��� createSourceFile Y(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;����� javax/tools/JavaFileObject 
openWriter ()Ljava/io/Writer;� java/io/PrintWriter
�� � (Ljava/io/Writer;)V� package � ;
���� println� #/** Localizable strings for {@link  }. */ class Bundle { * java/util/Collection
�	� print     private Bundle() {} }
�  flush
�.
. java/io/Writer Could not generate files: 	 5org/netbeans/modules/openide/util/NbBundleProcessor$1 /$SwitchMap$javax$lang$model$element$ElementKind [I 7  getKind (()Ljavax/lang/model/element/ElementKind;
"#$% � $javax/lang/model/element/ElementKind ordinal s'() getQualifiedName !()Ljavax/lang/model/element/Name;+ �, javax/lang/model/element/Name 7./0 getEnclosingElement $()Ljavax/lang/model/element/Element;2 package-info	"456 PACKAGE &Ljavax/lang/model/element/ElementKind; 789) getSimpleName; RECORD
"=>  name
@ABC � org/openide/util/BaseUtilities isJavaIdentifierE [^\p{javaJavaIdentifierPart}]+G _
 ]IJK 
replaceAll 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;M &O &amp;Q <S &lt;U */W &#x2A;/Y <br>[ @] &#64; 7 t 7`a w getAnnotationMirrorsc )javax/lang/model/element/AnnotationMirrorbefg getAnnotationType &()Ljavax/lang/model/type/DeclaredType;i �j "javax/lang/model/type/DeclaredTypeblmn getElementValues ()Ljava/util/Map;p *javax/lang/model/element/ExecutableElemento8 �+tud contentEqualsw (javax/lang/model/element/AnnotationValuev `z =
|}~� org/openide/util/NbCollections checkedListByCopy 4(Ljava/util/List;Ljava/lang/Class;Z)Ljava/util/List;� Undocumented format parameter {� } prepend line: # {� } - some text, �� �� �(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)V Code LineNumberTable LocalVariableTable this 5Lorg/netbeans/modules/openide/util/NbBundleProcessor; getSupportedAnnotationTypes 	Signature %()Ljava/util/Set<Ljava/lang/String;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getSupportedSourceVersion process @(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z messages $Lorg/openide/util/NbBundle$Messages; pkg Ljava/lang/String; annotatedElements Ljava/util/Set; e "Ljavax/lang/model/element/Element; x Ljava/lang/RuntimeException; unscannedTopElements i I key original keyValue 
simplename runningComments Ljava/util/List; is Ljava/io/InputStream; p2 %Lorg/openide/util/EditableProperties; entry2 Ljava/util/Map$Entry; desc m Ljava/util/regex/Matcher; comment param method Ljava/lang/StringBuilder; params commentLines annotatedValue Ljava/lang/StringBuffer; first Z 
identifier restored pw Ljava/io/PrintWriter; p os Ljava/io/OutputStream; methods Ljava/util/Map; fqn w Ljava/io/Writer; Ljava/io/IOException; pkgE )Ljavax/lang/model/element/PackageElement; pairs identifiers compilationUnits comments elements packageEntry annotations roundEnv .Ljavax/annotation/processing/RoundEnvironment; annotatedElementsByPackage LocalVariableTypeTable 3Ljava/util/Set<Ljavax/lang/model/element/Element;>; $Ljava/util/List<Ljava/lang/String;>; <Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>; ;Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>; #Ljava/util/Set<Ljava/lang/String;>; 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; ELjava/util/Map<Ljava/lang/String;Ljavax/lang/model/element/Element;>; 6Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>; \Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljavax/lang/model/element/Element;>;>; 8Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>; VLjava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljavax/lang/model/element/Element;>;>; StackMapTable� java/lang/Throwable MethodParameters i(Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;Ljavax/annotation/processing/RoundEnvironment;)Z text unscannedElements Ljava/util/Collection; ;Ljava/util/Collection<+Ljavax/lang/model/element/Element;>; q(Ljava/util/Collection<+Ljavax/lang/model/element/Element;>;Ljava/util/Set<Ljavax/lang/model/element/Element;>;)V subentry *Ljavax/lang/model/element/AnnotationValue; v Ljava/lang/Object; entry _mirror +Ljavax/lang/model/element/AnnotationMirror; mirror oLjava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;� java/lang/Object 
SourceFile NbBundleProcessor.java )Lorg/openide/util/lookup/ServiceProvider; service 'Ljavax/annotation/processing/Processor; InnerClasses� org/openide/util/NbBundle Messages Entry javax/tools/Diagnostic Kind $javax/tools/JavaFileManager$Location javax/tools/JavaFileManager Location ! >      
    �   /     *� �   �       =�       ��   � W �   3     	� 	� �   �       @�       	��  �   ��    �   �  �   .     � �   �       E�       ��  �    �   �� �  !     	�,�  � �� !Y� #N,� $ � ( :� . � `� 3 � 7:� 9 � :� ���*� =:-� C � ):� � IY� K:-� L W� P W���-� T � ( :� . �	T� 3 � X:� Z � ]:� _ � ):*� b� f � l :� �� IY� K:		� P W	� r � x W� H:
*� b� ~ � �� �Y� ��� �� ��� �
� ��� �
� �2� ��� �� �� � 	,� � � � W*	� �� (*� b� ~ � �� �Y� ��� �� �� �� � � !Y� #:	� !Y� #:
� !Y� #:� !Y� #:� ( :� . ��� 3 � 7:*� �:� �Y� �:� 9 � � � :�66��2:�� �� /� � Wƶ șY*� b� ~ � ��� � �A=� �6� -*� b� ~ � ˻ �Y� �׶ �� �� �� � �� �:� ݚ � � � -*� b� ~ � ˻ �Y� �� �� �� �� � � �
*� �� L � 7:� T*� b� ~ � ˻ �Y� �� �� �� �� � *� b� ~ � ˻ �Y� �� �� �� �� � ��w`� �:	� L W� L W� � � (� � � ]� � � �� L W� � ���{� � � *� b� ~ � ��� � ��� IY
� �� 7��	:�Y�:*� b� �� �" :�(�,� :�,�� :�3� ( :� . � Z� 3 � ]:	�6 � ?*� b� ~ � ˻ �Y� �9� �� �;� �� �
*� � C � 7� � ���*� b� �=� �" :�Y�:�(�@�,� :�,�� :	�@� T � ( :� . � ,� 3 � X:� Z � ]� _ � ��D���*� b� �=�H �L :�P�T� :�T��WY�Y:	� T � ( :� . �#� 3 � X:� Z � ]:� _ � ]:� �Y� �:Z� �W� �Y� �:6� �Y� �\� ��^� ��a� &� �Y� �e� ���^� �� � W���� C � �:� �:�66� �2:g�i�o:�s� ��w�z6� � � (� �Y� �e� �� � �^� �� � W����w:*� �� W�� ��� � ]� ��� �*��� ��� �W���Y��Y���:��i*���o:��� R�w�z6� � � +� �Y� ��� ��� � ]� ��� �� �� ����W�����W���W�� �������� �
��W�� �� C � ]� �
��W�� �W*� �:�� �� �ö �W66�� :� . � h� 3 � ]:� �Y� �e� ��^� �� � *
� C � 7�Ƅ� 	6� ʶ �W̶ �� �W���ζ �Wж �� �Ҷ �W�� :� . �  � 3 � ]:ʶ �� �W���Զ �Wֶ �W� �� L W��ٻ�Y��:۸i*� b� ��� �� �o:��� 3�w:�6 � ��� L W� P W��˧ :� �Y� �� �� �� �:*� b� �� �� :��Y��:� �Y� ��� �� ��� �� ���� �Y� ��� �� � � �� ������ � :� . � � 3 � ]:����
�������� :��� /:*� b� ~ � ˻ �Y� �� �� �� �2� � ����  � �  |���  ���  ���1���  ���  h��1"*  *,*  u��1		�	�  	�	�	�  �	�	�1 �  � �   I 	 J  L  M 8 N F O K P N R V S c T h U q V | X � Y � Z � [ � \ � ] � ^ � _ � ` � b � e  c dE fS g[ h^ i� k� l� m� n� o� p� q� r  s
 t u v6 z? {E |l }o y �� �� �� �� �� �� � �" �- �9 �E �O �m �t rz �� �� �� �� �� �� �� �� �� �� �� �� �� � �) �e �h �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �" �' �* �1 �4 �= �a �m �y �� �� �� �� �� �� �� �� � � � �$ �0 �U �] �m �� �� �� �� �� �� � � �% �D �a �j �r �� �� �� �� �� �� �� �� �� �� � � � �! �@ �N �Q �Z �c �r �u ~����������			=	]	e	�	�	�	�	�	�	� 	�!	� 	�!	�$	�"	�#	�%	�&�  P ; F @��  V 0��  c #��  8 N��  C�� 
 � w�� 	?5�� y ��� � ��� - G ��  t�� ���� ���� ���� � ��  H�� � �� � *�� � �� ] =��  ���  ��� � V�� @ �� m�� y� �� ���� ���� ���� ��� � ���� ���� r >� � ��� a�� � %�� ~ _�� � 8�� 	� �� 	 ��� ���� ��� =��� � ��� 	 ��� 	� *��  �	6��  �	*��  �	�� �b�� 	�Y�� 
�P�� �G�� �8�
  �	B��   	���    	���   	���  	��� �   �  c #��  � w�� 	���� � �� ���� a�� ~ _�� =���  �	*�� �b�� 	�Y�� 
�P�� �G��  �	B��   	���  	��� �  � D�  D /� + 7 � - ] )�   > )  D  �  /� i 
 > )  D / X ] ) s )  |� D� $� ,  > )  D / X ] ) s D D D D /  � A  > )  D / X ] ) s D D D D / 7 ] � �  � C ]� 8�  ])� i 7� Q  > )  D / X ] ) s D D D D / 7 ] � �  � � � � O  > )  D / X ] ) s D D D D	- �� 	B1�  /� ]� � <  > )  D / X ] ) s D D D D	- �� 	B1�  /� 2� -  > )  D / X ] ) s D D D D	U �	�  D /� K  > )  D / X ] ) s D D D D	U D / X ] ] � �  ?�   > )  D / X ] ) s D D D D	U D / X ] ] � � � �  � - ]t0� D� � �t� J  > )  D / X ] ) s D D D D	U D / X ] ] � � ��t t��   > )  D / X ] ) s D D D D	U D / X ] ] � � ��t t� ]� � ] /� F ]� � % /� &� #  > )  D / X ] ) s D D D D	U D  � / )t4� B1� �  > )  D / X ] ) s D D D D	U D ]� /  � � !  > )  D / X ] ) s D D D D	U D ] �� 	  > )  D / X ] ) s D D D D	  B1� +  > )  D /  � �   	�  �  �   ��    �    A B �   �     :�+� �!.�     "         +� s�& �* �*+�- � =�   �      *  , /.�       :��     :�� �     �   �    � B �   �     ��+� �!.�     D         #   '   '   '   '1�+�- � �3� +�7 �* �:+� �<� �  +�- � �3� +�7 �* �*+�- � ��   �   "   3 05 4: E; Q> c? t@ �C�       ���     ��� �    0.�   �    � � �   �     2+�?� +�+DF�HM,�?� ,�� �Y� �F� �,� �� ��   �      G H 	J K L N�       ��    2��     2�� �   	 	�  ]�   �   � � �   c     /+LN��PR��TV���X��Z\���   �      T�       /��     /�� �   �    � � �   �     M+� N-� . � ?-� 3 � 7:� 9 � ,� P W� �3� *�^ ,� �����   �      X Y 'Z 0\ =] I_ L`�   *   .��    M��     M��    M�� �       M��    M�� �    �  /� ( 7� � �   	�  �  �   � �� �  �    |::,�:,�_ �� :� . �#� 3 �b:�d �h � 	� � �:�k � T � ( :� . � �� 3 � X:		� Z �o�q r�s � �	� _ �v�x :

� ]� 1
� ]� �Y� �-� �y� �� �� �� {	� _ �v:� l
� �v�{�� :� . � I� 3 �v:�x :

� ]� )
� ]� �Y� �-� �y� �� �� �� 
:� ���� ��#� ���*� b� ~ � �� �Y� ��� ��^�� ��^�� �� �,�� �   �   f   c d e 
f -g Dh Hi qj �l �m �n �o �r �stu+v/w2z5|8~;>�A�{��   f 
 � 7��  � ��� 
 q ��� 	 -��   |��    |��   |��   |��  y��  v �� �     q ��� 	�   8 
� bv /� Cb /� v X��  /� L� � � � � �   �  �  �   �   ��    � �c��   *  ��&	 X D 	 �@	    