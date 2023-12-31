Êþº¾   4 
      4org/openide/loaders/DataTransferSupport$PasteTypeExt doPaste ()V
  	 
   'org/openide/util/datatransfer/PasteType <init>	     objs ![Lorg/openide/loaders/DataObject;
     handleCanPaste #(Lorg/openide/loaders/DataObject;)Z
      javax/swing/SwingUtilities isEventDispatchThread ()Z	     RP #Lorg/openide/util/RequestProcessor;  6org/openide/loaders/DataTransferSupport$PasteTypeExt$1
  !  " 9(Lorg/openide/loaders/DataTransferSupport$PasteTypeExt;)V
 $ % & ' ( !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
  * +  cleanClipboard	 - . / 0 1 ,org/openide/util/datatransfer/ExTransferable EMPTY $Ljava/awt/datatransfer/Transferable;
 3 4 5 6 7 'org/openide/loaders/DataTransferSupport 
access$100 ()Ljava/util/logging/Logger;	 9 : ; < = java/util/logging/Level FINE Ljava/util/logging/Level;
 ? @ A B C java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z E java/lang/Throwable G java/lang/StringBuilder
 F 	 J Issue #58666: Called 
 F L M N append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 F P M Q -(Ljava/lang/Object;)Ljava/lang/StringBuilder; S  doPaste() on objects 
 U V W X Y java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 F [ \ ] toString ()Ljava/lang/String;
 D _  ` (Ljava/lang/String;)V
 ? b c d log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  f g h handlePaste #(Lorg/openide/loaders/DataObject;)V j Paste Support
 $ _ Code LineNumberTable LocalVariableTable this 6Lorg/openide/loaders/DataTransferSupport$PasteTypeExt; MethodParameters obj 
Exceptions u java/io/IOException canPaste i I StackMapTable paste &()Ljava/awt/datatransfer/Transferable; } "java/awt/datatransfer/Transferable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; setDataObjects $([Lorg/openide/loaders/DataObject;)V 
access$000 x0 <clinit> 
SourceFile DataTransferSupport.java InnerClasses PasteTypeExt  &org/openide/util/RequestProcessor$Task Task                 
     l   3     *· ±    m   
    `  a n        o p      q    r   g h  s     t q    r    +   l   ,     ¬    m       p n        o p    v   l   v     "<*´ ¾¢ **´ 2¶  ¬§ÿå¬    m       t  u  v  t   x n       w x    " o p   y   
 ü ú   z {  l   p     +¸  ² » Y*·  ¶ #W§ *· *¶ ) 	² ,§ °    m       }  ~     n       + o p   y   	 @ | s     t ~            l   ³     [¸ 2² 8¶ > 6¸ 2² 8» DY» FY· HI¶ K*¶ OR¶ K*´ ¸ T¶ O¶ Z· ^¶ a<*´ ¾¢ **´ 2¶ e§ÿê±    m          ?  J  T  Z  n     A  w x    [ o p   y   
 ?ü ú  s     t     l   >     *+µ ±    m   
        n        o p         q        "  l   /     *· ±    m       Z n         p   s     t     l   %      » $Yi· k³ ±    m       [             3          $  