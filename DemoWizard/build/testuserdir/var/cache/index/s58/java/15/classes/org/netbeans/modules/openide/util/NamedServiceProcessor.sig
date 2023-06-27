����   4:
      @org/openide/util/lookup/implspi/AbstractServiceProviderProcessor <init> ()V  java/util/HashSet
    .org/openide/util/lookup/NamedServiceDefinition
      java/lang/Class getName ()Ljava/lang/String;      java/util/Set add (Ljava/lang/Object;)Z
      7org/netbeans/modules/openide/util/NamedServiceProcessor searchAnnotations (Ljava/util/Set;Z)V    ! " # ,javax/annotation/processing/RoundEnvironment getElementsAnnotatedWith "(Ljava/lang/Class;)Ljava/util/Set;  % & ' iterator ()Ljava/util/Iterator; ) * + , - java/util/Iterator hasNext ()Z ) / 0 1 next ()Ljava/lang/Object; 3  javax/lang/model/element/Element 2 5 6 7 getAnnotation 4(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;	  9 : ; 	reference Ljava/util/regex/Pattern; 
 = >  path
 @ A B C D java/util/regex/Pattern matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
 F G H I - java/util/regex/Matcher find
 F K L M group (I)Ljava/lang/String;
  O P Q findAttribute b(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;	  S T U processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment; W X Y Z [ 1javax/annotation/processing/ProcessingEnvironment getMessager (()Ljavax/annotation/processing/Messager;	 ] ^ _ ` a javax/tools/Diagnostic$Kind ERROR Ljavax/tools/Diagnostic$Kind; c java/lang/StringBuilder
 b  f The path attribute contains '
 b h i j append -(Ljava/lang/String;)Ljava/lang/StringBuilder; l .' reference, but there is no attribute named ' n '
 b p q  toString s t u v w $javax/annotation/processing/Messager printMessage Z(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V y z { | } *javax/lang/model/element/ExecutableElement getReturnType $()Ljavax/lang/model/type/TypeMirror; W  � � getElementUtils "()Ljavax/lang/model/util/Elements; � java.lang.String � � � � � javax/lang/model/util/Elements getTypeElement @(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement; � � � � } $javax/lang/model/element/TypeElement asType W � � � getTypeUtils ()Ljavax/lang/model/util/Types; � � � � � javax/lang/model/util/Types isAssignable G(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z � � � � getArrayType E(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType; � ' reference, but attribute ' � $' does not return String or String[] 
 � �  position � -
 � � � �  java/lang/String equals � !The position attribute contains ' � ' but no such attribute found.	 � � � � � javax/lang/model/type/TypeKind INT  Ljavax/lang/model/type/TypeKind; � � � � getPrimitiveType G(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType; � � � � 
isSameType � (' but the attribute does not return int. � java/lang/annotation/Retention � � � � value (()Ljava/lang/annotation/RetentionPolicy;	 � � � � � $java/lang/annotation/RetentionPolicy SOURCE &Ljava/lang/annotation/RetentionPolicy; � DPlease specify @Retention(RetentionPolicy.SOURCE) on this annotation � java/lang/annotation/Target � � � � %()[Ljava/lang/annotation/ElementType;	 � � � � �  java/lang/annotation/ElementType TYPE "Ljava/lang/annotation/ElementType; � ;Please specify @Target(ElementType.TYPE) on this annotation � META-INF/namedservices.index
  � � � register 7(Ljavax/lang/model/element/Element;Ljava/lang/String;)V
  � � � forName %(Ljava/lang/String;)Ljava/lang/Class; � java/lang/annotation/Annotation
  � � � 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class; �  java/lang/ClassNotFoundException � java/lang/IllegalStateException
 � �  � (Ljava/lang/Throwable;)V
  5 
 � � � serviceType ()[Ljava/lang/Class;
  � � � 5(Ljava/lang/Class;)Ljavax/lang/model/type/TypeMirror; � � � � erasure F(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror; 2 � � � � � 	isSubtype
  findPath E(Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/util/List; % java/util/List
 	
 findPosition H(Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/lang/Integer;
 java/lang/Integer intValue ()I
  � ~(Ljavax/lang/model/element/Element;Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;I[Ljava/lang/String;)V The type does not 
  - isInterface 
implement 
   getCanonicalName 	subclass ! , neither it does 
 b# i$ (C)Ljava/lang/StringBuilder;& java/util/ArrayList
%  *+ size-./ get (I)Ljava/lang/Object;1 java/lang/CharSequence �345 getClass ()Ljava/lang/Class;
 789 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;; java/lang/Object
=>?@A java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;C java/lang/Exception
 �E F *(Ljava/lang/String;Ljava/lang/Throwable;)V
 HIJ 
substitute Q(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;LMN set '(ILjava/lang/Object;)Ljava/lang/Object;P [Ljava/lang/String;R Wrong return value 
 bT iU -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 �W X (Ljava/lang/String;)V
 �Z[ length
 �]^_ charAt (I)C �3 �c java/lang/NoSuchMethodException���
fgh valueOf (I)Ljava/lang/Integer; �3
 klm getClassLoader ()Ljava/lang/ClassLoader;
opqrs java/lang/ClassLoader getResources +(Ljava/lang/String;)Ljava/util/Enumeration;uvwx - java/util/Enumeration hasMoreElementsuz{ 1 nextElement} java/net/URL
|�� 
openStream ()Ljava/io/InputStream;� java/io/BufferedReader� java/io/InputStreamReader	����� !java/nio/charset/StandardCharsets UTF_8 Ljava/nio/charset/Charset;
�� � 2(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
�� � (Ljava/io/Reader;)V
���  readLine
 ���  trim� #
 ���� 
startsWith (Ljava/lang/String;)Z
 ���� replace (CC)Ljava/lang/String;� java/io/IOException
 F��� start (I)I
 ���� 	substring (II)Ljava/lang/String;
 F��� end
 ��� M 2��� getEnclosedElements ()Ljava/util/List; 2��� getKind (()Ljavax/lang/model/element/ElementKind;	����� $javax/lang/model/element/ElementKind METHOD &Ljavax/lang/model/element/ElementKind; 2��� getSimpleName !()Ljavax/lang/model/element/Name;����� javax/lang/model/element/Name contentEquals (Ljava/lang/CharSequence;)Z� @([^/]+)\(\)
 @��� compile -(Ljava/lang/String;)Ljava/util/regex/Pattern; PATH Ljava/lang/String; ConstantValue Code LineNumberTable LocalVariableTable this 9Lorg/netbeans/modules/openide/util/NamedServiceProcessor; getSupportedAnnotationTypes ()Ljava/util/Set; all Ljava/util/Set; LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>; 	Signature %()Ljava/util/Set<Ljava/lang/String;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; handleProcess @(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z attr ,Ljavax/lang/model/element/ExecutableElement; toCheck "Ljavax/lang/model/type/TypeMirror; 
stringType arrStringType !Ljavax/lang/model/type/ArrayType; nsd 0Lorg/openide/util/lookup/NamedServiceDefinition; m Ljava/util/regex/Matcher; ret  Ljava/lang/annotation/Retention; tar Ljava/lang/annotation/Target; e "Ljavax/lang/model/element/Element; c Ljava/lang/Class; ex "Ljava/lang/ClassNotFoundException; p 
typeMirror type sb Ljava/lang/StringBuilder; prefix a !Ljava/lang/annotation/Annotation; cnt I 	className annotations roundEnv .Ljavax/annotation/processing/RoundEnvironment; index 5Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>; Ljava/lang/Class<*>; 8Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>; StackMapTable  javax/lang/model/type/TypeMirror javax/lang/model/type/ArrayType [Ljava/lang/Class; MethodParameters i(Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;Ljavax/annotation/processing/RoundEnvironment;)Z 8(Ljava/lang/Class<*>;)Ljavax/lang/model/type/TypeMirror; obj Ljava/lang/Object; Ljava/lang/Exception; j subs 
methodName i arr Ljava/util/List; $Ljava/util/List<Ljava/lang/String;>; Y(Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/util/List<Ljava/lang/String;>; !Ljava/lang/NoSuchMethodException; posDefinition line url Ljava/net/URL; is Ljava/io/InputStream; reader Ljava/io/BufferedReader; en Ljava/util/Enumeration; Ljava/io/IOException; found canonicalName Z 'Ljava/util/Enumeration<Ljava/net/URL;>;0 java/io/InputStream '(Ljava/util/Set<Ljava/lang/String;>;Z)V attrName <clinit> 
SourceFile NamedServiceProcessor.java InnerClasses8 javax/tools/Diagnostic Kind 1      �� �    � 
 : ;   
    �   /     *� �   �       3�       ��   �� �   m     � Y� 	L+
� �  W+� +�   �       9  :  ;  <�       ��    �� �      �� �   ��    �   �� �  �    D,
�  � $ N-� ( �d-� . � 2:
� 4 � 
:� ��ٲ 8� < � ?:� E� �� J� N:� D*� R� V � \� bY� de� g� J� gk� g� J� gm� g� o� r ���� x :*� R� ~ �� � � � :	*� R� � 	� � � ��p*� R� � 	� � :
*� R� � 
� � � ��F*� R� V � \� bY� de� g� J� g�� g� J� g�� g� o� r ��� � �� �� �� � � N:� 7*� R� V � \� bY� d�� g� � � g�� g� o� r � ]*� R� � *� R� � � �� � � x � � � 4*� R� V � \� bY� d�� g� � � g�� g� o� r �� 4 � �:� � � � ĥ *� R� V � \�� r ̹ 4 � �:� � � �� � � 2� ѥ *� R� V � \�� r *ٶ ۧ��� Y� 	N-� -� $ :� ( ��� . � �:� �� �:� :� �Y� ��,�  � $ :� ( �k� . � 2:� 4 :		� ���
� �� 
:
6
� � :�66� �2:*� R� � *� �� � :*� R� � � � � � � S�*
� < 	� � :� ( � 2� . � �:**
� � 	��� ����ʄ��o� �� bY� d::
� � :�66� J2:� gW�� � g�� gW� � g�� gW :����.�"W*� R� V � \� o� r �����N� ��� � �  R T   B " C 0 D 5 E 8 G G H O I \ J a K | N � P � K � S � U � V � W � X � Z � [ \ ^ `- a= ^B eE fT gb hg i� l� i� p� q� r� p� t� w� t� } ~ * �8 �X �m �u �x �� �� �� �� �� �� �� �� �� �� �� � � �$ �: �T �W �� �� �� �� �� �� �� �� �� �� �� �� �  � � � �$ �< �? �B ��    \ ���  � ���  � ��� 	 � V�� 
b ���  0E��  G.��  r�� 8 =��  "S�� � �� � 
�� �  �� : j�� $ ��� � :�� � ��� � �� �N�� 	:�� 
7  �Y�� ���� ���   D��    D�   D ��� �   > � � $ �� � :� ���   D	 ��� 
  x �  )� ) 2 
