Êþº¾   4 ¸
      "org/openide/loaders/FolderInstance <init> #(Lorg/openide/loaders/DataFolder;)V  java/lang/ref/WeakReference
  
   (Ljava/lang/Object;)V	      "org/openide/loaders/DataLdrActions ref Ljava/lang/ref/Reference;  -org/openide/loaders/DataLdrActions$1DoTheWork
     O(Lorg/openide/loaders/DataLdrActions;[Lorg/openide/util/actions/SystemAction;)V	     RP #Lorg/openide/util/RequestProcessor;
       !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;	  " # $ creation Lorg/openide/util/Task; & java/util/ArrayList
 % (  ) ()V + , - . / "org/openide/cookies/InstanceCookie instanceClass ()Ljava/lang/Class; 1 javax/swing/JSeparator
 3 4 5 6 7 java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
 % 9 : ; add (Ljava/lang/Object;)Z =  java/lang/ClassNotFoundException
  ? @ A err ()Ljava/util/logging/Logger;	 C D E F G java/util/logging/Level INFO Ljava/util/logging/Level; I "Cannot resolve registration of {0}
 K L M N O java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V	 C Q R G CONFIG
 < T U V 
getMessage ()Ljava/lang/String;
 K X N Y C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V + [ \ ] instanceCreate ()Ljava/lang/Object; _ javax/swing/Action
 a b c d ] java/lang/ref/Reference get f org/openide/loaders/DataLoader
 e h i j setSwingActions (Ljava/util/List;)V
 % l m n toArray (([Ljava/lang/Object;)[Ljava/lang/Object;
 p q r s ) org/openide/util/Task waitFinished
  q v Loader Actions
  x  y (Ljava/lang/String;)V 	Signature ;Ljava/lang/ref/Reference<Lorg/openide/loaders/DataLoader;>; C(Lorg/openide/loaders/DataFolder;Lorg/openide/loaders/DataLoader;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/loaders/DataLdrActions; f  Lorg/openide/loaders/DataFolder; l  Lorg/openide/loaders/DataLoader; MethodParameters 
setActions +([Lorg/openide/util/actions/SystemAction;)V arr ([Lorg/openide/util/actions/SystemAction; dtw /Lorg/openide/loaders/DataLdrActions$1DoTheWork; createInstance 9([Lorg/openide/cookies/InstanceCookie;)Ljava/lang/Object; clazz Ljava/lang/Class; cnf "Ljava/lang/ClassNotFoundException; action Ljava/lang/Object; i I cookies %[Lorg/openide/cookies/InstanceCookie; list Ljava/util/ArrayList; LocalVariableTypeTable Ljava/lang/Class<*>; +Ljava/util/ArrayList<Ljavax/swing/Action;>; StackMapTable 
Exceptions ¡ java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; acceptFolder F(Lorg/openide/loaders/DataFolder;)Lorg/openide/cookies/InstanceCookie; df postCreationTask -(Ljava/lang/Runnable;)Lorg/openide/util/Task; run Ljava/lang/Runnable; t ­ java/lang/Object ¯ java/lang/Throwable <clinit> 
SourceFile DataLdrActions.java InnerClasses 	DoTheWork ¶ &org/openide/util/RequestProcessor$Task Task 0          z    {  # $   
        |  }   X     *+· *» Y,· 	µ ±    ~       +  -  .                             	       !    }   \     » Y*+· M*² ,¶ µ !±    ~        
                       
               }       » %Y· 'M>+¾¢ m+2¹ * :0¶ 2 ,¶ 8W§ J§ (:*¶ >² BH+2¶ J*¶ >² P¶ S¶ W§ "+2¹ Z :Á ^ ,À ^¶ 8W§ §ÿ*´ ¶ `À eN-Æ -,¶ g,½ ^¶ k°   * 0 <  ~   R           $  *  -  0  2  A  R  U  _  g  q  t  z    ¡  ¢  ¥    R       2 #    _     
 p                                              ý 
 %"B <$ú ü  e        <        ¢     £    ¤ ¥  }   6     °    ~       ª                ¦       ¦    § ¨  }   <     ² +¶ °    ~       ¯                © ª      ©    s )  }   ­      *YMÂ*´ !L,Ã§ N,Ã-¿+Æ +¶ o*· t±             ~       ´  µ 	 ¶  ¸  ¹  ¼  ½       	  « $            « $     ! ÿ     ¬  ®ÿ    p    ° )  }   %      » Yu· w³ ±    ~       (  ±    ² ³        ´   µ  · 