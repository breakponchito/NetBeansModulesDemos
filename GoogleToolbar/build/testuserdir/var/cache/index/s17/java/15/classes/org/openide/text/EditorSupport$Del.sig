����   4	      "org/openide/text/EditorSupport$Del this$0  Lorg/openide/text/EditorSupport;
  	 
   "org/openide/text/DataEditorSupport <init> P(Lorg/openide/loaders/DataObject;Lorg/openide/text/CloneableEditorSupport$Env;)V	     
allEditors /Lorg/openide/windows/CloneableTopComponent$Ref;
      org/openide/text/EditorSupport notifyUnmodified ()V
     notifyModified ()Z
     notifyClosed
  
  	  ! " # nodeL  Lorg/openide/nodes/NodeListener;
   & java/lang/IllegalStateException ( Do not call!
 % *  + (Ljava/lang/String;)V
  - . / createCloneableTopComponent -()Lorg/openide/windows/CloneableTopComponent; 1 %org/openide/text/EditorSupport$Editor 3  org/openide/text/CloneableEditor 5 CloneableEditorSupport.Pane
 7 8 9 : ; )org/openide/windows/CloneableTopComponent getClientProperty &(Ljava/lang/Object;)Ljava/lang/Object; = ,org/openide/text/CloneableEditorSupport$Pane
  ? @ A getDataObject "()Lorg/openide/loaders/DataObject;
 0 C  D #(Lorg/openide/loaders/DataObject;)V
  F G H messageToolTip ()Ljava/lang/String;
  J K H messageName
  M N H messageOpening
  P Q H messageOpened
  S T H messageSave
  V W  updateTitles
  F
  J
  M
  P
  S
  V
  _ ` a close (Z)Z
  _
  -
  e f g initializeCloneableEditor %(Lorg/openide/text/CloneableEditor;)V
 i j k l  org/openide/loaders/DataObject isValid
 i n o p getNodeDelegate ()Lorg/openide/nodes/Node; r org/openide/nodes/Node
 2 t u v setActivatedNodes ([Lorg/openide/nodes/Node;)V x java/beans/BeanInfo
 q z { | getIcon (I)Ljava/awt/Image;
 2 ~  � setIcon (Ljava/awt/Image;)V � 3org/openide/text/EditorSupport$Del$DataNodeListener
 � �  � I(Lorg/openide/text/EditorSupport$Del;Lorg/openide/text/CloneableEditor;)V
 � � � � � org/openide/nodes/NodeOp weakNodeListener T(Lorg/openide/nodes/NodeListener;Ljava/lang/Object;)Lorg/openide/nodes/NodeListener;
 q � � � addNodeListener #(Lorg/openide/nodes/NodeListener;)V
  � � � loadFromStreamToKit U(Ljavax/swing/text/StyledDocument;Ljava/io/InputStream;Ljavax/swing/text/EditorKit;)V
  �
  � � � saveFromKitToStream V(Ljavax/swing/text/StyledDocument;Ljavax/swing/text/EditorKit;Ljava/io/OutputStream;)V
  �
  � � � reloadDocumentTask ()Lorg/openide/util/Task;
  � � � reloadDocument
  � �  saveDocument
  �
  � � � createUndoRedoManager $()Lorg/openide/awt/UndoRedo$Manager;
  �
  � � � createEditorKit ()Ljavax/swing/text/EditorKit;
  �
  � �  canClose
  � � +org/openide/cookies/EditorCookie$Observable �(Lorg/openide/text/EditorSupport;Lorg/openide/loaders/DataObject;Lorg/openide/text/CloneableEditorSupport$Env;Lorg/openide/windows/CloneableTopComponent$Ref;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/text/EditorSupport$Del; obj  Lorg/openide/loaders/DataObject; env -Lorg/openide/text/CloneableEditorSupport$Env; ref MethodParameters es "()Lorg/openide/text/EditorSupport; superNotifyUnmodified superNotifyModified superNotifyClosed createCloneableEditor $()Lorg/openide/text/CloneableEditor; 
createPane 0()Lorg/openide/text/CloneableEditorSupport$Pane; pan .Lorg/openide/text/CloneableEditorSupport$Pane; ctc +Lorg/openide/windows/CloneableTopComponent; StackMapTable superMessageToolTip superMessageName superMessageOpening superMessageOpened superMessageSave superUpdateTitles ask Z 
superClose ourNode Lorg/openide/nodes/Node; nl editor "Lorg/openide/text/CloneableEditor; superLoadFromStreamToKit doc !Ljavax/swing/text/StyledDocument; stream Ljava/io/InputStream; kit Ljavax/swing/text/EditorKit; 
Exceptions � java/io/IOException � %javax/swing/text/BadLocationException superSaveFromKitToStream Ljava/io/OutputStream; superReloadDocument superSaveDocument superUndoRedoManager superCreateEditorKit superCanClose 
SourceFile EditorSupport.java InnerClasses Del � +org/openide/text/CloneableEditorSupport$Env � 'org/openide/text/CloneableEditorSupport Env � -org/openide/windows/CloneableTopComponent$Ref Ref Editor Pane DataNodeListener   org/openide/awt/UndoRedo$Manager org/openide/awt/UndoRedo Manager  org/openide/cookies/EditorCookie 
Observable 0    �   " #       (   �  �   f     *+� *,-� *� �    �          �   *     � �      � �     � �     �   �     �   �   �    � �  �   /     *� �    �       �        � �       �   6     *� � �    �   
     �        � �       �   2     *� � �    �       �        � �       �   6     *� � �    �   
   # $ �        � �    �   �   3     *� �    �   
   ' ( �        � �    �   �   /     *� �    �      + �        � �    �   �   <     
*�  *� $�    �      0 2 	3 �       
 � �    � �  �   4     
� %Y'� )�    �      6 �       
 � �    � �  �   �     9*� ,L+� 0� +� 2�+4� 6� <M,� ,�+� <� +� <�� 0Y*� >� B�    �   & 	  A B C E F G !I (J -L �        � �    9 � �    4 � �  �    �  7�  <  G H  �   2     *� � E�    �      U �        � �    K H  �   2     *� � I�    �      Y �        � �    N H  �   2     *� � L�    �      ] �        � �    Q H  �   2     *� � O�    �      a �        � �    T H  �   2     *� � R�    �      e �        � �    W   �   6     *� � U�    �   
   i j �        � �    � H  �   /     *� X�    �      n �        � �    � H  �   /     *� Y�    �      r �        � �    � H  �   /     *� Z�    �      v �        � �    � H  �   /     *� [�    �      z �        � �    � H  �   /     *� \�    �      ~ �        � �    �   �   3     *� ]�    �   
   � � �        � �    ` a  �   =     	*� � ^�    �      � �       	 � �     	 � �  �    �    � a  �   :     *� b�    �      � �        � �      � �  �    �    . /  �   g     *� � cL+� 2� *+� 2� d+�    �      � � � � �        � �     � �  �    �  7  f g  �   �     B*� >M,� h� 8,� mN+� qY-S� s+-� y� }� �Y*+� �:--� �� �*�  �    �   & 	  � � � � � &� 1� ;� A� �   4   0 � �  1  � #    B � �     B � �   = � �  �    � A i �    �    � �  �   T     *+,-� ��    �   
   � � �   *     � �      � �     � �     � �  �     � � �    �   �   �    � �  �   W     *� +,-� ��    �   
   � 
� �   *     � �      � �     � �     � �  �     � � �    �   �   �    � �  �   T     *+,-� ��    �   
   � � �   *     � �      � �     � �     � �  �     � � �    �   �   �    � �  �   W     *� +,-� ��    �   
   � 
� �   *     � �      � �     � �     � �  �     � � �    �   �   �    � �  �   2     *� � ��    �      � �        � �    � �  �   /     *� ��    �      � �        � �    �   �   6     *� � ��    �   
   � � �        � �   �     �  �   �   3     *� ��    �   
   � � �        � �   �     �  � �  �   /     *� ��    �      � �        � �    � �  �   2     *� � ��    �      � �        � �     � �  �   /     *� ��    �      � �        � �    � �  �   2     *� � ��    �      � �        � �    �   �   /     *� ��    �      � �        � �    �   �   2     *� � ��    �      � �        � �    �    � �   B    �  � � �	 � 7 � 	 0  � 	 < � �	 �  �  � 	 �	