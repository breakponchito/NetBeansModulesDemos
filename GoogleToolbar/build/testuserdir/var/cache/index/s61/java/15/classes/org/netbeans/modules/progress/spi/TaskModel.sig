Êþº¾   4 É
      +org/netbeans/modules/progress/spi/TaskModel getSelectionListeners ,()[Ljavax/swing/event/ListSelectionListener;	   	 
 eventExecutor Ljava/util/concurrent/Executor;
     getDataListeners '()[Ljavax/swing/event/ListDataListener;
      java/lang/Object <init> ()V  %javax/swing/DefaultListSelectionModel
  	     selectionModel 'Ljavax/swing/DefaultListSelectionModel;  javax/swing/DefaultListModel
  	    ! " model Ljavax/swing/DefaultListModel; $ java/util/LinkedHashSet
 # 	  ' ( ) dataListeners Ljava/util/LinkedHashSet;	  + , ) selectionListeners . 8org/netbeans/modules/progress/spi/TaskModel$TaskListener
 - 0  1 _(Lorg/netbeans/modules/progress/spi/TaskModel;Lorg/netbeans/modules/progress/spi/TaskModel$1;)V
  3 4 5 addListDataListener '(Ljavax/swing/event/ListDataListener;)V
  7 8 9 addListSelectionListener ,(Ljavax/swing/event/ListSelectionListener;)V
 ; < = > ? ,org/netbeans/modules/progress/spi/Controller 
getDefault 0()Lorg/netbeans/modules/progress/spi/Controller;
 ; A B C getEventExecutor !()Ljava/util/concurrent/Executor;
  E  F "(Ljava/util/concurrent/Executor;)V
  H I J 
addElement (Ljava/lang/Object;)V
  L M  updateSelection	  O P Q explicit 2Lorg/netbeans/modules/progress/spi/InternalHandle;
  S T U removeElement (Ljava/lang/Object;)Z
  W X Y getSelectedHandle 4()Lorg/netbeans/modules/progress/spi/InternalHandle;
 [ \ ] ^ _ 0org/netbeans/modules/progress/spi/InternalHandle isInSleepMode ()Z
  a b c size ()I
  e f g getElementAt (I)Ljava/lang/Object;
  i j k getSelectionRating 5(Lorg/netbeans/modules/progress/spi/InternalHandle;)I
  m n o indexOf (Ljava/lang/Object;)I
  q r s setSelectionInterval (II)V
  u v  clearSelection
 [ x y _ isUserInitialized
  { | } copyInto ([Ljava/lang/Object;)V
    c getMinSelectionIndex
 #   U add
 #   U remove
 # a  "javax/swing/event/ListDataListener
 #    toArray (([Ljava/lang/Object;)[Ljava/lang/Object;  %[Ljavax/swing/event/ListDataListener;  'javax/swing/event/ListSelectionListener  *[Ljavax/swing/event/ListSelectionListener; 	Signature RLjavax/swing/DefaultListModel<Lorg/netbeans/modules/progress/spi/InternalHandle;>; ?Ljava/util/LinkedHashSet<Ljavax/swing/event/ListDataListener;>; DLjava/util/LinkedHashSet<Ljavax/swing/event/ListSelectionListener;>; Code LineNumberTable LocalVariableTable this -Lorg/netbeans/modules/progress/spi/TaskModel; list :Lorg/netbeans/modules/progress/spi/TaskModel$TaskListener; MethodParameters 	addHandle 5(Lorg/netbeans/modules/progress/spi/InternalHandle;)V handle StackMapTable ¥ java/lang/Throwable removeHandle 	curHandle i I oldSelected toSelect result explicitlySelect index getExplicitSelection getSize 
getHandles 5()[Lorg/netbeans/modules/progress/spi/InternalHandle; handles 3[Lorg/netbeans/modules/progress/spi/InternalHandle; ´ select listener )Ljavax/swing/event/ListSelectionListener; removeListSelectionListener $Ljavax/swing/event/ListDataListener; removeListDataListener 
access$100 T(Lorg/netbeans/modules/progress/spi/TaskModel;)[Ljavax/swing/event/ListDataListener; x0 
access$200 N(Lorg/netbeans/modules/progress/spi/TaskModel;)Ljava/util/concurrent/Executor; 
access$300 Y(Lorg/netbeans/modules/progress/spi/TaskModel;)[Ljavax/swing/event/ListSelectionListener; 
SourceFile TaskModel.java InnerClasses TaskListener È -org/netbeans/modules/progress/spi/TaskModel$1 1            ! "        P Q    ( )        , )        	 
       F     ²     P*· *» Y· µ *» Y· µ *» #Y· %µ &*» #Y· %µ *» -Y*· /M*´ ,¶ 2*´ ,¶ 6*+µ ±       * 
   /  0  1  2 % 3 0 4 : 5 B 6 J 7 O 8         P       P 	 
  :         	          9     *¸ :¶ @· D±       
    < 
 =                ¡          *´ YMÂ*´ +¶ G,Ã§ N,Ã-¿*¶ K±                    B  C  D  E  F                ¢ Q  £    ÿ    [   ¤ú      ¢    ¦ ¡     §     ,*´ N+¦ *µ N*´ YMÂ*´ +¶ RW,Ã§ N,Ã-¿*¶ K±    "   " % "           I  J  L  M  N ' O + P        ,       , ¢ Q  £    ÿ    [   ¤ú      ¢     M     P     *´ NÆ ±*¶ VL+Æ +¶ Z ±M*´ YNÂ6*´ ¶ `¢ (*´ ¶ dÀ [:*· h*,· h¡ M§ÿÒ,Æ *´ *´ ,¶ l*´ ,¶ l¶ p§ 
*´ ¶ t-Ã§ 
:-Ã¿±  " }             F    W  X  Z  \  ]  a  b " c 1 d ? e M f P c V i Z j t l { n  o    4  ?  § Q  % 1 ¨ ©          { ª Q   m « Q  £     	ü  [þ  [ *ú D ¤ú   j k          =+Æ +¶ Z +¶ w ¬       "    r  s  t  u  w  x  z  |                 ¢ Q    ¬ ©  £    ü 	     ¢    ­ ¡     Í     6*+µ N*´ YMÂ*´ *´ N¶ l>  ,Ã±*´ ¶ p,Ã§ 
:,Ã¿±    .     + .   . 2 .       "                )  5          ® ©    6       6 ¢ Q  £    ý   ÿ    [   ¤ú      ¢    ¯ Y     /     *´ N°                         ° c     p     *´ YLÂ*´ ¶ `+Ã¬M+Ã,¿                                     £    ÿ      ¤  ± ²     ª     &*´ YMÂ*´ ¶ `½ [L*´ +¶ z,Ã§ N,Ã-¿+°        "                   $          ³ ´    &     $  ³ ´  £     ÿ       ¤ÿ    µ    X Y     ¶     =*´ YLÂ*´ ¶ ~=   *´ ¶ `¢ *´ ¶ dÀ [+Ã°+Ã§ N+Ã-¿°   0 6   1 3 6   6 9 6                ¡  ¢ # £ 1 ¦ ; §       " ¶ ©    =     £    ü 1 D ¤ú   8 9          *´ *YMÂ*´ *+¶ W,Ã§ N,Ã-¿±                    «  ¬  ­  ®                · ¸  £    ÿ       ¤ú      ·    ¹ 9          *´ *YMÂ*´ *+¶ W,Ã§ N,Ã-¿±                    ±  ²  ³  ´                · ¸  £    ÿ       ¤ú      ·    4 5          *´ &YMÂ*´ &+¶ W,Ã§ N,Ã-¿±                    ·  ¸  ¹  º                · º  £    ÿ       ¤ú      ·    » 5          *´ &YMÂ*´ &+¶ W,Ã§ N,Ã-¿±                    ½  ¾  ¿  À                · º  £    ÿ       ¤ú      ·          }     #*´ &YLÂ*´ &*´ &¶ ½ ¶ À +Ã°M+Ã,¿        !            Ã  Ä  Å        #     £    ÿ      ¤        }     #*´ *YLÂ*´ **´ *¶ ½ ¶ À +Ã°M+Ã,¿        !            É  Ê  Ë        #     £    ÿ      ¤ ¼ ½     /     *· °           '         ¾    ¿ À     /     *´ °           '         ¾    Á Â     /     *· °           '         ¾     Ã    Ä Å     -  Æ  Ç    