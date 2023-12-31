Ęūēž   4  
      java/lang/Object <init> ()V	  	 
   .org/openide/filesystems/FileObjectLineIterator lines )Lorg/openide/filesystems/FileObjectLines;	     encoding Ljava/lang/String;
     
initReader	     buffer [B  java/io/IOException
      org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V	  ! "  line	  $ % & reader Ljava/io/BufferedReader;
 ( ) * + , java/io/BufferedReader readLine ()Ljava/lang/String;
 ( . /  close	  1 2 3 index I
  5 6 7 hasNext ()Z 9  java/util/NoSuchElementException
 8  < 'java/lang/UnsupportedOperationException
 ; 
  ? @ , next
 8 B C D 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; F Not supported yet.
 ; H  I (Ljava/lang/String;)V	 K L M N O 'org/openide/filesystems/FileObjectLines fo $Lorg/openide/filesystems/FileObject;
 Q R S T U "org/openide/filesystems/FileObject getSize ()J       
 Q Y Z [ asBytes ()[B ] java/io/ByteArrayInputStream
 \ _  ` ([B)V
 Q b c d getInputStream ()Ljava/io/InputStream; f java/io/InputStreamReader
 e h  i *(Ljava/io/InputStream;Ljava/lang/String;)V
 ( k  l (Ljava/io/Reader;)V
  n  o 3(Lorg/openide/filesystems/FileObjectLineIterator;)V q java/lang/String
  s t I add
  v w I set
  y z , previous | java/util/ListIterator >(Lorg/openide/filesystems/FileObjectLines;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/filesystems/FileObjectLineIterator; 
Exceptions MethodParameters ex Ljava/io/IOException; orig StackMapTable l remove hasPrevious pos last 	nextIndex ()I previousIndex e is Ljava/io/InputStream;  java/io/InputStream  $java/io/UnsupportedEncodingException cloneIterator 2()Lorg/openide/filesystems/FileObjectLineIterator; (Ljava/lang/Object;)V ()Ljava/lang/Object; 	Signature >Ljava/lang/Object;Ljava/util/ListIterator<Ljava/lang/String;>; 
SourceFile FileObjectLineIterator.java 0    {                  % &    "     2 3      }  ~   a     *ˇ *+ĩ *,ĩ *ˇ ą           *  + 	 ,  -  .                                   	         o  ~   ¨     )*ˇ *+´ ĩ *+´ ĩ *+´ ĩ *ˇ § M,¸ ą     #      & 	   0  1  2  3  5   8 # 6 $ 7 ( 9       $       )       )        ˙ #             ! 6 7  ~   Ŧ     ?*´  Į .**´ #ļ 'ĩ  *´  Į 
*´ #ļ -*Y´ 0`ĩ 0§ L+¸ *´  Æ § Ŧ   * -      & 	   <  >  ?  @   B * E - C . D 2 G      .       ?          L 
@ ! @ ,  ~   h     *ļ 4 ģ 8Yˇ :ŋ*´  L*ĩ  +°           K  L  N  O  P                           ~   2     ģ ;Yˇ =ŋ           T             !  7  ~   B     *´ 0 § Ŧ           X                 @ ! z ,  ~   Ū     H*´ 0 ģ 8Yˇ :ŋ*´ 0d<*ˇ M*´ 0Ŗ *ļ >M§˙ķ*Y´ 0dĩ 0,°Lģ 8Yˇ :+ļ AĀ 8ŋ   7 8      .    \  ]  `  a  b  c $ d , f 6 g 8 h 9 i    *   "  3       9       H         ũ  p˙      !    ~   /     *´ 0Ŧ           n             !    ~   1     *´ 0dŦ           r              w I  ~   >     
ģ ;YEˇ Gŋ           v        
       
            t I  ~   >     
ģ ;YEˇ Gŋ           z        
       
               ~   ä     p*´ ´ Jļ P V '*´ Į **´ ´ Jļ Xĩ ģ \Y*´ ˇ ^L§ *´ ´ Jļ aL*ģ (Yģ eY+*´ ˇ gˇ jĩ #*ĩ 0*´ 0*´ 0ĸ *ļ >W§˙đą       * 
        &  5  @  W  \  g  o        2       p     @ 0        &ü 
             ~   3     	ģ Y*ˇ m°                   	    A t   ~   3     	*+Ā pļ rą           "        	          A w   ~   3     	*+Ā pļ uą           "        	          A z   ~   /     *ļ x°           "            A @   ~   /     *ļ >°           "                       