Êþº¾   4 ¥
      java/lang/Object <init> ()V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      &org/openide/filesystems/RefreshRequest system Ljava/lang/ref/Reference;	     refreshTime I	     	REFRESHER #Lorg/openide/util/RequestProcessor;  java/lang/Thread
      ! !org/openide/util/RequestProcessor post @(Ljava/lang/Runnable;II)Lorg/openide/util/RequestProcessor$Task;	  # $ % task (Lorg/openide/util/RequestProcessor$Task;
  ' (  wait * java/lang/InterruptedException
  , - . doLoop (I)V
  0 1  	notifyAll
 3 4 5 6 7 java/lang/ref/Reference get ()Ljava/lang/Object;
 9 : ; < . &org/openide/util/RequestProcessor$Task schedule > *org/openide/filesystems/AbstractFileSystem	  @ A B en Ljava/util/Enumeration; D E F G H java/util/Enumeration hasMoreElements ()Z
  J K L existingFolders E(Lorg/openide/filesystems/AbstractFileSystem;)Ljava/util/Enumeration; N &org/openide/filesystems/AbstractFolder
 P Q R S T org/openide/util/NbCollections checkedEnumerationByFilter B(Ljava/util/Enumeration;Ljava/lang/Class;Z)Ljava/util/Enumeration; D V W 7 nextElement
 M Y Z H isFolder
 M \ ] H isInitialized
 M _ `  refresh
 = b c d getAbstractRoot .()Lorg/openide/filesystems/AbstractFileObject;
 = f g h existingFileObjects A(Lorg/openide/filesystems/AbstractFolder;)Ljava/util/Enumeration; j java/lang/StringBuilder
 i  m RefreshRequest for 
 i o p q append -(Ljava/lang/String;)Ljava/lang/StringBuilder; s gone FS
 i u p v -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 i x y z toString ()Ljava/lang/String; | FS refresher
  ~   (Ljava/lang/String;)V  java/lang/Runnable REFRESH_COUNT ConstantValue    	Signature GLjava/lang/ref/Reference<Lorg/openide/filesystems/AbstractFileSystem;>; ALjava/util/Enumeration<Lorg/openide/filesystems/AbstractFolder;>; 0(Lorg/openide/filesystems/AbstractFileSystem;I)V Code LineNumberTable LocalVariableTable this (Lorg/openide/filesystems/RefreshRequest; fs ,Lorg/openide/filesystems/AbstractFileSystem; ms MethodParameters getRefreshTime ()I stop StackMapTable run t  java/lang/Throwable fo (Lorg/openide/filesystems/AbstractFolder; i l(Lorg/openide/filesystems/AbstractFileSystem;)Ljava/util/Enumeration<+Lorg/openide/filesystems/FileObject;>;  java/io/Serializable <clinit> 
SourceFile RefreshRequest.java InnerClasses Task 0               
               A B             $ %           q     #*· *» Y+· 	µ *µ *² *¶ µ "±           5  6  7  8 " 9         #       #      #       	              /     *´ ¬           >             !       h     *µ *´ "Ç *¶ &§ L±     )         D  F  J  L  K  N                 S )          	   ¥*YNÂ*´ < -Ã±*´ "M*µ "-Ã§ 
:-Ã¿*· +*YNÂ*,µ "*¶ /-Ã§ 
:-Ã¿*´ Æ *´ ¶ 2Æ ,¶ 8§ J*µ § B:*Y:Â*,µ "*¶ /Ã§ :Ã¿*´ Æ *´ ¶ 2Æ ,¶ 8§ *µ ¿± 	            #    / : =   = A =   & + e   l x {   {  {   e g e       f    W  Z 	 \  ^  a  e  f & i + k / n 4 p 8 q D t U u ] w b y e k l n q p u q  t  u  w ¡ y ¤ z    4  	      
  %    ¥     &     &   %     s þ   ÿ        ÿ    9  ÿ    9   ú G ÿ    9       ú ÿ    9    - .    9     *´ ¶ 2À =M,Ç ±*´ ?Æ *´ ?¹ C  *,¸ IM¸ Oµ ?>¢ E*´ ?¹ C  9*´ ?¹ U À M:Æ ¶ X ¶ [ ¶ ^*´  ±§ÿ»*´ ?¹ C  *µ ?±       >    }       #  1  E  S  h  m  t  u  {         4  S "    3 H                          	ü  =ü ü 4 Mú ú         
 K L     3     	**¶ a¶ e°                    	                  y z          (*´ ¶ 2À =L» iY· kl¶ n+Ç r§ +¶ t¶ w°           §  ©  ª ' ©        (             % ÿ     =  iÿ     =  i          %      » Y{· }³ ±           #  ¡    ¢ £   
  9  ¤ 