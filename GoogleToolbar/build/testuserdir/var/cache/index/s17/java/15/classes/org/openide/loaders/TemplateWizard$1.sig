����   4 3	      $org/openide/loaders/TemplateWizard$1 this$0 $Lorg/openide/loaders/TemplateWizard;	   	 
 val$obj  Lorg/openide/loaders/DataObject;
      java/lang/Object <init> ()V
      "org/openide/loaders/TemplateWizard setTemplateImpl $(Lorg/openide/loaders/DataObject;Z)V
     run ()Ljava/lang/Void;  org/openide/util/Mutex$Action G(Lorg/openide/loaders/TemplateWizard;Lorg/openide/loaders/DataObject;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/loaders/TemplateWizard$1; MethodParameters 	Signature #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/lang/Object; CLjava/lang/Object;Lorg/openide/util/Mutex$Action<Ljava/lang/Void;>; 
SourceFile TemplateWizard.java EnclosingMethod - . setTemplate #(Lorg/openide/loaders/DataObject;)V InnerClasses 1 org/openide/util/Mutex Action        	 
                C     *+� *,� *� �           �          ! "         #   	 � 	 $            <     *� *� � �       
    �  �          ! "   %     &  A  '     /     *� �           �          ! "   %     &    $    ( )    * +     , /             0 2	