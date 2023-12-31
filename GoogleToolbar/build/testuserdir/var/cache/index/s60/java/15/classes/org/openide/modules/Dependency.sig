����   4�
      java/lang/Object <init> ()V	  	 
   org/openide/modules/Dependency type I
      java/lang/String intern ()Ljava/lang/String;	     name Ljava/lang/String;	     
comparison	     version
      indexOf (I)I " "java/lang/IllegalArgumentException $ java/lang/StringBuilder
 #  ' No slash permitted in: 
 # ) * + append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 # - .  toString
 ! 0  1 (Ljava/lang/String;)V
  3 4 5 	substring (II)Ljava/lang/String;
  7 4 8 (I)Ljava/lang/String;
 : ; < = > java/lang/Integer parseInt (Ljava/lang/String;)I @ Negative release number:  B )Release number range must be increasing:  D java/lang/NumberFormatException
 C -	  G H I FQN Ljava/util/regex/Pattern;
 K L M N O java/util/regex/Pattern matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
 Q R S T U java/util/regex/Matcher matches ()Z W $Malformed dot-separated identifier: 
 Y Z [ \ ] java/util/Collections emptySet ()Ljava/util/Set; _ java/util/HashSet
 ^ a  b (I)V d java/util/StringTokenizer f ,
 c h  i '(Ljava/lang/String;Ljava/lang/String;)V
 c k l U hasMoreTokens n No deps given: " p " r java/util/HashMap
 q a
 c u v  	nextToken x  	
 z No name in dependency:  | >
  ~  � equals (Ljava/lang/Object;)Z � = � Strange comparison string:  �  in  � #Comparison string without version:  �  Trailing garbage in dependency:  � (org/openide/modules/SpecificationVersion
 � 0
  � � � checkCodeName (Ljava/lang/String;Z)V � FCannot have an implementation dependency on a ranged release version: 
  � � � length ()I
  � � � charAt (I)C � !No close bracket on package dep:  � YCannot use a version comparison on a package dependency when only a sample class is given � >Cannot have a sample class with dots when package is specified � Java � VM � +Java dependency must be on "Java" or "VM":  � 'Must give a comparison for a Java dep:  � IDE � /
  �  > � Invalid IDE dependency:  � 'Must give a comparison for an IDE dep:  � 3Cannot give a comparison for a token requires dep:  � 0Cannot give a comparison for a token needs dep:  � unknown type
  �  � )(ILjava/lang/String;ILjava/lang/String;)V � ,org/openide/modules/Dependency$DependencyKey
 � �  � #(Lorg/openide/modules/Dependency;)V � � � � � java/util/Map containsKey � Dependency 
 # � * � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � # duplicates the similar dependency  � � � � get &(Ljava/lang/Object;)Ljava/lang/Object; � � � � � java/util/Set add � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  � � � getClass ()Ljava/lang/Class;
 � � � � � org/openide/util/BaseUtilities compareObjects '(Ljava/lang/Object;Ljava/lang/Object;)Z ��
  � � � hashCode
 # a � module  � package  � 	requires  � needs  � recommends  �  =  �  > 	 � � � � � java/lang/System err Ljava/io/PrintStream; � (WARNING: invalid specification version: 
 1 java/io/PrintStream println 0 org.openide.major.version
 �
 getProperty 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;	   IDE_NAME !org.openide.specification.version
 � &(Ljava/lang/String;)Ljava/lang/String;
  makeSpec >(Ljava/lang/String;)Lorg/openide/modules/SpecificationVersion;	  IDE_SPEC *Lorg/openide/modules/SpecificationVersion; org.openide.version	  !  IDE_IMPL# java.specification.version	 %& 	JAVA_SPEC( java.version	 *+  	JAVA_IMPL- java.vm.specification.version	 /0 VM_SPEC2 java.vm.version	 45  VM_IMPL7 ](?:\p{javaJavaIdentifierStart}\p{javaJavaIdentifierPart}*)(?:[.]\p{javaJavaIdentifierPart}+)*
 K9:; compile -(Ljava/lang/String;)Ljava/util/regex/Pattern;= java/io/Serializable serialVersionUID J ConstantValue   9�� TYPE_MODULE    TYPE_PACKAGE    	TYPE_JAVA    TYPE_IDE    
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; TYPE_REQUIRES    
TYPE_NEEDS    TYPE_RECOMMENDS    COMPARE_SPEC COMPARE_IMPL COMPARE_ANY 	JAVA_NAME VM_NAME Code LineNumberTable LocalVariableTable this  Lorg/openide/modules/Dependency; StackMapTable MethodParameters base release 
releaseMax e !Ljava/lang/NumberFormatException; rest dash codeName slashOK Z slash 
Exceptions create $(ILjava/lang/String;)Ljava/util/Set; nfe 	compthing idx ok v onedep tok2 Ljava/util/StringTokenizer; nue key .Lorg/openide/modules/Dependency$DependencyKey; body deps Ljava/util/Set; tok 	depsByKey Ljava/util/Map; LocalVariableTypeTable 1Ljava/util/Set<Lorg/openide/modules/Dependency;>; _Ljava/util/Map<Lorg/openide/modules/Dependency$DependencyKey;Lorg/openide/modules/Dependency;>; 	Signature F(ILjava/lang/String;)Ljava/util/Set<Lorg/openide/modules/Dependency;>; getType getName getComparison 
getVersion o Ljava/lang/Object; d #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; buf Ljava/lang/StringBuilder; vers <clinit> 
SourceFile Dependency.java InnerClasses DependencyKey 1   <  >? @   A C  @   D E  @   F G  @   H I  @   JK    L    M   N  @   O P  @   Q R  @   S T  @   D U  @   F V  @   H   K    L    M    K    L    M   !  K    L    M   W  @    � &   +    X  @    � 0   5                         H I      � Y   �     )*� *� *,� � *� *� � � � �   Z       {  | 	 }  ~   ( �[   4    )\]     )      )      )      )   ^   / � $      �         _                
 � � Y  9    */� >� *M� �� � !Y� #Y� %&� (*� (� ,� /�*� 2M*`� 6:-� 6� -� 96� � !Y� #Y� %?� (*� (� ,� /�� `� 2� 96`� 6� 96� � !Y� #Y� %?� (*� (� ,� /�� � !Y� #Y� %A� (*� (� ,� /�� :� !Y� E� /�� F,� J� P� � !Y� #Y� %V� (,� (� ,� /��  I � � C Z   f    �  �  �  �  � 0 � 7 � @ � I � O � V � [ � v � y � � � � � � � � � � � � � � � � � � � � � �[   p   `   V  a   � Pa   � Bb   � cd  @ �e   I �f    g     hi  7 �`   
