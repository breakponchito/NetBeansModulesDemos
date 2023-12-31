Ęūēž   4 Ŋ
      org/openide/nodes/Children <init> ()V	  	 
   org/openide/nodes/Children$Map nodes Ljava/util/Map;
     initMap ()Ljava/util/Map;
     entrySupport "()Lorg/openide/nodes/EntrySupport;
     getMap
     createEntries '(Ljava/util/Map;)Ljava/util/Collection;
      ! org/openide/nodes/EntrySupport 
setEntries (Ljava/util/Collection;Z)V
  # $  callAddNotify & java/util/LinkedList
 %  ) * + , - java/util/Map entrySet ()Ljava/util/Set; / 0 1 2 3 java/util/Set iterator ()Ljava/util/Iterator; 5 6 7 8 9 java/util/Iterator hasNext ()Z 5 ; < = next ()Ljava/lang/Object; ? java/util/Map$Entry A !org/openide/nodes/Children$Map$ME > C D = getKey > F G = getValue I org/openide/nodes/Node
 @ K  L -(Ljava/lang/Object;Lorg/openide/nodes/Node;)V N O P Q R java/util/List add (Ljava/lang/Object;)Z
  T   U (Ljava/util/Collection;)V	  W X Y PR #Lorg/openide/util/Mutex$Privileged;
 [ \ ] ^  !org/openide/util/Mutex$Privileged enterWriteAccess
  ` a  refreshImpl
 [ c d  exitWriteAccess
  f g h refreshEntry %(Lorg/openide/nodes/Children$Entry;)V
  j k l refreshKeyImpl (Ljava/lang/Object;)V ) n o p putAll (Ljava/util/Map;)V ) r s t put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; ) v w - keySet / y z { 	removeAll (Ljava/util/Collection;)Z ) } ~  remove &(Ljava/lang/Object;)Ljava/lang/Object;  java/util/HashMap
     (I)V 	Signature ,Ljava/util/Map<TT;Lorg/openide/nodes/Node;>; Code LineNumberTable LocalVariableTable this  Lorg/openide/nodes/Children$Map; m LocalVariableTypeTable %Lorg/openide/nodes/Children$Map<TT;>; MethodParameters /(Ljava/util/Map<TT;Lorg/openide/nodes/Node;>;)V StackMapTable .()Ljava/util/Map<TT;Lorg/openide/nodes/Node;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; e Ljava/util/Map$Entry; map l Ljava/util/List; 2Ljava/util/Map$Entry<TT;Lorg/openide/nodes/Node;>; 5Ljava/util/List<Lorg/openide/nodes/Children$Map$ME;>; i(Ljava/util/Map<TT;Lorg/openide/nodes/Node;>;)Ljava/util/Collection<+Lorg/openide/nodes/Children$Entry;>; refresh  java/lang/Throwable key Ljava/lang/Object; TT; (TT;)V 
refreshKey .Ljava/util/Map<+TT;+Lorg/openide/nodes/Node;>; 1(Ljava/util/Map<+TT;+Lorg/openide/nodes/Node;>;)V node Lorg/openide/nodes/Node; (TT;Lorg/openide/nodes/Node;)V keys Ljava/util/Collection; Ljava/util/Collection<+TT;>; (Ljava/util/Collection<+TT;>;)V ([Lorg/openide/nodes/Node;)Z arr [Lorg/openide/nodes/Node; 2<T:Ljava/lang/Object;>Lorg/openide/nodes/Children; 
SourceFile Children.java InnerClasses Map Entry ME š org/openide/util/Mutex 
Privileged ŧ  org/openide/nodes/Children$Entry !                  p     b     
*ˇ *+ĩ ą          x y 	z        
       
           
       
                       E     *ˇ ą       
   ~                                 a     *´ Į **ļ ĩ *´ °                                                $      Y     *ļ **ļ ļ ļ *ˇ "ą                                                     č     Lģ %Yˇ 'M+š ( š . N-š 4  0-š : Ā >:,ģ @Yš B š E Ā Hˇ Jš M W§˙Í,°            ( G J    *  (       L       L     D       *  (       L       L     D        ũ  N 5ú 5              a      P     *ļ **ļ ļ ļ Są       
   ¨ Š                                     ˛ Vļ Z*ļ _˛ Vļ b§ L˛ Vļ b+ŋą    
           ° ą 
ŗ ´ ŗ ´ ĩ                             S   k l     e     *ļ ģ @Y+ˇ Jļ eą       
   ŋ Ā                  Ą                   ĸ              Ŗ  ¤ l          ˛ Vļ Z*+ļ i˛ Vļ b§ M˛ Vļ b,ŋą               É Ę Ė Í Ė Í Î                  Ą                   ĸ      T             Ŗ  o p     ¨     '˛ Vļ Z*ļ +š m *ļ _˛ Vļ b§ M˛ Vļ b,ŋą            "   × Ø Ų Ũ Ū Ũ $Ū &ß        '       '           '       '  Ĩ      ]            Ļ  s L     Ä     3˛ Vļ Z*ļ +,š q Æ *+ļ i§ *ļ _˛ Vļ b§ N˛ Vļ b-ŋą      )       & 	  į é ę ė  ī &đ )ī 0đ 2ņ         3       3   Ą    3 § ¨         3       3   ĸ     	 H     	    §      Š  z U     Ž     -˛ Vļ Z*ļ š u +š x W*ļ _˛ Vļ b§ M˛ Vļ b,ŋą     #       "   ø ų ú ü  ũ #ü *ũ ,ū        -       - Ē Ģ         -       - Ē Ŧ      c      Ē      ­  ~ l     ŗ     1˛ Vļ Z*´ Æ *´ +š | Æ *ļ _˛ Vļ b§ M˛ Vļ b,ŋą     '       "       $ ' . 0        1       1   Ą         1       1   ĸ      H             Ŗ        F     
ģ Yˇ °                  
            
           Q Ž     H     Ŧ          #                ¯ °                  ¯    ~ Ž     H     Ŧ          ,                ¯ °                  ¯        ą ˛    ŗ ´   *    ĩ 	 > ) ļ	 @  ˇ  [ ¸ ē  ģ  ļ