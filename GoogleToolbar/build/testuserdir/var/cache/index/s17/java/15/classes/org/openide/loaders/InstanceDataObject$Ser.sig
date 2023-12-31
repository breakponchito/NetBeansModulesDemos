����   4�  &org/openide/loaders/InstanceDataObject
      *org/openide/loaders/InstanceDataObject$Ser getClassName 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;
  
   getPrimaryEntry -()Lorg/openide/loaders/MultiDataObject$Entry;
      #org/openide/loaders/InstanceSupport <init> .(Lorg/openide/loaders/MultiDataObject$Entry;)V  java/lang/ref/SoftReference
     (Ljava/lang/Object;)V	     bean Ljava/lang/ref/Reference;	     saving Z	  ! " # customClassLoader Ljava/lang/ClassLoader;	  % & ' dobj (Lorg/openide/loaders/InstanceDataObject;	  ) * + saveTime J
  - . / 
access$600 ()Ljava/util/logging/Logger;	 1 2 3 4 5 java/util/logging/Level FINER Ljava/util/logging/Level;
 7 8 9 : ; java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z = saveTime for {0} set: {1} ? java/lang/Object
  A B C getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 E F G H I "org/openide/filesystems/FileObject getPath ()Ljava/lang/String;
 K L M N O java/lang/Long valueOf (J)Ljava/lang/Long;
 7 Q R S log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  U V  entry
 X Y Z [ C )org/openide/loaders/MultiDataObject$Entry getFile
 E ] ^ _ lastModified ()Ljava/util/Date;
 a b c d e java/util/Date getTime ()J
 g h i j k java/lang/ref/Reference get ()Ljava/lang/Object;
 > m n o getClass ()Ljava/lang/Class;
 q r s t I java/lang/Class getName v instance
 E x y z hasExt (Ljava/lang/String;)Z
  | } I instanceName  instanceClass
 E � � � getAttribute &(Ljava/lang/String;)Ljava/lang/Object; � java/lang/String
 � � � � � org/openide/util/Utilities 	translate &(Ljava/lang/String;)Ljava/lang/String; � java/lang/StringBuilder
 � �  � ()V � instanceClass was a 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � I toString
 7 � � � warning (Ljava/lang/String;)V � class:instanceCreate � instanceCreate � Instance file 
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  uses  �  attribute, but doesn't define  � 
instanceOf �  attribute. Please add  � o attr to avoid multiple instances creation,see details at http://www.netbeans.org/issues/show_bug.cgi?id=131951
 E r
 � � � � indexOf (I)I
  � � � 
access$700 '(Lorg/openide/filesystems/FileObject;)V
 � � � � length ()I
 � � � � 	substring (II)Ljava/lang/String;
 � � � � replace (CC)Ljava/lang/String;
  �  � *(Ljava/lang/ClassLoader;)Ljava/lang/Class;
 q � � � 
isInstance (Ljava/lang/Object;)Z
  � � � inListOfClasses J(Ljava/lang/Class;Lorg/openide/filesystems/FileObject;)Ljava/lang/Boolean;
  � � � (Ljava/lang/Class;)Z
 � � � � � java/lang/Boolean booleanValue ()Z � instanceCreate for {0}
 7 � R � @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V �   times are OK: {0} <= {1} �   using cached instance {0} �   using freshed instance
 7 � R � .(Ljava/util/logging/Level;Ljava/lang/String;)V
 � � � � e java/lang/System currentTimeMillis
  � � � setSaveTime (J)V �   instanceCreate result: {0}
  � � k �   result for  � 
 will be: 
  � � � runImpl
  � � � 
access$800 +(Lorg/openide/loaders/InstanceDataObject;)V
  
access$900 L(Lorg/openide/loaders/InstanceDataObject;)Lorg/openide/filesystems/FileLock; java/io/ObjectOutputStream
 E	 getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream;
  (Ljava/io/OutputStream;)V
  writeObject
 � close java/io/IOException	 1 5 WARNING EXC_CannotSaveBean
  |
  org/openide/util/NbBundle 
