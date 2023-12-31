����   4�
      &org/openide/text/DataEditorSupport$Env readOnlyRefresh ()V
   	  notifyBigFileLoaded
      #org/openide/loaders/OpenSupport$Env findCloneableOpenSupport ,()Lorg/openide/windows/CloneableOpenSupport;	     warnedFiles Ljava/util/Set;
     markModifiedImpl .(Ljava/util/concurrent/atomic/AtomicBoolean;)V
     getFileImpl &()Lorg/openide/filesystems/FileObject;
     <init> #(Lorg/openide/loaders/DataObject;)V	  ! " # action 1Lorg/openide/filesystems/FileSystem$AtomicAction; % org.openide.text.big.file.size
 ' ( ) * + java/lang/Integer 
getInteger ((Ljava/lang/String;I)Ljava/lang/Integer;
 ' - . / intValue ()I	  1 2 3 BIG_FILE_THRESHOLD_MB J
  5 6  
changeFile	  8 9 : 
fileObject $Lorg/openide/filesystems/FileObject;
  < =  getFile
 ? @ A B C java/lang/Object equals (Ljava/lang/Object;)Z	  E F G fileLock "Lorg/openide/filesystems/FileLock;
 I J K L M  org/openide/filesystems/FileLock isValid ()Z	 O P Q R S "org/openide/text/DataEditorSupport ERR Ljava/util/logging/Logger; U java/lang/StringBuilder
 T W   Y changeFile releaseLock: 
 T [ \ ] append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 T _ \ ` -(Ljava/lang/Object;)Ljava/lang/StringBuilder; b  for 
 T d e f toString ()Ljava/lang/String;
 h i j k l java/util/logging/Logger fine (Ljava/lang/String;)V
 I n o  releaseLock q changeFile:  s .org/openide/text/DataEditorSupport$EnvListener
 r u  v O(Lorg/openide/filesystems/FileObject;Lorg/openide/text/DataEditorSupport$Env;)V
  x y z takeLock $()Lorg/openide/filesystems/FileLock; | changeFile takeLock:  ~ java/io/IOException
 � � � � f java/lang/Class getName
 h � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 h � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � expectedTime
  � � � getTime ()Ljava/util/Date;
  � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V � � � � C java/util/Set contains��������
 � � � � � "org/openide/filesystems/FileObject getSize ()J � )org/openide/text/DataEditorSupport$Env$ME
 � �  � ,(Lorg/openide/text/DataEditorSupport$Env;J)V	  � � � sentBigFileInfo Z
  � � � initCanWrite (Z)Z
 � � � � getInputStream ()Ljava/io/InputStream; � outputStream:  � outputStream after takeLock: 
 � � � � getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream; � ugly workaround for #40552:  � (org/openide/text/DataEditorSupport$Env$1
 � �  � +(Lorg/openide/text/DataEditorSupport$Env;)V
 � � � � getFileSystem &()Lorg/openide/filesystems/FileSystem;
 � � � � � "org/openide/filesystems/FileSystem runAtomicAction 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)V
 � � � � lastModified
 � � � f getMIMEType
 � � � � M java/awt/EventQueue isDispatchThread � ,org/openide/text/DataEditorSupport$Env$1Mark
 � �  � O(Lorg/openide/text/DataEditorSupport$Env;Lorg/openide/filesystems/FileObject;)V � org/openide/loaders/DataObject � MSG_MarkModified
 � � � f getPath
 � � � � � org/openide/util/NbBundle 
getMessage I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;	 � � � � cancel +Ljava/util/concurrent/atomic/AtomicBoolean;
 � � � � � 'org/netbeans/api/progress/ProgressUtils runOffEventDispatchThread W(Ljava/lang/Runnable;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZII)V	 � � � � error Ljava/io/IOException; � markModified: 
 � M canWrite File 
 � f 
getNameExt	  is read-only!
 }  l
 M )java/util/concurrent/atomic/AtomicBoolean get
  getDataObject "()Lorg/openide/loaders/DataObject;
 � setModified (Z)V unmarkModified:  releaseLock:  fileChanged: 
 !"# M !org/openide/filesystems/FileEvent 
isExpected
 T% \& (Z)Ljava/lang/StringBuilder;
 ()* 	firedFrom 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)Z, +org/openide/text/CloneableEditorSupport$Env. time0 java/util/Date
 2 � �
/4 5 (J)V	 78 Ljava/lang/Boolean;
:;<=> java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
:@A M booleanValue
 CD M 
isModified
FGHI l 7org/netbeans/modules/openide/loaders/AskEditorQuestions notifyChangedToReadOnlyK $DataEditorSupport.read-only.changingM  org/openide/cookies/EditorCookie
 �OPQ 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;LSTU getDocument #()Ljavax/swing/text/StyledDocument;W javax/swing/text/DocumentY title
 �[\  getPrimaryFile
^_`ab  org/openide/filesystems/FileUtil getFileDisplayName 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;defgh javax/swing/text/StyledDocument putProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
jklm  java/io/ObjectInputStream defaultReadObjecto (org/openide/text/DataEditorSupport$Env$2
n �
jrst registerValidation #(Ljava/io/ObjectInputValidation;I)Vv UIHANDLER_TOO_BIG_FILE_LOADED
 hxy l info{ java/util/HashSet
z W serialVersionUID ConstantValue� 蔩��' 	Signature 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; Code LineNumberTable LocalVariableTable this (Lorg/openide/text/DataEditorSupport$Env; obj  Lorg/openide/loaders/DataObject; MethodParameters 
Exceptions 	lockAgain e newFile wasNull StackMapTable inputStream fo warned size is Ljava/io/InputStream; outputStream ()Ljava/io/OutputStream; fse getMimeType markModified m .Lorg/openide/text/DataEditorSupport$Env$1Mark; err #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; unmarkModified fileChanged &(Lorg/openide/filesystems/FileEvent;)V fe #Lorg/openide/filesystems/FileEvent; refresh oldCanWrite fileName Ljava/lang/String;� java/lang/String fileRemoved canBeVetoed updateDocumentProperty doc !Ljavax/swing/text/StyledDocument; ec "Lorg/openide/cookies/EditorCookie; fileRenamed 
readObject (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream;�  java/lang/ClassNotFoundException 
access$000 N(Lorg/openide/text/DataEditorSupport$Env;)Lorg/openide/filesystems/FileObject; x0 
access$300 V(Lorg/openide/text/DataEditorSupport$Env;Ljava/util/concurrent/atomic/AtomicBoolean;)V x1 
access$400 ()Ljava/util/Set; 
access$501 T(Lorg/openide/text/DataEditorSupport$Env;)Lorg/openide/windows/CloneableOpenSupport; 
access$600 
access$800 <clinit> 
SourceFile DataEditorSupport.java InnerClasses Env� org/openide/loaders/OpenSupport� /org/openide/filesystems/FileSystem$AtomicAction AtomicAction EnvListener ME Mark� 'org/openide/text/CloneableEditorSupport� org/openide/nodes/Node$Cookie� org/openide/nodes/Node Cookie� 8org/openide/text/DataEditorSupport$Env$SaveAsCapableImpl SaveAsCapableImpl!   +  } 3 ~    � 9 :   � F G   �   �   � � � �   � " #   �8   � 2 3       �   a     !*+� *�  *$� &� , h h�� 0�   �      � � 
J  ��       !��     !�� �   �      �   7     	*� 4*� 7�   �   
    �       	��   =    y z �     }  6  �  �     *� ;L+*� 7� >� �*� D� K*� D� H� 7� N� TY� VX� Z*� D� ^a� Z*� 7� ^� c� g*� D� m=� *� D=� =*� 7� � >*+� 7� N� TY� Vp� Z+� ^a� Z*� 7� ^� c� g� rY*� 7*� tW� I**� w� D� N� TY� V{� Z*� D� ^a� Z*� 7� ^� c� g� :O� � �� �� �� *�*� �� ��  � � � } �   b      ! ' "( J) Q* V, [- `1 b4 o6 t7 �8 �: �< �= �@ �> �? �B �C �E�   H  S � �  ] � �  � � �    ��    �� :  b �� �  o �� � �   ' 	�  �� D	� 
@� n   �  } � � �   �     `*� L� +� � = �B� +� �\B*� 0�� � �Y*!� ��� �� !	�� !� +� �*� 0�� � *� �W*� � �:�   �   * 
  P Q R S %T /U KW NY TZ ][�   4    `��    [� :   Q� �   M� 3  ] �� �    � / �C
�     } �� �  8     ò N� TY� V�� Z*� D� ^a� Z*� 7� ^� c� g*� D� *� D� H� **� w� D� N� TY� V�� Z*� D� ^a� Z*� 7� ^� c� g*� *� D� ��L*� D� *� D� H� **� w� D� N� TY� V¶ Z*� D� ^a� Z*� 7� ^� c� g*� *� D� ��  i t u } �   * 
  b (c 9d Af ih ui vl �m �o �p�     v M� �    ���  �    9s }�  }�     }  � � �   u     &*� �Y*� Ƶ  *� � �*�  � ͧ L*� � Ӱ     } �      x ~ �  ��       &��  �    ] }  � f �   2     *� � ְ   �      ��       ��   �  �   �     D� ٙ ;� �Y**� 7� �L+��*� 7� � �+� ���� �+� �M,� ,�� *� �   �   .   � � � � -� 0� 5� 9� ;� >� C��       (��  5 � �    D��  �    ;�     }�    �      �       �*� D� *� D� H� **� w� D� N� TY� V�� Z*� D� ^a� Z*� 7� ^� c� g*� � � C*� D� *� D� H� 
