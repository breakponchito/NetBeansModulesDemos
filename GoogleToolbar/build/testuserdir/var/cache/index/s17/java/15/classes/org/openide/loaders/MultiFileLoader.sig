����   4o
      org/openide/loaders/DataLoader <init> (Ljava/lang/Class;)V
    	 (Ljava/lang/String;)V
      "org/openide/filesystems/FileObject isValid ()Z	      #org/openide/loaders/MultiFileLoader $assertionsDisabled Z
      "org/openide/loaders/DataObjectPool getPOOL &()Lorg/openide/loaders/DataObjectPool;
      ! java/lang/Thread 	holdsLock (Ljava/lang/Object;)Z # java/lang/AssertionError
 " %  & ()V
  ( ) * findPrimaryFileImpl J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject;	  , - . ERR Ljava/util/logging/Logger;	 0 1 2 3 4 java/util/logging/Level FINE Ljava/util/logging/Level;
 6 7 8 9 : java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z < {0} is accepting: {1} > java/lang/Object
 = @ A B getClass ()Ljava/lang/Class;
 D E F G H java/lang/Class getName ()Ljava/lang/String;
 6 J K L log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V N Jchecking correctness: primary is different than provided file: {0} fo: {1}
 P Q R S T "org/openide/loaders/DataLoaderPool 
getDefault &()Lorg/openide/loaders/DataLoaderPool;
 P V W X 
