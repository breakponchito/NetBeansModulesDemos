����   4&
      <org/openide/filesystems/annotations/LayerGeneratingProcessor <init> ()V  java/util/HashSet
    "org/openide/awt/ActionRegistration
      java/lang/Class getCanonicalName ()Ljava/lang/String;      java/util/Set add (Ljava/lang/Object;)Z  org/openide/awt/ActionID  org/openide/awt/ActionReference   org/openide/awt/ActionReferences    ! " # )javax/lang/model/element/AnnotationMirror getAnnotationType &()Ljavax/lang/model/type/DeclaredType; % & ' ( ) "javax/lang/model/type/DeclaredType 	asElement $()Ljavax/lang/model/element/Element; + , - . /  javax/lang/model/element/Element getSimpleName !()Ljavax/lang/model/element/Name; 1 2 3 4  javax/lang/model/element/Name toString
  6 . 
 8 9 : ; < java/lang/String contains (Ljava/lang/CharSequence;)Z > , ? *javax/lang/model/element/ExecutableElement A path 1 C D < contentEquals F   H "
 8 J K L 
startsWith (Ljava/lang/String;)Z
 8 N O P 	substring (I)Ljava/lang/String;	 R S T U V 0org/netbeans/modules/openide/awt/ActionProcessor DEFAULT_COMPLETIONS [Ljava/lang/String; X java/lang/StringBuilder
 W 
 W [ \ ] append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 W _ \ ` (C)Ljava/lang/StringBuilder;
 W 2 c HINT_
 e f g h i org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 k l m n o 'javax/annotation/processing/Completions of N(Ljava/lang/String;Ljava/lang/String;)Ljavax/annotation/processing/Completion;  q r s isEmpty ()Z	 R u v w COMPLETIONS 'Ljavax/annotation/processing/Processor;
  y z  getName | .completion
 ~  � � � java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
 � � � � � org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; � java/lang/ClassLoader
 � � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 � � � � � java/lang/Thread currentThread ()Ljava/lang/Thread;
 � � � � getContextClassLoader ()Ljava/lang/ClassLoader;
  � � � getClassLoader
  � � � forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
  � � � newInstance ()Ljava/lang/Object; � %javax/annotation/processing/Processor � java/lang/Exception
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V	 R � � � processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment; � � � � init 6(Ljavax/annotation/processing/ProcessingEnvironment;)V � � � � getCompletions �(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/lang/Iterable; � � � � � java/lang/Iterable iterator ()Ljava/util/Iterator; � � � � s java/util/Iterator hasNext � � � � next � &javax/annotation/processing/Completion
 � � � � � java/util/Collections 	emptyList ()Ljava/util/List; � java/awt/event/ActionListener
 R � � � type 5(Ljava/lang/Class;)Ljavax/lang/model/type/TypeMirror; � 'org/openide/util/actions/Presenter$Menu � *org/openide/util/actions/Presenter$Toolbar � (org/openide/util/actions/Presenter$Popup � #org/openide/util/ContextAwareAction � "org/openide/awt/DynamicMenuContent � javax/swing/Action � java/lang/Object � java/util/EventListener � java/lang/Void � � � � � ,javax/annotation/processing/RoundEnvironment getElementsAnnotatedWith "(Ljava/lang/Class;)Ljava/util/Set;  � + � � � getAnnotation 4(Ljava/lang/Class;)Ljava/lang/annotation/Annotation; � <org/openide/filesystems/annotations/LayerGenerationException � G@ActionRegistration can only be used together with @ActionID annotation
 � �  � �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/annotation/Annotation;)V  � �  id  � �  category Actions/ 3@ActionID category() should not start with Actions/ �
 �  �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V	 R	
 FQN Ljava/util/regex/Pattern;
 java/util/regex/Pattern matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
 s java/util/regex/Matcher matches 1@ActionID id() must be valid fully qualified name �
 8 replace (CC)Ljava/lang/String;
 R ! layer W([Ljavax/lang/model/element/Element;)Lorg/openide/filesystems/annotations/LayerBuilder;# /% 	.instance
'()*+ 0org/openide/filesystems/annotations/LayerBuilder file K(Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;- displayName 
/- 
12345 5org/openide/filesystems/annotations/LayerBuilder$File bundlevalue �(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; 
78  menuText
 8 q8 
<=  	popupText= +@AB getKind (()Ljavax/lang/model/element/ElementKind;	DEFGH $javax/lang/model/element/ElementKind FIELD &Ljavax/lang/model/element/ElementKind;J (javax/lang/model/element/VariableElement +LMN asType $()Ljavax/lang/model/type/TypeMirror; +PQR getModifiers ()Ljava/util/Set;	TUVWX !javax/lang/model/element/Modifier PUBLIC #Ljavax/lang/model/element/Modifier; Z ; 	T\]X STATIC	T_`X FINALb 3Only static string constant fields can be annotated 
de  key
 8ghi length ()Ik .When annotating field, one cannot define key()eIno � getConstantValue
 � 2	DrsH CLASS
 Ruvw isAssignable G(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Zy VClass annotated with @ActionRegistration must implement java.awt.event.ActionListener!{ Class has to be public +}~ ) getEnclosingElement� ?Inner class annotated with @ActionRegistration has to be static
 �� � 7(Ljava/lang/String;Ljavax/lang/model/element/Element;)V	 R��� $assertionsDisabled Z	D��H METHOD� java/lang/AssertionError
�� � (Ljava/lang/Object;)V� dummy
'��� instanceFile �(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; +�� � getAnnotationMirrors� �� java/util/List % 2
 8��  equals ��� getElementValues ()Ljava/util/Map;����R java/util/Map entrySet� java/util/Map$Entry��� � getKey� lazy��� � getValue� (javax/lang/model/element/AnnotationValue��� java/lang/Boolean
��� s booleanValue
���� valueOf (Z)Ljava/lang/Boolean; 
�� s
�  >��N getReturnType����� 1javax/annotation/processing/ProcessingEnvironment getMessager (()Ljavax/annotation/processing/Messager;	����� javax/tools/Diagnostic$Kind WARNING Ljavax/tools/Diagnostic$Kind;� (Should explicitly specify lazy attribute����� $javax/annotation/processing/Messager printMessage Z(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V� -Cannot specify key and use eager registration 
��  iconBase� &iconBase unused on eager registrations���� �(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)V� instanceCreate
1��� instanceAttribute \(Ljava/lang/String;Ljava/lang/Class;)Lorg/openide/filesystems/annotations/LayerBuilder$File;� org.openide.awt.Actions� alwaysEnabled
1��� methodvalue o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;� callback� fallback
1��� stringvalue ](Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;� delegate
1��� �(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;
 R�  generateContext �(Ljavax/lang/model/element/Element;Lorg/openide/filesystems/annotations/LayerBuilder$File;Lorg/openide/awt/ActionRegistration;)Ljavax/lang/model/type/TypeMirror;�
' validateResource �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)Ljavax/tools/FileObject; noIconInMenu 

 s 
iconInMenu
1 	boolvalue L(Ljava/lang/String;Z)Lorg/openide/filesystems/annotations/LayerBuilder$File; 
 s asynchronous 
 s surviveFocusChange 
 	enabledOn ()Lorg/openide/awt/ActionState;
 R processActionState$(Ljavax/lang/model/element/Element;Lorg/openide/awt/ActionState;Lorg/openide/filesystems/annotations/LayerBuilder$File;Ljavax/lang/model/type/TypeMirror;ZLjavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)V 
!" 	checkedOn
1$%& write 4()Lorg/openide/filesystems/annotations/LayerBuilder;
 R()* processReferences `(Ljavax/lang/model/element/Element;Lorg/openide/awt/ActionReference;Lorg/openide/awt/ActionID;)V ,-. value $()[Lorg/openide/awt/ActionReference;0 ,Don't use @ActionReference without @ActionID 2 �3 ()Lorg/openide/awt/ActionID;5 NDon't specify additional id=@ActionID(...) when using @ActionID on the element7 Specify real id=@ActionID(...)9:;<  org/openide/awt/ActionState property9> �? ()Ljava/lang/Class;A +javax/lang/model/type/MirroredTypeException
@CDN getTypeMirrorFGHAI  javax/lang/model/type/TypeMirror "()Ljavax/lang/model/type/TypeKind;	KLMNO javax/lang/model/type/TypeKind DECLARED  Ljavax/lang/model/type/TypeKind;Q 'Invalid enabled-on type in @ActionState ��TUV getTypeUtils ()Ljavax/lang/model/util/Types;XYZ[w javax/lang/model/util/Types 
isSameType9]^ s useActionInstance` Property must be specifiedb %Property owner type must be specified�def getElementUtils "()Ljavax/lang/model/util/Elements;h $javax/lang/model/element/TypeElementjklmn javax/lang/model/util/Elements getBinaryName G(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name;p enableOnTyper checkedOnTypet org/openide/awt/Actionsv openide.awt.actionToggle
 8xyi hashCode{ #null} enabled SwingSelectedKey
 8��� charAt (I)C
����� java/lang/Character toUpperCase (C)C� is� getj��� getAllMembers 8(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;
����� #javax/lang/model/util/ElementFilter 	methodsIn &(Ljava/lang/Iterable;)Ljava/util/List; >�� � getParameters� q� Getter � . > 2�  must take no parameters<� 	Property �  not found in  >P > 2�  must be public� enableOnProperty� checkedOnProperty9��? listenOng , � removeg@	D��H 	INTERFACE�  is not an interface�gP�  is not public���i size���� (I)Ljava/lang/Object;IL� 
Method add
 W� \� -(Ljava/lang/Object;)Ljava/lang/StringBuilder;� 7 must be public and take exactly one parameter of type �  not found on � Method remove� enableOnChangeListener� checkedOnChangeListener9��  listenOnMethod� 3Cannot specify listenOnMethod() without listenOn().�� 
Interface �  does not contain method � enableOnMethod� checkedOnMethod9��  checkedValue� 	#non-null� enableOnNull� checkedOnNull� enableOnValue� checkedOnValue� enableOnActionProperty� checkedOnActionPropertyj��� getTypeElement @(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;gL +�� � getEnclosedElements
�� � constructorsIn >@	DH CONSTRUCTOR #Only one public constructor allowed .Constructor has to be public with one argument
 "Constructor must have one argument	 2org/netbeans/modules/openide/awt/ActionProcessor$1 )$SwitchMap$javax$lang$model$type$TypeKind [I
Ki ordinal javax/lang/model/type/ArrayTypeN getComponentTypeF 2 	Use List< > rather than  [] in constructor! :Must use SomeType (or List<SomeType>) in constructor, not 
 �# $ (Ljava/lang/String;)V& java.util.List %() � getTypeArguments+ Use List<SomeType>
 R-./ 
binaryName 6(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;1 inject3 
injectable5 selectionType7 ANY9 context; No type parameters allowed in = EXACTLY_ONEX? (@ F(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;
DBC s isClass
DEF s isInterfaceXuI CCan't specify id() attribute when @ActionID provided on the element KL  name N A P 	Shortcuts
RSTUV org/openide/util/Utilities stringToKeys ,(Ljava/lang/String;)[Ljavax/swing/KeyStroke;X �Registrations in Shortcuts folder need to represent a key. Specify value for 'name' attribute.
See org.openide.util.Utilities.stringToKeys for possible values. Current name="Z " is not valid.
\ .shadow^ originalFile `ai position
1cad :(I)Lorg/openide/filesystems/annotations/LayerBuilder$File; fgi separatorAfteri java/lang/Integer���l 0separatorAfter() must be greater than position()n -separatorAfter.instancep javax/swing/JSeparator
1rs� newvalue uvi separatorBeforex /separatorBefore() must be lower than position()z -separatorBefore.instance
 |} s desiredAssertionStatus |(?:\p{javaJavaIdentifierStart}\p{javaJavaIdentifierPart}*)(?:[.](?:\p{javaJavaIdentifierStart}\p{javaJavaIdentifierPart}*))*
��� compile -(Ljava/lang/String;)Ljava/util/regex/Pattern;� Menu� Toolbars� Loaders 
IDENTIFIER Ljava/lang/String; ConstantValue� :(?:\p{javaJavaIdentifierStart}\p{javaJavaIdentifierPart}*) Code LineNumberTable LocalVariableTable this 2Lorg/netbeans/modules/openide/awt/ActionProcessor; getSupportedAnnotationTypes hash Ljava/util/Set; LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>; 	Signature %()Ljava/util/Set<Ljava/lang/String;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; c ex Ljava/lang/Exception; l Ljava/lang/ClassLoader; pathCompletions 
completion (Ljavax/annotation/processing/Completion; res element "Ljavax/lang/model/element/Element; 
annotation +Ljavax/lang/model/element/AnnotationMirror; member ,Ljavax/lang/model/element/ExecutableElement; userText 9Ljava/util/Set<Ljavax/annotation/processing/Completion;>; StackMapTable V MethodParameters �(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/lang/Iterable<+Ljavax/annotation/processing/Completion;>; handleProcess @(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z var *Ljavax/lang/model/element/VariableElement; 
stringType "Ljavax/lang/model/type/TypeMirror; entry Ljava/util/Map$Entry; m >Lorg/openide/filesystems/annotations/LayerGenerationException; 
selectType actionReference !Lorg/openide/awt/ActionReference; ar $Lorg/openide/awt/ActionRegistration; aid Lorg/openide/awt/ActionID; builder 2Lorg/openide/filesystems/annotations/LayerBuilder; f 7Lorg/openide/filesystems/annotations/LayerBuilder$File; createDelegate direct Ljava/lang/Boolean; arMirror aref refs "Lorg/openide/awt/ActionReferences; e ref annotations roundEnv .Ljavax/annotation/processing/RoundEnvironment; actionListener p1 p2 p3 caa dmc at ot lt vt oLjava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>; 8Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;� "[Lorg/openide/awt/ActionReference; 
Exceptions i(Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;Ljavax/annotation/processing/RoundEnvironment;)Z mte -Ljavax/lang/model/type/MirroredTypeException; el getter invalidGetter capitalizedName isGetter 	getGetter mods found as Lorg/openide/awt/ActionState; enable 
actionType 
objectType eventListenerType voidType enabledType dt $Ljavax/lang/model/type/DeclaredType; dtName isAction tel &Ljavax/lang/model/element/TypeElement; 
listenType explicitListenerType lfaceElement 	lfaceName lfaceFQN addName 
removeName 	addMethod addCandidate removeMethod removeCandidate wantsListen 4Ljava/util/Set<Ljavax/lang/model/element/Modifier;>; Ljava/lang/Class; Ljava/lang/Class<*>; 8(Ljava/lang/Class<*>;)Ljavax/lang/model/type/TypeMirror; elemType ee 	candidate ve ctorType t first snd stroke [Ljavax/swing/KeyStroke; after before <clinit> 
SourceFile ActionProcessor.java )Lorg/openide/util/lookup/ServiceProvider; service InnerClasses "org/openide/util/actions/Presenter Toolbar Popup File Entry$ javax/tools/Diagnostic Kind 1 R     �� �   � 
    U V    v w  ��       �   /     *� �   �       K�       ��   �R �   �     :� Y� 	L+
� �  W+� �  W+� �  W+� �  W+�   �       S  T  U   V , W 8 Y�       :��    2�� �      2�� �   ��    �    � � �    
  �,�  � $ � * � 0 � 5� 7�x-� = @� B �h� E:G� I� � M:� Y� 	:� Q:�66� W2:		� I� @� WY� YG� Z	� Z/� ^� aR� WY� Yb� Z	� Z� a� d� j�  W����� p � �*� t� q� WY� Y� x� Z{� Z� a� }:� M� ��� �� �:� � �� �:� 
R� �:*� �� �� �� t� :� �**� t� �*� t� P*� t*� H*� t*� �� � *� t+,-� � � � :� � � � � � �:�  W����� ʰ ), � �   � #   d   e 0 f 5 g 9 i C j K m T n o o y p � n � s � t � w � x � y � z � { | ~  �) �, �. �3 �8 �; �> �M �Z �� �� �� �� ��   p  o G�� 	. 
��  � :��  � R�� � 
��  TA��   ���    ���   ���   ���   ��� �     TA�� �   J 9�  	 R +  > 8 �  � T� � A 8 �T �� � � 0 �� "� �   �  �  �  �  �   ��    �   �� �  � 
    '*з �N*ַ �:*ط �:*ڷ �:*ܷ �:*޷ �:*� �:	*� �:
*� �:*� �:,
� � � � :� � �� � � +:
� � � 
:� ���� � � :� � �Y�*� �� ��� � � ���� �  � I� � �Y*� ����� � ��� � �Y*� ���� � .-�:*� +YS�:� WY� Y � Z� � � Z"� Z� Z$� Z� a�&:,�. ,�0W�6 :�9� ::�0W�; :�9� >>�0W6�? �C� ��I:*8� �:�K � 9�O �S�Y � '�O �[�Y � �O �^�Y � � �Ya*� �� ���c �f� � �Yj*� �l��6�m �p:� ��? �q� �*�K -�t� � �Yx*� �� ���O �S�Y � � �Yz*� �� ���| �? �q� "�O �[�Y � � �Y����c :� 8��� �? ��� ��Y�������W�c :::�� �� :� � � �� � � :�  �� 
� ��� �:�� �� � � :� � � s� � ��:�� � >� = �� B � J�� ���� ����� � ��:��� %���� � � � ��Y��������B� ��? �C� ��:� ��? �q� �K � � >�� :*�t� /*�t� $*�t� *�t� *�t� � ��:��� *� ��� ����� ��� T�f� � �Y�*� �l���� �9� *� ��� ����� ���W�:�f� ����W� 1����W� ����Wl��W� "����W� :*��:�� �f� (�� �W�� ��W�	 � � �W� � �W� � �W*� 	
�*�  	
��#W� � � :� *�'� � � :� 2�+ :�66� 2:*�'������,� � � � :� � � g� � � +:
� � � ���� � � :� ���� � � :� *�'���� �Y/*� �� ��,� � � � :� � �(� � � +:
� � � ���� � � :� ���� � � :� q�+ :�66� V2:�1 � � �9� �1 � � �9� � �Y4*� ��1 � ��*�'����� s�+ :�66� [2:�1 � � �9� �1 � � �9� � �Y6*� ��1 � ��*�1 �'�������� =KN � �  F �   �  �  �  �  � ' � / � 7 � ? � G � O � t � � � � � � � � � � � � � � � � � � � � � � � � �* �\ �q �z �� �� �� �� �� �� �� �� �� �� �� �� � � �' �4 �J �M �Y �i �x �� �� �� �� �� �� �
 � �" �% �( �L �c �g �� �� �� �� �� �� �� �	 � �5 �v ~����
�����
-8=KNP\ i!~"�$�%�&�(�)�+�,.012%43586W7a6g;j<�=�>�@�A�B�D�E�F�G�I�KLMO)P.Q1S?TDUcV�W�Y�U�\�]�^`\"c%d�  � -� ��� � ��� Y e� � e� � a�� L ��� 5 _ �� P �� ��� W 
��  ����  ���� L �� *=�� \�� z�8� ��=� "Ee� ���� %B�� (?��  Q�� 3 4��  t��� � ;�� � % �� � X�� c F�� � K�� ) ��� ? � �� ��   '��    '��   '��   ��  ��  ��  ��  ' ��  /���  7��� 	 ?��� 
 G���  O��� �    � a��   '�� �  W F� ^  R  �FFFFFFFFFF �  � + + 
� $ %(� �  R  �FFFFFFFFFF � + 
  8'1 8  �   8� `  R  �FFFFFFFFFF � + 
  8'1 8 8 IF  "� .$0�   R  �FFFFFFFFFF � + 
  8'1 8 8 8  � �  �� C  �� K�@]�    R  �FFFFFFFFFF � + 
  8'1 8 8 8�  �  �� � 
� � IF� 8F@� "%$� F"
U �1�   R  �FFFFFFFFFF � + 
  8'1 8 8 8� F 1 8�    R  �FFFFFFFFFF � + 
  8'1 8 8 8� F 1 8� 3� " � #  R  �FFFFFFFFFF � + 
  8'1 8 8 8�   �  �   R  �FFFFFFFFFF �  � �  �� $ +�  �  �   R  �FFFFFFFFFF  �  �� $ +�  � #  R  �FFFFFFFFFF � +  �  � 1 �   R  �FFFFFFFFFF � +    � �� 1 �   R  �FFFFFFFFFF �  � �     ��   	�  �  �   ��    �    �  p     �,�8 :
:,�= W� :�B:� �E �J� � �YP+*� �,R��*� ��S 	�W � �,�\ � <*� ��S �W � 'E,�8 ��� � � �Y_+*� �,� ��� %:*� ��S �W �  � � �Ya+*� �,� ��� %:*� ��c � $ �g�i � 0 :-� 	o� q��W� -u�W*� ��S �W 6
:6�w�   7           �*   )E��� 6� z��� 6�      A                >,�\ � 	:
� � 	|� ~:
� :
� $ �g:
����::� WY� Y
����� ^
� M� Z� a:� WY� Y�� Z� Z� a:� WY� Y�� Z� Z� a:*� ��c �� ���� :� � � p� � � >:� = � B �  �� �� � 
:� 
:� 6� = � B � "�� �� � � :� :���� {� ?� �Y� WY� Y�� Z� Z�� Z�� � Z�� Z� a+*� �,���� �Y� WY� Y�� Z
� Z�� Z� Z�� Z� a+*� �,����� :�S�Y � ?� �Y� WY� Y�� Z� Z�� Z�� � Z�� Z� a+*� �,���
� -� 	�� �
��W:,�� W�:�B:*� ��S �W � � 6� %� $ �g:�� � 0 :*� ��c �i � 0 :� WY� Y�� Z� Z� a:� WY� Y�� Z� Z� a:� n�� ��� )� �Y� WY� Y� Z�� Z� a+*� �,����� �S�Y � )� �Y� WY� Y� Z�� Z� a+*� �,���::::*� ��c �� ���� :� � �� � � >:� = � B � m:�� �S�Y ����� �[�Y � ����� �� � �*� ��S �� �� �I�� �W � �:� {� = � B � j:�� �S�Y ��K�� �[�Y � ��6�� �� � /*� ��S �� �� �I�� �W � :���� z� ?� �Y� WY� Yȶ Z� = ��Ͷ Z� Z�� Z� a+*� �,���� 4� �Y� WY� Yȶ Z� Z϶ Z� Z� a+*� �,���� z� ?� �Y� WY� YѶ Z� = ��Ͷ Z� Z�� Z� a+*� �,���� 4� �Y� WY� YѶ Z� Z϶ Z� Z� a+*� �,���� � � � 6� -� 	ӧ ���WE,�� ��� �� � �Y�+*� �,ܷ�,�� :6*� ��c �� ���� :� � � )� � � >:� = � B � 	6� ���� 4� �Y� WY� Yݶ Z� Z߶ Z� Z� a+*� �,ܷ�-� 	� ���WE,�� ��� �,�� :6�w�   8   �S!�   * �*   z��� 6� ��� 6�     I                2-� 	� ��W� 3-� 	� ��W� -� 	� �,�� ��W,�\ � $-� 	� �� 	|� ~��W�    @���@ �   �  j k m p n o q 0r Dt Yu Zw cx �y �z �~ � �� �� �� �� ��	���+�������������������������L�]�l�s�w�z�������������������*�3�@�|������������������������(�-�:�`�r�������������������$�H�O�`�d�������������������� FKPc�	�
���� !$Tehkns�"�%�&,(@)C+W,Z.s2|3�4�3�6�  � )  �� L ^�� ���� ���� ���� w�� `�� 3 I�� � �� � ��� T �� ! ��� $ ���   ���    ���   ���   ���   ���   ���   ���   ���   ���   ��� 	 �<� 
 ���  ����  ���� +s�� ���� ��� ���� ���� ���� ���� � � (v� �� � � ��� ��� ��� �    3 I� �  � O�   R +91FFFFF 8F @� A� 1 %� *  R +91FFFFF 8F % 8 1�   R +91FFFFF 8F % 8 1 8� 8 8
B 8� � �  R +91FFFFF 8F % 8g > > 8 8 8 �  � < >+� � � E6� Q  R +91FFFFF 8F % 8g  P1�   R +91FFFFF 8F % 8g 1 8� 
  R +91FFFFF 8F % 8gF @!@� �  R +91FFFFF 8F % 8gFg 8 8 8 8  7� %  R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > �  � Q >>;� ;� � E5� E5@�   R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > 1�   R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > 1 8&� $ 8 �,� 5K1�   R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > 8 1 8� � 6 8K1�   R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > 8 1 8K1�   R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > 8 1 8K1�   R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > 8 1 8� 	T1�   R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > 1 8� 
  R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > 1 8�   R +91FFFFF 8F % 8gFg 8 8 8 8 > > > > 1 8 8�     ��   %	�  �  �  �  �  �  �  �  �    � � �   �     "*� ��c +� �� M,� � 	,�� �   �   
   9 :�        "��     " �   �� �       " �	 �    � gEF�    �  �   
   �  �  
  �::+�� ���� :� � � R� � � >:� �� 6:�� �S�Y � ���� � �Y+*� �-� ��:���� �� �� � "� � �Y���� �Y	����� �� �I:�� :��E �.�      d               a�� � :� �Y� WY� Y� Z� Z� Z� Z� Z� a+*� �-� ��� %� �Y� WY� Y � Z�E �ʶ a�"�� %:*� ��c � $ �g�i � 0 :	%	��� ��' �� � � �Y*���,R*�' �� �F�,��W,��0��W,2*� ��c +�g�i � 0 ��W,46��W,��8��W�' �� �F��' �� � � �Y:���,R*�,��W,��0��W,2*� ��c +�g�i � 0 ��W,4<��W,��8��W�   �   � )  > ? @ ,A 9B =C OD RF WG hI lL oN �O �P �R �U �V �W �Y �Z-\0^R`Yaxb�c�d�f�g�h�i�jkm!n.q<rJsittu�v�   z  , @��  � 4�   ���    ���   ���   ���  ��  �  ���  ��� Y,�� x�� 	�   9 �  > > �� ; >� � � DIF� D!� L % 8� r�     ��   �  �  �   ./ �   �     K*� ��S +�> M,� 3,�? �A� ,�? �D� *� ��c ,�g�i � 0 �+� �   �      z { ,| D~�        K��     K�   ;�� �   	 � , +�      vw �   f     ,� �*� ��S +,�G �   �      � � ��        ��     �    � �    �   	     )* �  v    h,�1 � � �9� S,�1 � � �9� B-� � ,�1 � � ��� -� � ,�1 � � ��� � �YH+*� �-� ��,�J :�9� -� � .-�:,�M O� I� :�Q:� .� �Y� WY� YW� Z� ZY� Z� a+*� �,@��*� +Y+S�� WY� Y,�M � Z"� Z� Z[� Z� a�&:]� WY� Y � Z-� � � Z"� Z-� � .-�� Z$� Z� a��W,�_ �bW�#W,�e j� �,�_ j� ,�_ ,�e � � �Yk+*� �,� ��*� +Y+S�� WY� Y,�M � Z"� Z� Zm� Z� a�&:�o� x�qW,�e �bW�#W,�t j� �,�_ j� ,�_ ,�t � � �Yw+*� �,� ��*� +Y+S�� WY� Y,�M � Z"� Z� Zy� Z� a�&:�o� x�qW,�t �bW�#W�   �   v   � "� P� a� i� q� �� �� �� �� �� ��9�E�K�W�r������������� ��F�U�a�g��   \ 	 � 0 � !� F !�   h��    h��   h��   h��  i�L�  �m�� �    
� P�  8� E� �1� U&� U�     ��   �  �  �     �   d      9R�{� � ��~���� 8Y�SY�SYOSY�S� Q�   �       J  M  N�    @    �     c w   :  ��	 �	 � 	1'! ��"	�#%@    