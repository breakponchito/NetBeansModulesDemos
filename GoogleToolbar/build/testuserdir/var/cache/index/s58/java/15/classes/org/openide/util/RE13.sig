Êþº¾   4 ·
      java/lang/Object <init> ()V
  	 
   java/lang/String indexOf (I)I
     	substring (II)Ljava/lang/String;
     trim ()Ljava/lang/String;
     (I)Ljava/lang/String;	      org/openide/util/RE13 root [Ljava/lang/Object;  java/lang/Integer
  ! " # intValue ()I
  % & # length
  ( ) * charAt (I)C  - java/lang/StringBuilder
 , 	  0 1 2 results [Ljava/lang/String;
 , 4 5 6 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 , 8 9  toString ; java/util/ArrayList
 : 
  > ? @ placeString &(Ljava/util/List;Ljava/lang/String;I)V
  B C D compress %(Ljava/util/List;)[Ljava/lang/Object;
  F  G (I)V I J K L M java/util/List add (Ljava/lang/Object;)Z I O P Q listIterator ()Ljava/util/ListIterator; S T U V W java/util/ListIterator hasNext ()Z S Y Z [ next ()Ljava/lang/Object; S ] ^ _ set (Ljava/lang/Object;)V
 : J
  b c d nextList *(Ljava/util/ListIterator;)Ljava/util/List; I f g # size I i j k iterator ()Ljava/util/Iterator; m T n java/util/Iterator m Y q java/lang/IllegalStateException
 p 
  t u  intern w !org/openide/util/BaseUtilities$RE Code LineNumberTable LocalVariableTable this Lorg/openide/util/RE13; readPair '(Ljava/lang/String;)[Ljava/lang/String; line Ljava/lang/String; indx I StackMapTable MethodParameters convert &(Ljava/lang/String;)Ljava/lang/String; j s i last Ljava/lang/Object; f C pattern item resIndex 	resLength lenOfPattern init )([Ljava/lang/String;[Ljava/lang/String;)V original 
newversion Ljava/util/ArrayList; LocalVariableTypeTable )Ljava/util/ArrayList<Ljava/lang/Object;>; terminalList listForPref Ljava/util/List; 
switchList pref o it Ljava/util/ListIterator; id $Ljava/util/List<Ljava/lang/Object;>; ,Ljava/util/ListIterator<Ljava/lang/Object;>; 	Signature :(Ljava/util/List<Ljava/lang/Object;>;Ljava/lang/String;I)V R(Ljava/util/ListIterator<Ljava/lang/Object;>;)Ljava/util/List<Ljava/lang/Object;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked arr Ljava/lang/Integer; Ljava/util/Iterator; Ljava/util/Iterator<*>; 9(Ljava/util/List<Ljava/lang/Object;>;)[Ljava/lang/Object; 
SourceFile 	RE13.java InnerClasses µ org/openide/util/BaseUtilities RE 0    v        1 2         x   /     *· ±    y        z        { |    } ~  x   º     N+#¶ = +¶ ¶ L+=¶ =  
+ ¶ =  °½ Y+¶ ¶ SY+`¶ ¶ S°    y   & 	   &  (  )  ,  . " / ) 2 . 3 0 6 z        N { |     N     G        ü             x  ?     õ*´ M>666,¾ § ¼,,¾d2:Á  À ¶  >`66+¶ $¡ § +¶ '66		,¾¢ u,	2Á  e,	2À ¶ '  U,	2À :
6
¶ $¢ (+¶ $¤ ?+¶ '
¶ ' § ,§ÿÔ,	`2À +M
¶ $`6§ÿK	§ÿ§   » ,Y· .*´ /2¶ 3+¶ ¶ 3¶ 7°+°    y   z    :  ;  < 
 >  ?  B  C  G   I ( K 1 L 8 M ; P D R G U R X \ Y v [  ]  ^ ¥ a ¨ ] ± f » g Å i È X Î o Ñ r Ö t ó w z   z   /     I   
 U y   	   ±    R       õ { |     õ     ð     î    
 ë     è     å       8 ÿ     +  ü " ý ý , %ú ú ú ù !            x   ¾     0» :Y· <N6+¾¢ -+2¸ =§ÿì*-¸ Aµ *,µ /±    y       }       "  *  /  z   4         0 { |     0  2    0  2   (          (        ý  :ú     	       
 ? @  x  ù    R+¶ $ *» Y· E¹ H W±+¶ '>*¹ N :¹ R  ý¹ X :Á  éÀ :¶ '  Ø6¶ $¢ ´+¶ $¢ +¶ '¶ ' ¶ ¹ \ ¹ X À I:» :Y· <:		¹ \ 	¶ ¹ H W	¹ H W+¶ $¡ 	» Y· E¹ H W§ 2» :Y· <:

» Y· E¶ `W	+¶ ¹ H W	
¹ H W±§ÿH¸ a:+¶ $¶ ¸ =±§þÿ» :Y· <:» Y· E¶ `W*+¹ H W*¹ H W±    y    #            %  /  8  @  G  Q   ^ ¡ w £  ¦  ¨  © ¤ « ³ ¬ ½ ® Æ ¯ Ù ± â ² ð ´ þ µ ¸	   ¿ À% Â& Å) Ê2 Ë@ ÍH ÎQ Ï z     â &   
  w     n   	 T »        G ß    8 î     R      R     R    5    %-   ¡ 2   ¢      H  â &   
  w  £   n  £ 	   £   R  £   %-   ¤ 2   ¢      ) 
ý  Sþ .  "ý a I I.ù  ú ù               ¥    ¦ 
 c d  x   `     *¹ X À IL+°    y   
    Ó 
 Ô z          ¡   
               ¤   
   £         ¥    § ¨     ©  ª[ s « 
 C D  x  ~     *¹ e ½ LM*¹ h N6-¹ l  d-¹ o :Á  ,Æ » pY· r¿À M§ÿÕÁ  +À ¶ sS§ÿ»Á I +À I¸ AS§ÿ¡» pY· r¿,Æ 
++¾d,S+°    y   V    Ú 
 Ü  Þ  ß  á  â ' ä / å 3 æ ; é A ë D î L ï [ ñ ^ ô f õ u ÷ x ú  ý  ÿ  z   >  ' Y           
  ¬      ­   z   ®   w             £    z   ¯     # ÿ   I +  m  ü $ ú 
        ¥    °  ±    ² ³   
  v ´ ¶