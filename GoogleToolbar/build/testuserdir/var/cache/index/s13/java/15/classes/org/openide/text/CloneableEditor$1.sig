����   4 ?	      "org/openide/text/CloneableEditor$1 this$0 "Lorg/openide/text/CloneableEditor;	   	 
 val$ces )Lorg/openide/text/CloneableEditorSupport;
      java/lang/Object <init> ()V
      'org/openide/text/CloneableEditorSupport messageHtmlName ()Ljava/lang/String;
       org/openide/text/CloneableEditor setHtmlDisplayName (Ljava/lang/String;)V
     messageName
  ! "  setDisplayName
  $ %  setName
  ' (  messageToolTip
  * +  setToolTipText - java/lang/Runnable N(Lorg/openide/text/CloneableEditor;Lorg/openide/text/CloneableEditorSupport;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/text/CloneableEditor$1; MethodParameters 	Signature run name Ljava/lang/String; 
SourceFile CloneableEditor.java EnclosingMethod =  
updateName InnerClasses      ,  	 
           .  /   C     *+� *,� *� �    0      � 1        2 3         4   	 � 	 5      6   /   �     7*� � L*� +� *� � L*� +�  *� +� #*� *� � &� )�    0      � � � �  � (� 6� 1       7 2 3    / 7 8   9    : ;     < >   
        