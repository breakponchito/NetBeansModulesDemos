����   4�
      <org/openide/filesystems/annotations/LayerGeneratingProcessor <init> ()V	  	 
   Borg/netbeans/modules/editor/mimelookup/CreateRegistrationProcessor processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment;      1javax/annotation/processing/ProcessingEnvironment getElementUtils "()Ljavax/lang/model/util/Elements;  3org.netbeans.api.editor.mimelookup.MimeRegistration      javax/lang/model/util/Elements getTypeElement @(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;       ,javax/annotation/processing/RoundEnvironment getElementsAnnotatedWith 7(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set; " # $ % & java/util/Set iterator ()Ljava/util/Iterator; ( ) * + , java/util/Iterator hasNext ()Z ( . / 0 next ()Ljava/lang/Object; 2  javax/lang/model/element/Element 1 4 5 6 getAnnotationMirrors ()Ljava/util/List; 8 # 9 java/util/List ; )javax/lang/model/element/AnnotationMirror : = > ? getAnnotationType &()Ljavax/lang/model/type/DeclaredType; A B C D E "javax/lang/model/type/DeclaredType 	asElement $()Ljavax/lang/model/element/Element; G H I J K $javax/lang/model/element/TypeElement equals (Ljava/lang/Object;)Z
  M N O process P(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)V Q 4org.netbeans.api.editor.mimelookup.MimeRegistrations : S T U getElementValues ()Ljava/util/Map; W X Y Z [ java/util/Map entrySet ()Ljava/util/Set; ] java/util/Map$Entry \ _ ` 0 getKey b *javax/lang/model/element/ExecutableElement a d e f getSimpleName !()Ljavax/lang/model/element/Name; h value j k l m n javax/lang/model/element/Name contentEquals (Ljava/lang/CharSequence;)Z \ p q 0 getValue s (javax/lang/model/element/AnnotationValue r p v java/lang/Iterable u #
 y z { | } org/openide/util/NbCollections checkedIteratorByFilter <(Ljava/util/Iterator;Ljava/lang/Class;Z)Ljava/util/Iterator;
 y  � � iterable *(Ljava/util/Iterator;)Ljava/lang/Iterable; � /org.netbeans.spi.editor.mimelookup.MimeLocation
 � � � � � #javax/lang/model/util/ElementFilter typesIn  (Ljava/util/Set;)Ljava/util/Set; G 4
  � � � checkMimeLocation T(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/AnnotationMirror;)V � java/lang/Integer��� � service �  javax/lang/model/type/TypeMirror � mimeType � java/lang/String � position
 � � � � intValue ()I
 � � � � length � java/lang/StringBuilder
 �  � /
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String; �    � � � getTypeUtils ()Ljavax/lang/model/util/Types; � � � D � javax/lang/model/util/Types F(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element; � subfolderName
  � � � instantiableClassOrMethod K(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/TypeElement;)V
  � � � layer W([Ljavax/lang/model/element/Element;)Lorg/openide/filesystems/annotations/LayerBuilder; � Editors
 � � � � � 0org/openide/filesystems/annotations/LayerBuilder instanceFile n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/openide/filesystems/annotations/LayerBuilder$File;
 � � � � � 5org/openide/filesystems/annotations/LayerBuilder$File :(I)Lorg/openide/filesystems/annotations/LayerBuilder$File; � 
instanceOf  � � � getBinaryName G(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name; j �
 � � � � stringvalue ](Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;
 � � � � write 4()Lorg/openide/filesystems/annotations/LayerBuilder; � � � � getDeclaredType o(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;	 � � � � � Dorg/netbeans/modules/editor/mimelookup/CreateRegistrationProcessor$1 /$SwitchMap$javax$lang$model$element$ElementKind [I 1 � � � getKind (()Ljavax/lang/model/element/ElementKind;
 � � � � � $javax/lang/model/element/ElementKind ordinal 1 � � [ getModifiers	 � � � � � !javax/lang/model/element/Modifier ABSTRACT #Ljavax/lang/model/element/Modifier; " � � K contains <org/openide/filesystems/annotations/LayerGenerationException  must not be abstract
   7(Ljava/lang/String;Ljavax/lang/model/element/Element;)V 1	 6 getEnclosedElements
 � constructorsIn &(Ljava/lang/Iterable;)Ljava/util/List; a 6 getParameters 8 , isEmpty $ must have a no-argument constructor 1 asType $()Ljavax/lang/model/type/TypeMirror; � isAssignable G(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z  is not assignable to 
 �! �" -(Ljava/lang/Object;)Ljava/lang/StringBuilder;	 �$% � PUBLIC'  is not public 1)* E getEnclosingElement 1 d	 �-. � STATIC0 .2  must be static4  must not take arguments a67 getReturnType9 "java/lang/IllegalArgumentException; 2Annotated element is not loadable as an instance: 
8= > (Ljava/lang/String;)V
 �@A , isClass
CDEF 6 java/util/Collections 	emptyList GHI f getQualifiedName
 � k
 LMN completeMimePath �(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/lang/Iterable;P java.lang.ObjectR java/util/LinkedList
Q  8UV K add 8XYZ remove (I)Ljava/lang/Object;\ Qorg/netbeans/modules/editor/mimelookup/CreateRegistrationProcessor$TypeCompletion^ .class
[=aUb java/util/Collection Gde getSuperclass Ggh 6 getInterfaces 8jkl addAll (Ljava/util/Collection;)Z �n �o "()Ljavax/lang/model/type/TypeKind;	qrstu javax/lang/model/type/TypeKind DECLARED  Ljavax/lang/model/type/TypeKind;w "
 �yz{ 
startsWith (Ljava/lang/String;)Z
 �}~ 	substring (I)Ljava/lang/String;� java/util/HashSet
� 	 ��� COMPLETIONS 'Ljavax/annotation/processing/Processor;� *org.openide.awt.ActionReference.completion
����� java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
����� org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;� java/lang/ClassLoader
���� lookup %(Ljava/lang/Class;)Ljava/lang/Object;
����� java/lang/Thread currentThread ()Ljava/lang/Thread;
���� getContextClassLoader ()Ljava/lang/ClassLoader;
����� java/lang/Class getClassLoader
���� forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
��� 0 newInstance� %javax/annotation/processing/Processor� java/lang/Exception
����� org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V���� init 6(Ljavax/annotation/processing/ProcessingEnvironment;)V� Editors/���N getCompletions� &javax/annotation/processing/Completion�� q �
 ���� split '(Ljava/lang/String;)[Ljava/lang/String;� "Editors
 � H
 ���� charAt (I)C
����� java/lang/Character isUpperCase (C)Z
 �� �� (C)Ljava/lang/StringBuilder; "U "	 ��� DEFAULT_COMPLETIONS [Ljava/lang/String;� instanceProviderClass� 3org.netbeans.spi.editor.mimelookup.InstanceProvider G
 ��� 	methodsIn� createInstance� java/lang/IllegalStateException� &No instanceCreate in InstanceProvider!
�= ���� 
asMemberOf j(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;� $javax/lang/model/type/ExecutableType�6 G ���� erasure F(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror; ��� 
isSameType � 	isSubtype  getMessager (()Ljavax/annotation/processing/Messager;		
 javax/tools/Diagnostic$Kind ERROR Ljavax/tools/Diagnostic$Kind; 7The InstanceProvider does not create instances of type  $javax/annotation/processing/Messager printMessage �(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)V G � 2The InstanceProvider implementation is not public. a � QThe InstanceProvider implementation does not provide a public no-arg constructor. 
text/plain text/xml  text/x-java Code LineNumberTable LocalVariableTable this DLorg/netbeans/modules/editor/mimelookup/CreateRegistrationProcessor; handleProcess @(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z am +Ljavax/lang/model/element/AnnotationMirror; el "Ljavax/lang/model/element/Element; r e Ljava/util/Map$Entry; &Ljavax/lang/model/element/TypeElement; annotations Ljava/util/Set; roundEnv .Ljavax/annotation/processing/RoundEnvironment; mimeRegistration mimeRegistrations mimeLocation LocalVariableTypeTable oLjava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>; 8Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>; StackMapTable 
Exceptions MethodParameters 	Signature i(Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;Ljavax/annotation/processing/RoundEnvironment;)Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
simpleName Ljavax/lang/model/element/Name; folder Ljava/lang/String; apiTE location 
toRegister "Ljavax/lang/model/type/TypeMirror; I constructor ,Ljavax/lang/model/element/ExecutableElement; hasDefaultCtor Z clazz method anntated apiClass 
typeMirror type tm c parents Ljava/util/List; 	annotated 
annotation attr userText jlObject result Ljava/util/Collection; 	toProcess 4Ljava/util/List<Ljavax/lang/model/type/TypeMirror;>; @Ljava/util/Collection<Ljavax/annotation/processing/Completion;>; 8Ljava/util/List<Ljavax/lang/model/element/TypeElement;>; �(Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/lang/Iterable<+Ljavax/annotation/processing/Completion;>; ex Ljava/lang/Exception; l Ljava/lang/ClassLoader; pathCompletions v arr 
completion (Ljavax/annotation/processing/Completion; element res 9Ljava/util/Set<Ljavax/annotation/processing/Completion;>;� ee ipc instanceProvider dipc $Ljavax/lang/model/type/DeclaredType; tu Ljavax/lang/model/util/Types; member &Ljavax/lang/model/type/ExecutableType; tipc <clinit> 
SourceFile  CreateRegistrationProcessor.java RuntimeVisibleAnnotations 6Ljavax/annotation/processing/SupportedAnnotationTypes; )Lorg/openide/util/lookup/ServiceProvider; InnerClasses Entry File TypeCompletion� javax/tools/Diagnostic Kind !      ��   ��       !   /     *� �   "       <#       $%   &' !  �    *� �  �  N,-�  � ! :� ' � Y� - � 1:� 3 � 7 :� ' � 2� - � ::-� < � @ � F � ���*� L��ʧ��*� �  P�  :,�  � ! :� ' � �� - � 1:� 3 � 7 :� ' � �� - � ::� < � @ � F � ���� R � V � ! :		� ' � v	� - � \:

� ^ � a� c g� i � ���
� o � r� t � u� w :� x� ~� w :� ' � � - � ::*� L�������A��*� �  ��  :,�  � �� ! :� ' � Z� - � G:� � � 7 :� ' � 3� - � ::		� < � @ � F � ���*	� ���ɧ���   "   z    @  B 5 C Y D n E q H y I | J  L � N � O � P � Q � T U8 Wu X} Y� Z� [� \� ^� `� a� b� c  f g h j#   �  Y  ()  5 G*+ u ,)  d-. 
 � �()  � �*+ � !() 	� H*/   $%    01   23  �4/  �5/ � u6/ 7     d-8 
  09 :   t �  G (� # 1 (� - :� 
� �   G (� # 1 (� . :�  (� 1 \� & (�  � � � � # G (� # G (� . :� 
� ;     <   	0  2  =   >?    @    N O !  �     N:�6,� R � V � ! :� ' � �� - � \:� ^ � a� c :�� i � � o � r� t � �N����� i � � o � r� t � �:����� i � � o � r� t � �� �6��q��n�M� �� � �Y� ��� �� �� �:�:*� � � -� � � G:*� �  ��  :� � � 7 :		� ' � �	� - � ::

� < � @ � F � ���
� R � V � ! :� ' � T� - � \:� ^ � a� c �� i � ,� �Y� ��� �� o � r� t � �� �� �:� 	�����c*+� �*� 1Y+S� �� �Y� �Ŷ �� �� �� �� �� ��*� �  � � � � � ٶ �W�   "   ~    n  o  p 	 q 1 r B s N t a u d w p x � y � { � | � } �  � � � � � � � � � � � �! �: �c �| �� �� �� �� �� �� �#   �  B kAB  1 |-. c B-. ! �() 
 �(CD  �E/  �F/    $%     G+    4)  � �H  � �D  	� �I 7     1 |-8 c B-8 :   h �    1 : � � (  � H \ j"� %� "� 7 
  1 : � � � G G (  � . :�  (� W� � � S;     <   	G  4    � � !  {    ^*� � � ,� �� � N� �+� � � �.�    !              5*� �  +� G� � � � :+� � � �� � � !� Y� �Y� �� �� �� �+��6+� �
� 7 :� ' � '� - � a:� � � 	6� ���� !� Y� �Y� �� �� �� �+��-� =*� � � +� -� � %� Y� �Y� �� �� �-� � �+��+� � �#� � � !� Y� �Y� �� �&� �� �+���*� �  +�( � G� � � � :+�+ � � :+� � �,� � � ,� Y� �Y� �� �/� �� �1� �� �+��+� a� � � ,� Y� �Y� �� �/� �� �3� �� �+��-� K*� � � +� a�5 -� � 0� Y� �Y� �� �/� �� �� �-� � �+����8Y� �Y� �:� �+� � ��<�   "   r    �  � < � U � f � � � � � � � � � � � � � � � � � � � �& �7 �U �V �t �� �� �� �� �� � �A �B �#   \ 	 � JK  � aLM  UND t �ND � �OD   ^$%    ^P+   ^Q/  JRH :   1 � < �� G ��  (*� � "=.�  � d � �9� K�  ;    8 <   	P  Q   �N !  �    v*� � +� +� � �?� �B�,� ,� < � @ � G�G �J� �B��-� c �J� *+,-�K��-� c �J� �B�*� �  O�  :� �B��QY�S:�QY�S:+� G�T W� � ��W � G:�[Y� �Y� ��G � � � �]� �� ��_�` W�QY�S:		�c �T W	�f �i W	� 7 :

� ' � R
� - � �:����m �p� ���*� � � � � � G:� F � �T W�����2�   "   z    �  �  � " � : � > � L � V � d � h � { � � � � � � � � � � � � � � � � � � � � � �- �? �B �W �c �m �p �s �#   z W S/ - @TH  � �U/  � �VW 	  v$%    vX+   vY)   vZK   v[D  { �\/  � �]^  � �_W 7      � �V` 	 � �]a  � �_b :   0 �  G� a 8� t G 8 (� * �� *� <   X  Y  Z  [  =   c?    @   MN !  �  
  �� �:v�x� �|:��Y��:*��� ^���:� N�������:� ����:� 
��:*��������� :��**��� �*���*��*�*��*� �� *��+,-� �Y� ��� �� �� ��� � w :� ' � �� - ��:�� :� ������:		����	�� ���	2̶Κ ���	2� ����	2�ϸә ���	�� 7�[Y� �Y� �"��	2� �/��	2� �� ��_�� W� -�[Y� �Y� �"��	2� �/�ٶ ��_�� W��/�� � R��:�66� >2:		�x� '�[Y� �Y� �v� �	� �� ��_�� W�����  ` r u� "   � +    	 	  % , 4 9 G L T Y ` r u w | � � �" �# �$ �% �& �' �) �*	+-.04274>5r7�9�;�<�=�>�<�C#   �  w 
de  G :fg  4 ShD  � �iD  � �j� 	 � �kl � .UD 	  �$%    �m+   �Y)   �ZK   �[D  %�n1 7     %�no :   F 	� 7 " ��T�� � � C (� &� �� p:� )� � p;� <   m  Y  Z  [  =   c  � � !  �    6,� R � V � ! N-� ' �-� - � \:� ^ � a� c � i � ���� o � r� t � �:����m �p� ���*� �  �  :� �:�� �� 7 :� ' � +� - � a:		� c � i � 
	:� ���� ��Y��� A:*� � � :		�� ��:

�� :*� �  O�  �� :		�� �� � Y		�� 	+�� �� �  � 9*� � �� �Y� �� �+�G � � �+,� o � r� � @ � G:� �#� � � #*� � �+,� o � r� �� �
� 7 :� ' � 4� - � a:� � � � �#� � � ����*� � �+,� o � r� ��߱   "   � !  G %H BJ VL kN ~P �Q �T �V �W �X �Y �[ �] �^ �a �c �d �efh2iRj�n�p�q�t�uwy{2|5}#   �  � qK 	� "UK  V�rH  ~�s/  ���K  �Qtu  �Fvw 	 �6xy 
-]H \H � �z/  %-.   6$%    6N/   6() 7     %-8 :   v �  (� 0 \� ( ��  G�  a (.� � �   G : ( \ � G a A �� � �  � = G�  (7� � "   G :  <   	N  (   {  !   2      � �YSYSYS�ޱ   "       � |   }~      h[ s s Qs �?    �  �c��   *  \ W�	 � ��  �    [ � ��@