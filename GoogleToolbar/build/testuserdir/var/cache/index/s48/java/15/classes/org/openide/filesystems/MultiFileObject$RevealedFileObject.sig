����   4!	      :org/openide/filesystems/MultiFileObject$RevealedFileObject this$0 )Lorg/openide/filesystems/MultiFileObject;
  	 
   "org/openide/filesystems/FileObject <init> ()V	     maskFile $Lorg/openide/filesystems/FileObject;	     delegate
     getAttribute &(Ljava/lang/String;)Ljava/lang/Object;
     isValid ()Z
     delete
    ! " 
getNameExt ()Ljava/lang/String;
 $ % & ' ( 'org/openide/filesystems/MultiFileObject getFileObject 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  * + " getName
  - . " getExt 0 java/io/IOException 2 Unsupported oepration
 / 4  5 (Ljava/lang/String;)V
  7 8 9 copy n(Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  ; < " toString
  > ? " getPath
  A B C getPackageNameExt (CC)Ljava/lang/String;
  E F G getPackageName (C)Ljava/lang/String;
 $ I J K getFileSystem &()Lorg/openide/filesystems/FileSystem;
  M N  isFolder
  P Q R lastModified ()Ljava/util/Date;
  T U  isRoot
  W X  isData
  Z [ \ 	existsExt (Ljava/lang/String;)Z
  ^ _ ` 	getLookup ()Lorg/openide/util/Lookup;
  b c d getAttributes ()Ljava/util/Enumeration;
  f g  isHasExtOverride
  i j \ hasExtOverride
  l m n addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V
  p q n removeFileChangeListener
  s t n addRecursiveListener
  v w n removeRecursiveListener
  y z " getMIMEType
  | z } '([Ljava/lang/String;)Ljava/lang/String;
   � � getSize ()J
  � � � getInputStream ()Ljava/io/InputStream;
  � � � asBytes ()[B
  � � � asText &(Ljava/lang/String;)Ljava/lang/String;
  � � "
  � � � asLines ()Ljava/util/List;
  � � � $(Ljava/lang/String;)Ljava/util/List;
  � �  isLocked
 � � � � d org/openide/util/Enumerations empty
  � ' � J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
  %
  � �  
isReadOnly
  � �  canRead
  � � � refresh (Z)V
  � � 
  � �  	isVirtual
 � � � � � java/lang/Object hashCode ()I
 � � � � equals (Ljava/lang/Object;)Z
  � � � call &()Lorg/openide/filesystems/FileObject; � java/util/concurrent/Callable t(Lorg/openide/filesystems/MultiFileObject;Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this <Lorg/openide/filesystems/MultiFileObject$RevealedFileObject; parent MethodParameters attrName Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable 
Exceptions rename I(Lorg/openide/filesystems/FileLock;Ljava/lang/String;Ljava/lang/String;)V lock "Lorg/openide/filesystems/FileLock; name ext target move �(Lorg/openide/filesystems/FileLock;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; separatorChar C 
extSepChar � 1org/openide/filesystems/FileStateInvalidException 	getParent %(Lorg/openide/filesystems/FileLock;)V setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V value Ljava/lang/Object; 	Signature -()Ljava/util/Enumeration<Ljava/lang/String;>; fcl ,Lorg/openide/filesystems/FileChangeListener; fireFileDataCreatedEvent =(Ljava/util/Enumeration;Lorg/openide/filesystems/FileEvent;)V en Ljava/util/Enumeration; fe #Lorg/openide/filesystems/FileEvent; LocalVariableTypeTable ELjava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>; k(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileEvent;)V fireFileFolderCreatedEvent fireFileChangedEvent fireFileDeletedEvent fireFileAttributeChangedEvent F(Ljava/util/Enumeration;Lorg/openide/filesystems/FileAttributeEvent;)V ,Lorg/openide/filesystems/FileAttributeEvent; t(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileAttributeEvent;)V fireFileRenamedEvent C(Ljava/util/Enumeration;Lorg/openide/filesystems/FileRenameEvent;)V )Lorg/openide/filesystems/FileRenameEvent; q(Ljava/util/Enumeration<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileRenameEvent;)V withinMIMETypes [Ljava/lang/String; � java/io/FileNotFoundException encoding &()Ljava/util/List<Ljava/lang/String;>; 8(Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>; getOutputStream :(Lorg/openide/filesystems/FileLock;)Ljava/io/OutputStream; $()Lorg/openide/filesystems/FileLock; setImportant b Z getChildren '()[Lorg/openide/filesystems/FileObject; (Z)Ljava/util/Enumeration; rec A(Z)Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>; 
getFolders getData relativePath createFolder 
createData createAndOpen *(Ljava/lang/String;)Ljava/io/OutputStream; canWrite expected o other ()Ljava/lang/Object; java/lang/Exception iLorg/openide/filesystems/FileObject;Ljava/util/concurrent/Callable<Lorg/openide/filesystems/FileObject;>; 
SourceFile MultiFileObject.java InnerClasses RevealedFileObject 0    �                E   �  �   ^     *+� *� *,� *-� �    �       	    �         � �      �         �     �          �   =     	*� +� �    �      $ �       	 � �     	 � �  �    �   �     �    � �  �   [      *� � � 
*� � *� *� � � #�    �      . 
/ 1 �         � �   �     �     / �     �    + "  �   2     *� � )�    �      6 �        � �   �     �    . "  �   2     *� � ,�    �      ; �        � �   �     �    � �  �   R     
� /Y1� 3�    �      @ �   *    
 � �     
 � �    
 � �    
 � �  �     / �    �   �   �   �     �    8 9  �   S     *� +,-� 6�    �      E �   *     � �      �      � �     � �  �     / �    �   �   �   �     �    � �  �   \     
� /Y1� 3�    �      J �   4    
 � �     
 � �    
 �     
 � �    
 � �  �     / �    �   �   �   �   �     �    < "  �   2     *� � :�    �      O �        � �   �     �    ? "  �   2     *� � =�    �      T �        � �   �     �    B C  �   H     
*� � @�    �      Y �        
 � �     
 � �    
 � �  �   	 �   �   �     �    F G  �   =     	*� � D�    �      ^ �       	 � �     	 � �  �    �   �     �    ! "  �   2     *� � �    �      c �        � �   �     �    J K  �   2     *� � H�    �      h �        � �   �     � �     �    � �  �   /     *� �    �      m �        � �   �     �    N   �   2     *� � L�    �      r �        � �   �     �    Q R  �   2     *� � O�    �      w �        � �   �     �    U   �   2     *� � S�    �      | �        � �   �     �    X   �   2     *� � V�    �      � �        � �   �     �       �   ,     �    �      � �        � �   �     �    [ \  �   =     	*� +� Y�    �      � �       	 � �     	 � �  �    �   �     �     �  �   >     
� /Y1� 3�    �      � �       
 � �     
 � �  �     / �    �   �     �    _ `  �   2     *� � ]�    �      � �        � �   �     �    � �  �   H     
� /Y1� 3�    �      � �        
 � �     
 � �    
 � �  �     / �   	 �   �   �     �    c d  �   2     *� � a�    �      � �        � �   �    � �     �     g   �   2     *� � e�    �      � �        � �   �     �     j \  �   =     	*� +� h�    �      � �       	 � �     	 � �  �    �   �     �    m n  �   A     	*� +� k�    �   
   � � �       	 � �     	 � �  �    �   �     �    q n  �   A     	*� +� o�    �   
   � � �       	 � �     	 � �  �    �   �     �    t n  �   A     	*� +� r�    �   
   � � �       	 � �     	 � �  �    �   �     �    w n  �   A     	*� +� u�    �   
   � � �       	 � �     	 � �  �    �   �     �    � �  �   Q      �    �      � �         � �      � �     � �  �        � �  �   	 �   �   �    � �     �    � �  �   Q      �    �      � �         � �      � �     � �  �        � �  �   	 �   �   �    � �     �    � �  �   Q      �    �      � �         � �      � �     � �  �        � �  �   	 �   �   �    � �     �    � �  �   Q      �    �      � �         � �      � �     � �  �        � �  �   	 �   �   �    � �     �    � �  �   Q      �    �      � �         � �      � �     � �  �        � �  �   	 �   �   �    � �     �    � �  �   Q      �    �      � �         � �      � �     � �  �        � �  �   	 �   �   �    � �     �    z "  �   2     *� � x�    �      � �        � �   �     �   � z }  �   =     	*� +� {�    �      � �       	 � �     	 � �  �    �   �     �    � �  �   2     *� � ~�    �      � �        � �   �     �    � �  �   2     *� � ��    �      � �        � �   �     � �     �    � �  �   2     *� � ��    �      � �        � �   �     / �     �    � �  �   =     	*� +� ��    �      � �       	 � �     	  �  �     / �       �     �    � "  �   2     *� � ��    �      � �        � �   �     / �     �    � �  �   2     *� � ��    �      � �        � �   �     / �    �     �    � �  �   =     	*� +� ��    �       �       	 � �     	  �  �     / �       �    �     �     �   >     
� /Y1� 3�    �       �       
 � �     
 � �  �     / �    �   �     �    �  �   4     
� /Y1� 3�    �       �       
 � �   �     / �     �    �   �   2     *� � ��    �       �        � �   �     �    �  �   5      �    �       �        � �       �      �     �   	
  �   /     � �    �       �        � �   �     �   	  �   8     � ��    �       �        � �       �      �    �     �     �   8     � ��    �      $ �        � �       �      �    �     �     �   8     � ��    �      ) �        � �       �      �    �     �    ' �  �   e     *� � L� *� +,� ���    �      . 
