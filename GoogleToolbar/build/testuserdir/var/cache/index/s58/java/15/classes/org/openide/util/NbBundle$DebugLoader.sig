Êþº¾   4 
      java/lang/ClassLoader <init> (Ljava/lang/ClassLoader;)V	  	 
   %org/openide/util/NbBundle$DebugLoader knownIDs Ljava/util/Map;      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  java/lang/Integer	     count I
     valueOf (I)Ljava/lang/Integer;      put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	 " # $ % & java/lang/System err Ljava/io/PrintStream; ( java/lang/StringBuilder
 ' *  + ()V - NbBundle trace: #
 ' / 0 1 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ' 3 0 4 -(Ljava/lang/Object;)Ljava/lang/StringBuilder; 6  = 
 ' 8 9 : toString ()Ljava/lang/String;
 < = > ? @ java/io/PrintStream println (Ljava/lang/String;)V
  B C D intValue ()I	  F G  existing I java/lang/ref/Reference
 H K  L ()Ljava/lang/Object;
   O java/lang/ref/WeakReference
 N Q  R (Ljava/lang/Object;)V
  T U V getResourceAsStream )(Ljava/lang/String;)Ljava/io/InputStream; X .properties
 Z [ \ ] ^ java/lang/String endsWith (Ljava/lang/String;)Z
  ` a b getID (Ljava/lang/String;)I d Bundle
 Z f g b indexOf i 6org/openide/util/NbBundle$DebugLoader$DebugInputStream
 h k  l (Ljava/io/InputStream;IZ)V n java/util/HashMap
 m * q java/util/WeakHashMap
 p * 	Signature 6Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>; ZLjava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/Reference<Ljava/lang/ClassLoader;>;>; Code LineNumberTable LocalVariableTable this 'Lorg/openide/util/NbBundle$DebugLoader; cl Ljava/lang/ClassLoader; MethodParameters i Ljava/lang/Integer; name Ljava/lang/String; StackMapTable  java/lang/Object  java/lang/Throwable 0(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader; dl r Ljava/lang/ref/Reference; normal LocalVariableTypeTable 2Ljava/lang/ref/Reference<Ljava/lang/ClassLoader;>; id loc Z base Ljava/io/InputStream;  java/io/InputStream #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile NbBundle.java InnerClasses  org/openide/util/NbBundle DebugLoader DebugInputStream 0      
         s    t  G   s    u      v   >     *+· ±    w   
   M P x        y z      { |  }    {   
 a b  v   Þ     ]² YLÂ² *¹  À M,Ç =² `Y³ ¸ M² *,¹  W² !» 'Y· ),¶ .,¶ 25¶ .*¶ .¶ 7¶ ;,¶ A+Ã¬N+Ã-¿   W X   X [ X    w   "   S T V W $X /Y Q\ X] x      E ~     ]         ý Q  ÿ   Z    }       	    v       M² EYLÂ² E*¹  À HM,Æ ,¶ JÀ N-Æ -+Ã°» Y*· MN² E*» NY-· P¹  W-+Ã°:+Ã¿   & F   ' E F   F J F    w   * 
  b c e f h #j 'r 0s Bu Fv x   *     |   3    0   |    M  |         3        ý '  Hÿ       }        U V  v   ¾     9*+· SM,Ç °+W¶ Y %+¸ _>+c¶ e § 6» hY,· j°,°    w   "   z | 
}    + 7 x   4       +       9 y z     9     3        ü  ü @ú  }                 +  v   9      ³ » mY· o³ » pY· r³ E±    w      B G J                h   