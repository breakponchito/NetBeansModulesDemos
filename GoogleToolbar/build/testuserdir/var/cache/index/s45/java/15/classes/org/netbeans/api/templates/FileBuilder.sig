����   4  desc
      org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V 
 &org/netbeans/api/templates/FileBuilder
      +org/netbeans/api/templates/CreateDescriptor getTemplate &()Lorg/openide/filesystems/FileObject;
     	getTarget
 	    <init> K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V
     getProposedName ()Ljava/lang/String;
 	    name <(Ljava/lang/String;)Lorg/netbeans/api/templates/FileBuilder;
  ! " # 	getLocale ()Ljava/util/Locale;
 	 % & ' 	useLocale <(Ljava/util/Locale;)Lorg/netbeans/api/templates/FileBuilder;
  ) * + getParameters ()Ljava/util/Map;
 	 - . / withParameters 9(Ljava/util/Map;)Lorg/netbeans/api/templates/FileBuilder;
 1 2 3  4 java/lang/Object ()V
  	 	 7 8 9 
descriptor -Lorg/netbeans/api/templates/CreateDescriptor;
  ; < = 	setLookup (Lorg/openide/util/Lookup;)V	  ? @ A locale Ljava/util/Locale;	  C  D Ljava/lang/String;	  F G H 
