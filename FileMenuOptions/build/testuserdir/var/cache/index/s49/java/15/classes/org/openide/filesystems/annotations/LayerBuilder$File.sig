����   4D	      5org/openide/filesystems/annotations/LayerBuilder$File this$0 2Lorg/openide/filesystems/annotations/LayerBuilder;
  	 
   java/lang/Object <init> ()V  java/util/LinkedHashMap
  		     attrs Ljava/util/Map;	     path Ljava/lang/String;	     folder Z	     contents	    !  url # "java/lang/IllegalArgumentException
 " 	 & java/lang/String ( stringvalue * + , - . java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 0 	bytevalue
 2 3 4 5 6 java/lang/Byte toString (B)Ljava/lang/String; 8 
shortvalue
 : ; < 5 = java/lang/Short (S)Ljava/lang/String; ? intvalue
 A B C 5 D java/lang/Integer (I)Ljava/lang/String; F 	longvalue
 H I J 5 K java/lang/Long (J)Ljava/lang/String; M 
floatvalue
 O P Q 5 R java/lang/Float (F)Ljava/lang/String; T doublevalue
 V W X 5 Y java/lang/Double (D)Ljava/lang/String; [ 	boolvalue
 ] ^ _ 5 ` java/lang/Boolean (Z)Ljava/lang/String; b 	charvalue
 d e f 5 g java/lang/Character (C)Ljava/lang/String;
 i j k l m java/net/URI isOpaque ()Z o <org/openide/filesystems/annotations/LayerGenerationException q java/lang/StringBuilder
 p 	 t Cannot use an opaque URI: 
 p v w x append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 p z w { -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 p } 5 ~ ()Ljava/lang/String;
 � � � � � 0org/openide/filesystems/annotations/LayerBuilder 
access$000 V(Lorg/openide/filesystems/annotations/LayerBuilder;)Ljavax/lang/model/element/Element;
 n �  � 7(Ljava/lang/String;Ljavax/lang/model/element/Element;)V � urlvalue
 i }
 i � � � create "(Ljava/lang/String;)Ljava/net/URI;
  � � � Y(Ljava/lang/String;Ljava/net/URI;)Lorg/openide/filesystems/annotations/LayerBuilder$File;
 " � � ~ getLocalizedMessage � methodvalue � . � newvalue
  � � � instanceAttribute �(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;
 � � � � 
access$100 �(Lorg/openide/filesystems/annotations/LayerBuilder;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/String;)[Ljava/lang/String;
  � � � ](Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File;
  � � � o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; � bundlevalue � #
  � � � �(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; � :(?:\p{javaJavaIdentifierStart}\p{javaJavaIdentifierPart}*) � ((?: � \.)+[^\s.#]+)?#(\S*)
 � � � � � java/util/regex/Pattern compile -(Ljava/lang/String;)Ljava/util/regex/Pattern;
 � � � � matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
 � � � � m java/util/regex/Matcher matches
 � � � D group � � � � �  javax/lang/model/element/Element getKind (()Ljavax/lang/model/element/ElementKind;	 � � � � � $javax/lang/model/element/ElementKind PACKAGE &Ljavax/lang/model/element/ElementKind; � � � � getEnclosingElement $()Ljavax/lang/model/element/Element; � .No reference element to determine package in ' � ' � 'javax/lang/model/element/PackageElement � � � � getQualifiedName !()Ljavax/lang/model/element/Name; � .Bundle
  � � � verifyBundleKey [(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/annotation/Annotation;Ljava/lang/String;)V
  � � �
  � ( �
 � � � � 
access$200 g(Lorg/openide/filesystems/annotations/LayerBuilder;)Ljavax/annotation/processing/ProcessingEnvironment; � "org/openide/util/NbBundle$Messages � � � � getAnnotation 4(Ljava/lang/Class;)Ljava/lang/annotation/Annotation; � � � � value ()[Ljava/lang/String; � =
 % � � � 
startsWith (Ljava/lang/String;)Z
 % replace (CC)Ljava/lang/String; .properties
 �	 validateResource �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)Ljavax/tools/FileObject; javax/tools/FileObject openInputStream ()Ljava/io/InputStream; java/util/Properties
 	
 load (Ljava/io/InputStream;)V
 getProperty &(Ljava/lang/String;)Ljava/lang/String; No key ' ' found in 
 n  ! �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V
#$%&  java/io/InputStream close( java/io/IOException* Could not open , : 
 p. / (I)V
 p1 w2 (C)Ljava/lang/StringBuilder;
 A45 D toHexString7 serialvalue	9:;<= java/util/Locale ENGLISH Ljava/util/Locale;
 %?@A toUpperCase &(Ljava/util/Locale;)Ljava/lang/String;���D position
 F ?G L(Ljava/lang/String;I)Lorg/openide/filesystems/annotations/LayerBuilder$File;
 �IJK 
access$300 D(Lorg/openide/filesystems/annotations/LayerBuilder;)Ljava/util/List;MNOPQ java/util/List remove (Ljava/lang/Object;)Z
 �STU 
access$400 J(Lorg/openide/filesystems/annotations/LayerBuilder;)Lorg/w3c/dom/Document;WXYZ[ org/w3c/dom/Document getDocumentElement ()Lorg/w3c/dom/Element;] /
 %_`a split '(Ljava/lang/String;)[Ljava/lang/String;
