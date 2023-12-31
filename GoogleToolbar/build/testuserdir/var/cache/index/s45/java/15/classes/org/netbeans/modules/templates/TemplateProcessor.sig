����   4T
      <org/openide/filesystems/annotations/LayerGeneratingProcessor <init> ()V  java/util/HashSet 
 java/lang/String  /org/netbeans/api/templates/TemplateRegistration
      java/lang/Class getCanonicalName ()Ljava/lang/String;  0org/netbeans/api/templates/TemplateRegistrations
      java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
     (Ljava/util/Collection;)V    ! " # ,javax/annotation/processing/RoundEnvironment processingOver ()Z  % & ' getElementsAnnotatedWith "(Ljava/lang/Class;)Ljava/util/Set; ) * + , - java/util/Set iterator ()Ljava/util/Iterator; / 0 1 2 # java/util/Iterator hasNext / 4 5 6 next ()Ljava/lang/Object; 8  javax/lang/model/element/Element 7 : ; < getAnnotation 4(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
 > ? @ A B 0org/netbeans/modules/templates/TemplateProcessor process �(Ljavax/lang/model/element/Element;Lorg/netbeans/api/templates/TemplateRegistration;Ljavax/annotation/processing/RoundEnvironment;)V  D E F value 4()[Lorg/netbeans/api/templates/TemplateRegistration; 7 H I J getModifiers ()Ljava/util/Set;	 L M N O P !javax/lang/model/element/Modifier ABSTRACT #Ljavax/lang/model/element/Modifier; ) R S T contains (Ljava/lang/Object;)Z V <org/openide/filesystems/annotations/LayerGenerationException X java/lang/StringBuilder
 W 
 W [ \ ] append -(Ljava/lang/Object;)Ljava/lang/StringBuilder; _  must not be abstract
 W a \ b -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 W d e  toString	 > g h i processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment;
 U k  l �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V 7 n o p getEnclosedElements ()Ljava/util/List;
 r s t u v #javax/lang/model/util/ElementFilter constructorsIn &(Ljava/lang/Iterable;)Ljava/util/List; x * y java/util/List { *javax/lang/model/element/ExecutableElement z } ~ p getParameters x � � # isEmpty � $ must have a no-argument constructor � � � � � 1javax/annotation/processing/ProcessingEnvironment getTypeUtils ()Ljavax/lang/model/util/Types; 7 � � � asType $()Ljavax/lang/model/type/TypeMirror; � � � � � javax/lang/model/util/Types isAssignable G(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z �  is not assignable to 	 L � � P PUBLIC �  is not public � $javax/lang/model/element/TypeElement � � � � getNestingKind (()Ljavax/lang/model/element/NestingKind;
 � � � � # $javax/lang/model/element/NestingKind isNested	 L � � P STATIC �  is nested but not static
 > � � � layer W([Ljavax/lang/model/element/Element;)Lorg/openide/filesystems/annotations/LayerBuilder;  � �  id
 	 �  � � � content ()[Ljava/lang/String; � "Cannot specify both id and content
 U �  � �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/annotation/Annotation;)V � /
 	 � � � endsWith (Ljava/lang/String;)Z
 	 � � � length ()I
 	 � � � 	substring (II)Ljava/lang/String;
 > � � � basename &(Ljava/lang/String;)Ljava/lang/String; 7 � � � getKind (()Ljavax/lang/model/element/ElementKind;	 � � � � � $javax/lang/model/element/ElementKind CLASS &Ljavax/lang/model/element/ElementKind; � � � � getQualifiedName !()Ljavax/lang/model/element/Name; � d � javax/lang/model/element/Name
 	 � � � replace (CC)Ljava/lang/String;	 � � � � METHOD 7 � � � getEnclosingElement $()Ljavax/lang/model/element/Element;
 W � \ � (C)Ljava/lang/StringBuilder; 7 � � � getSimpleName � <cannot use @Template on a package without specifying content � 
Templates/  � �  folder
 � � � � � 0org/openide/filesystems/annotations/LayerBuilder K(Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;
 � � � � file  template
 5org/openide/filesystems/annotations/LayerBuilder$File 	boolvalue L(Ljava/lang/String;Z)Lorg/openide/filesystems/annotations/LayerBuilder$File; 	 � position
	 :(I)Lorg/openide/filesystems/annotations/LayerBuilder$File;   displayName
 bundlevalue ](Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;   iconBase
 � validateResource �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)Ljavax/tools/FileObject;
 stringvalue! 1Must specify iconBase if content is not specified #$  description& instantiatingWizardURL$
 >)*+ 
contentURI �(Ljavax/lang/model/element/Element;Ljava/lang/String;Lorg/openide/filesystems/annotations/LayerBuilder;Lorg/netbeans/api/templates/TemplateRegistration;Ljava/lang/String;)Ljava/net/URI;
-./ urlvalue Y(Ljava/lang/String;Ljava/net/URI;)Lorg/openide/filesystems/annotations/LayerBuilder$File; 123 createHandlerClass ()Ljava/lang/Class;5 +javax/lang/model/type/MirroredTypeException
478 � getTypeMirror: "javax/lang/model/type/DeclaredType �<=> getElementUtils "()Ljavax/lang/model/util/Elements;@ 4org/netbeans/api/templates/CreateFromTemplateHandler
 BC  getNameEFGHI javax/lang/model/util/Elements getTypeElement @(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement; �KL � 
isSameType9NO � 	asElement
 >QRS checkPublicAbstract i(Ljavax/lang/model/element/Element;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)VEUVW getBinaryName G(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name;Y &org/netbeans/api/templates/FileBuilder[ template.createTemplateHandler
]^ newvalue	 �`a � PACKAGE cd  pagef 2org.openide.WizardDescriptor$InstantiatingIterator
 hij forName %(Ljava/lang/String;)Ljava/lang/Class;l instantiatingIterator
nop instanceAttribute \(Ljava/lang/String;Ljava/lang/Class;)Lorg/openide/filesystems/annotations/LayerBuilder$File;r  java/lang/ClassNotFoundException �tuv getMessager (()Ljavax/annotation/processing/Messager;	xyz{| javax/tools/Diagnostic$Kind ERROR Ljavax/tools/Diagnostic$Kind;~ YEither specify 'page' value or implement or return WizardDescriptor.InstantiatingIterator����� $javax/annotation/processing/Messager printMessage Z(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V
 >��� registerHTMLWizard �(Ljavax/lang/model/element/Element;Lorg/openide/filesystems/annotations/LayerBuilder;Lorg/openide/filesystems/annotations/LayerBuilder$File;Lorg/netbeans/api/templates/TemplateRegistration;)V �
� d� java/net/URI
�� � url
��� write 4()Lorg/openide/filesystems/annotations/LayerBuilder; ��  scriptEngine� Aorg/netbeans/modules/templates/ScriptingCreateFromTemplateHandler� javax.script.ScriptEngine �� � category
 W �� templateCategory� requireProject �� # ��  
targetName
 	��  trim� �� � techIds� techId.
 W� \� (I)Ljava/lang/StringBuilder;� .+/�  
 	��� replaceFirst 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;� [.]template$
 ���� absolutizeResource H(Ljavax/lang/model/element/Element;Ljava/lang/String;)Ljava/lang/String;� nbresloc
�� � 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
����� org/openide/util/BaseUtilities normalizeURI (Ljava/net/URI;)Ljava/net/URI;� java/net/URISyntaxException� could not translate d� 2page() attribute can be used only on static method z H� java.lang.String � � z�� � getReturnType ��O� F(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;
 >��� isModel %(Ljavax/lang/model/element/Element;)Z� ]page() attribute requires its method to return String or class generated by @Model annotation� 9page() attribute requires its method to take no arguments� )org/netbeans/modules/templates/HTMLWizard� create
��� methodvalue o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;� class� method z �� modelFor
 	�� T equals Code LineNumberTable LocalVariableTable this 2Lorg/netbeans/modules/templates/TemplateProcessor; getSupportedAnnotationTypes 	Signature %()Ljava/util/Set<Ljava/lang/String;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; handleProcess @(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z r 1Lorg/netbeans/api/templates/TemplateRegistration; e "Ljavax/lang/model/element/Element; t rr 2Lorg/netbeans/api/templates/TemplateRegistrations; annotations Ljava/util/Set; roundEnv .Ljavax/annotation/processing/RoundEnvironment; LocalVariableTypeTable 8Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>; StackMapTable 2[Lorg/netbeans/api/templates/TemplateRegistration; 
Exceptions MethodParameters i(Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;Ljavax/annotation/processing/RoundEnvironment;)Z constructor ,Ljavax/lang/model/element/ExecutableElement; hasDefaultCtor Z clazz "Ljavax/lang/model/type/TypeMirror; 
typeMirror Ljava/lang/String; handlerClassName cfth cfthType handlerClass me -Ljavax/lang/model/type/MirroredTypeException; 	iterClazz Ljava/lang/Class; ex >Lorg/openide/filesystems/annotations/LayerGenerationException; msg &Ljavax/annotation/processing/Messager; "Ljava/lang/ClassNotFoundException; i I c sb Ljava/lang/StringBuilder; renv builder 2Lorg/openide/filesystems/annotations/LayerBuilder; createFolder f 7Lorg/openide/filesystems/annotations/LayerBuilder$File; handlerSpecified [Ljava/lang/String; Ljava/lang/Class<*>;8 relativeResource x Ljava/net/URISyntaxException; relativePath annotationMethod path pg layerGenerationException b ee 
typeString &Ljavax/lang/model/element/TypeElement; te fqn Ljavax/lang/model/element/Name; 
SourceFile TemplateProcessor.java )Lorg/openide/util/lookup/ServiceProvider; service 'Ljavax/annotation/processing/Processor; InnerClasses FileR javax/tools/Diagnostic Kind ! >      	    �   /     *� �   �       4�       ��   � J �   I     � Y� 	Y� SY� S� � �   �       7�       ��  �   �         �  �  
   �,�  � �,� $ � ( N-� . � 0-� 3 � 7:� 9 � :� ���*,� =���,� $ � ( N-� . � U-� 3 � 7:� 9 � :� ���� C :�66� 2:	*	,� =�������   �   F    ; 	 <  > - ? ; @ @ A C C L D O E q F  G � H � J � K � J � M � N�   R  ;   -   � 	 	  6	
  q D    ���     �    �        �    B 	�  /� ) 7 � �  /� ) 7 � �   > )  /  �      U   	    �           RS �      S+� G � K� Q � %� UY� WY� Y,� Z^� `� c+*� f� j�6+� m � q� w :� . � '� 3 � z:� | �  � 	6� ���� %� UY� WY� Y,� Z�� `� c+*� f� j�-� A*� f� � +� � -� � � )� UY� WY� Y,� Z�� `-� Z� c+*� f� j�+� G � �� Q � %� UY� WY� Y,� Z�� `� c+*� f� j�+� �� � � �� 6+� G � �� Q � %� UY� WY� Y,� Z�� `� c+*� f� j��   �   F    R  S 3 V 6 W \ X k Y n Z q \ t ] y ^ � a � b � d � e g0 hR j�   >  \   6 e   S��    S   S   S     3�  /*� � &� A2� A     U           A B �  �    Y*� 7Y+S� �:6,� � � �� D,� � �� � UY�+*� f,� ��,� � :�� �� �� �d� �:6� �,� � �� ,� � 2� �:� +� � � Ҧ +� �� � � � .-� �:� Y+� � � � =� WY� Y+� � � �� � � � .-� ߶ `-� �+� � � Z� c:� � UY�+*� f,� ��� WY� Y� `,� � � `/� � c:� � WY� Y� `� `� c� �� � WY� Y� `� `� c� �:��W,� �
W,� � �� ,� �W,� � �� ',� +,�W,� �W� ,� � �� � UY +*� f,� ��,�" � �� %*+,�" ,'�(�,W6	,�0 W� �:

�6:�9� y*� f�; ?�A�D :� � :*� f� � �J � E*�9�M �P*� f�; �9�M � ��T � � :Z�\W6	+� � �_� c,�b � �� Me�g:
k
�mW� A:
	� Z?�mW� +:
*� f�s :�w}+� � *+,��,� � �� y*+,� � 2,��(����W6

,� � �� N� WY� Y� `,� � 
2� ʶ `� c� �*+,� � 
2,��(�����
��W�
���,�� � �� �,�� �W,�� �� V� WY� Y:
,�� :�66� (2:
��� 
,� �W
� `W�����
� c�W�,�� �W,�� ��� �� �,�� �W,�� :
6
�� -
2:� WY� Y�� `��� c�W������W� ���4��� U���q �  F Q   m  o  p  q ' r 7 t ? u I v X w ^ y h z x | � } � ~ �  � � � � �O �X �d �p � �� �� �� �� �� �� �� �� �� �� �� � � �$ �- �B �T �v �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �% �j �p �| �� �� �� �� �� �� �� �� �� �� � � � �( �/ �L �R �X ��  $  ?  �  u  �  �  �  �  � v  $ `  - W!  ~" � �#$ 
� %& 
� '( 
� )* � '+ 
 W,- 
� . � J/0 
/  �   2,-   Y��    Y   Y   Y1  K23  �e �  H4 F � O
56 �f7 	 <�8 
    � %9 
   � � 7 � &%� E�   > 7   � 	  � ? 	X� 1/%�  
 > 7   � 	 	 4� �m UBq	� (� V� "  > 7   � 	 	 W:  �  	�   > 7   � 	 	 W  � ,� 
:� 1     U       1   
 � � �   >     *���������   �       ��       ;     ;   *+ �       ]+,��:-+�W��Y» WY� Y�� `� `� c�ĸǰ:� UY� WY� Y϶ `� `� c+*� f� ��   6 7� �       �  �  � 7 � 9 ��   R  9 $<=    ]��     ]    ]>    ]23    ]    ]?   V@    ! � 7  > 7 	 �  	 	 �     U     >  2    ?   �� �  �  
  q,�b +��W�b :� :+�b ��:,+��W-��W+� � � � *� f�s �w�+� �+� z:�� � �� Q � *� f�s �w�+� �*� f�; չD :*� f� � �� �� �J � 5**� f� � �� �� �ޚ *� f�s �w�+� �� | �  � *� f�s �w�+� �-k�A��W+� � � �:*� f�; �T :	-�	� � �W-��� � � �W�      U �   r    �  �  �  � ! � . � < � F � R � g � h � n � � � � � �  � � � � �		
0;M\p�   z   A  ! B(   q��    q   qC3   q56   q  .CA  nD  � �EF ; 6GF M $HI 	    _ U�  	9� - z� c �$     U     C  5     �� �   �     :+� m � w M,� . � &,� 3 � 7N�-� � � � ��� �����   �        3 5 8�       D    :��     :     �  /(�       J   K     L McNO     �P xQS@