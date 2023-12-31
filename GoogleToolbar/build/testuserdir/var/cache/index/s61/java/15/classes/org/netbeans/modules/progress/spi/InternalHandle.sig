Źžŗ¾   4²
      java/lang/Object <init> ()V	  	 
   0org/netbeans/modules/progress/spi/InternalHandle 
timeSleepy J  ,org/netbeans/modules/progress/spi/Controller	     initialDelay I	     displayName Ljava/lang/String;	     userInitiated Z	     state	      
totalUnits	  " #  lastMessage	  % & ' 
cancelable Lorg/openide/util/Cancellable;
  ) *  
compatInit	  , - . handle *Lorg/netbeans/api/progress/ProgressHandle;	  0 1 2 del 2Lorg/netbeans/modules/progress/spi/InternalHandle;
 4 5 6 7 8 0org/netbeans/progress/module/ProgressApiAccessor getInstance 4()Lorg/netbeans/progress/module/ProgressApiAccessor;
 4 : ; < create ^(Lorg/netbeans/modules/progress/spi/InternalHandle;)Lorg/netbeans/api/progress/ProgressHandle;
  > ? @ getDisplayName ()Ljava/lang/String;
  B C D getState ()I
  F G H isAllowCancel ()Z
  J K H isAllowView
  M N H isCustomPlaced	  P Q  customPlaced	  S T  currentUnit
  V W D getTotalUnits
  Y Z [ setInitialDelay (I)V	  ] ^ _ LOG Ljava/util/logging/Logger;	 a b c d e java/util/logging/Level WARNING Ljava/util/logging/Level; g WSetting ProgressHandle.setInitialDelay() after the task is started has no effect at {0}
 i j k l @ )org/netbeans/progress/module/LoggingUtils 
findCaller
 n o p q r java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  t u D getInitialDelay
  w x y toSilent (Ljava/lang/String;)V { 4Cannot switch to silent mode when not running at {0}
 } ~    java/lang/System currentTimeMillis ()J	     timeLastProgress	     
controller .Lorg/netbeans/modules/progress/spi/Controller;
   x  G(Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;)V
    H isInSleepMode
     toIndeterminate  ;Cannot switch to indeterminate mode when not running at {0}’’’’’’’’	     initialEstimate
     5(Lorg/netbeans/modules/progress/spi/InternalHandle;)V
     toDeterminate (IJ)V ” 9Cannot switch to determinate mode when not running at {0} £ "java/lang/IllegalArgumentException „ &number of workunits cannot be negative
 ¢ §  y
  ©  	  « ¬  $assertionsDisabled ® java/lang/AssertionError ° Controller can be set just once
 ­ ²  ³ (Ljava/lang/Object;)V
  µ ¶ · start (Ljava/lang/String;IJ)V ¹ *Cannot call start twice on a handle at {0}
  » ¼ ½ 
getDefault 0()Lorg/netbeans/modules/progress/spi/Controller;	  æ Ą  timeStarted
  Ā ¶ 
  Ä Å  finish Ē 2Cannot finish a task that was never started at {0}
  É Å 
  Ė Ģ Ķ progress (Ljava/lang/String;I)V Ļ <Cannot call progress on a task that was never started at {0} Ń java/lang/StringBuilder
 Š  Ō *Cannot decrease processed workunit count (
 Š Ö × Ų append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 Š Ś × Ū (I)Ljava/lang/StringBuilder; Ż ) to lower value than before ( ß )
 Š į ā @ toString	 a ä å e INFO ē DCannot process more work than scheduled. Progress handle with name " é (" has requested progress to workunit no. ė & but the total number of workunits is  ķ V. That means the progress bar UI will not display real progress and will stay at 100%.
 ¢ 
 n š q ń C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  ó ō õ getPercentageDone ()Dæš      
  ł ś  calculateFinishEstimate
  ü Ģ ż J(Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;IDJ)V
  ’   requestCancel H org/openide/util/Cancellable cancel
 	 requestStateSnapshot 3()Lorg/netbeans/modules/progress/spi/ProgressEvent;
   requestView
   requestExplicitSelection
   explicitSelection
  y requestDisplayNameChange
  displayNameChange J(Lorg/netbeans/modules/progress/spi/InternalHandle;IDJLjava/lang/String;)V
  snapshot z(Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;IDJ)Lorg/netbeans/modules/progress/spi/ProgressEvent;@@     @Y      
 #$  getLastPingTime
 &'  getTimeStampStarted	 ) ** Ljava/lang/reflect/Method;
,-./0 java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
23456 java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;8  java/lang/IllegalAccessException
:;<=> org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V@ +java/lang/reflect/InvocationTargetExceptionB java/lang/IllegalStateException
A E H@
 }GHI identityHashCode (Ljava/lang/Object;)I
