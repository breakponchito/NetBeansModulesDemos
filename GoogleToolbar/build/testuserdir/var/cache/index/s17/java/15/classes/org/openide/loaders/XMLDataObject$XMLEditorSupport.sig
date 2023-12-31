����   4 �  ?org/openide/loaders/XMLDataObject$XMLEditorSupport$XMLEditorEnv
     <init> #(Lorg/openide/loaders/DataObject;)V
  	 
   "org/openide/text/DataEditorSupport P(Lorg/openide/loaders/DataObject;Lorg/openide/text/CloneableEditorSupport$Env;)V
      !org/openide/loaders/XMLDataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;
      "org/openide/filesystems/FileObject getMIMEType ()Ljava/lang/String;  xml
      java/lang/String indexOf (Ljava/lang/String;)I ! text/xml
 # $ % & ' 2org/openide/loaders/XMLDataObject$XMLEditorSupport setMIMEType (Ljava/lang/String;)V
  ) * + notifyModified ()Z
 # - . / getDataObject "()Lorg/openide/loaders/DataObject; 1 org/openide/cookies/SaveCookie
 3 4 5 6 7 org/openide/loaders/DataObject 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; 9 7org/openide/loaders/XMLDataObject$XMLEditorSupport$Save
 8 ;  < 7(Lorg/openide/loaders/XMLDataObject$XMLEditorSupport;)V
  > ? @ 
access$100 F(Lorg/openide/loaders/XMLDataObject;Lorg/openide/cookies/SaveCookie;)V
 3 B C D setModified (Z)V
  F G H notifyUnmodified ()V
  J K @ 
access$200
 M N O P + !org/openide/loaders/MultiDOEditor isMultiViewAvailable R #org/openide/loaders/MultiDataObject T 
text/plain
 M V W X createMultiViewPane g(Ljava/lang/String;Lorg/openide/loaders/MultiDataObject;)Lorg/openide/text/CloneableEditorSupport$Pane;
  Z [ \ 
createPane 0()Lorg/openide/text/CloneableEditorSupport$Pane; ^ org/openide/cookies/OpenCookie ` +org/openide/cookies/EditorCookie$Observable b org/openide/cookies/PrintCookie d org/openide/cookies/CloseCookie &(Lorg/openide/loaders/XMLDataObject;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/loaders/XMLDataObject$XMLEditorSupport; obj #Lorg/openide/loaders/XMLDataObject; StackMapTable MethodParameters save  Lorg/openide/cookies/SaveCookie; mdo %Lorg/openide/loaders/MultiDataObject; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile XMLDataObject.java InnerClasses XMLEditorSupport XMLEditorEnv { +org/openide/text/CloneableEditorSupport$Env } 'org/openide/text/CloneableEditorSupport Env � org/openide/nodes/Node$Cookie � org/openide/nodes/Node Cookie Save � ,org/openide/text/CloneableEditorSupport$Pane Pane �  org/openide/cookies/EditorCookie 
Observable   #   ] _ a c      e  f   y     $*+� Y+� � +� � � � 	* � "�    g      � � � #� h       $ i j     $ k l  m    � #  #    n    k    * +  f   y     1*� (� �*� ,0� 2� *� ,� � 8Y*� :� =*� ,� A�    g      � � 	� � '� /� h       1 i j   m    	%  G H  f        )*� E*� ,0� 2� 0L+� *� ,� +� I*� ,� A�    g      � � � �  � (� h       ) i j     o p  m    � ( 0  [ \  f   c     � L� *� ,� QLS+� U�*� Y�    g      � � � � h       q r     i j   m     s     t    u    v w   :  #  x 
  # y 
 z | ~	  � �	 8 # �   � | �	 _ � �	