*� D� m� }Y� TY� V� Z*� �� Z� Z� c�
�+� 
+�� *���   �   .   � � � A� K� \� c� u� �� �� ���       ���     � � � �   
 � I'
�     }�    �   �  �   �     s� N� TY� V� Z*� D� ^a� Z*� 7� ^� c� g*� D� =*� D� H� 3*� D� m� N� TY� V� Z*� D� ^a� Z*� 7� ^� c� g*���   �      � )� :� A� j� r��       s��  �    � j�    �   �� �   �     c� N� TY� V� Z+��$a� Z*� 7� ^� c� g*�  � +*�  �'� �+�� *-� �� *-�/Y+�1�3� ��   �      � )� ;� <� C� O� b��       c��     c�� �    <�   �    � � �   �     B*�6� � **� � �9�6�*�6�?=**� � �9�6*�6�?� � �   �      � � � � #� 1��        B��     B� �  # � � �   
 � $@�   �      �   �     C*� �� =*�6�?� *�B� *� �L+�E*J*�6�?� � �9*�6� ��   �         ! % B
�     ! ��    C��  �   % %�     ��      �	 � �   5      �   �       �       ��     � � �   �   �  �   �     1*�L�N�LL+� !+�R M,� ,X*��Z�]�c �   �   "   ' ( ) * + ", ++ 0/�       ��    1��    #�� �    � 0L �  �   :     *�*� �� ��   �   
   5 6�       ��   �� �   N     +�i+�nY*�p�q�   �      9 : ?�       ��     �� �    � }�   �   
 	  �   A      � �� � Nu�w� ��   �      K L M O�    �� �   /     *� �   �      ��       ��  �� �   :     *+� �   �      ��       ��     � � �     }�� �         � �   �      ��� �   /     *� 
�   �      ��       ��  �  �          � �   �      �� � �   /     *� �   �      ��       ��   �  �   #      �zY�|� �   �      � �   ��   Z   O�	 �� 	� ��	 r O�  � �   �       �  �  +��	���	n      � � 