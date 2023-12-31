����   4�
      -javax/annotation/processing/AbstractProcessor <init> ()V  java/util/LinkedList
  	      <org/openide/filesystems/annotations/LayerGeneratingProcessor createdBuilders Ljava/util/List;	     processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment;      1javax/annotation/processing/ProcessingEnvironment getMessager (()Ljavax/annotation/processing/Messager;
     handleProcess @(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z  <org/openide/filesystems/annotations/LayerGenerationException	  ! " # erroneousAnnotationValue *Ljavax/lang/model/element/AnnotationValue;	 % & ' ( ) javax/tools/Diagnostic$Kind ERROR Ljavax/tools/Diagnostic$Kind;
  + , - getLocalizedMessage ()Ljava/lang/String;	  / 0 1 erroneousElement "Ljavax/lang/model/element/Element;	  3 4 5 erroneousAnnotation +Ljavax/lang/model/element/AnnotationMirror; 7 8 9 : ; $javax/annotation/processing/Messager printMessage �(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)V 7 = : > �(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)V 7 @ : A Z(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V 7 C : D 8(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V F G H I J ,javax/annotation/processing/RoundEnvironment processingOver ()Z  L M N getFiler %()Ljavax/annotation/processing/Filer;	  P Q R generatedLayerByProcessor Ljava/util/Map; T U V W X java/util/Map remove &(Ljava/lang/Object;)Ljava/lang/Object; Z org/w3c/dom/Document	  \ ] R originatingElementsByProcessor _ java/util/Collection F a b J errorRaised d  javax/lang/model/element/Element ^ f g h toArray (([Ljava/lang/Object;)[Ljava/lang/Object; j #[Ljavax/lang/model/element/Element; l java/io/ByteArrayOutputStream
 k  Y o p q getImplementation !()Lorg/w3c/dom/DOMImplementation; s LS u 3.0 w x y z { org/w3c/dom/DOMImplementation 
getFeature 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; } "org/w3c/dom/ls/DOMImplementationLS	   � � $assertionsDisabled Z � java/lang/AssertionError � java/lang/StringBuilder
 �  � No DOM 3 LS supported in 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; Y � � � getClass ()Ljava/lang/Class;
 � � � � - java/lang/Class getName
 � � � - toString
 � �  � (Ljava/lang/Object;)V | � � � createLSOutput ()Lorg/w3c/dom/ls/LSOutput; � UTF-8 � � � � � org/w3c/dom/ls/LSOutput setEncoding (Ljava/lang/String;)V � � � � setByteStream (Ljava/io/OutputStream;)V | � � � createLSSerializer ()Lorg/w3c/dom/ls/LSSerializer; � format-pretty-print � � � � � org/w3c/dom/ls/LSSerializer getDomConfig  ()Lorg/w3c/dom/DOMConfiguration;
 � � � � � java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; � � � � � org/w3c/dom/DOMConfiguration canSetParameter '(Ljava/lang/String;Ljava/lang/Object;)Z � � � � setParameter '(Ljava/lang/String;Ljava/lang/Object;)V � � � � write .(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z
 k � � � toByteArray ()[B � org/xml/sax/InputSource � java/io/ByteArrayInputStream
 � �  � ([B)V
 � �  � (Ljava/io/InputStream;)V	  � � � ERROR_HANDLER Lorg/xml/sax/ErrorHandler;	  � � � ENTITY_RESOLVER Lorg/xml/sax/EntityResolver;
 � � � � � org/openide/xml/XMLUtil parse i(Lorg/xml/sax/InputSource;ZZLorg/xml/sax/ErrorHandler;Lorg/xml/sax/EntityResolver;)Lorg/w3c/dom/Document;	 � � � � � javax/tools/StandardLocation CLASS_OUTPUT Ljavax/tools/StandardLocation; �   � META-INF/generated-layer.xml � � � � � !javax/annotation/processing/Filer createResource �(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/FileObject; � � � � � javax/tools/FileObject openOutputStream ()Ljava/io/OutputStream;
 �  � � java/io/OutputStream
 �  close java/io/IOException %Failed to write generated-layer.xml: 
 � org/xml/sax/SAXException .Refused to write invalid generated-layer.xml: 

 � java/util/List iterator ()Ljava/util/Iterator; J java/util/Iterator hasNext next ()Ljava/lang/Object; 0org/openide/filesystems/annotations/LayerBuilder
"#  clear
 %&' layerDocument ;([Ljavax/lang/model/element/Element;)Lorg/w3c/dom/Document;
) * n(Lorg/w3c/dom/Document;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;)V,-. add (Ljava/lang/Object;)Z T01 X get3 org/openide/util/WeakSet
2  T678 put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:;<=> java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; ^@AB addAll (Ljava/util/Collection;)Z �DEF getResource p(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljavax/tools/FileObject; �HIJ openInputStream ()Ljava/io/InputStream;
LM java/io/InputStreamO java/io/FileNotFoundExceptionQ !java/nio/file/NoSuchFileExceptionS $Failed to read generated-layer.xml: U %Failed to parse generated-layer.xml: W 
filesystemY #-//NetBeans//DTD Filesystem 1.2//EN[ /http://www.netbeans.org/dtds/filesystem-1_2.dtd
 �]^_ createDocument `(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;
a �b java/lang/Objectd 2javax/annotation/processing/SupportedSourceVersion
 �fgh getAnnotation 4(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
jklmn javax/lang/model/SourceVersion latest "()Ljavax/lang/model/SourceVersion;cpqn value
 �st J desiredAssertionStatusv >org/openide/filesystems/annotations/LayerGeneratingProcessor$1
u y >org/openide/filesystems/annotations/LayerGeneratingProcessor$2
x | java/util/WeakHashMap
{  GENERATED_LAYER Ljava/lang/String; ConstantValue PUBLIC_DTD_ID NETWORK_DTD_URL LOCAL_DTD_RESOURCE� */org/openide/filesystems/filesystem1_2.dtd 	Signature JLjava/util/Map<Ljavax/annotation/processing/Filer;Lorg/w3c/dom/Document;>; nLjava/util/Map<Ljavax/annotation/processing/Filer;Ljava/util/Collection<Ljavax/lang/model/element/Element;>;>; DLjava/util/List<Lorg/openide/filesystems/annotations/LayerBuilder;>; Code LineNumberTable LocalVariableTable this >Lorg/openide/filesystems/annotations/LayerGeneratingProcessor; process ret x >Lorg/openide/filesystems/annotations/LayerGenerationException; baos Ljava/io/ByteArrayOutputStream; ls $Lorg/w3c/dom/ls/DOMImplementationLS; output Lorg/w3c/dom/ls/LSOutput; ser Lorg/w3c/dom/ls/LSSerializer; fpp data [B layer Ljavax/tools/FileObject; os Ljava/io/OutputStream; Ljava/io/IOException; Lorg/xml/sax/SAXException; originatingElementsA b 2Lorg/openide/filesystems/annotations/LayerBuilder; filer #Ljavax/annotation/processing/Filer; doc Lorg/w3c/dom/Document; originatingElementsL Ljava/util/Collection; annotations Ljava/util/Set; roundEnv .Ljavax/annotation/processing/RoundEnvironment; messager &Ljavax/annotation/processing/Messager; LocalVariableTypeTable :Ljava/util/Collection<Ljavax/lang/model/element/Element;>; 8Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>; StackMapTable� java/util/Set� java/lang/String�� java/lang/Throwable MethodParameters i(Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;Ljavax/annotation/processing/RoundEnvironment;)Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
Exceptions W([Ljavax/lang/model/element/Element;)Lorg/openide/filesystems/annotations/LayerBuilder; originatingElements is Ljava/io/InputStream; getSupportedSourceVersion sv  Ljavax/lang/model/SourceVersion; ssv 4Ljavax/annotation/processing/SupportedSourceVersion; <clinit> 
SourceFile LayerGeneratingProcessor.java InnerClasses� javax/tools/Diagnostic Kind� $javax/tools/JavaFileManager$Location� javax/tools/JavaFileManager Location!     
 ~ �    � � �   X � �   Z � �   �  � �    � �    Q R �   �  ] R �   �    �   � � �       �   B     *� *� Y� 	� 
�   �       _  a  _�       ��   �  �  T    i*� �  N*+,� 6� ~:�  � #-� $� *� .� 2�  � 6 � R� 2� -� $� *� .� 2� < � /� .� -� $� *� .� ? � -� $� *� B �,� E ��*� � K :� O� S � Y:� [� S � ^:�p,� ` �g� c:� � e � i:� kY� m:	� n rt� v � |:
� ~� ,
� '� �Y� �Y� ��� �� � � �� �� �� ��
� � :�� � 	� � 
� � :�:� � � �� � � � � � �� � � � W	� �:� �Y� �Y� Է �� ڲ ޸ �W� ���� � :� � :� ��� :��� L:	-� $� �Y� �� �	�	� �� �� B � &:	-� $� �Y� �� �	�� �� �� B *� 
� :� � � �:		� ���*� 
�! �  
   ���  ���   ��� ��
 �   � 3   e 
 h  t  i  j  k ? l G m b n j o � q � s � u � v � w � x � y � z � { � | � � � � �6 �? �H �Q �Z �^ �s �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �4 �U �Z �] �f ��   �   � �   y��  � ��� 	 ��� 
? ��� Z ��� ^ �� � P�� � "�� � �� � !�� 	 !�� 	 �^� j U �� 	 ����  ����  ����   i��    i��   i��  
_��  ��� � �     ����   i�� �   � �   � F 7  � )  "�   � F 7  � X 	 � F 7 � Y ^ i  � L k |� N � ��� X  � F 7 � Y ^ i k | � ��� � � �� 	 	 � F 7 � Y ^ i  Be
� "� 
� � �   	�  �  �   ��    �     �     �   	�  �  �   � ��� �   �     +�Y*+�$+�� 	+2� *� �(M*� 
,�+ W,�   �       �  � ) ��        +��     +� j   �� �   1 �    i      Y�     i      Y c�   �   �&' �  v    *� � K M� [,�/ � ^N-� �2Y�4N� [,-�5 W-+�9�? W� O,�/ � Y:� �,� ���C :�G :� �Y� �� ڲ ޸ �:�K� :�K�� a:� \:*� �  � $� �Y� �R� ��	� �� �� B � .:*� �  � $� �Y� �T� ��� �� �� B � VXZ�\:� O,�5 W�  d z �   � � �   L � �N L � �P L � � L � �
 �   n    � 
 �  �  � # � . � 9 � G � L � [ � d � z �  � � � � � � � � � � � � � � � � � � � � � � � � � � ��   \ 	 [ 1��  d (��  � )��  � )��   ��    � j  
��   ���  G ��� �      ��� �   < 	� . � ^� S   i � ^ Y �L �� 	BDm
*�   �   �n �   �     "*�`c�e�cL+� 
�iM� 
+�o M,�   �       �  �  �  �   ��   *   ��    "��    ��    �� �    � c� j�    �   �  �   l      9�r� � � ~�uY�w� ڻxY�z� ޻{Y�}� O�{Y�}� [�   �       D  K  Q $ [ . \�    @ �   ��   "  %��@���	u      x      