����   4 �	      'org/openide/filesystems/JarFileSystem$1 this$0 'Lorg/openide/filesystems/JarFileSystem;	   	 
 	val$aRoot Ljava/io/File;
      )org/openide/filesystems/FileChangeAdapter <init> ()V
      %org/openide/filesystems/JarFileSystem 
access$000 Q(Lorg/openide/filesystems/JarFileSystem;)Lorg/openide/util/RequestProcessor$Task;
     
access$100 W(Lorg/openide/filesystems/JarFileSystem;Z)Lorg/openide/filesystems/JarFileSystem$Cache;
       'org/openide/filesystems/FileRenameEvent getFile &()Lorg/openide/filesystems/FileObject;
 " # $ % &  org/openide/filesystems/FileUtil toFile 4(Lorg/openide/filesystems/FileObject;)Ljava/io/File;
 ( ) * + , java/io/File equals (Ljava/lang/Object;)Z
  . / 0 
access$200 :(Lorg/openide/filesystems/JarFileSystem;Ljava/io/File;ZZ)V 2 java/io/IOException
 4 5 6 7 8 $org/openide/filesystems/ExternalUtil 	exception (Ljava/lang/Exception;)V :  java/beans/PropertyVetoException
  < =   getRoot
  ? @ A existingFileObjects =(Lorg/openide/filesystems/FileObject;)Ljava/util/Enumeration; C D E F G java/util/Enumeration hasMoreElements ()Z C I J K nextElement ()Ljava/lang/Object; M &org/openide/filesystems/AbstractFolder	 L O P Q 	validFlag Z S !org/openide/filesystems/FileEvent
 R U  V '(Lorg/openide/filesystems/FileObject;)V
 L X Y Z fileDeleted0 &(Lorg/openide/filesystems/FileEvent;)V
  \ ]   refreshRoot 8(Lorg/openide/filesystems/JarFileSystem;Ljava/io/File;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/filesystems/JarFileSystem$1; MethodParameters fileChanged fe #Lorg/openide/filesystems/FileEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; fileRenamed ,(Lorg/openide/filesystems/FileRenameEvent;)V iex Ljava/io/IOException; pvex "Ljava/beans/PropertyVetoException; )Lorg/openide/filesystems/FileRenameEvent; f fileDeleted fo (Lorg/openide/filesystems/AbstractFolder; en Ljava/util/Enumeration; LocalVariableTypeTable >Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>; 
SourceFile JarFileSystem.java EnclosingMethod ~  
setJarFile (Ljava/io/File;ZZ)V InnerClasses � &org/openide/util/RequestProcessor$Task � !org/openide/util/RequestProcessor Task � +org/openide/filesystems/JarFileSystem$Cache Cache        	 
           ^  _   C     *+� *,� *� �    `      : a        b c         d   	 � 	  e Z  _   Y     *� � � *� � W�    `      > 
? A a        b c      f g  h     d    f   i     j    k l  _   �     2+� � !M,� (,*� � '� *� ,� -� N-� 3� N-� 3�   ! $ 1  ! , 9  `   * 
  E G I !N $J %K )N ,L -M 1P a   4  %  m n  -  o p    2 b c     2 f q   * r 
  h    � $    (  1G 9 d    f   i     j    s Z  _   �     ?*� *� � ;� >M,� B � !,� H � LN-� N-� RY-� T� W���*� � [W�    `   "   T V W "X 'Y 3Z 6\ >] a   *  "  t u    ? b c     ? f g   0 v w  x      0 v y  h   	 �  C& d    f   i     j    z    { |     } �            � � �  �  � 