cdefg java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;Mijk subList (II)Ljava/util/List;Mmno iterator ()Ljava/util/Iterator;qrst m java/util/Iterator hasNextqvwx next ()Ljava/lang/Object;z file|folder
 |}~ find P(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;���� ~ org/w3c/dom/Element getNodeName 
 %��Q equals
 "� � (Ljava/lang/String;)VW��� createElement )(Ljava/lang/String;)Lorg/w3c/dom/Element;���� appendChild &(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;� name���� setAttribute '(Ljava/lang/String;Ljava/lang/String;)V� file	����� 2org/openide/filesystems/annotations/LayerBuilder$1 /$SwitchMap$javax$lang$model$element$ElementKind [I
 ���� ordinal ()I � }���� getChildNodes ()Lorg/w3c/dom/NodeList;����� org/w3c/dom/NodeList 	getLength���� item (I)Lorg/w3c/dom/Node;����� org/w3c/dom/Node getNodeType ()S��� ~ getNodeValueW��� createComment )(Ljava/lang/String;)Lorg/w3c/dom/Comment; *��� entrySet ()Ljava/util/Set;�m� java/util/Set� java/util/Map$Entry���x getKey� attr���� removeChild���x getValue� [Ljava/lang/String; !W��� createCDATASection .(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;��� getAttribute
 %� � � 	Signature 6Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>; H(Lorg/openide/filesystems/annotations/LayerBuilder;Ljava/lang/String;Z)V Code LineNumberTable LocalVariableTable this 7Lorg/openide/filesystems/annotations/LayerBuilder$File; MethodParameters getPath K(Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; StackMapTable L(Ljava/lang/String;B)Lorg/openide/filesystems/annotations/LayerBuilder$File; B L(Ljava/lang/String;S)Lorg/openide/filesystems/annotations/LayerBuilder$File; S I L(Ljava/lang/String;J)Lorg/openide/filesystems/annotations/LayerBuilder$File; J L(Ljava/lang/String;F)Lorg/openide/filesystems/annotations/LayerBuilder$File; F L(Ljava/lang/String;D)Lorg/openide/filesystems/annotations/LayerBuilder$File; D L(Ljava/lang/String;Z)Lorg/openide/filesystems/annotations/LayerBuilder$File; L(Ljava/lang/String;C)Lorg/openide/filesystems/annotations/LayerBuilder$File; C Ljava/net/URI; 
Exceptions x $Ljava/lang/IllegalArgumentException; clazz method \(Ljava/lang/String;Ljava/lang/Class;)Lorg/openide/filesystems/annotations/LayerBuilder$File; type Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<*>; _(Ljava/lang/String;Ljava/lang/Class<*>;)Lorg/openide/filesystems/annotations/LayerBuilder$File; 
annotation !Ljava/lang/annotation/Annotation; annotationMethod clazzOrMethod �(Ljava/lang/String;Ljava/lang/Class<*>;Ljava/lang/annotation/Annotation;Ljava/lang/String;)Lorg/openide/filesystems/annotations/LayerBuilder$File; bundle key label referenceElement "Ljavax/lang/model/element/Element; javaIdentifier m Ljava/util/regex/Matcher; java/lang/annotation/Annotation kv $Lorg/openide/util/NbBundle$Messages; e p Ljava/util/Properties; is Ljava/io/InputStream; Ljava/io/IOException; samePackage java/lang/Throwable M(Ljava/lang/String;[B)Lorg/openide/filesystems/annotations/LayerBuilder$File; b data [B buf Ljava/lang/StringBuilder;# :(I)Lorg/openide/filesystems/annotations/LayerBuilder$File; write 4()Lorg/openide/filesystems/annotations/LayerBuilder; kid Lorg/w3c/dom/Element; piece node Lorg/w3c/dom/Node; i 
addComment oldComments Lorg/w3c/dom/NodeList; former entry Ljava/util/Map$Entry; oldContents pieces <Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>; parent kindRx nl 
SourceFile LayerBuilder.java InnerClasses FileA org/openide/util/NbBundle Messages Entry 1                   �   �       !           � �   w     *+� *� *� Y� � *,� *� �   �      � 	� � � ��   *    ��                    �    �       � ~ �   /     *� �   �      ��       ��    � �   r     (*� � *� � +� 
*� � � "Y� $�*+� *�   �      � � !� &��       (��     (   �    �        !� �   r     (*� � *� � +� 
*� � � "Y� $�*+� *�   �      � � !� &��       (��     ( !  �    �    !    ( � �   \     *� +� %Y'SY,S� ) W*�   �   
   � ��        ��     �      �  �   	�   �    0� �   _     *� +� %Y/SY� 1S� ) W*�   �   
   � ��        ��     �      �� �   	�   �    8� �   _     *� +� %Y7SY� 9S� ) W*�   �   
   � ��        ��     �      �� �   	�   �    ?G �   _     *� +� %Y>SY� @S� ) W*�   �   
   � ��        ��     �      �� �   	�   �    F� �   _     *� +� %YESY � GS� ) W*�   �   
   � ��        ��     �      �� �   	�   �    M� �   _     *� +� %YLSY$� NS� ) W*�   �   
   � ��        ��     �      �� �   	�   �    T� �   _     *� +� %YSSY(� US� ) W*�   �   
    �        ��     �      �� �   	�   �    [� �   _     *� +� %YZSY� \S� ) W*�   �   
    �        ��     �      �  �   	�   �    b� �   _     *� +� %YaSY� cS� ) W*�   �   
    �        ��     �      �� �   	�   �    � � �   �     F,� h� %� nY� pY� rs� u,� y� |*� � � ��*� +� %Y�SY,� �S� ) W*�   �      + , ). D/�        F��     F�     F �� �    )�     n�   	�   �    � � �   �     *+,� �� ��N� nY-� �*� � � ��    	 
 " �      = 
