Ęþšū   4 ·
      )org/openide/util/NbCollections$CheckedMap acceptEntry (Ljava/util/Map$Entry;)Z	   	 
 rawMap Ljava/util/Map;
      java/util/AbstractMap <init> ()V	     keyType Ljava/lang/Class;	     	valueType	     strict Z
      ! java/lang/Class 
isInstance (Ljava/lang/Object;)Z # java/lang/ClassCastException % java/lang/StringBuilder
 $ 
 $ ( ) * append -(Ljava/lang/Object;)Ljava/lang/StringBuilder; ,  was not a 
 $ . ) / -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  1 2 3 getName ()Ljava/lang/String;
 $ 5 6 3 toString
 " 8  9 (Ljava/lang/String;)V ; < = > ? java/util/Map$Entry getKey ()Ljava/lang/Object;
  A B ! 	acceptKey ; D E ? getValue
  G H ! acceptValue J 2org/openide/util/NbCollections$CheckedMap$EntrySet
 I L  M P(Lorg/openide/util/NbCollections$CheckedMap;Lorg/openide/util/NbCollections$1;)V
  O P Q cast &(Ljava/lang/Object;)Ljava/lang/Object; S T U V Q java/util/Map get S X Y Z put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; S \ ] Q remove S _ ` ! containsKey
  b c ! containsValue S e f g entrySet ()Ljava/util/Set; i j k l m java/util/Set iterator ()Ljava/util/Iterator; o p q r s java/util/Iterator hasNext ()Z o u v ? next x java/io/Serializable serialVersionUID J ConstantValue        	Signature Ljava/lang/Class<TK;>; Ljava/lang/Class<TV;>; 5(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Z)V Code LineNumberTable LocalVariableTable this +Lorg/openide/util/NbCollections$CheckedMap; LocalVariableTypeTable 3Lorg/openide/util/NbCollections$CheckedMap<TK;TV;>; MethodParameters ?(Ljava/util/Map;Ljava/lang/Class<TK;>;Ljava/lang/Class<TV;>;Z)V o Ljava/lang/Object; StackMapTable e Ljava/util/Map$Entry; 0()Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; v key TV;  java/lang/Object (Ljava/lang/Object;)TV; value old TK; (TK;TV;)TV; Ljava/lang/SuppressWarnings; 	unchecked size ()I c I it Ljava/util/Iterator; +Ljava/util/Iterator<Ljava/util/Map$Entry;>; 
access$100 <(Lorg/openide/util/NbCollections$CheckedMap;)Ljava/util/Map; x0 
access$200 C(Lorg/openide/util/NbCollections$CheckedMap;Ljava/util/Map$Entry;)Z x1 _<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/util/AbstractMap<TK;TV;>;Ljava/io/Serializable; 
SourceFile NbCollections.java InnerClasses ą org/openide/util/NbCollections 
CheckedMap Entry EntrySet ķ  org/openide/util/NbCollections$1 0    w   y z  {    |  	 
       ~         ~                  Ķ     *· *+ĩ *,ĩ *-ĩ *ĩ ą          G H 	I J K L    4            	 
                                                 	            ~      B !     Š     A+Į Ž*ī +ķ  Ž*ī  (ŧ "Yŧ $Y· &+ķ '+ķ -*ī ķ 0ķ -ķ 4· 7ŋŽ          O P Q R S T ?V        A       A           A         +         H !     Š     A+Į Ž*ī +ķ  Ž*ī  (ŧ "Yŧ $Y· &+ķ '+ķ -*ī ķ 0ķ -ķ 4· 7ŋŽ          [ \ ] ^ _ ` ?b        A       A           A         +               q      *+đ : · @ *+đ C · F § Ž          g                                      @         f g     F     
ŧ IY*· K°                  
            
     ~              V Q     Ē      *ī *ī +ķ Nđ R M*,· F ,N-°°                  *                                                 ü          ~              Y Z     Ū     &*ī *ī +ķ N*ī ,ķ Nđ W N*-· F -°°            " $    *    &       &      &                 &       &      &        ü $     	       ~            [ s      ] Q     Ē      *ī *ī +ķ Nđ [ M*,· F ,N-°°          Ą Ē Ī Ĩ §    *                                                 ü          ~              ` !          +*ī *ī +ķ Nđ ^  **ī +đ R · F § Ž          ­ Ū *­        +       +           +         )@                 c !     S     **ī +ķ N· aŽ          ī                                                      °     2<*ī đ d đ h M,đ n  *,đ t Ā ;· ĸę§ĸäŽ          đ š ŧ ž *― 0Ā         2      0 Ą Ē   ! Ģ Ī         2      ! Ģ Ĩ     
 ý  o         Ķ §     /     *ī °          >         Ļ    Đ Š     :     *+· Ž          >         Ļ       Ŧ    ~    Ž ­    Ū Ŋ   "   ° ē  ; S ģ	 I  ī  ĩ      