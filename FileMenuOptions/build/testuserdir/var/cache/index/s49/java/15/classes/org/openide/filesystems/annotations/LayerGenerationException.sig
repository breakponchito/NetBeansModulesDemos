����   4 �   javax/lang/model/element/Element  )javax/lang/model/element/AnnotationMirror  (javax/lang/model/element/AnnotationValue
  	 
   <org/openide/filesystems/annotations/LayerGenerationException <init> �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)V
      java/lang/Exception (Ljava/lang/String;)V	     erroneousElement "Ljavax/lang/model/element/Element;	     erroneousAnnotation +Ljavax/lang/model/element/AnnotationMirror;	     erroneousAnnotationValue *Ljavax/lang/model/element/AnnotationValue;  java/lang/String
  !  " �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V $ % & ' ( java/lang/annotation/Annotation getClass ()Ljava/lang/Class;
 * + , - . java/lang/Class getInterfaces ()[Ljava/lang/Class;
 * 0 1 2 isAnnotation ()Z
 * 4 5 6 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class; 8 "java/lang/IllegalArgumentException : java/lang/StringBuilder
 9 <  = ()V ? >1 annotation implemented by 
 9 A B C append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 * E F G getName ()Ljava/lang/String;
 9 I J G toString
 7  M no annotation implemented by 
 * O P Q 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; S java/lang/NoSuchMethodException U No such method  W  in 
 9 Y B Z -(Ljava/lang/Object;)Ljava/lang/StringBuilder; \ java/lang/SecurityException
  ^ _ ` findAnnotationMirror �(Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;
  b c d findAnnotationValue i(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationValue;  f g h getAnnotationMirrors ()Ljava/util/List; j k l m n java/util/List iterator ()Ljava/util/Iterator; p q r s 2 java/util/Iterator hasNext p u v w next ()Ljava/lang/Object; y z { | } 1javax/annotation/processing/ProcessingEnvironment getElementUtils "()Ljavax/lang/model/util/Elements;   � � getAnnotationType &()Ljavax/lang/model/type/DeclaredType; � � � � � "javax/lang/model/type/DeclaredType 	asElement $()Ljavax/lang/model/element/Element; � $javax/lang/model/element/TypeElement � � � � � javax/lang/model/util/Elements getBinaryName G(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/Name; � � � � � javax/lang/model/element/Name contentEquals (Ljava/lang/CharSequence;)Z  � � � getElementValues ()Ljava/util/Map; � � � � � java/util/Map entrySet ()Ljava/util/Set; � k � java/util/Set � java/util/Map$Entry � � � w getKey � *javax/lang/model/element/ExecutableElement � � � � getSimpleName !()Ljavax/lang/model/element/Name; � � � w getValue Code LineNumberTable LocalVariableTable this >Lorg/openide/filesystems/annotations/LayerGenerationException; message Ljava/lang/String; MethodParameters 7(Ljava/lang/String;Ljavax/lang/model/element/Element;)V b(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/AnnotationMirror;)V �(Ljava/lang/String;Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/annotation/Annotation;)V processingEnv 3Ljavax/annotation/processing/ProcessingEnvironment; !Ljava/lang/annotation/Annotation; xface Ljava/lang/Class; x !Ljava/lang/NoSuchMethodException; clazz 	implClass erroneousAnnotationMethod LocalVariableTypeTable Ljava/lang/Class<*>; 5Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>; StackMapTable � [Ljava/lang/Class; ann element 
annotation 	Signature �(Ljavax/lang/model/element/Element;Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;)Ljavax/lang/model/element/AnnotationMirror; entry Ljava/util/Map$Entry; name oLjava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>; 
SourceFile LayerGenerationException.java InnerClasses Entry !                          �   J     *+� � � � �    �   
    1  2 �        � �      � �  �    �     �  �   Q     *+,� � � �    �   
    ;  < �         � �      � �        �   	 �        �  �   X     *+,-� � �    �   
    F  G �   *     � �      � �              �    �             �   x     *+� *,� *-� *� �    �       R  S 
 T  U  V �   4     � �      � �                    �    �              �  �   d     *+,-� �  �    �   
    d  e �   4     � �      � �           � �      �  �    �      �        "  �  �    *+� *,� � �:� # :� ):�6	6

	� H
2:� /� 3� $� 3:� "� 7Y� 9Y� ;>� @� D� @� H� K��
���� "� 7Y� 9Y� ;L� @� D� @� H� K�� <� *� NW� -:� 7Y� 9Y� ;T� @� @V� @� X� H� K�:*,-� ]� **� � � **� � a� � � *� *� �  � � � R � � � [  �   j    t  u 
 v  w  x  y 8 z @ { E | Q ~ p y v � { � � � � � � � � � � � � � � � � � � � � �	 � � �   f 
 8 8 � �  � & � �   � � �   � � �    � �     � �         � �     �    � �  �      8 8 � �   � � �   � � �  �   i � *     y $  * * �  � & *� � #S Rg [d �       y $  * *   � 	 �    �      �      �   
 _ `  �   �     N*� e � i N-� o � :-� t � :+� x � ~ � � � �� � ,� D� � � �����    �       �   � ; � F � I � L � �   *    ) �     N �      N � �    N � �  �       N � �  �    �  p<�  �    �   �   �   �    �  c d  �   �     M+� � � � � � N-� o � 4-� t � �:� � � �� � ,� � � � � � �����    �       � % � = � H � K � �   *  % # � �    M � �     M �     M � �  �     % # � �  �    �  p6�  �   	 �   �    �    � �   
  � � �	