parameters Ljava/util/Map; J K L M N java/util/Map putAll (Ljava/util/Map;)V P java/util/HashMap
 O R  N T freeFileExtension J V W X get &(Ljava/lang/Object;)Ljava/lang/Object; Z java/lang/Boolean	 Y \ ] ^ TRUE Ljava/lang/Boolean;
 Y ` a b equals (Ljava/lang/Object;)Z	  d e f freeExtension Z h ,org-netbeans-modules-java-preformattedSource	  j k f preformatted
 O 2 J n o p put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 r ` s java/lang/String	 	 u v w defaultMode -Lorg/netbeans/api/templates/FileBuilder$Mode;	 	 y z { format Ljava/text/Format;	 } ~  � w +org/netbeans/api/templates/FileBuilder$Mode FORMAT
 	 � v � W(Lorg/netbeans/api/templates/FileBuilder$Mode;)Lorg/netbeans/api/templates/FileBuilder;
 � � � � � 1org/netbeans/api/templates/CreateFromTemplateImpl build :(Lorg/netbeans/api/templates/FileBuilder;)Ljava/util/List;
 � � � � collectAttributes +(Lorg/netbeans/api/templates/FileBuilder;)V
 � � � � computeEffectiveName 0(Lorg/netbeans/api/templates/CreateDescriptor;)V	 � � � � � (org/netbeans/api/templates/FileBuilder$2 6$SwitchMap$org$netbeans$api$templates$FileBuilder$Mode [I
 } � � � ordinal ()I � org/openide/util/MapFormat
 � R
 � � � � setExactMatch (Z)V � __
 � � � � setLeftBrace (Ljava/lang/String;)V
 � � � � setRightBrace � (org/netbeans/api/templates/FileBuilder$1
 � 2
 	 � � � 	useFormat <(Ljava/text/Format;)Lorg/netbeans/api/templates/FileBuilder;
 	 � � � ()Ljava/util/List; � � � � � java/util/List isEmpty ()Z � � � � iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator next ()Ljava/lang/Object; � "org/openide/filesystems/FileObject ATTR_TEMPLATE_HANDLER ConstantValue � template.createTemplateHandler ATTR_TEMPLATE_MERGE_FOLDERS � template.mergeFolders ATTR_TEMPLATE_OPEN_FILE � template.openFile #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value PackageVisibleField fromDescriptor W(Lorg/netbeans/api/templates/CreateDescriptor;)Lorg/netbeans/api/templates/FileBuilder; Code LineNumberTable LocalVariableTable MethodParameters RuntimeInvisibleAnnotations -Lorg/netbeans/api/annotations/common/NonNull; $RuntimeInvisibleParameterAnnotations this (Lorg/netbeans/api/templates/FileBuilder; template $Lorg/openide/filesystems/FileObject; target 	useLookup C(Lorg/openide/util/Lookup;)Lorg/netbeans/api/templates/FileBuilder; contextLookup Lorg/openide/util/Lookup; l n val v Ljava/lang/Object; params LocalVariableTypeTable $Ljava/util/Map<Ljava/lang/String;*>; StackMapTable 	Signature N(Ljava/util/Map<Ljava/lang/String;*>;)Lorg/netbeans/api/templates/FileBuilder; 1Lorg/netbeans/api/annotations/common/NullAllowed; param N(Ljava/lang/String;Ljava/lang/Object;)Lorg/netbeans/api/templates/FileBuilder; m def 
Exceptions � java/io/IOException 8()Ljava/util/List<Lorg/openide/filesystems/FileObject;>; 2Lorg/netbeans/api/annotations/common/CheckForNull; getDescriptor /()Lorg/netbeans/api/templates/CreateDescriptor; createDescriptor 0(Z)Lorg/netbeans/api/templates/CreateDescriptor; createFromTemplate �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/Map;Lorg/netbeans/api/templates/FileBuilder$Mode;)Lorg/openide/filesystems/FileObject; mf Lorg/openide/util/MapFormat; f folder 
attributes frm fb fos Ljava/util/List; 6Ljava/util/List<Lorg/openide/filesystems/FileObject;>; java/text/Format �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;*>;Lorg/netbeans/api/templates/FileBuilder$Mode;)Lorg/openide/filesystems/FileObject; AssignmentToMethodParameter 
SourceFile FileBuilder.java InnerClasses Mode 1 	 1     � D  �    �  � D  �    �  � D  �    �  8 9     v w  �     �  �[ s �   z {  �     �  �[ s �  	 � �  �   i     +*� � 	Y*� *� � *� � *�  � $*� (� ,�    �       {  |  }  ~ $  * | �       +  9   �       �     �   �     �       �   X     *� 0*� Y+,� 5� 6�    �       �  �  � �         � �      � �     � �  �   	 �   �   �     �    �    � �  �   B     
*� 6+� :*�    �   
    �  � �       
 � �     
 � �  �    �    & '  �   B     
*� 6+� >*�    �   
    �  � �       
 � �     
 � A  �    �   �     �       �   B     
*� 6+� B*�    �   
    �  � �       
 � �     
 � D  �    �    . /  �  5     w*� 6� E� *� 6� E+� I � *� 6+� � � OY+� Q� E+� C+S� U M,� Y� � [,� _>*� 6� c+g� U M,� Y� � [,� _>*� 6� i*�    �   6    � 
 �  � 1 � 5 � > � E � M � U � ^ � e � m � u � �   4  M  � f  m  � f  > 7 � �    w � �     w � H  �       w � �  �   $ K �   	 J   J� # 1�  �    �   �    � �     �    � �  �   �     b*� 6� E� *� 6� OY� l� E*� 6� E+,� m W,� Y� 5S+� q� � [,� _>*� 6� cg+� q� � [,� _>*� 6� i*�    �   .    � 
 �  � ' � . � 7 � ? � G � P � X � ` � �   4  ?  � f  X  � f    b � �     b � D    b � �  �    . �   	 �   �   �   	  �      v �  �   ?     *+� t*�    �   
    �  � �        � �      � w  �    �   �     �    � �  �   E     *+� x*� |� ��    �   
      �        � �      � {  �    �   �     �    � �  �   /     *� ��    �       �        � �   �     � �    � �     �     � �  �   /     *� 6�    �       �        � �    �   �   ]     � *� �*� 6� �*� 6�    �      " # % & �        � �      � f  �     �    �   �     �   	  �  �     �:� �� �.�      P               G� �Y� OY� l� �:� ��� ��� �:� � �Y� �:� 	Y*+� ,� -� ,� �� �:� �:� � � � �� � � � � ư    �   J   Q S (U 8V >W EX LY PZ S] \k fl jm on to yq �r �s �u �   \ 	 8     � �     � �    �  D    � H    � v w   � {  y (	 �  � !
  �       � �  � !
  �    � (*� 2 	 � �     � �             v   �    �     �   �     �    �    �    �     �     �  �[ s         } 	@ �     �      