> ?�   *   ��    ��     �      �  �    J "�     n�   	�   �    � � �   |     0*� +� %Y�SY� pY� r,� u�� u-� u� |S� ) W*�   �   
   K .L�   *    0��     0�     0�     0�  �   �  �  �    � � �   \     *� +� %Y�SY,S� ) W*�   �   
   V W�        ��     �     �  �   	�  �    �  �   Y     	*+,� ��   �      d�        	��     	�     	        	 �     " n�   	�    �     � � �   �     1*� ,-� �:2� *+2� �W� *+22� �W*�   �      s t u !w /y�   >    1��     1�     1    1    1    $	�        1 �   	 � !��     " n�   �        �   
  � � �   |     0*� +� %Y�SY� pY� r,� u�� u-� u� |S� ) W*�   �   
   � .��   *    0��     0�     0     0  �   �        � � �   G     	*+,� ��   �      ��        	��     	�     	  �     n�   	�      � � �  4  
   ��:� pY� r�� u� u�� u� |� �,� �:� �� �� �:� �:� t*� � :		� 	� � � Υ 	� � :	���	� *� nY� pY� rض u,� uڶ u� |*� � � ��� pY� r	� ܹ � � y� u� |:*� �� � -� �*+� �W� 
*+,� �W*�   �   F   � � &� .� 6� >� C� L� ^� j� o� �� �� �� �� �� ���   f 
 L h 	 6 �   > �     ���     ��     �     �    �    �   & � �   � � L 
  % % % % � % % �  +� �  	  % % % % � % %   % %�   	  % % % % � % %   % %� �     n�   �          � � �  �    R*� � �� �� q*� � :� c� � � �:� D� � :�6	6

	� ,
