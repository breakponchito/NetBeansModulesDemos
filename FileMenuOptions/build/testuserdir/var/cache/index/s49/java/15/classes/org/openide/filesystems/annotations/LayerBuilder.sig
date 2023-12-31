����   4�	      0org/openide/filesystems/annotations/LayerBuilder doc Lorg/w3c/dom/Document;	   	 
 unwrittenFiles Ljava/util/List;	     processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment;
     instantiableClassOrMethod Y(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/String;)[Ljava/lang/String;	     originatingElement "Ljavax/lang/model/element/Element;
      java/lang/Object <init> ()V  java/util/LinkedList
   ! [^/]+(/[^/]+)*
 # $ % & ' java/lang/String matches (Ljava/lang/String;)Z ) "java/lang/IllegalArgumentException
 ( +  , (Ljava/lang/String;)V . 5org/openide/filesystems/annotations/LayerBuilder$File
 - 0  1 H(Lorg/openide/filesystems/annotations/LayerBuilder;Ljava/lang/String;Z)V 3 4 5 6 7 java/util/List add (Ljava/lang/Object;)Z 3 9 : ; iterator ()Ljava/util/Iterator; = > ? @ A java/util/Iterator hasNext ()Z = C D E next ()Ljava/lang/Object;
 - G H I getPath ()Ljava/lang/String; K dummy/
 # M N ' 
startsWith P Q R S T 1javax/annotation/processing/ProcessingEnvironment getMessager (()Ljavax/annotation/processing/Messager;	 V W X Y Z javax/tools/Diagnostic$Kind WARNING Ljavax/tools/Diagnostic$Kind; \ java/lang/StringBuilder
 [  _ layer file 
 [ a b c append -(Ljava/lang/String;)Ljava/lang/StringBuilder; e  was never written
 [ g h I toString j k l m n $javax/annotation/processing/Messager printMessage 8(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V 3 p q  clear
  s t u instanceFile �(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;
 # w x y replace (CC)Ljava/lang/String; { - } /  	.instance
  � � � file K(Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; � instanceCreate
 - � � � methodvalue o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; � instanceClass
 - � � � stringvalue ](Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;
  � t � �(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; � ?Only applicable to builders with exactly one associated element P � � � getTypeUtils ()Ljavax/lang/model/util/Types; P � � � getElementUtils "()Ljavax/lang/model/util/Elements;
 � � � � I java/lang/Class getName � � � � � javax/lang/model/util/Elements getTypeElement @(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement; �  javax/lang/model/type/TypeMirror � � � � � javax/lang/model/util/Types getDeclaredType o(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;	 � � � � � 2org/openide/filesystems/annotations/LayerBuilder$1 /$SwitchMap$javax$lang$model$element$ElementKind [I � � � � �  javax/lang/model/element/Element getKind (()Ljavax/lang/model/element/ElementKind;
 � � � � � $javax/lang/model/element/ElementKind ordinal ()I � $javax/lang/model/element/TypeElement � � � � getBinaryName G(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name; � g � javax/lang/model/element/Name � � � � getModifiers ()Ljava/util/Set;	 � � � � � !javax/lang/model/element/Modifier ABSTRACT #Ljavax/lang/model/element/Modifier; � � � � 7 java/util/Set contains � <org/openide/filesystems/annotations/LayerGenerationException �  must not be abstract
 � �  � �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V � � � � getEnclosedElements ()Ljava/util/List;
 � � � � � #javax/lang/model/util/ElementFilter constructorsIn &(Ljava/lang/Iterable;)Ljava/util/List; � *javax/lang/model/element/ExecutableElement � � � � getParameters 3 � � A isEmpty � $ must have a no-argument constructor � � � � asType $()Ljavax/lang/model/type/TypeMirror; � � � � isAssignable G(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z �  is not assignable to 
 [  b -(Ljava/lang/Object;)Ljava/lang/StringBuilder;	 � � PUBLIC  is not public �	
 getNestingKind (()Ljavax/lang/model/element/NestingKind;
 A $javax/lang/model/element/NestingKind isNested	 � � STATIC  is nested but not static � getEnclosingElement $()Ljavax/lang/model/element/Element; � getSimpleName !()Ljavax/lang/model/element/Name; .   must be static" java.util.Map 3$% � size 3'() get (I)Ljava/lang/Object;+ (javax/lang/model/element/VariableElement* �.  must not take arguments �01 � getReturnType3 0Annotated element is not loadable as an instance5 ^.+/7  
 #9:; replaceFirst 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;= 	\.[^./]+$? .shadowA originalFileC ,do not use leading slashes on resource pathsE $javax/tools/JavaFileManager$Location	GHIJK javax/tools/StandardLocation SOURCE_PATH Ljavax/tools/StandardLocation;	GMNK CLASS_OUTPUT	GPQK 
CLASS_PATH	GSTK PLATFORM_CLASS_PATH PVWX getFiler %()Ljavax/annotation/processing/Filer;Z[\]^ !javax/annotation/processing/Filer getResource p(Ljavax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljavax/tools/FileObject;D`a A isOutputLocationcdefg javax/tools/FileObject openInputStream ()Ljava/io/InputStream;
ijkl  java/io/InputStream closen java/io/IOExceptionp Cannot find resource r java/io/FileNotFoundException
 #tuv 	substring (I)Ljava/lang/String;x java/net/URI
 z{| findPackage 6(Ljavax/lang/model/element/Element;)Ljava/lang/String;
w~  9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
w��� resolve (Ljava/net/URI;)Ljava/net/URI;
w G� java/net/URISyntaxException
� g
 �� � 7(Ljava/lang/String;Ljavax/lang/model/element/Element;)V� 'javax/lang/model/element/PackageElement��� getQualifiedName 	Signature ILjava/util/List<Lorg/openide/filesystems/annotations/LayerBuilder$File;>; n(Lorg/w3c/dom/Document;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/filesystems/annotations/LayerBuilder; document MethodParameters path Ljava/lang/String; f 7Lorg/openide/filesystems/annotations/LayerBuilder$File; StackMapTable folder n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/openide/filesystems/annotations/LayerBuilder$File; name type Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<*>; 
Exceptions q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class<*>;)Lorg/openide/filesystems/annotations/LayerBuilder$File; basename 
annotation !Ljava/lang/annotation/Annotation; annotationMethod clazzOrMethod [Ljava/lang/String; clazz method� �(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class<*>;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; constructor ,Ljavax/lang/model/element/ExecutableElement; hasDefaultCtor Z params utilMapType "Ljavax/lang/model/type/TypeMirror; mapParam 
typeMirror =Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;� java/lang/annotation/Annotation \(Ljava/lang/Class<*>;Ljava/lang/annotation/Annotation;Ljava/lang/String;)[Ljava/lang/String; 
shadowFile target validateResource �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)Ljavax/tools/FileObject; Ljavax/tools/FileObject; ex Ljava/io/IOException; loc &Ljavax/tools/JavaFileManager$Location; x2 x Ljava/io/FileNotFoundException; resource searchClasspath� '[Ljavax/tools/JavaFileManager$Location; absolutizeResource H(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/lang/String; Ljava/net/URISyntaxException; e 
access$000 V(Lorg/openide/filesystems/annotations/LayerBuilder;)Ljavax/lang/model/element/Element; x0 
access$100 �(Lorg/openide/filesystems/annotations/LayerBuilder;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/String;)[Ljava/lang/String; x1 x3 
access$200 g(Lorg/openide/filesystems/annotations/LayerBuilder;)Ljavax/annotation/processing/ProcessingEnvironment; 
access$300 D(Lorg/openide/filesystems/annotations/LayerBuilder;)Ljava/util/List; 
access$400 J(Lorg/openide/filesystems/annotations/LayerBuilder;)Lorg/w3c/dom/Document; 
SourceFile LayerBuilder.java InnerClasses File� javax/tools/Diagnostic Kind� javax/tools/JavaFileManager Location 1                      	 
 �   �    � �   {     *� *� Y� � *+� *,� *-� �   �       E  C  F  G  H  I�   *    ��     �              �   �          � � �   �     *+ � "� � (Y+� *�� -Y*+� /M*� ,� 2 W,�   �       R 	 S  U  V ( W�        *��     *��   �� �    �   �   � � �   ^     � -Y*+� /M*� ,� 2 W,�   �       e  f  g�        ��     ��   �� �   �    l  �   �     e*� � 8 L+� < � K+� B � -M,� FJ� L� ���*� � O � U� [Y� ]^� `,� F� `d� `� f� i ���*� � o �   �       k  l ) o , q X r [ s d t�      ;��    e��  �    � 
 =� ! -� .  t� �   d     
*+,-� r�   �       ��   *    
��     
��    
��    
�� �       
�� �     ( ��   �  �  �  �   �  t u �  �     �*-� :2:2:,� 1.-� v:	� $� [Y� ]	� `z� `� `� f:	� ,:	*� [Y� ]+� `|� `	� `~� `� f� �:
� 
�� �W� ,� 
�� �W
�   �   :    �  �  �  �  � & � + � I � L � o � t � � � � � � ��   z  & #�� 	   ���     ���    ���    ���    ���    ���   ���   ���   }��  L H�� 	 o %�� 
�       ��� �    � I� # #�  #� 6 -�     ( ��   �  �  �  �  �  �   �  t � �   G     	*+,� ��   �       ��        	��     	��    	�� �     ( ��   	�  �    t � �  +  	   m*-� :2:2:,� 1.-� v:� $� [Y� ]� `z� `� `� f:� ,:*� [Y� ]+� `|� `� `~� `� f� ��   �   & 	   � 
 �  �  �  � % � * � H � K ��   f 
 % #��    m��     m��    m��    m��    m��  
 c��   ]��   W��  K "�� �    � H� # #�  #�     ( ��   �  �  �  �      �  ~  
  �*� � � (Y�� *�+� 1*� � � *� � � +� �$.� v� � � �� � � :� �*� � � � �.�   J              �*� � � *� � ¹ � � � :*� � � � Ϲ � � )� �Y� [Y� ]� `ܶ `� f*� *� ,-� ޿6*� � � � � 8 :� < � '� B � �:� � � � � 	6� ���� )� �Y� [Y� ]� `� `� f*� *� ,-� ޿� J*� � � *� � � � � � .� �Y� [Y� ]� `�� `� �� f*� *� ,-� ޿*� � � �� � � *� �Y� [Y� ]� `� `� f*� *� ,-� ޿*� � ¹ �� >*� � � �� � � *� �Y� [Y� ]� `� `� f*� *� ,-� ޿� #YSYS�*� � � *� � � ¹ � � � :*� � � � :*� � � �� � � 5� �Y� [Y� ]� `� `� `� `� f*� *� ,-� ޿*� � � � :*� � � *� � � !� � � �� � :�# � **� � � �& �*�, � � � � 6	� � � :	� 5� �Y� [Y� ]� `� `� `-� `� f*� *� ,-� ޿� X*� � � *� � �/ � � � 9� �Y� [Y� ]� `� `� `�� `� �� f*� *� ,-� ޿� #YSYS�� �Y2*� *� ,-� ޿   �   � +   �  �  �  � " � ; � C � F � p � � � � � � � � � � � � � �
 � �5 �V �� �� ���	8H	\
��������7[���   �  � ��  � l��  ���� 8h�� HX�� �� 
 � ��� � ��� 	  ���    ���   ���   ���  Fo�� �    ���   ��� �   ] 1@ �� + �� U #�  =*� � *� K:� L� � v # #� d 3 �@� B� Y�    �� # �  �     ( ��   �  �  �  �   � � � �   �     A-� +46�8<6�8N*� [Y� ],� `|� `-� `>� `� f� �@+� ��   �      ( ) +�   *    A��     A��    A��    A�� �    �   �  �  �   �� �  �    &+|� L� � �YB,*� -� ޿� ��DY�FSY�LSY�OSY�RS:�66� B2:	*� �U 	6+�Y :
	�_ � 
�b �h
�:
� ����� �Y� [Y� ]o� `+� `� f,*� -� ޿*� �U �F6+�Y :�b �h�:*� �U �L6+�Y :�b �h�:�:� �Y� [Y� ]o� `+� `� f,*� -� ޿  U � �m � � �q � � �m � � m � � m �  m �   ^   C 	D F !G UI kJ uK M �N �O �G �R �V �W �X �Y �[ �\ �] �^ �_ bc�   �  k �� 
 � �� 
 U 2�� 	 � ��  � ��  � ��  � )��  $��   &��    &��   &     &��   &��   &�� �   x 
� *�� 7Dc�  
  # �� #�D m� � #cq� %   # �� #q m�    # �� # m�     ��   �     �  �  �   	�� �   �     T+|� L� 	+�s��wY� [Y� ]*�y./� v� `|� `� f�}�wY+�}�����M� �Y,��*���   E F� �      w 	x { F| G}�      G ��    T       T�� �    v��     ��   	   �   
{| �   u     9� �*� � � �.�     "         *���� � � �*� �y�   �      �  � /��       9�   �     �   �  �� �   /     *� �   �       >�       ��  �� �   P     *+,-� �   �       >�   *    ��     ��    ��    �� �     ( ��� �   /     *� �   �       >�       ��  �� �   /     *� �   �       >�       ��  �� �   /     *� �   �       >�       ��   �   ��   "  - �  V��@ �    D��	