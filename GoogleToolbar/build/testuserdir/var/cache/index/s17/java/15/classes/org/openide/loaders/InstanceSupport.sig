����   4�	      #org/openide/loaders/InstanceSupport 	writeRepl Ljava/lang/Class;
   	 
 	findClass <(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
      java/lang/Object <init> ()V	     entry +Lorg/openide/loaders/MultiDataObject$Entry;
     instanceOrigin &()Lorg/openide/filesystems/FileObject;
      "org/openide/filesystems/FileObject getPath ()Ljava/lang/String;
   ! " # $ java/lang/String lastIndexOf (I)I
   & ' ( 	substring (II)Ljava/lang/String;
   * + , replace (CC)Ljava/lang/String;
  . / 0 instanceClass *(Ljava/lang/ClassLoader;)Ljava/lang/Class;	  2 3 4 clazzException Ljava/lang/Throwable; 6 java/io/IOException 8  java/lang/ClassNotFoundException : java/lang/ThreadDeath	  < =  clazz
  ? @ A isSerialized ()Z
  C D E getInputStream ()Ljava/io/InputStream;
  G H I 	readClass ((Ljava/io/InputStream;)Ljava/lang/Class;
 K L M N  java/io/InputStream close
  P Q  instanceName
 7 S  T (Ljava/lang/String;)V V java/lang/StringBuilder
 U  Y From file: 
 U [ \ ] append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 _ ` a b  )org/openide/loaders/MultiDataObject$Entry getFile
 U d \ e -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 U g h  toString
 j k l m n org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable; p java/lang/RuntimeException r 	 due to: 
 o g
 7 u  v *(Ljava/lang/String;Ljava/lang/Throwable;)V x java/lang/LinkageError
 w g
  { / | ()Ljava/lang/Class;
 ~  � � � java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z � java/io/BufferedInputStream
 � �  � (Ljava/io/InputStream;I)V � 'org/openide/util/io/NbObjectInputStream
 � �  � (Ljava/io/InputStream;)V
 � � � � 
readObject ()Ljava/lang/Object;
 � L � "org/openide/util/SharedClassObject
 ~ � � � 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class;
 � � � � 
findObject 8(Ljava/lang/Class;Z)Lorg/openide/util/SharedClassObject;
 ~ � � � getDeclaredConstructor 3([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
 � � � � � java/lang/reflect/Constructor setAccessible (Z)V � [Ljava/lang/Object;
 � � � � newInstance '([Ljava/lang/Object;)Ljava/lang/Object;
 j � � n attachLocalizedMessage � java/lang/Exception � Cannot instantiate  �  for 	  � � � applet Ljava/lang/Boolean;
 � � � � A java/lang/Boolean booleanValue � java/applet/Applet
  � � � 
instanceOf	 � � � � TRUE	 � � � � FALSE � main � [Ljava/lang/String;
 ~ � � � getDeclaredMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 � � � � � java/lang/reflect/Method getModifiers ()I
 � � � � � java/lang/reflect/Modifier isPublic (I)Z
 � � � � isStatic	 � � � �  java/lang/Void TYPE
 � � � | getReturnType
  � � � equals (Ljava/lang/Object;)Z	  � � � bean
 ~ �
 � � � � 
isAbstract
 ~ � � � getConstructor � java/lang/NoSuchMethodException
 � �
 ~ � � | getDeclaringClass
 ~ � � A isInterface  { "org/openide/cookies/InstanceCookie java/awt/Component java/awt/MenuComponent
 ~  getName
 	java.awt. javax.swing. javax.swing.border.
   
startsWith (Ljava/lang/String;)Z
   � length
   ' (I)Ljava/lang/String;
   $ indexOf org/openide/util/HelpCtx
 S  ! � instanceCreate
#$% findHelp .(Ljava/lang/Object;)Lorg/openide/util/HelpCtx;	'() DEFAULT_HELP Lorg/openide/util/HelpCtx;
 +,  getExt. ser
   �1 (org/openide/loaders/InstanceSupport$1OIS
 � �
04 5 =(Lorg/openide/loaders/InstanceSupport;Ljava/io/InputStream;)V
7 �8 java/io/ObjectInputStream
 7 ; +org/openide/loaders/InstanceSupport$ClassEx	: <
>?@AB java/lang/ClassLoader 	loadClass %(Ljava/lang/String;)Ljava/lang/Class;
DEFGH org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
DJKL lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 NO | getClass
 ~QRS getClassLoader ()Ljava/lang/ClassLoader;
 UVS createClassLoaderX ClassLoader: Z /org.openide.util.SharedClassObject$WriteReplace
 ~\]B forName
 �_`  printStackTraceb %org/openide/cookies/InstanceCookie$Of .(Lorg/openide/loaders/MultiDataObject$Entry;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/loaders/InstanceSupport; MethodParameters -()Lorg/openide/loaders/MultiDataObject$Entry; p Ljava/lang/String; x I StackMapTable 
Exceptions 	Signature ()Ljava/lang/Class<*>; is Ljava/io/InputStream; ex Ljava/io/IOException; "Ljava/lang/ClassNotFoundException; re Ljava/lang/RuntimeException; le Ljava/lang/LinkageError; cl Ljava/lang/ClassLoader; java/lang/Throwable -(Ljava/lang/ClassLoader;)Ljava/lang/Class<*>; type LocalVariableTypeTable Ljava/lang/Class<*>; (Ljava/lang/Class<*>;)Z bis Ljava/io/BufferedInputStream; nbis )Lorg/openide/util/io/NbObjectInputStream; o Ljava/lang/Object; init Ljava/lang/reflect/Constructor; c e Ljava/lang/Exception; "Ljava/lang/reflect/Constructor<*>; isApplet b Z 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; isExecutable Ljava/lang/reflect/Method; m 
isJavaBean !Ljava/lang/NoSuchMethodException; outer modif cnfe @(Lorg/openide/cookies/InstanceCookie;)Lorg/openide/util/HelpCtx; i name pkgs h instance $Lorg/openide/cookies/InstanceCookie; -Lorg/openide/loaders/InstanceSupport$ClassEx; ois Ljava/io/ObjectInputStream; customLoader loader l 
access$000 a(Lorg/openide/loaders/InstanceSupport;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class; x0 x1 x2 
access$100 <clinit> 
SourceFile InstanceSupport.java InnerClasses� #org/openide/loaders/MultiDataObject Entry OIS ClassEx Of� ,org/openide/loaders/InstanceSupport$Instance Instance !   a        3 4    =     � �    � �   
       c d   F     
*� *+� �   e       4  5 	 6f       
gh     
   i         j d   /     *� �   e       <f       gh    Q  d   �     .*� � L+.� =� +/� � 
+� %L+/.� )�   e       G  H  I  J % Lf        .gh    &kl   mn o   	 � %    / | d   0     *� -�   e       `f       gh  p     5 7q   r  / 0 d  �    P*� 1� /*� 1� 5� *� 1� 5�*� 1� 7� *� 1� 7�*� 1� 9�*� ;� *� ;�*� >� (*� � BM**,� F� ;*� ;N,� J-�:,� J�***� O+� � ;*� ;� � 7Y*� O� R�*� ;�M,� UY� WX� Z*� � ^� c� f� iW*,� 1,�M,� UY� WX� Z*� � ^� c� f� iW*,� 1,�M*� 7Y� UY� WX� Z*� � ^� cq� Z,� s� Z� f,� t� 1*� 1� 7�M*� 7Y� UY� WX� Z*� � ^� cq� Z,� y� Z� f,� t� 1*� 1� 7� 
 N \ b   b d b   ? ` � 5 b � � 5 ? ` � 7 b � � 7 ? ` � o b � � o ? ` w b � w e   �     e  f  g  h # i + k 3 m ? p F r N t W u \ w ` u b w h x k { x | � } �  � � � � � � � � � � � � � � � � � � � � �H �f   H  N st  � %uv  � %uw  � 9xy  9z{   Pgh    P|} o   - � "  > K ~� D 5e 7e oy wp     5 7i   |  q   �  � � d   �     +*� z� }�M�M�     	 5     7 e       � 	 � 
 �  �  �f   *  
 uv   uw    gh     �  �       �� o   
 I 5B 7i   �  q   �    d   2     *� � ^�   e       �f       gh   ! � d  B     �*� >� )� �Y*� � B � �L� �Y+� �M,� �N,� �-�*� zL�+� }� +�� �� ��+� ~� �M,� �,� �� ��L+*� O� �W+�L+�L� 7Y� UY� W�� Z*� O� Z�� Z*� � ^� c� f+� t�L� 7Y� UY� W�� Z*� O� Z�� Z*� � ^� c� f+� t�    , ] 5 - E ] 5 F \ ] 5   , i 7 - E i 7 F \ i 7   , l � - E l � F \ l �   , � w - E � w F \ � w e   V    �  �  � " � ' � + � - � 2 � ; � F � O � T � ] � ^ � g � i � j � l � m � � � � �f   f 
  ��  " ��  ' ��  O ��  2 +�   ^ uv  j uw  m .��  � .�{    �gh  �     O ��  2 +�� o   " -�  ~�     5K 7B �n wp     5 7 � A d   �     )*� �� *� �� ��*�� �<*� 	� ç � Ƶ ��   e       �  �  � ' �f       )gh    �� o   " �     �      ��    �    �   � A d   �     ?*� z�� ~Y�S� �L+� �=� י � ݙ � �+� � � � �L�L�    8 9 �   8 < w e   & 	   �  �  � * � - � 9 � : � < � = �f   4   & ��   !�n  : u�  = x{    ?gh  o    � 7 �@�      �B w�    �    �   � A d  h     �*� �� *� � ��*� >� *� õ ��*� zL+� �=� י 