�  F� Z y� 7� )� @     ) 2 
 F  � U y� Y�  �� - �� 
      �   )� $      ) �  ��  �  )� ( 2 ��       ) �  ) 2 � 
  � T  )� 8� � #      ) �  ) 2 � 
 b �  � 1 � 
      ) �  ) 2 � 
 b �  �       ) �  )  � �    	    �   �    �    � � �   ^     *� R� ~ +� � � � � �   �       ��       ��     �� �       �    �  �     �  L  
   ��%Y�'N-+�( W6-�) � ڲ 8-�, �0� ?:� E� �� J:,�2 � �6,�:�<:� :� �Y�D�� �� -+� ��G�K W����O� C�O:-+2�G�K W6		�� -+	2�G�( W�	����A� �Y� bY� dQ� g�S� o�V����!� -�  A Z ]B �   ^    �  �  �  � 1 � 9 � A � Z � ] � _ � k � s � � � � � � � � � � � � � � � � � � � � � � ��   z  Z   _ �  �   	 � 6P  A ��  k �  1 ���   �    ���     � >�    ���   � �      � 
   B � � � I   � � F � B� :� $O� � �    	 >  �  �    	
 �       d+�Y� ;+�\-� 1,�` a� �6,�:�<��Nd�e�N� �Y-� ��,�i +� �6,�:�<��N� �Y-� ��   - .b  - 6B @ Y ZB �   & 	   �  � . � / � 6 � 7 � @ � Z � [ ��   >  / �  7 	�  [ 	�    d��     d �    d�� 
    nbGB	YB   	   �   
   �  �     ��jٶnM,�t � j,�y �|N-�~:��Y��Y������:��:� � 3��:���� ���� $.��:*�  W��ħ��� M� �Y,� ���    { ~� �   R    �  �  �  � $ � 9 @ E H O Z ]
 a l u x { ~  ��   R  @ 5!�   Z"#  $ T$%  9 ?&'   p()   	�*    �+�     �,- �      p(.    �+�  
   2 	� u� -|/��  ��   u  � B�	   	+  ,  �   1 
IJ �   f     (� bY� d*+����� g,� g*+����� g� o�   �      �        ( >�     (��    (�     >  �     
 P Q �   �     D*�� � M,� ( � 0,� . � 2N-�� ��� -�� +�� � -� y�����   �        : ? B�        ��    D��     D2� 
    �  )2�    	�  2   3  �   "      
ɸ˳ 8�   �       5 4   56   
  ]79@