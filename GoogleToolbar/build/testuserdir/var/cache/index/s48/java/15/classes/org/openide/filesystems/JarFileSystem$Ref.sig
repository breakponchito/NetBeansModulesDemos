����   4 0	      )org/openide/filesystems/JarFileSystem$Ref this$0 'Lorg/openide/filesystems/JarFileSystem;
  	 
   org/openide/util/BaseUtilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
      java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
      %org/openide/filesystems/JarFileSystem access$1100 *(Lorg/openide/filesystems/JarFileSystem;)V  java/lang/Runnable N(Lorg/openide/filesystems/JarFileSystem;Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/filesystems/JarFileSystem$Ref; fo $Lorg/openide/filesystems/FileObject; LocalVariableTypeTable 0Lorg/openide/filesystems/JarFileSystem$Ref<TT;>; TT; MethodParameters 	Signature (TT;)V run ()V ^<T:Lorg/openide/filesystems/FileObject;>Ljava/lang/ref/WeakReference<TT;>;Ljava/lang/Runnable; 
SourceFile JarFileSystem.java InnerClasses Ref                    f     *+� *,� � �          � � �                 ! "  #         $      ! %  &   	  !   '    (  ) *     H     *� � �       
   � �              #         $    '    + ,    - .   
    / 