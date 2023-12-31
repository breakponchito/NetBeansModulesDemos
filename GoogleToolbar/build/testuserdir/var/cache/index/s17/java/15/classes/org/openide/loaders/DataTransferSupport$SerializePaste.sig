����   4 �	      6org/openide/loaders/DataTransferSupport$SerializePaste cookie $Lorg/openide/cookies/InstanceCookie;
  	 
   'org/openide/util/datatransfer/PasteType <init> ()V	     target  Lorg/openide/loaders/DataFolder;  PT_serialize
      org/openide/loaders/DataObject 	getString &(Ljava/lang/String;)Ljava/lang/String;  org/openide/util/HelpCtx
     (Ljava/lang/Class;)V
     ! getTargetFolder "()Lorg/openide/loaders/DataFolder; # $ % & ' "org/openide/cookies/InstanceCookie instanceName ()Ljava/lang/String;
 ) * + , - java/lang/String lastIndexOf (I)I
 ) / 0 1 length ()I
 ) 3 4 5 	substring (I)Ljava/lang/String;
 7 8 9 : ; org/openide/loaders/DataFolder getPrimaryFile &()Lorg/openide/filesystems/FileObject; = ser
 ? @ A B C  org/openide/filesystems/FileUtil findFreeFileName \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; E &org/openide/NotifyDescriptor$InputLine G SerializeBean_Text I SerializeBean_Title
 D K  L '(Ljava/lang/String;Ljava/lang/String;)V
 D N O P setInputText (Ljava/lang/String;)V	 R S T U V org/openide/NotifyDescriptor 	OK_OPTION Ljava/lang/Object;
 X Y Z [ \ org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;
 X ^ _ ` notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;
 b c d e f "org/openide/loaders/DataObjectPool getPOOL &()Lorg/openide/loaders/DataObjectPool; h 8org/openide/loaders/DataTransferSupport$SerializePaste$1
 g j  k �(Lorg/openide/loaders/DataTransferSupport$SerializePaste;Lorg/openide/loaders/DataFolder;Lorg/openide/NotifyDescriptor$InputLine;)V
 b m n o runAtomicAction X(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileSystem$AtomicAction;)V G(Lorg/openide/loaders/DataFolder;Lorg/openide/cookies/InstanceCookie;)V Code LineNumberTable LocalVariableTable this 8Lorg/openide/loaders/DataTransferSupport$SerializePaste; MethodParameters getName 
getHelpCtx ()Lorg/openide/util/HelpCtx; paste &()Ljava/awt/datatransfer/Transferable; trg name Ljava/lang/String; i I nd (Lorg/openide/NotifyDescriptor$InputLine; StackMapTable 
Exceptions � java/io/IOException 
access$200 ^(Lorg/openide/loaders/DataTransferSupport$SerializePaste;)Lorg/openide/cookies/InstanceCookie; x0 
SourceFile DataTransferSupport.java InnerClasses � 'org/openide/loaders/DataTransferSupport SerializePaste 	InputLine � /org/openide/filesystems/FileSystem$AtomicAction � "org/openide/filesystems/FileSystem AtomicAction                     p  q   Y     *� *,� *+� �    r       �  � 	 �  � s         t u               v   	        w '  q   0     � �    r       � s        t u    x y  q   4     
� Y� �    r       � s       
 t u    z {  q       s*� L*� � " M,.� (`>� ,� .� 	,� 2M+� 6,<� >M� DYF� H� � J:,� M� Q� W� ]� � a+� 6� gY*+� i� l�    r   6    �  �  �  � $ � * � 5 � ; � @ � H � N � \ � q � s   4    s t u    n |    d } ~   [  �  H + � �  �    � * 7 )� F D �     �    !  q   /     *� �    r       � s        t u   �     � � �  q   /     *� �    r       � s        � u    �    � �   "   � �  D R � 	 g       � � �	