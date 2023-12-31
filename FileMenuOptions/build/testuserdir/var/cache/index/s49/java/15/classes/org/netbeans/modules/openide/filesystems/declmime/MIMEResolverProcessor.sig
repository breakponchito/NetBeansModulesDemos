����   4�
      <org/openide/filesystems/annotations/LayerGeneratingProcessor <init> ()V  java/util/HashSet
    1org/openide/filesystems/MIMEResolver$Registration
      java/lang/Class getCanonicalName ()Ljava/lang/String;      java/util/Set add (Ljava/lang/Object;)Z  :org/openide/filesystems/MIMEResolver$ExtensionRegistration  :org/openide/filesystems/MIMEResolver$NamespaceRegistration      ! ,javax/annotation/processing/RoundEnvironment getElementsAnnotatedWith "(Ljava/lang/Class;)Ljava/util/Set;  # $ % iterator ()Ljava/util/Iterator; ' ( ) * + java/util/Iterator hasNext ()Z ' - . / next ()Ljava/lang/Object; 1  javax/lang/model/element/Element 0 3 4 5 getAnnotation 4(Ljava/lang/Class;)Ljava/lang/annotation/Annotation; 
 7 8  resource
 : ; < = > Gorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverProcessor registerDefinition j(Ljavax/lang/model/element/Element;Ljava/lang/String;Lorg/openide/filesystems/MIMEResolver$Registration;)V
 : @ A B registerExt a(Ljavax/lang/model/element/Element;Lorg/openide/filesystems/MIMEResolver$ExtensionRegistration;)V
 : D E F registerNamespace a(Ljavax/lang/model/element/Element;Lorg/openide/filesystems/MIMEResolver$NamespaceRegistration;)V
 : H I J layer W([Ljavax/lang/model/element/Element;)Lorg/openide/filesystems/annotations/LayerBuilder; L java/lang/StringBuilder
 K  O Services/MIMEResolver/
 K Q R S append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 : U V W getName 6(Ljavax/lang/model/element/Element;)Ljava/lang/String;
 Y Z [ \ ] java/lang/String replace (CC)Ljava/lang/String; _ 
-Extension a .xml
 K c d  toString
 f g h i j 0org/openide/filesystems/annotations/LayerBuilder file K(Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; l instanceCreate n $org/openide/filesystems/MIMEResolver
  p V  r create
 t u v w x 5org/openide/filesystems/annotations/LayerBuilder$File methodvalue o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; z instanceClass
 t | } ~ stringvalue ](Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; � mimeType  � �   � � � 	extension ()[Ljava/lang/String; � ext.
 K � R � (I)Ljava/lang/StringBuilder;  � � � position ()I
 t � � � :(I)Lorg/openide/filesystems/annotations/LayerBuilder$File;  � � � showInFileChooser � fileChooser.
 t � � ~ bundlevalue � displayName  � � 
 t � � � write 4()Lorg/openide/filesystems/annotations/LayerBuilder;
 f � � � absolutizeResource H(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/lang/String;
 f � � � validateResource �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)Ljavax/tools/FileObject; � -Registration � bytes
 : � � � generateInstanceResolver �(Ljavax/tools/FileObject;Ljavax/lang/model/element/Element;Lorg/openide/filesystems/annotations/LayerBuilder$File;Lorg/openide/filesystems/MIMEResolver$Registration;)[B
 t � � � serialvalue M(Ljava/lang/String;[B)Lorg/openide/filesystems/annotations/LayerBuilder$File; 
 � 
 � 
 � � � � � � javax/tools/FileObject openInputStream ()Ljava/io/InputStream;
 � � � � �  org/openide/filesystems/FileUtil createMemoryFileSystem &()Lorg/openide/filesystems/FileSystem;
 � � � � � "org/openide/filesystems/FileSystem getRoot &()Lorg/openide/filesystems/FileObject; � resolver.xml
 � � � � � "org/openide/filesystems/FileObject 
createData 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 � � � � getOutputStream ()Ljava/io/OutputStream;
 � � � � � java/io/InputStream read
 � � � � � java/io/OutputStream (I)V
 � � �  close
 � �
 � � � � � Borg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl forDescriptor M(Lorg/openide/filesystems/FileObject;Z)Lorg/openide/filesystems/MIMEResolver;
 : � � � setFileChooserRelatedAttributes �(Lorg/openide/filesystems/MIMEResolver$Registration;Lorg/openide/filesystems/MIMEResolver;Lorg/openide/filesystems/annotations/LayerBuilder$File;)V
 � � � � toStream *(Lorg/openide/filesystems/MIMEResolver;)[B � java/io/ByteArrayOutputStream
 �  � java/io/ObjectOutputStream
 � �  � (Ljava/io/OutputStream;)V
 � � � � writeObject (Ljava/lang/Object;)V
 � �
 � toByteArray ()[B java/io/IOException <org/openide/filesystems/annotations/LayerGenerationException
 Cannot process 
 K R -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  7(Ljava/lang/String;Ljavax/lang/model/element/Element;)V
 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; 
-Namespace  �  � doctypePublicId doctype.  � checkedExtension !" � acceptedExtension$ accept.& element ()  elementName +, � 	elementNS. ns.  �  � 0234 getKind (()Ljavax/lang/model/element/ElementKind;
6789 + $javax/lang/model/element/ElementKind isClass
6;< + isInterface	 :>?@ processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment;BCDEF 1javax/annotation/processing/ProcessingEnvironment getElementUtils "()Ljavax/lang/model/util/Elements;H $javax/lang/model/element/TypeElementJKLMN javax/lang/model/util/Elements getBinaryName G(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name;P cQ javax/lang/model/element/Name	6STU PACKAGE &Ljavax/lang/model/element/ElementKind; 0WXY getSimpleName !()Ljavax/lang/model/element/Name; 0[\] getEnclosingElement $()Ljavax/lang/model/element/Element;
 K_ R` (C)Ljava/lang/StringBuilder;
bcdef java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 :hij unq '(Ljava/util/Collection;)Ljava/util/Set;l java/util/TreeSet
k  opq addAll (Ljava/util/Collection;)Z
 �stu getMIMETypes ;(Lorg/openide/filesystems/MIMEResolver;)[Ljava/lang/String;w Rorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverProcessor$FilterInfovyz{ getExtensions ()Ljava/util/List;
 :}i~ $([Ljava/lang/String;)Ljava/util/Set;� 	mimeType.v��{ getFileNames� #� java/util/List� 	fileName. SUFFIX Ljava/lang/String; ConstantValue Code LineNumberTable LocalVariableTable this ILorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverProcessor; getSupportedAnnotationTypes ()Ljava/util/Set; set Ljava/util/Set; LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>; 	Signature %()Ljava/util/Set<Ljava/lang/String;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; handleProcess @(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z r 3Lorg/openide/filesystems/MIMEResolver$Registration; e "Ljavax/lang/model/element/Element; <Lorg/openide/filesystems/MIMEResolver$ExtensionRegistration; <Lorg/openide/filesystems/MIMEResolver$NamespaceRegistration; annotations roundEnv .Ljavax/annotation/processing/RoundEnvironment; 8Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>; StackMapTable 
Exceptions MethodParameters i(Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;Ljavax/annotation/processing/RoundEnvironment;)Z ext chooser b 2Lorg/openide/filesystems/annotations/LayerBuilder; f 7Lorg/openide/filesystems/annotations/LayerBuilder$File; cnt I ccnt� [Ljava/lang/String; relRes absRes fo Ljavax/tools/FileObject; ch is Ljava/io/InputStream; tmp $Lorg/openide/filesystems/FileObject; os Ljava/io/OutputStream; resolver &Lorg/openide/filesystems/MIMEResolver; almostResult [B out Ljava/io/ByteArrayOutputStream; oos Ljava/io/ObjectOutputStream; le >Lorg/openide/filesystems/annotations/LayerGenerationException; ex Ljava/io/IOException; array 8([Ljava/lang/String;)Ljava/util/Set<Ljava/lang/String;>; 
collection Ljava/util/Collection; s ;(Ljava/util/Collection;)Ljava/util/Set<Ljava/lang/String;>; type name types exts Ljava/util/List; tcnt ncnt $Ljava/util/List<Ljava/lang/String;>; 
SourceFile MIMEResolverProcessor.java )Lorg/openide/util/lookup/ServiceProvider; service 'Ljavax/annotation/processing/Processor; InnerClasses Registration ExtensionRegistration NamespaceRegistration File 
FilterInfo ! :     �� �    `     �   /     *� �   �       2�       ��   �� �   �     .� Y� 	L+
� �  W+� �  W+� �  W+�   �       6  7  8   9 , :�       .��    &�� �      &�� �   ��    �   �� �  �     �,
�  � " N-� & � .-� , � 0:
� 2 � 
:*� 6 � 9���,�  � " N-� & � '-� , � 0:� 2 � :*� ?���,�  � " N-� & � '-� , � 0:� 2 � :*� C����   �   6    @ " A 0 B ? C B D d E r F z G } H � I � J � K � L�   \ 	 0 ��  " ��  r ��  d ��  � ��  � ��    ���     ���    ��� �       ��� �    �  '� 3�  '� ,�  '� ,�    �   	�  �  �   ��    �    A B �      *� 0Y+S� GN-� KY� MN� P*+� T.-� X� P^� P`� P� b� e:km� oq� sWym� o� {W,� � � {W6,� � :�66� /2:	� KY� M�� P�� �� b	� {W����,� � � �W6,� � :�66		� /	2:
� KY� M�� P�� �� b
� �W�	����,� � � �W� �W�   �   F    P  Q ; R J S W T e U h V � W � V � Y � Z � [ � \ � [ � ^ _ `�   \ 	 � �� 	 � �� 
  ��    ��   ��  ��  ; ���  h ���  � X�� �   A � x 	 : 0  f t�  � 2�  
 : 0  f t�  � 2�    �   	�  �    = > �  �     �+,� �:*� 0Y+S� G:+-� �:� KY� MN� P*+� T.-� X� P�� P`� P� b� e:km� oq� sWym� o� {W�*+-� �� �W-� � � �W6-� � :		�6
6
� /	2:� KY� M�� P�� �� b� �W�����-� � � �W� �W�   �   >    c  d  e " f Q g ` h m i  j � k � l � m � l � o � p � q�   f 
 � ��    ���     ���    ���    ���   ���   ���  " ���  Q ���  � X�� �   * � �  : 0 Y 
 Y f � t�  � 2�    �   �  �  �    � � �  �     �+� � :� �� �̶ �:� �:� �6� � � ݧ��� �� �� �:*-� �� �:	� �Y� �:
� �Y
� �:	� �� 
��:�Y� KY� M	� P+�� b,�:�W�    } ~ �   Z    v  w  x  z # { ) | , ~ 3  6 � ; � @ � H � Q � X � a � l � s � x � ~ � � � � � � ��   �  # ��   v��   i��   b��  H 6��  X &�� 	 a �� 
 l ��  � ��  � )��    ���     ���    ���    ���    ��� �   . �  � � �� � 	� G  : � 0 t 
 �    �   �  �  �  �    E F �  �  
  �*� 0Y+S� GN-� KY� MN� P*+� T.-� X� P� P`� P� b� e:km� oq� sWym� o� {W,� � {W6,� :�66� 02:	� KY� M� P�� �� b	� {W����6,� :�66� /2:	� KY� M�� P�� �� b	� {W����6,�  :�66� 02:	� KY� M#� P�� �� b	� {W����6%,�' � {W,�* :�66� 02:	� KY� M-� P�� �� b	� {W����,�/ � �W�,�0 � �W� �W�   �   j    �  � < � K � X � f � i � � � � � � � � � � � � � � � � � �4 �: �= �L �j �� �� �� �� �� ��   f 
 �  �� 	 � �� 	  �� 	j  �� 	  ���    ���   ���  ���  <u��  iH�� �   B � y 	 : 0  f t�  � 3� �� 2� �� 3� !�� 3�    �   	�  �    V W �   �     n+�1 �5� +�1 �:� *�=�A +�G�I �O �+�1 �R� +�V �O �� KY� M*+�Z � T� P.�^+�V �� b�   �       �  � 0 � < � H ��       n��     n�� �    �   �   i~ �   =     	*+�a�g�   �       ��       	��     	�� �   �  �   � ij �   j     �kY�mM,+�n W,�   �       �  �  ��        ��     ��   
�� �      
�� �   �  �   �  � � �  (     �+� � �� �,�r:,�v�x :6*�g� " :� & � 0� , � Y:-� KY� M�� P�� �� b� {W���6*�|� " :� & � 1� , � Y:	-� KY� M� P�� �� b	� {W���6,�v�� �� :		� & � 1	� , � Y:
-� KY� M�� P�� �� b
� {W��˱   �   B    � 
 �  �  �  � A � _ � b � e � � � � � � � � � � � � � � ��   z  A ��  � �� 	 � �� 
  ���   ���   ���  e ���  � H��    ���     ���    ���    ��� �      ��� �   F � +  : 
 m t�� '  � 6�  '� 7�  '� 7  : 
 m t  �   �  �  �   �   ��    � �c��   *  
 m�&	  m�&	  m�&	 t f� v :