KLMNO java/lang/Integer toHexString (I)Ljava/lang/String;Q ["S 
", state: U ]
WXYZ H java/lang/Class desiredAssertionStatus
W\] @ getName
 n_`a 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
Wcde getSuperclass ()Ljava/lang/Class; *h java/lang/String	,jkl TYPE Ljava/lang/Class;
Wnop getDeclaredMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;r java/lang/NoSuchMethodExceptiont java/lang/SecurityException STATE_INITIALIZED ConstantValue     STATE_RUNNING    STATE_FINISHED    STATE_REQUEST_STOP    NO_INCREASE’’’ž 4(Ljava/lang/String;Lorg/openide/util/Cancellable;Z)V Code LineNumberTable LocalVariableTable this MethodParameters RuntimeInvisibleAnnotations #Lorg/openide/modules/PatchedPublic; createProgressHandle ,()Lorg/netbeans/api/progress/ProgressHandle; h StackMapTable java/lang/Throwable (org/netbeans/api/progress/ProgressHandle isUserInitialized getCurrentUnit millis message 	workunits estimate setController 1(Lorg/netbeans/modules/progress/spi/Controller;)V ctrl workunit requestAction )(Ljava/lang/String;Ljavax/swing/Action;)Z actionCommand action Ljavax/swing/Action; newDisplayName remainingUnits remainingPortion D currentEstimate retValue durationSoFar ex "Ljava/lang/IllegalAccessException; $Ljava/lang/IllegalArgumentException; -Ljava/lang/reflect/InvocationTargetException; markCustomPlaced #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> Ljava/lang/SecurityException; m 
SourceFile InternalHandle.java !       ^ _                    T          Ą               #     & '                   - .    Q    u  v   w x  v   y z  v   { |  v   } ~  v      1 2    **   ¬    "      £     3*· *	µ *ōµ *+µ *µ *µ *µ *µ !*,µ $*· (±      .    J  3 	 7  K  L  M  N $ O ) P . R 2 S   *    3 2     3      3 '    3                             U*YLĀ*“ +Ę 
*“ ++Ć°+Ć§ M+Ć,æ*“ /Ę ø 3*“ /¶ 9L§ ø 3*¶ 9L*YMĀ*“ +Ē *+µ +*“ +,Ć°N,Ć-æ                 = O P   P S P      2    [  \  ]  _  a # b 1 d 9 f = g D h I j P k      .  .    U 2   9  .      ü  Dś ü ü  F  ? @    O     *“ /Ę *“ /¶ =°*“ °          o  p  r        2       ! C D    O     *“ /Ę *“ /¶ A¬*“ ¬          y  z  |        2        G H    Z     *“ /Ę *“ /¶ E¬*“ $Ę § ¬                      2      
@  K H    L     *“ /Ę *“ /¶ I¬¬                      2        N H    O     *“ /Ę *“ /¶ L¬*“ O¬                      2        H    /     *“ ¬                  2    D    /     *“ R¬                  2    W D    O     *“ /Ę *“ /¶ U¬*“ ¬                       2        Z [         ,*“ /Ę *“ /¶ X±*“  ² \² `fø h¶ m±*µ ±      "    ¤  „  ¦  Ø  © % Ŗ & ¬ + ­       , 2     ,             u D    O     *“ /Ę *“ /¶ s¬*“ ¬          °  ±  ³        2       ! x y    ¼     Q*“ /Ę *“ /+¶ v±*“  *“  ² \² `zø h¶ m±*ø |µ **“ µ +Ę *+µ !*“ *+¶ ±      2    ·  ø  ¹  »   ¼ . ½ / æ 6 Ą > Į B Ā G Ä P Å       Q 2     Q              H    _     !*“ /Ę *“ /¶ ¬*“ *“  § ¬          Č  É  Ė       ! 2      @ !      Æ     O*“ /Ę *“ /¶ ±*“  *“  ² \² `ø h¶ m±*µ *µ R* µ *ø |µ *“ *¶ ±      2    Ļ  Š  Ń  Ó  Ō - Õ . × 3 Ų 8 Ł ? Ś F Ū N Ü       O 2       !      Õ     \*“ /Ę *“ / ¶ *“  *“  ² \² ` ø h¶ m± » ¢Y¤· ¦æ*µ *µ R* µ *ø |µ *“ *¶ Ø±      6    ß  ą  ā   ć . ä / ę 3 ē = é B ź G ė L ģ S ķ [ ī        \ 2     \     \         	         b     ² Ŗ *“ Ę » ­YÆ· ±æ*+µ ±          ń  ņ  ó        2                 ! ¶ ·        y*“ /Ę *“ /+!¶ “±*“  ² \² `øø h¶ m± » ¢Y¤· ¦æ*µ *µ R+Ę *+µ !*“ Ē 
*ø ŗµ *µ *!µ *ø |µ ¾**“ ¾µ *“ *¶ Į±      R    ž  ’     ' ( , 6	 ;
 @ D I P W \ a h p x   *    y 2     y     y     y                ! Å     „     D*“ /Ę *“ /¶ Ć±*“  ² \² `Ęø h¶ m±*“   ±*µ **“ µ R*“ *¶ Č±      2       " # $$ %' -( .* 3+ ;- C.       D 2       ! Ģ Ķ   
 
    *“ /Ę *“ /+¶ Ź±*“  *“  ² \² `Īø h¶ m±ž *“ R¢ /» ¢Y» ŠY· ŅÓ¶ Õ¶ ŁÜ¶ Õ*“ R¶ ŁŽ¶ Õ¶ ą· ¦æ*“ ¤ H² \² ć» ŠY· Ņę¶ Õ*¶ =¶ Õč¶ Õ¶ Łź¶ Õ*“ ¶ Łģ¶ Õ¶ ą» ¢Y· ī¶ ļ*“ =*µ R+Ę *+µ !*ø |µ *“ *+*“ R*“  