allLoaders =(Lorg/openide/filesystems/FileObject;)Ljava/util/Enumeration; Z [ \ ] ^ java/util/Enumeration nextElement ()Ljava/lang/Object; ` &org/openide/loaders/DataObject$Factory b ok, consistent
 6 d e 	 fine
  g h * findPrimaryFile j /loader seems to also take care of the file: {0}
 6 l K m @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  o p q findDataObject v(Lorg/openide/filesystems/FileObject;Lorg/openide/loaders/DataLoader$RecognizedFiles;)Lorg/openide/loaders/DataObject; s -org/openide/loaders/DataObjectExistsException
 r u v w getDataObject "()Lorg/openide/loaders/DataObject;
  y z { createMultiObject K(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject;
 } ~  � � #org/openide/loaders/MultiDataObject item +()Lorg/openide/loaders/DataObjectPool$Item; � ${0} created object for: {1} obj: {2} � java/io/IOException � java/lang/StringBuilder
 � % � Loader: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � & returned null from createMultiObject( � )
 � � � H toString
 �  � %{0} get existing data object for: {1}
 � ~ � org/openide/loaders/DataObject � +{0} object already exists for: {1} obj: {2}
 � � � � 	getLoader "()Lorg/openide/loaders/DataLoader; � {0} loader is wrong: {1} � Its primary file is {0}
 � � � � getPrimaryFile &()Lorg/openide/filesystems/FileObject; � -Which is different than primary of found: {0} Z � �  hasMoreElements � Returning null
 6 � K � .(Ljava/util/logging/Level;Ljava/lang/String;)V � (The loader{0} is after {1}. So do break.
  � � � checkCollision f(Lorg/openide/loaders/DataObject;Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject; � &{0} object is not MultiDataObject: {1}
 6 � K � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 } � � {0} wrong loader: {1} � {0} marking secondary entries
 } � � � markSecondaryEntriesRecognized 3(Lorg/openide/loaders/DataLoader$RecognizedFiles;)V � {0} register entry: {1}
 �  � 'org/openide/loaders/DataObjectPool$Item
 } � � � registerEntry Q(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject$Entry;
  � � q handleFindDataObject � {0} success: {1} � java/util/HashSet
 � � � � � java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
 � �  � (Ljava/util/Collection;)V
  � � � 
revalidate  (Ljava/util/Set;)Ljava/util/Set;
  � � � find F(Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/DataObject;
 } �
 = � � ! equals
 } � � � setValid (Z)V �  java/beans/PropertyVetoException � Object  �  cannot have null primary file
 " �  � (Ljava/lang/Object;)V
  � � � 	getParent  cannot have null parent file
  getChildren '()[Lorg/openide/filesystems/FileObject;
 }	 getSecondary ()Ljava/util/Map; java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
 � � /org/openide/loaders/DataObjectNotFoundException
  createSecondaryEntry v(Lorg/openide/loaders/MultiDataObject;Lorg/openide/filesystems/FileObject;)Lorg/openide/loaders/MultiDataObject$Entry;
 D  desiredAssertionStatus serialVersionUID J ConstantValue�"�}u Code LineNumberTable LocalVariableTable this %Lorg/openide/loaders/MultiFileLoader; representationClass Ljava/lang/Class; LocalVariableTypeTable 4Ljava/lang/Class<+Lorg/openide/loaders/DataObject;>; MethodParameters 
Deprecated 	Signature 7(Ljava/lang/Class<+Lorg/openide/loaders/DataObject;>;)V RuntimeVisibleAnnotations Ljava/lang/Deprecated; representationClassName Ljava/lang/String; snd  Lorg/openide/loaders/DataObject; ex /Lorg/openide/loaders/DataObjectExistsException; ml l (Lorg/openide/loaders/DataObject$Factory; en Ljava/util/Enumeration; originalItem )Lorg/openide/loaders/DataObjectPool$Item; obj %Lorg/openide/loaders/MultiDataObject; o before mfl loaderPrimary $Lorg/openide/filesystems/FileObject; 
dataObject Ljava/io/IOException; tryAgain e +Lorg/openide/loaders/MultiDataObject$Entry; fo 
recognized 0Lorg/openide/loaders/DataLoader$RecognizedFiles; primary willLog ALjava/util/Enumeration<Lorg/openide/loaders/DataObject$Factory;>; StackMapTableO .org/openide/loaders/DataLoader$RecognizedFilesQ java/lang/ThrowableS )org/openide/loaders/MultiDataObject$Entry 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; primaryFile createPrimaryEntry secondaryFile file result checkConsistency ((Lorg/openide/loaders/MultiDataObject;)V 
checkFiles pf i I parent arr %[Lorg/openide/filesystems/FileObject;d createSecondaryEntryImpl <clinit> 
SourceFile MultiFileLoader.java InnerClasses Factory RecognizedFiles Item Entry!                      P     *+� �       
    -  .!       "#     $% &       $' (   $  )    *   +,    -     	    >     *+� �       
    7  8!       "#     ./ (   .    � q   F    �+� 
� �� � � � � � "Y� $�*+� 'N-� �� +� /� 56�  � +� /;� =Y*� ?� CSY+S� I-+� �� � +� /M� =Y-SY+S� I� O-� U:� Y � _:*� � +a� c� M� � B� :-� f-� 1� � +� /i� k-,� n:� :		� t:� ����*-� x:� Y:�� |:ç :
�
�� %� +� /�� =Y*� ?� CSY+SYS� I� ,� �Y� �Y� ��� �*� ��� �-� ��� �� �� ����:�  � +� /�� =Y*� ?� CSY+S� I� t:� Y:	�� �:	ç :	��� %� +� /�� =Y*� ?� CSY+SYS� I� �*� �� *� +� /�� =Y*� ?� CSY� �� ?� CS� I� �� � �� �� :		+� ':
� +� /�
� k
� q� �
� g� +� /�� k� O+� U:� � � G� Y � _:	� � +� /�� ��*� � +� /�� =Y	SY*S� I� ���*+� �:� }� )� !� +� /�� =Y*� ?� CSYS� I�� }:� :� +� /� ��� �*� 2� *� +� /�� =Y*� ?� CSY� ¶ ?� CS� I�� � +� /�*� ?� C� k,� ��  � +� /�� =Y*� ?� CSY+S� I� Y:�� |� � ͙ 
+� 
� � 6ç :��� +� �:� 
*+,� ԰� !� +� /�� =Y*� ?� CSYS� I� 	 � � � r �  
   �be r���  ���   �b� �u��  ���      z ^   J  K 	 N   Q & T , W 7 Y < Z Y ] ^ ^ c _ z a � c � d � e � f � h � i � j � k � l � p � s � q � r � t � u � y � � � � � � � � � �4 �9 �b �e �g �l �� �� �� �� �� �� �� �� �� � � � �% �2 �A �N �W �a �m �t � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �  � �, �/ �4 �F �L �Q �n �u �� �� �� �� �� �� �� �� �!  .  � 01  � 23 	 � 01  � 84#  � X56  � g78  � 9:  � t;<  X9: � 9: m 5=6 W N>8  �?# 	% �@A 
�SB1 g|23 � ;< �:9: � 2C � D  � EF   �"#    �GA   �HI  &�JA  7�K  � �;< � �9: � =D  � &EF &     � g7L W N>L M  < +	�  � , �  Z�  _� * K r�  �� � �    N  }  = P�    N  } �  &-�    N   r� #   r�  
  N    r � = P�  	  N   � r �  &4� N   Z� ) _�  � *� 	   N   ��  } �4'�   =@GP�    N  } �  � R"T     �(   	G  H  U    V   h * (   G   z { T     r �(   W  X (   	;  W   (   	;  Y     � �    �     #+� �N� � �Y-� ۷ � �W� -� �:�              !  "!   4    #"#     #;1    #ZA   JA    [1 (   	;  Z    \]    �     +� �M,*,� '� � �+� � N�     �        - . 0 6 9 7 :!        "#     ;<   JA M    �  G � (   ;    ^]   �     �+� �M� � ',� #� "Y� �Y� ��� �+� ��� �� �� ��,� �N� � (-� $� "Y� �Y� ��� �+� � � �� �� ��-�:6�� <+�2�
 � � "*2� ':,� 2�W� :���±  � � �     >   M N /O 4P _R eS pT �V �Y �[ �b �e �c �S �h!   H  � _A  h A`a    �"#     �;<   �JA  4 vbA  e Ecd M   9 � / � / � e�    }  e  � � (   ;    f    E     *+,��          k!        "#     ;<    YA (   	;  Y     ) *    :     *+� f�          o!       "#     GA (   G   g &    4      �� � � �           #M    @ h   ij   "  _ �k	N l	 � m R }n