2:� pY� r,� u�� u� |� �� ��
���� � :���*� � pY� r+./� � u� u� |*� � ��
 :�Y�:�,�� ;� nY� pY� r� u,� u� u+� u� |*� � *� � ����"� :�"�� >:� nY� pY� r)� u+� u+� u� y� |*� � *� � ����  �	  		   }' �   b   � 
� � � � +� 0� O� j� k� q� }� �� �� �� ����	�����Q��   z  O    + F   e  � H  � c  9�   R��    R    R    R    R   R  �   [ �  �� (   % % % � ��  )�    % % % �  � � �#G� 	B':�     n�              7  �  @     z� pY,�h�-N,:�66� ;36� � 
-0�0W-�  `� �3� uW����*� +� %Y6SY-� |�8�>S� ) W*�   �   "   � � %� 1� 8� P� V� x��   4  % +!�    z��     z�     z"#   n$% �   R �    %& p&  �  N p�    %& p&  p�    %& p  �   	�  "   D' �   W     B� *C�EW*�   �      � � ��       ��     D� �    �   D   () �  Q  
  �*� �H*�L W*� �R�V L*� \�^M,�b,�d�h �l N-�p � h-�u � %:*+y�{:� %� ���� � "Y*� ���L� '+*� �R��� �� ��L+��� ���,,�d2N*+-y�{:� 5+*� �R*� � 	�� ��� �� ��:�-�� *� � � ��*� � � � ��.�    W         *   W   *   *   *   *   *� pY� r*� � � � � y�� u*� � � y� |:� *� � �� :6�� :6�� � 5�� :		�� � 	�� ��� 	6� 	����� *� �R�� �� W*� �� �� :�p � ��u ��:*�� � %̷{:� �� W*� �R̹� �� ��:��� � %�� �� ��2�� ��2�� ��x*� � �*� �� � c*� � \�� :6�� � ,�� :�� � �� W� ����*� �R*� �� �� W*� �   �   � 4     & N Z _ o	 { � � � � � � � � � �8!b"e$s&v'(�)�*�+�,�(�/�0�3456%8@9T:s;v<}=�>�?�@�A�B�C�E�G�H�J�   �  Z K*+  N W,  b �  � !-. 	� >/� s h�  v e0   \12  ]3+ @ 3�+  r45 � -. � 5/� � P62   ���   �+  &�7�  �D,   �9�+      r48 �   � � :��q� @ %�� #� � +  �� %� �W�   �� %� �W %� F,�  %� �7� � � q� 9��� P� �� .�� � �  }~ �       a+�� :6�� � K�� :�� � � ,��:��� ,��� � -�ޙ ������   �   * 
  N O P "Q -R 0T 7U VV YO _Y�   R  " 7�.  7 "+   T/�    a��     a9+    a�     a:    Y;2 �    � �� $�� (� �   9  �  :   <   =>   "   �?  �@B&	�    � *C	