� � *� Ƶ ��+� ~� �N� :*� Ƶ ��-� -� �� ך *� Ƶ ��+� �:� %� ݚ �� �=� ך �� �:��ܧ L*� Ƶ ��L*� Ƶ ��*� õ ��  @ I L �  ? � � @ V � � W m � � n � � � � � � � � � � �  ? � w @ V � w W m � w n � � w � � � w � � � w e   � !       $ ) 7 > @ I" L N  U! W# e$ l% n* y, �- �. �0 �1 �* �: �3 �4 �5 �6 �8 �9 �= �>f   \ 	 I ��  N 	��  t '�   $ w =   ) r�n  W D��  � 	u�  � 	�{    �gh  �     $ w =� o   3 �  ~K �� 
 ��  ~� 	    B �I w	�    �    �    � A d   |     *� z� ��L�L�      5     7 e      L M 	N O Pf      	 uv   �w    gh  o   
 H 5B 7�    �    �    h  d   /     *� O�   e      Uf       gh   	$� d  {     �*� � L+� }� +� }� W+�M�  Y	SYSYSN6-�� 1,-2��  ,-2��.�� �Y,������*� M,� ,*� ,�"N-�&� -�� L�    h � � i � � � e   B   r v w  x 7y Az `{ iy o~ v � �� �� �� �� ��f   H  : 5�n    O�l  7 8� �  � 	�)   � =   v ��    ���  �      � =� o    �  ~�    �.� � B � i   �  �    �    �    @ A d   8     *� �*-�/�   e      �f       gh    H I d   �     $�0Y*� �Y+�2�3M,�6W� 7Y�9�N-�<�    : e      � � � � �f   *   u�    $gh     $st   �� o    �    K7 :p     5 7i   s    	 
 d  �     wN,� ,+�=:� #�C>�I�>N-� *�M�PN-+�=:� :*�T+�=:�:� UY� WW� Z-� c� f� iW�:�:� 7Y� y� t�   0 3 7  A B 7  A a o  A f w e   J   � � � � � !� )� 0� 3� 5� ?� B� D� ^� a� c� f� h�f   p   �   0 �   5 
uw  ? �   D uw  c uy  h z{    wgh     w�l    w�}   u�} o   I � >�  ~�     >>  7�  ~�     >>  7^ oD wp     7i   	�  �   VS d   G     �C>�I�>L+�   e   
   � �f       gh    �} �� d   E     *+,� �   e       !f        �h     �l    �} p     7� | d         � �   e       ! �  d   a     Y�[� � K*�^�    	  � e      � 	� � � �f      u�  o    L � �   ��   *  _��0  �  : � 
a �	� � 	