*¶ ņ§  ö*“   	 § *¶ ų¶ ū±      ^   7 8 9 ; !< /= 0@ 6A >B jD rG I ÆG ²M ·O ¼Q ĄR ÅT ĢV ÖW ēX üV ’Y         2               n 
9ū L’   g   g’   g   g’   g   g’   g   g   	           ņ     H*“ /Ę *“ /¶ ž±*¶ E ±*YLĀ*µ +Ć§ M+Ć,æ*“ $¹ W*YLĀ*¶W+Ć§ N+Ć-æ±   " %   % ( %   8 ? B   B E B      6   _ ` a c d f g  h *l 4m 8n =o Gp       H 2     * ’     ś ’     ś       J     *“ /Ę 
*“ /¶
±         t u w        2       !     r     &*“ /Ę *“ /¶±*¶  
*ø |µ *“ *¶±         { | }    %       & 2           @     ¬                  2              	     ! y    	    X*“ /Ę *“ /+¶±*+µ *“  ±*ø |µ *“ **“ R*“  
*¶ ņ§  ö*“   	 § *¶ ų+¶±      2          $ - >  T W”       X 2     X     X ’   g   ’   g   ’   g   ’   g         !	    ų 
    T*“ /Ę *“ /¶°*¶  
*ø |µ *“ **“ !*“ R*“  
*¶ ņ§  ö*“   	 § *¶ ų¶°      "   „ § © Ŗ ¬ *­ ;® P¬       T 2     X ’      g’      g’      g’      g   ś     ö     rø |*“ ¾eoH*“   '*“ *“ Rdk*“ o­*“ *“ RdB!*“ o9'*“ Ro*“ k9*“ !ik!kgkc*“ o7		­      "   “ µ · -» 8¼ B½ Q¾ oĮ   >  8 :    B 0”¢  Q !£¢  o ¤  	   r 2    d„¢     ü -  ō õ    Z     *“ /Ę *“ /¶ ņÆ*“ R k*“ oÆ         Č É Ė        2       $     O     *“ /Ę *“ /¶"­*“ ­         × Ų Ś        2       '     O     *“ /Ę *“ /¶%­*“ ¾­         Ž ß į        2        *     ź     D²(Ē ±²(*½ Y*“ SY*“ $SY*“ ø+S¶1W§ L+ø9§ L+ø9§ L+ø9±   + .7  + 6 ¢  + >?    6   ē č ė +ņ .ģ /ķ 3ņ 6ī 7ļ ;ņ >š ?ń Có   *  / ¦§  7 ¦Ø  ? ¦©    D 2      f7G ¢G? Ŗ     T     *¶ A »AY·Cæ*µ O±          	          2        ā @    m     ;» ŠY· ŅD¶ Õ*øFøJ¶ ÕP¶ Õ*¶ =¶ ÕR¶ Õ*“ ¶ ŁT¶ Õ¶ ą°           :       ; 2  «    ¬   ­     Ł     P¶V § ³ Ŗ¶[ø^³ \K¶bf½WYgSYSY²iS¶mK§ L§ L+ø9*³(±   ? Bq  ? Fs    .    (  * ö ų ?ž Bś Cž Fü Gż K’ O      G ¦®   2Æ*      @’ 4 2 qCs °   ±