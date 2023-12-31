����   4 7  5org/netbeans/spi/project/ProjectManagerImplementation  java/lang/Object init Q(Lorg/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack;)V MethodParameters callBack $RuntimeInvisibleParameterAnnotations -Lorg/netbeans/api/annotations/common/NonNull; getMutex ()Lorg/openide/util/Mutex; RuntimeInvisibleAnnotations `(ZLorg/netbeans/api/project/Project;[Lorg/netbeans/api/project/Project;)Lorg/openide/util/Mutex; autoSave project otherProjects findProject H(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/project/Project; 
Exceptions  java/io/IOException  "java/lang/IllegalArgumentException projectDirectory 2Lorg/netbeans/api/annotations/common/CheckForNull; 	isProject V(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/project/ProjectManager$Result; clearNonProjectCache ()V getModifiedProjects ()Ljava/util/Set; 	Signature 5()Ljava/util/Set<Lorg/netbeans/api/project/Project;>; 
isModified %(Lorg/netbeans/api/project/Project;)Z p isValid saveProject %(Lorg/netbeans/api/project/Project;)V saveAllProjects 
SourceFile !ProjectManagerImplementation.java InnerClasses . 7org/netbeans/spi/project/ProjectManagerImplementation$1 0 Lorg/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack ProjectManagerCallBack 3 .org/netbeans/api/project/ProjectManager$Result 5 'org/netbeans/api/project/ProjectManager Result                 	     
           
  �                      
   	       
    
                            	     
                           	     
           !    "      
   # $      %   	     
   & $      %   	     
   ' (            %   	     
   )          *    + ,     -     /  1  2 4 6 