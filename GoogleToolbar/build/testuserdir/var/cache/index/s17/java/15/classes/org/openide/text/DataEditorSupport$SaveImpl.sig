����   4 �	      +org/openide/text/DataEditorSupport$SaveImpl DEFAULT -Lorg/openide/text/DataEditorSupport$SaveImpl;
  	 
   java/lang/Object <init> ()V	     des $Lorg/openide/text/DataEditorSupport;
      "org/openide/text/DataEditorSupport desEnv /()Lorg/openide/text/CloneableEditorSupport$Env;      +org/openide/text/CloneableEditorSupport$Env 
isModified ()Z
      access$1000 '(Lorg/openide/text/DataEditorSupport;)Z
  " # $ access$1100 T(Lorg/openide/text/DataEditorSupport;)Lorg/openide/windows/CloneableOpenSupport$Env; & &org/openide/text/DataEditorSupport$Env
 % ( ) * 
access$000 N(Lorg/openide/text/DataEditorSupport$Env;)Lorg/openide/filesystems/FileObject;
 , - . / 0 7org/netbeans/modules/openide/loaders/AskEditorQuestions throwableIsReadOnly ;(Lorg/openide/filesystems/FileObject;)Ljava/io/IOException;
  2 3 4 getDataObject "()Lorg/openide/loaders/DataObject;
  6 7 8 access$1200 ()Ljava/util/Map; : ; < = > java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; @ java/nio/charset/Charset
 B C D E F org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 H I J K L *org/netbeans/api/queries/FileEncodingQuery getEncoding @(Lorg/openide/filesystems/FileObject;)Ljava/nio/charset/Charset; : N O P put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  R S T access$1300 #(Lorg/openide/loaders/DataObject;)I	  V W X ERR Ljava/util/logging/Logger; Z SaveImpl - charset put
 \ ] ^ _ ` java/util/logging/Logger finest (Ljava/lang/String;)V
  b c  superSaveDoc e &org/openide/util/UserQuestionException
 d g h i getLocalizedMessage ()Ljava/lang/String;
 , k l m askUserQuestionExceptionOnSave (Ljava/lang/String;)Z
 d o p  	confirmed
  r s T access$1500 : u v > remove x java/io/IOException z MSG_SaveAsFailed
  | } $ access$1400
  � � � i "org/openide/filesystems/FileObject 
getNameExt
 w g
 � � � � � org/openide/util/NbBundle 
getMessage J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; � java/util/Date
 � 	
 � � � � � 0org/netbeans/modules/openide/loaders/UIException annotateUser a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Date;)V
  � � � getClass ()Ljava/lang/Class;
  � � � hashCode ()I
  �  � '(Lorg/openide/text/DataEditorSupport;)V � /org/openide/filesystems/FileSystem$AtomicAction Code LineNumberTable LocalVariableTable this MethodParameters run fo $Lorg/openide/filesystems/FileObject; ex (Lorg/openide/util/UserQuestionException; e Ljava/io/IOException; tmpObj  Lorg/openide/loaders/DataObject; c Ljava/nio/charset/Charset; StackMapTable � java/lang/Throwable 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; equals (Ljava/lang/Object;)Z obj Ljava/lang/Object; 
access$700 /()Lorg/openide/text/DataEditorSupport$SaveImpl; <clinit> 
SourceFile DataEditorSupport.java InnerClasses SaveImpl � 'org/openide/text/CloneableEditorSupport Env � ,org/openide/windows/CloneableOpenSupport$Env � (org/openide/windows/CloneableOpenSupport � "org/openide/filesystems/FileSystem AtomicAction      �               �  �   F     
*� *+� �    �      ! " 	# �       
 �      
    �        �   �  �     �*� � �  �  *� � � *� � !� %� 'L+� +�*� � 1L� 5+� 9 � ?M,� +� A� GM� 5+,� M W+� QW� UY� [*� � a� N-� f� j� -� n+� q� [� 5+� t W� NN-By� Y*� � {� %� '� ~SY-� �S� �� �Y� �� �-�:+� q� � 5+� t W��  e l o d M ~ � w M ~ �   � � �    �   r   & ' '( ,* 4+ A, E- M0 X1 ]2 e4 l9 o5 p6 z7 ~F �G �: �; �@ �A �< �; �C �F �G �I �J �   >  '  � �  p  � �  � 4 � �    � �    4 � � �  A � � �  �   # ,�   B ?a dS wt ��   ��  �     w  � �  �   2     *� �� ��    �      N �        �    �     �    � �  �   T     +� *� �+� �� � �    �      S �        �       � �  �    @ �    �   �     �   � �  �         � �    �        �   �   $      � Y� �� �    �        �    � �   *    � 
  � �	 � � �	 %  �	 � � �	