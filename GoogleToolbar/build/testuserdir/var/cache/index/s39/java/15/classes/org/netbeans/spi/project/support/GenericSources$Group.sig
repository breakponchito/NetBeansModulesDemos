Êþº¾   4 
      java/lang/Object <init> ()V	  	 
   5org/netbeans/spi/project/support/GenericSources$Group p "Lorg/netbeans/api/project/Project;	     
rootFolder $Lorg/openide/filesystems/FileObject;	     name Ljava/lang/String;	     displayName	     icon Ljavax/swing/Icon;	     
openedIcon
   ! " # $  org/openide/filesystems/FileUtil 
isParentOf K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)Z
 & ' ( ) * "org/openide/filesystems/FileObject isFolder ()Z , - . / 0  org/netbeans/api/project/Project getProjectDirectory &()Lorg/openide/filesystems/FileObject;
 2 3 4 5 6 'org/netbeans/api/project/ProjectManager 
getDefault +()Lorg/netbeans/api/project/ProjectManager;
 2 8 9 : 	isProject '(Lorg/openide/filesystems/FileObject;)Z
 < = > ? @ 'org/netbeans/api/project/FileOwnerQuery getOwner H(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/project/Project;
 B C D E F )org/netbeans/api/queries/SharabilityQuery getSharability ](Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/queries/SharabilityQuery$Sharability;	 H I J K L 5org/netbeans/api/queries/SharabilityQuery$Sharability NOT_SHARABLE 7Lorg/netbeans/api/queries/SharabilityQuery$Sharability; N java/lang/StringBuilder
 M  Q GenericSources.Group[name=
 M S T U append -(Ljava/lang/String;)Ljava/lang/StringBuilder; W ,rootFolder=
 M Y T Z -(Ljava/lang/Object;)Ljava/lang/StringBuilder; \ ]
 M ^ _ ` toString ()Ljava/lang/String; b $org/netbeans/api/project/SourceGroup (Lorg/netbeans/api/project/Project;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/lang/String;Ljavax/swing/Icon;Ljavax/swing/Icon;)V Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/spi/project/support/GenericSources$Group; MethodParameters getRootFolder #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getName getDisplayName getIcon (Z)Ljavax/swing/Icon; opened Z StackMapTable u javax/swing/Icon contains file addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V l #Ljava/beans/PropertyChangeListener; removePropertyChangeListener 
SourceFile GenericSources.java InnerClasses  /org/netbeans/spi/project/support/GenericSources Group Sharability 0    a                                	    c  d   ¨     &*· *+µ *,µ *-µ *µ *µ *µ ±    e   "    q  r 	 s  t  u  v  w % x f   H    & g h     &      &      &      &      &      &    i                       j 0  d   /     *´ °    e       | f        g h   k     l    m `  d   /     *´ °    e        f        g h   k     l    n `  d   /     *´ °    e        f        g h   k     l    o p  d   Q      
*´ § *´ °    e        f        g h      q r  s    C t i    q   k     l    v :  d   ¬     R+*´ ¥ *´ +¸  ¬+¶ % +*´ ¹ + ¥ ¸ 1+¶ 7 ¬+¸ ;*´ ¥ ¬+¸ A² G¥ § ¬    e            3  5  @  B  f       R g h     R w   s    @ i    w   k     l    x y  d   5      ±    e         f        g h      z {  i    z   k     l    | y  d   5      ±    e       ¥ f        g h      z {  i    z   k     l    _ `  d   R     (» MY· OP¶ R*´ ¶ RV¶ R*´ ¶ X[¶ R¶ ]°    e       © f       ( g h   k     l    }    ~          H B @