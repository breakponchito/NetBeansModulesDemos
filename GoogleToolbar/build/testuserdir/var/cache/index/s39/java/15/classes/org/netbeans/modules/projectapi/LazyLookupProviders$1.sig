Êþº¾   4 	      5org/netbeans/modules/projectapi/LazyLookupProviders$1 	val$attrs Ljava/util/Map;
  	 
   java/lang/Object <init> ()V  service      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  java/lang/String	     serviceName Ljava/lang/String;  org/openide/util/ChangeSupport
     (Ljava/lang/Object;)V	  ! " # cs  Lorg/openide/util/ChangeSupport;	  % & ' delegate 'Lorg/netbeans/spi/project/LookupMerger;
 ) * + , - java/lang/Class getName ()Ljava/lang/String;
  / 0 1 equals (Ljava/lang/Object;)Z 3 lookupMergerInstance 5 %org/netbeans/spi/project/LookupMerger 4 7 8 9 getMergeableClass ()Ljava/lang/Class; ; java/lang/ClassCastException = java/lang/StringBuilder
 < 	
 < @ A B append -(Ljava/lang/Object;)Ljava/lang/StringBuilder; D  vs. 
 < F A G -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 < I J - toString
 : L  M (Ljava/lang/String;)V
  O P  
fireChange R java/lang/Exception
 T U V W X org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V
  Z [ \ addChangeListener %(Ljavax/swing/event/ChangeListener;)V	  ^ _ ` $assertionsDisabled Z
  b c d hasListeners ()Z f java/lang/AssertionError
 e 	
  i j \ removeChangeListener l MetaLookupMerger[ n ] p 3org/netbeans/modules/projectapi/LazyLookupProviders
 ) r s d desiredAssertionStatus u 0org/netbeans/modules/projectapi/MetaLookupMerger 	Signature *Lorg/netbeans/spi/project/LookupMerger<*>; (Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/modules/projectapi/LazyLookupProviders$1; MethodParameters probing (Ljava/lang/Class;)V m x Ljava/lang/Exception; Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<*>; StackMapTable (Ljava/lang/Class<*>;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; merger )()Lorg/netbeans/spi/project/LookupMerger; listener "Ljavax/swing/event/ChangeListener; <clinit> 
SourceFile LazyLookupProviders.java EnclosingMethod   forLookupMerger C(Ljava/util/Map;)Lorg/netbeans/modules/projectapi/MetaLookupMerger; InnerClasses      t        & '  v    w  " #   _ `           x  y   Z     (*+µ *· **´ ¹  À µ *» Y*· µ  ±    z         	 ¡  £ {       ( | }   ~     v         y       g*´ $Ç b+¶ (*´ ¶ . T*´ 2¹  À 4M+,¹ 6 ¥ '» :Y» <Y· >+¶ ?C¶ E,¹ 6 ¶ ?¶ H· K¿*,µ $*´  ¶ N§ M,¸ S±   ^ a Q  z   * 
   ¦  ¨ $ © . ª R ¬ W ­ ^ ° a ® b ¯ f ² {   *  $ :  '  b       g | }     g         $ :  w    g        ü R 4ÿ    )  Q ~       v                 y   /     *´ $°    z       µ {        | }            [ \  y   f     !*´  +¶ Y² ] *´  ¶ a » eY· g¿±    z       ¹  º   » {       ! | }     !          ~                j \  y   A     	*´  +¶ h±    z   
    ¾  ¿ {       	 | }     	    ~                J -  y   F     » <Y· >k¶ E*´ ¶ Em¶ E¶ H°    z       Á {        | }               y   4      o¶ q § ³ ]±    z             @           o     
        