getMessage [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
 7" R# C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V% java/util/StringTokenizer' 
	 ,;:
$) * '(Ljava/lang/String;Ljava/lang/String;)V
$,- � hasMoreTokens
$/0 I 	nextToken
 �23 I trim
 �56 � equals	 �89: TRUE Ljava/lang/Boolean;	 �<=: FALSE? instanceOf was a 	 ABC task (Lorg/openide/util/RequestProcessor$Task;
 EFG access$1000 %()Lorg/openide/util/RequestProcessor;
IJKLM !org/openide/util/RequestProcessor create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;O java/lang/Runnable 	Signature -Ljava/lang/ref/Reference<Ljava/lang/Object;>; Code LineNumberTable LocalVariableTable this ,Lorg/openide/loaders/InstanceDataObject$Ser; MethodParameters t StackMapTable o Ljava/lang/Object; fo $Lorg/openide/filesystems/FileObject; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; attr name Ljava/lang/String; first I last 
Exceptionsh  java/lang/ClassNotFoundException type Ljava/lang/Class; res fileTime nowTime useFallback 	creatorOf inst r runt java/lang/Throwable lock "Lorg/openide/filesystems/FileLock; oos Ljava/io/ObjectOutputStream; ex Ljava/io/IOException;|  org/openide/filesystems/FileLock typeName tok Ljava/util/StringTokenizer; obj setCustomClassLoader (Ljava/lang/ClassLoader;)V cl getSaveTask *()Lorg/openide/util/RequestProcessor$Task; isSaving 
access$000 x0 
SourceFile InstanceDataObject.java InnerClasses Ser� #org/openide/loaders/MultiDataObject Entry� &org/openide/util/RequestProcessor$Task Task 0   N     P   Q  * +    " #    & '   BC           � R   l     $*+� 	� *� Y� � *� *�  *+� $�   S      � � � � � #�T       $UV     $ & ' W    &    � � R   �     8*� (� ,� 0� 6� )� ,� 0<� >Y*� $� @� DSY*� (� JS� P�   S      � � � #� 4� 7�T       8UV     8X + Y    7W   X    } I R   �     >*� T� WL+� \� `*� (�� *� � fM,� ,� l� p�+u� w� *� {�+� �   S   "   � � � � #  + 4 9T       Z[    >UV    6\] Y   	 � + E^    _   
   R  �     �*~� �L+� q� +� q� p�+� �� +� �� ��+� "� ,� �Y� ��� �+� l� p� �� �� �*�� �L+� q� +� q� p�*�� �L+� G� ,� �Y� ��� �*� ��� ��� ��� ��� ��� ��� ��� �� �� �+� l� p�*� �M,[� �`>� *� �,]� �6� 	,� �6� ,� �M,-.� �M,� �M,�   S   r        % ) 9 E H O V ^ e i �# �' �) �* �+ �. �/ �0 �4 �5 �8 �9 �<T   4    �\]    �`[  � Bab  � 9cd  � )ed Y    �  >"� N�  �� W   \     o R   3     	**�  � ư   S      DT       	UV  f    g^    _    � � R   �     D*� T� WM,� \� `*� (�� *� � fN-� 	+-� ɬ+*� T� W� �N-� 	*+� Ѭ-� Ԭ   S   & 	  M N O P #Q )Y 5Z 9\ ?^T   4   
Z[    DUV     Dij   <\]  5 k: Y    � ) E�  �W   i  ^    _   ! � k R  P  	  *� T� WL� ,� 0� 6=� � ,� 0�+� D� �+� \� `7*� (�� ?*� � fN� @� ,� 0�� >Y� JSY*� (� JS� P� ,� 0�-� ܧ N� ,� 0� �-� -�� �7*�� � � �6+u� w� )+�� �N-� +�� �� q� 6� ,� 0�-� �-� � *� �N*� Y-� � � +� ,� 0� �Y� ��� �+� D� ��� �-� �� �� �-�   S   r   d e g h %k .l 8m @n Do ep ts vt �w �x �{ �| �} �~ �� �� �� �� �� �� �� �� ���T   R  @ 4Z[   UV   \]   R   v �Z[  . �l +  � �m +  � wn  Y   U 
� % E� N �    E >  �    E >  �    E >  � (7f    g^    _   o � R   i     *� M,� ,� f+� � �   S   
   � �T        UV     p[   q  Y   
 �  g@W   p   r � R   �     (*� *� �*� $� �*� � L*� $� �*� +��    	    S   & 	  � � 	� � � �  � %� '�T       (UV  Y    Xs  � � R  h     x*� � fL+� �*� $� M,� ��Y*� T� W,��
N-+�**� T� W� \� `� �-�� :-��� $M� ,�*�*� T� W� D�,�!�  - C J   J L J     V  S V S   R   � � � � � � � � -� 2� C� G� J� P� S� V� W� c� p� w�T   4   >uv  - &wx  W  yz    xUV    p [ Y   , �  >� {� /   >{ s� B  
 � � R       o+�� �M,� �� >*� pN�$Y,� �&�(:�+� �.�1:-�4� �7����;�,� #� ,� �Y� �>� �,� l� p� �� �� ��   S   6   � � � � #� +� 5� >� B� E� I� M� m�T   >  5 Xb   6}b  # &~    oij     o\]   h�[ Y    � # > �$� #W   	i  \   �� R   >     *+�  �   S   
   � �T       UV     � # W   �   �� R   R     *�@� *�D*�H�@*�@�   S      � � �T       UV  Y     � � R   /     *� �   S      �T       UV  �  R   /     *� �   S      �T       �]   �   ��      �  X���I� 