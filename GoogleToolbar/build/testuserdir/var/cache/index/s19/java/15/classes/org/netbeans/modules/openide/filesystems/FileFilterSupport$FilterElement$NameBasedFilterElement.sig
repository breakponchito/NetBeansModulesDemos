Êþº¾   4 
      Horg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement <init> A(Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$1;)V	  	 
   _org/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$NameBasedFilterElement name Ljava/lang/String;	     ext	     	substring Z	     
ignoreCase  java/lang/StringBuilder
     ()V  (?i)
     ! append -(Ljava/lang/String;)Ljava/lang/StringBuilder; # .*
 % & ' ( ) java/lang/String isEmpty ()Z + \.
  - . / toString ()Ljava/lang/String;
 1 2 3 4 5 java/util/regex/Pattern compile -(Ljava/lang/String;)Ljava/util/regex/Pattern;	  7 8 9 p Ljava/util/regex/Pattern; ;   = .
 ? @ A B / java/io/File getName
 1 D E F matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
 H I J K ) java/util/regex/Matcher matches M java/lang/NullPointerException
 L 	 P Q R S T Yorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult 	DIFFERENT [Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult;
 % V W X equals (Ljava/lang/Object;)Z	 P Z [ T THE_SAME
  ] ^ _ compareFlags ¾(Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$NameBasedFilterElement;)Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult;
 % a b c equalsIgnoreCase (Ljava/lang/String;)Z
 % e f g charAt (I)C
 i j k l m java/lang/Character isLowerCase (C)Z	 P o p T BETTER	 P r s T WORSE )(Ljava/lang/String;Ljava/lang/String;ZZ)V Code LineNumberTable LocalVariableTable this aLorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$NameBasedFilterElement; sb Ljava/lang/StringBuilder; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; accept (Ljava/io/File;)Z f Ljava/io/File; compare §(Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement;)Lorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement$ComparisonResult; e JLorg/netbeans/modules/openide/filesystems/FileFilterSupport$FilterElement; x 
SourceFile FileFilterSupport.java InnerClasses  :org/netbeans/modules/openide/filesystems/FileFilterSupport FilterElement  <org/netbeans/modules/openide/filesystems/FileFilterSupport$1 NameBasedFilterElement ComparisonResult                                  8 9      t  u  2     r*· *+µ *,µ *µ *µ » Y· : ¶ W "¶ W+¶ W "¶ W,¶ $ *¶ W,¶ W*¶ ,¸ 0µ 6±    v   J   m n 
o p q r #s (t 0v 4w <y Cz G{ O} V~ ^ e q w   >    r x y     r      r      r      r    # O z {  |    ÿ 0   % %    }                 B /  u        :» Y· *´ ¶ *´ ¶ $ :§ » Y· <¶ *´ ¶ ¶ ,¶ ¶ ,°    v       w       : x y   |    ] ÿ      % ~            u   C     *´ 6+¶ >¶ C¶ G¬    v       w        x y         }       ~            u  K     ¸+Ç » LY· N¿+Á  ² O°+À M*´ ,´ ¶ U 1*´ ,´ ¶ U #*´ ,´   *´ ,´   ² Y°*,· \°*´ ,´ ¶ ` Q*´ ,´ ¶ ` C*´  
,´  5*´ ,´   $*´ ,´   *´ ¶ d¸ h ² n°² q°*,· \°² O°    v   F         8 N R X n   ¢ ¦£ ª¥ ®¨ ´« w        ¸ x y     ¸       y  |    
ü : )' }       ~         ^ _  u   ¡     J*´ +´   *´  ² n°*´ +´   *´  ² n°*´ +´  *´ +´  ² O°² q°    v      ° ² ³ (µ ,¶ B¸ Fº w       J x y     J  y  |     }                "    
           
 P  @