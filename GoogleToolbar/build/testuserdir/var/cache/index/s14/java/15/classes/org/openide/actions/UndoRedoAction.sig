Êþº¾   4½
      javax/swing/AbstractAction <init> ()V	  	 
   org/openide/awt/UndoRedo NONE Lorg/openide/awt/UndoRedo;	      "org/openide/actions/UndoRedoAction last	     doUndo Z	     fallback  !org/openide/awt/UndoRedo$Provider
       org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	  " # $ result  Lorg/openide/util/Lookup$Result; & java/lang/StringBuilder
 % 
 ) * + , - java/lang/Object toString ()Ljava/lang/String;
 % / 0 1 append -(Ljava/lang/String;)Ljava/lang/StringBuilder; 3 [undo=
 % 5 0 6 (Z)Ljava/lang/StringBuilder; 8 , fallback:  : ]
 % *	 = > ? @ A java/lang/Boolean TRUE Ljava/lang/Boolean; C redo E F G H I java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
 = K L M equals (Ljava/lang/Object;)Z
 O P Q R S org/openide/util/Utilities actionsGlobalContext ()Lorg/openide/util/Lookup;
  U  V (Lorg/openide/util/Lookup;ZZ)V X undo Z java/lang/IllegalStateException
 Y 
  ] ^  initializeUndoRedo
  ` a b 	isEnabled ()Z	  d e  $assertionsDisabled
 g h i j b java/awt/EventQueue isDispatchThread l java/lang/AssertionError
 k 	  o p q weakLL !Lorg/openide/util/LookupListener; s &org/openide/resources/actions/undo.gif u &org/openide/resources/actions/redo.gif w iconBase
  y z { putValue '(Ljava/lang/String;Ljava/lang/Object;)V } javax/swing/Action  	SmallIcon
      org/openide/util/ImageUtilities loadImageIcon ,(Ljava/lang/String;Z)Ljavax/swing/ImageIcon;
      !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
     getRegistry -()Lorg/openide/windows/TopComponent$Registry;
      org/openide/util/WeakListeners propertyChange Z(Ljava/beans/PropertyChangeListener;Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;	     weakPCL #Ljava/beans/PropertyChangeListener;      )org/openide/windows/TopComponent$Registry addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  ¡ ¢ £ change X(Ljavax/swing/event/ChangeListener;Ljava/lang/Object;)Ljavax/swing/event/ChangeListener;	  ¥ ¦ § weakCL "Ljavax/swing/event/ChangeListener; © org/openide/util/LookupListener
  « ¬ ­ create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;
 ¯ ° ± ² ³ org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
  µ ¶  run
 g ¸ ¹ º invokeLater (Ljava/lang/Runnable;)V
  ¼ ½ ¾ getUndoRedo ()Lorg/openide/awt/UndoRedo;  À Á Â removeChangeListener %(Ljavax/swing/event/ChangeListener;)V  Ä Å b canUndo
  Ç È É 
setEnabled (Z)V  Ë Ì b canRedo Î Name
  Ð Ñ - getName  Ó Ô Â addChangeListener
 ¯ Ö × Ø allInstances ()Ljava/util/Collection; Ú Û Ü Ý Þ java/util/Collection iterator ()Ljava/util/Iterator; à á â ã b java/util/Iterator hasNext à å æ ç next ()Ljava/lang/Object;  ¼  ê ë ì getActivated $()Lorg/openide/windows/TopComponent;
 î ¼ ï  org/openide/windows/TopComponent  ñ ò - getUndoPresentationName  ô õ - getRedoPresentationName	  ÷ ø ù LOG Ljava/util/logging/Logger;	 û ü ý þ ÿ java/util/logging/Level FINE Ljava/util/logging/Level; 3getUndoRedo().getUndoPresentationName() returns {0} 3getUndoRedo().getRedoPresentationName() returns {0}
	 java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  - getDefaultSwingText
 java/lang/String 
startsWith (Ljava/lang/String;)Z
 length ()I
 	substring (I)Ljava/lang/String;
 - trim *Name adapted by SWING_DEFAULT_LABEL is {0}! 
UndoSimple# 
RedoSimple
%&'() org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;+ UndoWithParameter- RedoWithParameter
%/(0 I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;2 Result name is {0}4 org/openide/util/HelpCtx
36 7 (Ljava/lang/Class;)V 9 X ; $javax/swing/undo/CannotUndoException
 =>? cannotUndoRedo (Ljava/lang/RuntimeException;)V A C C $javax/swing/undo/CannotRedoException
EFG( - java/lang/RuntimeException
 IJK getMainWindow ()Ljava/awt/Frame;M LBL_CannotUndoO LBL_CannotRedoQ javax/swing/JOptionPane
PSTU showMessageDialog <(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)VW 	activated
YZ[\ - java/beans/PropertyChangeEvent getPropertyName
 K_ AbstractUndoableEdit.undoText
abcde javax/swing/UIManager 	getString &(Ljava/lang/Object;)Ljava/lang/String;g AbstractUndoableEdit.redoText
ijkl b java/lang/Class desiredAssertionStatus
i Ð
opq 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;s #org/openide/util/ContextAwareActionu !java/beans/PropertyChangeListenerw  javax/swing/event/ChangeListenery java/lang/Runnable{ !org/openide/util/HelpCtx$Provider 	Signature ELorg/openide/util/Lookup$Result<Lorg/openide/awt/UndoRedo$Provider;>; Code LineNumberTable LocalVariableTable this $Lorg/openide/actions/UndoRedoAction; context Lorg/openide/util/Lookup; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; %(Ljava/util/Map;)Ljavax/swing/Action; map Ljava/util/Map; LocalVariableTypeTable Ljava/util/Map<**>; StackMapTable )(Ljava/util/Map<**>;)Ljavax/swing/Action; res Ljava/lang/String; r +Lorg/openide/windows/TopComponent$Registry; ur provider #Lorg/openide/awt/UndoRedo$Provider; el "Lorg/openide/windows/TopComponent; presentationName 
getHelpCtx ()Lorg/openide/util/HelpCtx; actionPerformed (Ljava/awt/event/ActionEvent;)V ex &Ljavax/swing/undo/CannotUndoException; &Ljavax/swing/undo/CannotRedoException; ev Ljava/awt/event/ActionEvent; undoRedo Ljava/lang/RuntimeException;¥ java/awt/Frame 
Exceptions¨ "java/util/MissingResourceExceptionª java/awt/HeadlessException #(Ljava/beans/PropertyChangeEvent;)V  Ljava/beans/PropertyChangeEvent; stateChanged "(Ljavax/swing/event/ChangeEvent;)V Ljavax/swing/event/ChangeEvent; resultChanged !(Lorg/openide/util/LookupEvent;)V Lorg/openide/util/LookupEvent; createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; actionContext <clinit> 
SourceFile UndoRedoAction.java InnerClasses Provider Result Registry 0   rtv ¨xz 	  ø ù              # $ |   }            ¦ §    p q   e        V ~   |      *· *² µ *µ *µ *+¶ µ !±          F  =  G  H  I  J   *                                       , - ~   Y     /» %Y· '*· (¶ .2¶ .*´ ¶ 47¶ .*´ ¶ 49¶ .¶ ;°          N       /         	 ¬ ~        D² <*B¹ D ¶ J » Y¸ N· T°² <*W¹ D ¶ J » Y¸ N· T°» YY· [¿          R  S  U / V < X       D         D           |     a b ~   7     	*¶ \*· _¬      
    ^  _       	           ^  ~  .     ² c ¸ f » kY· m¿*´ nÆ ±*´  	rL§ tL*v+¶ x*~+¸ ¶ x*´  ¸ ¶ M**,¸ µ ,*´ ¹  **¸  µ ¤*¨**´ !¸ ªÀ ¨µ n*´ !*´ n¶ ®*² µ *¶ ´±      J    c  d  e  h # i ) k , m 3 n > o E p L q U r _ t h u y v  w  y  z   *  &   L        , d     ü 2  ¶  ~   È     X¸ f *¸ ·±*· »L*´ *´ ¤¹ ¿ *´  *+¹ Ã ¶ Æ§ *+¹ Ê ¶ Æ*Í*· Ï¶ x*+µ *´ *´ ¤¹ Ò ±      2    ~   
        $  1  ;  E  J  W        X    H     
 ü % 	        ½ ¾ ~        j² c ¸ f » kY· m¿*´ !¶ Õ¹ Ù L+¹ ß  +¹ ä À M,¹ è N-Æ -°§ÿà*´  ¸ ¶ ¹ é L+Æ +¶ íM,Æ ,°² °      6       4  ;  ?  A  D  K  W  [  `  d  f £   4  ;    4   `    W     j      ü  àú !  Ñ - ~  ²     Ì² c ¸ f » kY· m¿*´  *· »¹ ð § *· »¹ ó L² ö² ú*´  	 § +¶+Æ $*·
Æ +*·
¶ +*·
¶¶¶L² ö² ú+¶M+Æ +¶¶ *´  	 § "¸$M§ *´  	*§ ,+¸.M² ö² ú1,¶,°      :    §  « 1 ¬ D ­ H ¬ K ¯ a ° p ³ } ´  µ  ¶ ¦ ¸ ½ » Ê ½        Ì   1  X   M    n Hÿ     ûÿ     û(ü Niÿ    iNiÿ    i  ~   4     
»3Y·5°          Â       
          ~   õ     B*· »M*´  ,¹ Ã  	,¹8 § "N-¸<§ ,¹ Ê  	,¹@ § N-¸<*¶ ´±    : & 5 8B    >    Ç  È  É  Ê  Î  Ì  Í # Î & Ï / Ð 5 Ô 8 Ò 9 Ó = Õ A Ö   4     9     B     B ¡   =¢      ü  B:BB             >? ~        +*¶DÆ &¸ ¶H*¶D*Á: 	L§ N¸$¸R±          Ù  Û  Ü  Ý ' Ú * à       +£     , ÿ   E ¤iÿ  E ¤i¦    §©       « ~   W     V+¶X¶] *¶ ´±          å  æ  è             ¬                  ­® ~   =     *¶ ´±      
    ì  í             ¯              °± ~   =     *¶ ´±      
    ñ  ò             ²              ³´ ~   B     » Y+*´ · T°          ö            µ    µ          - ~   V     *´  ^¸`§ 	f¸`°          ú  û  ú             E ¶  ~   C      ¶h § ³ c¶m¸n³ ö±      
    9  ;    @ ·   ¸¹   "   º	 ¯ »	  î¼	z3º	