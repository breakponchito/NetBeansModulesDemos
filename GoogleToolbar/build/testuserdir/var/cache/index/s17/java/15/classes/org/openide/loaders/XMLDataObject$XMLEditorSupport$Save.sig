����   4 0	      7org/openide/loaders/XMLDataObject$XMLEditorSupport$Save this$0 4Lorg/openide/loaders/XMLDataObject$XMLEditorSupport;
  	 
   java/lang/Object <init> ()V
      2org/openide/loaders/XMLDataObject$XMLEditorSupport saveDocument
     getDataObject "()Lorg/openide/loaders/DataObject;
      org/openide/loaders/DataObject setModified (Z)V  org/openide/cookies/SaveCookie 7(Lorg/openide/loaders/XMLDataObject$XMLEditorSupport;)V Code LineNumberTable LocalVariableTable this 9Lorg/openide/loaders/XMLDataObject$XMLEditorSupport$Save; MethodParameters save 
Exceptions ( java/io/IOException 
SourceFile XMLDataObject.java InnerClasses - !org/openide/loaders/XMLDataObject XMLEditorSupport Save                     >     
*+� *� �           � !       
 " #     
    $    �  %      E     *� � *� � � �           � � � !        " #   &     '  )    * +      , . 
   /  