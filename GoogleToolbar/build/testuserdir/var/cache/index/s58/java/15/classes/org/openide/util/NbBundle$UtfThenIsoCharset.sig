����   4 ?	      +org/openide/util/NbBundle$UtfThenIsoCharset onlyUTF8 Z
  	 
   java/lang/Class getCanonicalName ()Ljava/lang/String;
      java/nio/charset/Charset <init> ((Ljava/lang/String;[Ljava/lang/String;)V
     equals (Ljava/lang/Object;)Z  =org/openide/util/NbBundle$UtfThenIsoCharset$UtfThenIsoDecoder
     L(Lorg/openide/util/NbBundle$UtfThenIsoCharset;Ljava/nio/charset/Charset;FF)V  'java/lang/UnsupportedOperationException  Not supported yet.
  !  " (Ljava/lang/String;)V (Z)V Code LineNumberTable LocalVariableTable this -Lorg/openide/util/NbBundle$UtfThenIsoCharset; acceptOnlyUTF8 MethodParameters contains (Ljava/nio/charset/Charset;)Z arg0 Ljava/nio/charset/Charset; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
newDecoder #()Ljava/nio/charset/CharsetDecoder; 
newEncoder #()Ljava/nio/charset/CharsetEncoder; 
access$200 0(Lorg/openide/util/NbBundle$UtfThenIsoCharset;)Z x0 
SourceFile NbBundle.java InnerClasses < org/openide/util/NbBundle UtfThenIsoCharset UtfThenIsoDecoder                #  $   L     *� � *� �    %      � 
� � &        ' (      )   *    )    + ,  $   :     *+� �    %      � &        ' (      - .  *    -   /     0    1 2  $   6     � Y**� �    %      � &        ' (   /     0    3 4  $   4     
� Y�  �    %      � &       
 ' (   /     0   5 6  $   /     *� �    %      � &        7 (    8    9 :      ; = 
   > 