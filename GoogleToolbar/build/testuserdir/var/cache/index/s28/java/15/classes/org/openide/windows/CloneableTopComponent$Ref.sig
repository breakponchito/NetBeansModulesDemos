Êþº¾   4 Â	      -org/openide/windows/CloneableTopComponent$Ref componentSet Ljava/util/Set;	   	 
 LOCK Ljava/lang/Object;
     
unregister .(Lorg/openide/windows/CloneableTopComponent;)Z
     register .(Lorg/openide/windows/CloneableTopComponent;)V
     removeComponent
     <init>
      java/lang/Object ()V  java/util/HashSet
  !  " (I)V $ /org/openide/windows/CloneableTopComponent$Ref$1
 # &  ' 2(Lorg/openide/windows/CloneableTopComponent$Ref;)V	  ) * + myComponentSetListener #Ljava/beans/PropertyChangeListener;
 - . / 0 1 !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
 - 3 4 5 getRegistry -()Lorg/openide/windows/TopComponent$Registry;
 7 8 9 : ; org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener; = > ? @ A )org/openide/windows/TopComponent$Registry addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V C D E F G java/util/Set add (Ljava/lang/Object;)Z
  I  J (Ljava/util/Collection;)V
 L M N O P java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration; C R S T isEmpty ()Z C V W X iterator ()Ljava/util/Iterator; Z [ \ ] ^ java/util/Iterator next ()Ljava/lang/Object; ` )org/openide/windows/CloneableTopComponent = b c d getActivated $()Lorg/openide/windows/TopComponent; C f g G contains Z i j T hasNext
 _ l m  
access$800 C o p q size ()I
 _ s t T 	closeLast C v w G remove
 y z { |  java/io/ObjectInputStream defaultReadObject ~ java/io/Serializable serialVersionUID J ConstantValueLí8¬RJ¼ 	Signature <Ljava/util/Set<Lorg/openide/windows/CloneableTopComponent;>; Code LineNumberTable LocalVariableTable this /Lorg/openide/windows/CloneableTopComponent$Ref; listener c +Lorg/openide/windows/CloneableTopComponent; StackMapTable  java/lang/Throwable MethodParameters getComponents ()Ljava/util/Enumeration; 
components LocalVariableTypeTable F()Ljava/util/Enumeration<Lorg/openide/windows/CloneableTopComponent;>; getAnyComponent -()Lorg/openide/windows/CloneableTopComponent; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; getArbitraryComponent comp result 	activated "Lorg/openide/windows/TopComponent; ¢  org/openide/windows/TopComponent componentCount I 
readObject (Ljava/io/ObjectInputStream;)V in Ljava/io/ObjectInputStream; 
Exceptions « java/io/IOException ­  java/lang/ClassNotFoundException [(Lorg/openide/windows/CloneableTopComponent;Lorg/openide/windows/CloneableTopComponent$1;)V x0 x1 -Lorg/openide/windows/CloneableTopComponent$1; 
access$100 ](Lorg/openide/windows/CloneableTopComponent$Ref;Lorg/openide/windows/CloneableTopComponent;)V 
access$200 
access$300 ](Lorg/openide/windows/CloneableTopComponent$Ref;Lorg/openide/windows/CloneableTopComponent;)Z 
access$400 
access$500 @(Lorg/openide/windows/CloneableTopComponent$Ref;)Ljava/util/Set; <clinit> 
SourceFile CloneableTopComponent.java InnerClasses Ref Registry Á +org/openide/windows/CloneableTopComponent$1 !    }            	 
             * +                8*· *» Y·  µ *» #Y*· %µ (*´ (¸ ,¶ 2¸ 6L¸ ,¶ 2+¹ < ±       "      ( !* '( ++ 7-        8     +   +         £     -*· *» Y·  µ ² YMÂ*´ +¹ B W,Ã§ N,Ã-¿±   $ '   ' * '          2  3 4 "5 ,6        -       -        ÿ '   _   ú                ½     !² YMÂ» Y*´ · HL,Ã§ N,Ã-¿+¸ K°                   > ? @ B              !                              ÿ       ÿ    C         S T     q     ² YLÂ*´ ¹ Q +Ã¬M+Ã,¿                   I J K                 ÿ              y     ² YLÂ*´ ¹ U ¹ Y À _+Ã°M+Ã,¿                   V W X                 ÿ                          "     e¸ ,¶ 2¹ a L² YMÂ*´ +¹ e  
+À _,Ã°N*´ ¹ U :¹ h   ¹ Y À _:N¸ k § §ÿÜ-,Ã°:,Ã¿   % ^   & ] ^   ^ b ^       2   a c e f &j (k Il Lm Tn Wp Zq ^r    *  I     ( 6      e      Y        + ý & ¡ ý  _ Z#ú ÿ    ¡                ² YMÂ*´ +¹ B W,Ã§ N,Ã-¿±                   y z { |                       ÿ    _   ú                å     B² YNÂ*´ +¹ e  -Ã¬*´ ¹ n =-Ã§ 
:-Ã¿£ 
+¶ r 
*+· ¬¬    &    # &   & * &       & 	      ! - 9 > @    *  !  £ ¤    B       B    -  £ ¤      ý   N ÿ    _                      ² YMÂ*´ +¹ u W,Ã§ N,Ã-¿±                                             ÿ    _   ú          ¥ ¦          "+¶ x² YMÂ*» Y·  µ ,Ã§ N,Ã-¿±  
                   ¢ 
£ ¤ !¥        "       " § ¨      ÿ    y   ú  ©     ª ¬     §     ®     D     *+· ±                           ¯      ° ±  ² ³     :     *+· ±                   ¯       °   ´ ³     :     *+· ±                   ¯       °   µ ¶     :     *+· ¬                   ¯       °   · ^           ² °           ¸ ¹     /     *´ °                   ¯     º      #      » Y· ³ ±            »    ¼ ½   "   _ ¾ 	 #       = ¡ ¿	 À    