/ 1 �         � �      � �     � �  �     �   	 �   �   �     �    ' (  �   Z     *� � L� *� +� ���    �      7 
8 : �        � �      �  �     �      �     �    (  �   >     
� /Y1� 3�    �      @ �       
 � �     
 � �  �     / �    �   �     �    �  �   H     
� /Y1� 3�    �      E �        
 � �     
 � �    
 � �  �     / �   	 �   �   �     �    (  �   >     
� /Y1� 3�    �      J �       
 � �     
 � �  �     / �    �   �     �     �   >     
� /Y1� 3�    �      O �       
 � �     
 � �  �     / �    �   �     �    �   �   2     *� � ��    �      T �        � �   �     �      �   ,     �    �      Y �        � �   �     �    �   �   2     *� � ��    �      ^ �        � �   �     �    � �  �   A     	*� � ��    �   
   c d �       	 � �     	  �      �     �    �   �   6     *� � ��    �   
   h i �        � �   �     �    �   �   2     *� � ��    �      m �        � �   �     �    � �  �   8      �*� � �x��    �      q �        � �    � �  �   �     0+� � �+� M,� *� � �� ,� *� � �� � �    �      u v 	x y �        0 � �     0 �   " �  �    	� $ @ �     A �  �   /     *� ��    �       �        � �   �     �     �    �         
   $  