j  ^   , 	�  � E      � :� !B C� 'k     !_   	g  h   	lm Y      R+� � X�� ^Y� `M� cY+e� gN-� j� #� !Y� #Y� %m� (+� (o� (� ,� /�� qY� s:-� j��-� t:� cYw� g:� j� � !Y� #Y� %y� (� (� ,� /�� t:� j� �� t:

{� }� 	6� 8
�� }� 	6� (� !Y� #Y� %�� (
� (�� (+� (� ,� /�� j� (� !Y� #Y� %�� (� (�� (+� (� ,� /�� t:	� j� (� !Y� #Y� %�� (� (�� (+� (� ,� /�� � �Y	� �W� :� !Y� E� /�� 	6:	� 6� �-� �^�X� !Y� #Y� %�� (� (� ,� /�� �[� 6

� X
� 
� 2� �� �d� �]� � !Y� #Y� %�� (� (� ,� /�
`� �d� 2� �� 	� �
� � � !Y�� /�
� &
`� �d� 2.� � � !Y�� /���� T�� }� )�� }� � !Y� #Y� %�� (� (� ,� /��R� !Y� #Y� %�� (+� (� ,� /�� ��� }� n�� �6

� 	6� 8
� 2�� }� 6
`� 6� 96� � 6� :6� � !Y� #Y� %�� (� (� ,� /�� �� !Y� #Y� %�� (+� (� ,� /�� -� � !Y� #Y� %�� (+� (� ,� /�� �� m� -� � !Y� #Y� %�� (+� (� ,� /�� �� =� -� � !Y� #Y� %�� (+� (� ,� /�� �� � !Y�� /�� Y	� �:
� �Y
� �:� � � 0� !Y� #Y� %Ƕ (
� �̶ (� � � ɶ ,� /�,
� � W
� � W��,� NX[ C� C Z  v ]   �  �  �  �  � # � C � N � U � [ � h � p � � � � � � � � � � � � � � � � � � � � � � �# �H �N �X �[ �] �j �m �p �s �x �~ �����	�
���%/MW!_"s#�&�'�)�*�,�/�0�2�3�7�8;9:	>?*C0DKFPGVHqKzL�M�N�Q�R�S�T�W�Y�\�]�_`)a8dAeMgPi[   �  �     �    ] nd  � �o  
 � �    R   	� �p  
� qi � r   qi  cd � bj  
	 !qi  [�s   h�tu  ��   p�   s�   	� Yv] 
� Nwx   R      Ry   Az{  6|u  N}~      Az�  N}� ^   (� : � c� 
 �� =  c� %   � c �  c      � $   � c �  c     ,� 3   � c �  c     R C� � �  7� $,� '4 � #�  @�    � c �  c    C� �   %&&	� S  ��    � c �  k     !_   	   y  �   � � � Y   /     *� �   Z      n[       \]   �  Y   /     *� �   Z      s[       \]   � � Y   /     *� �   Z      x[       \]   �  Y   /     *� �   Z      }[       \]     � Y   �     H+� �� �+� M*� ,� � .*� ,� � #*� ,� � }� *� ,� � ߙ � �   Z      � 	� � � <� G�[        H\]     H��   8�] ^    � : @_   �  �    �    � � Y   :     �*� �*� � 悬   Z      �[       \]  �    �    .  Y  4     �� #Yd� �L*� � +� (W� J*� � +� (W� 8*� � +� (W� &*� � +� (W� *� � 
+� (W+*� � (W*� � +�� (W+*� � (W� *� � +�� (W+*� � (W+� ,�   Z   N   � 
� � � $� .� 6� @� I� S� \� c� l� t� {� �� �� �� ��[       �\]   
 ��� ^    �  ##�    �   
 Y   �     O*� C� �Y*� ��L� �� #Y� %�� (*� (� ,� **� �d� 2K� �Y*� ��L*� ���� �Y� ��     C 3 ; < C Z   & 	  � � � � '� 3� <� =� D�[      nd    O�   ^    M CT C_   �   �  Y   �      T��	������"���$'��),���.1��36�8� F�   Z   * 
   Y  ]  ^  ]  c   i , l 5 r A u J � �   ��   
  � � 