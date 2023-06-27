����   4�
      <org/openide/filesystems/annotations/LayerGeneratingProcessor <init> ()V  java/util/HashSet
    -org/openide/windows/TopComponent$Registration
      java/lang/Class getCanonicalName ()Ljava/lang/String;      java/util/Set add (Ljava/lang/Object;)Z  7org/openide/windows/TopComponent$OpenActionRegistration  ,org/openide/windows/TopComponent$Description      ! ,javax/annotation/processing/RoundEnvironment getElementsAnnotatedWith "(Ljava/lang/Class;)Ljava/util/Set;  # $ % iterator ()Ljava/util/Iterator; ' ( ) * + java/util/Iterator hasNext ()Z ' - . / next ()Ljava/lang/Object; 1  javax/lang/model/element/Element 0 3 4 5 getAnnotation 4(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
 7 8 9 : ; :org/netbeans/modules/openide/windows/TopComponentProcessor findInfo R(Ljavax/lang/model/element/Element;)Lorg/openide/windows/TopComponent$Description; = <org/openide/filesystems/annotations/LayerGenerationException ? 5Cannot find TopComponent.Description for this element	 7 A B C processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment;
 < E  F �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/annotation/Annotation;)V  H I  preferredID
 7 K L M checkValidId �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Lorg/openide/windows/TopComponent$Description;)V 
 O P Q roles ()[Ljava/lang/String; S Windows2
 7 U V W generateSettingsAndWstcref �(Ljavax/lang/model/element/Element;Ljava/lang/String;Ljava/lang/String;Lorg/openide/windows/TopComponent$Registration;Lorg/openide/windows/TopComponent$Description;)V Y Duplicate role name found
 [ \ ] ^ + java/lang/String isEmpty ` Unnamed role found b java/lang/StringBuilder
 a  e Windows2/Roles/
 a g h i append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 a k l  toString	 7 n o p $assertionsDisabled Z r java/lang/AssertionError
 q  u org/openide/awt/ActionID
 7 w x y layer W([Ljavax/lang/model/element/Element;)Lorg/openide/filesystems/annotations/LayerBuilder; { Actions/ t } ~  category � / t � �  id
 [ � � � replace (CC)Ljava/lang/String; � 	.instance
 � � � � � 0org/openide/filesystems/annotations/LayerBuilder file K(Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; � instanceCreate �  org.openide.windows.TopComponent � 
openAction
 � � � � � 5org/openide/filesystems/annotations/LayerBuilder$File methodvalue o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; � 	component �  org/openide/windows/TopComponent
 � � � � instanceAttribute �(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;  H
 [ � � � length ()I I
 � � � � stringvalue ](Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; � displayName  � � 
 � � � � bundlevalue �(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;  � �  iconBase �
 � � � � write 4()Lorg/openide/filesystems/annotations/LayerBuilder; � /Components/ � 	.settings
 7 � � � settingsFile 6(Ljavax/lang/model/element/Element;)Ljava/lang/String;
 � � � � contents � /Modes/ 
 � �  mode � .wstcref 
 � � � position
 � � � � :(I)Lorg/openide/filesystems/annotations/LayerBuilder$File; 
 � � + openAtStartup
 7 � � � modeFile '(Ljava/lang/String;Z)Ljava/lang/String;	 � � � � � <org/netbeans/modules/openide/windows/TopComponentProcessor$1 )$SwitchMap$javax$lang$model$type$TypeKind [I 0 � � � asType $()Ljavax/lang/model/type/TypeMirror; � � � � �  javax/lang/model/type/TypeMirror getKind "()Ljavax/lang/model/type/TypeKind;
 � � � � � javax/lang/model/type/TypeKind ordinal � $javax/lang/model/type/ExecutableType � � � � getReturnType � "javax/lang/model/type/DeclaredType � � � � 	asElement $()Ljavax/lang/model/element/Element; �  
 a  h -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 <  7(Ljava/lang/String;Ljavax/lang/model/element/Element;)V	 � � /$SwitchMap$javax$lang$model$element$ElementKind 0	 �
 (()Ljavax/lang/model/element/ElementKind;
 � $javax/lang/model/element/ElementKind 0 k 0 � getEnclosingElement 0 k 0 getSimpleName !()Ljavax/lang/model/element/Name; k javax/lang/model/element/Name Cannot work on given element '<?xml version="1.0" encoding="UTF-8"?>
 ~<!DOCTYPE settings PUBLIC "-//NetBeans//DTD Session settings 1.0//EN" "http://www.netbeans.org/dtds/sessionsettings-1_0.dtd">
! <settings version="1.0">
#   <instance class="% "' 	 method=") />
+ </settings>
- �<!DOCTYPE tc-ref PUBLIC "-//NetBeans//DTD Top Component in Mode Properties 2.0//EN" "http://www.netbeans.org/dtds/tc-ref2_0.dtd">
/ <tc-ref version="2.0">
1   <tc-id id="3 "/>
5   <state opened="
 a7 h8 (Z)Ljava/lang/StringBuilder;: 
</tc-ref>

 [<=> toCharArray ()[C
@ABCD java/lang/Character isLetterOrDigit (C)ZF -The preferred id contains invalid character '
 aH hI (C)Ljava/lang/StringBuilder;K '
 MN + desiredAssertionStatus Code LineNumberTable LocalVariableTable this <Lorg/netbeans/modules/openide/windows/TopComponentProcessor; getSupportedAnnotationTypes ()Ljava/util/Set; hash Ljava/util/Set; LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>; 	Signature %()Ljava/util/Set<Ljava/lang/String;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; handleProcess @(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z 
rootFolder Ljava/lang/String; role uniqueRoles reg /Lorg/openide/windows/TopComponent$Registration; info .Lorg/openide/windows/TopComponent$Description; [Ljava/lang/String; e "Ljavax/lang/model/element/Element; 
actionFile 7Lorg/openide/filesystems/annotations/LayerBuilder$File; 9Lorg/openide/windows/TopComponent$OpenActionRegistration; aid Lorg/openide/awt/ActionID; annotations roundEnv .Ljavax/annotation/processing/RoundEnvironment; 8Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>; StackMapTableh 
Exceptions MethodParameters i(Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;Ljavax/annotation/processing/RoundEnvironment;)Z type clazz method sb Ljava/lang/StringBuilder; openAtStart c C descr� [C <clinit> 
SourceFile TopComponentProcessor.java )Lorg/openide/util/lookup/ServiceProvider; service 'Ljavax/annotation/processing/Processor; InnerClasses Registration OpenActionRegistration Description File 1 7     o p   	    O   3     *� �   P   
    *  +Q       RS   TU O   �     .� Y� 	L+
� �  W+� �  W+� �  W+�   P       /  0  1   2 , 3Q       .RS    &VW X      &VY Z   [\    ]   ^_ O  U    .,
�  � " N-� & �-� , � 0:
� 2 � 
:� ���*� 6:� � <Y>*� @� D�� G :*� @� J� N :		�� R:*� T� �� Y� 	:
	:�66� l2:
�  � � <YX*� @� D�� Z� � <Y_*� @� D�� aY� cd� f� f� j:*� T�������,�  � " N-� & � �-� , � 0:� 2 � :� m� � � qY� s�*� 6:t� 2 � t:� �*� 0YS� v� aY� cz� f� | � f� f� � .-� �� f�� f� j� ����� �:��� �W� � � �� �� � � �W�� � �� �W� � � � �� �� � � �W� �W����   P   � )   8 " 9 0 : 5 ; 8 > @ ? E @ W B ` C m F v G | H � I � K � L � M � N � P � Q � S T L W Y; ZI [\ \d ^r _w `� a� b� c� d� e� g h i# k) m, nQ   �  � `a  � \ba  `a  � |cW 
 0 �de  @ �fg  ` � �a  v � Ph 	 " �ij � ckl I �dm d �fg r �no ; �ij   .RS    .pW   .qr X     � |cY 
  .ps t   � �  '� ) 0 
�  � 9 [ u�   7   ' 0 
  [ u u  � + [� )  7   '  � �  '� 4 0 � �  t �3�   7   '  � v     <w   	p  q  Z   x\    ]    V W O  /     �*� 0Y+S� v� aY� c,� f�� f-� f�� f� j� �+� ¶ �:� �W*� 0Y+S� v� aY� c,� fɶ f� � � f� f-� fζ f� j� �� � � �� G � � � ٶ �:� �W�   P   * 
   r ( s , t 4 u : w X x v y � z � { � |Q   R    �RS     �ij    �`a    � �a    �de    �fg  4 g �l  �  �l v     <w   i  `   �  d  f    : ; O        � �+� � � � � �.�    9               +M� C+� � � � � � �� � M� )� <Y� aY� c�� f+� � � � � �� j+��,� 2 � N-�   P       � , � 1 � K � q � } �Q   >  . yj  H yj    RS     ij  q yj  } fg t    ,� % 0v     <w   i   
 � � O  v     ��*� �.�     B               '*� LM� **� � L*� � M� � <Y*��� aY� cN-� fW-� fW- � fW-"� f+� f$� fW,� -&� f,� f$� fW-(� fW-*� fW-� j�   P   :    � ( � 4 � O � [ � c � k � s � { � � � � � � � � � � �Q   R  / za  1 {a  @ za  L {a    �ij   [ ]za  [ ]{a  c U|} t    (�  [ [� G av     <w   i   
 � � O   �     Q� aY� cM,� fW,,� fW,.� fW,0� f*� f2� fW,4� f�62� fW,9� fW,� j�   P   "    �  �  �  �   � 2 � D � L �Q        Q �a     Q~ p   I|} v     <w   	 �  ~   
 L M O   �     l*� �*�;:�66� S46�?� -� 
_� 
~� )� <Y� aY� cE� f�GJ� f� j+,-� D������   P       �  �  � " � ? � e � k �Q   4  " C�    l �a     lij    l B C    l�g t    � �� #� %� v     <w    �  i   B  �   �  O   4      7�L� � � m�   P       (t    @ �   �\    � �c��   *  
 ��&	  ��&	  ��&	 � ��  �    