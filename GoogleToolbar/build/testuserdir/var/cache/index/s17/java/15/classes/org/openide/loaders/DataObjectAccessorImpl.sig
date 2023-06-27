����   4 M
      7org/netbeans/modules/openide/loaders/DataObjectAccessor <init> ()V
  	 
   org/openide/loaders/DataObject 
copyRename f(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/loaders/DataObject;
      #org/openide/loaders/MultiDataObject getCookieSet ()Lorg/openide/nodes/CookieSet;	      "org/openide/loaders/FolderInstance 	PROCESSOR #Lorg/openide/util/RequestProcessor;
      !org/openide/util/RequestProcessor isRequestProcessorThread ()Z
   ! " #  org/openide/loaders/FolderList isFolderRecognizerThread
  % &  precreateInstances
 ( ) * + , +org/openide/loaders/DataObject$CreateAction getOrigName ()Ljava/lang/String; . *org/openide/loaders/DataObjectAccessorImpl Code LineNumberTable LocalVariableTable this ,Lorg/openide/loaders/DataObjectAccessorImpl; �(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/loaders/DataObject; dob  Lorg/openide/loaders/DataObject; f  Lorg/openide/loaders/DataFolder; name Ljava/lang/String; ext 
Exceptions > java/io/IOException MethodParameters D(Lorg/openide/loaders/MultiDataObject;)Lorg/openide/nodes/CookieSet; %Lorg/openide/loaders/MultiDataObject; isInstancesThread StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; '(Lorg/openide/loaders/FolderInstance;)V fi $Lorg/openide/loaders/FolderInstance; 
SourceFile DataObjectAccessorImpl.java InnerClasses CreateAction 0 -            /   /     *� �    0       " 1        2 3     4  /   [     	+,-� �    0       % 1   4    	 2 3     	 5 6    	 7 8    	 9 :    	 ; :  <     = ?    5   7   9   ;     @  /   9     +� �    0       ) 1        2 3      5 A  ?    5    B   /   K     � � � 	� � � �    0       . 1        2 3   C    @ D     E    & F  /   =     +� $�    0   
    3  4 1        2 3      G H  ?    G   D     E    + ,  /   .     � '�    0       8 1        2 3   D     E    I    J K   
  (  L 