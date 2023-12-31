Êþº¾   4   org/openide/NotifyDescriptor
     <init> N(Ljava/lang/Object;Ljava/lang/String;II[Ljava/lang/Object;Ljava/lang/Object;)V  java/util/ArrayList
  
   ()V	      *org/openide/NotifyDescriptor$ComposedInput inputs Ljava/util/List;	     callback 5Lorg/openide/NotifyDescriptor$ComposedInput$Callback;	     estimatedNumberOfInputs I 
       java/lang/Integer valueOf (I)Ljava/lang/Integer;
  " # $ firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V & ' ( ) * 3org/openide/NotifyDescriptor$ComposedInput$Callback createInput M(Lorg/openide/NotifyDescriptor$ComposedInput;I)Lorg/openide/NotifyDescriptor; , - . / 0 java/util/List size ()I , 2 3 4 set '(ILjava/lang/Object;)Ljava/lang/Object; , 6 7 8 add (Ljava/lang/Object;)Z , : ; < toArray (([Ljava/lang/Object;)[Ljava/lang/Object; > [Lorg/openide/NotifyDescriptor;
  @ A B 
getMessage ()Ljava/lang/Object; D javax/swing/JPanel
 C 

 C G H I 	setOpaque (Z)V K java/awt/GridBagLayout
 J 

 C N O P 	setLayout (Ljava/awt/LayoutManager;)V
  R ) S !(I)Lorg/openide/NotifyDescriptor; U java/awt/GridBagConstraints
 T 
	 T X Y  gridx	 T [ \  gridy	 T ^ _  	gridwidth	 T a b  
gridheight	 T d e  anchor
 C g 7 h )(Ljava/awt/Component;Ljava/lang/Object;)V	 T j k l weighty D
  n o p 
setMessage (Ljava/lang/Object;)V PROP_ESTIMATED_NUMBER_OF_INPUTS Ljava/lang/String; ConstantValue 	Signature 0Ljava/util/List<Lorg/openide/NotifyDescriptor;>; K(Ljava/lang/String;ILorg/openide/NotifyDescriptor$ComposedInput$Callback;)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/NotifyDescriptor$ComposedInput; title MethodParameters getEstimatedNumberOfInputs setEstimatedNumberOfInputs (I)V 	oldNumber number step Lorg/openide/NotifyDescriptor; StackMapTable 	getInputs !()[Lorg/openide/NotifyDescriptor; msg Ljava/lang/Object; panel Ljavax/swing/JPanel; input i gridBagConstraints Ljava/awt/GridBagConstraints;  java/lang/Object #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile NotifyDescriptor.java InnerClasses ComposedInput Callback 1       q r  s         t    u              v  w   x      *+· *» Y· 	µ *-µ *µ ±    x      S 
H T U V y   *      z {       | r                }    |       ~ 0  w   /     *´ ¬    x      ] y        z {       w   c     *´ =*µ *¸ ¸ ¶ !±    x      f g 
h i y         z {              }        ) S  w   Ñ     ^*´ *¹ % M,Æ Od*´ ¹ + ¢ *´ d,¹ 1 W§ "d*´ ¹ +   *´ ,¹ 5 W§ °*´ ¡ *µ ,°    x   * 
  r s t u 0v ?w My O{ W| \ y        ^ z {     ^     R        ü 0  }           w   ;     *´ ½ ¹ 9 À =°    x       y        z {    A B  w  g     *· ?L+Æ +°» CY· EM,¶ F,» JY· L¶ M6:*¶ QYNÆ >» TY· V:µ Wdµ Zµ ]µ `µ c,-¶ ?À C¶ f§ÿºÆ 	µ i*,¶ m,°    x   R     	    # & ) 7 @ F O U [ b r  w¡ }¤ ¥ y   >     z {         q    4 P    & ^    ) [       5 ü  ÿ     C  T  ÿ H    C  T  
                        &  	