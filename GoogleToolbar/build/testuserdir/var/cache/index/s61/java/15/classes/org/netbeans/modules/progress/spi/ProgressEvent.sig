Êþº¾   4 ª
      java/lang/Object <init> ()V	  	 
   /org/netbeans/modules/progress/spi/ProgressEvent source 2Lorg/netbeans/modules/progress/spi/InternalHandle;ÿÿÿÿÿÿÿÿ	     estimatedCompletion J¿ð      	     percentageDone D	     workunitsDone I	      message Ljava/lang/String;	  " #  type	  % & ' watched Z	  ) * ' switched
  ,  - 7(Lorg/netbeans/modules/progress/spi/InternalHandle;IZ)V
  /  0 K(Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;IDJZ)V	  2 3   displayName
  5 6 7 
getMessage ()Ljava/lang/String;
  9 : 7 getDisplayName < java/lang/StringBuilder
 ;  ? EV[
 ; A B C append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  E F G 	getSource 4()Lorg/netbeans/modules/progress/spi/InternalHandle;
 ; I B J -(Ljava/lang/Object;)Ljava/lang/StringBuilder; L , disp:  N finish P progress R stop T silent V start X switch Z  
 ; \ B ] (I)Ljava/lang/StringBuilder;
 ; _ ` 7 toString b , type:  d , pctDone:  f %3.2f
 h i j k l java/lang/Double valueOf (D)Ljava/lang/Double;
 n o p q r java/lang/String format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; t , message:  v ] 
TYPE_START ConstantValue     TYPE_FINISH    TYPE_REQUEST_STOP    TYPE_PROGRESS    TYPE_SWITCH    TYPE_SILENT    Code LineNumberTable LocalVariableTable this 1Lorg/netbeans/modules/progress/spi/ProgressEvent; src 	isWatched StackMapTable  0org/netbeans/modules/progress/spi/InternalHandle MethodParameters I(Lorg/netbeans/modules/progress/spi/InternalHandle;IZLjava/lang/String;)V msg units 
percentage estimate ](Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;IDJZLjava/lang/String;)V getEstimatedCompletion ()J getPercentageDone ()D getWorkunitsDone ()I getType ()Z copyMessageFromEarlier 4(Lorg/netbeans/modules/progress/spi/ProgressEvent;)V last markAsSwitched 
isSwitched tName sb Ljava/lang/StringBuilder; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; markAsFinished 
SourceFile ProgressEvent.java 1       w   x    y  z   x    {  |   x    }  ~   x         x         x                                #     & '    * '    3        -     Ó     :*· *+µ * µ * µ *µ *µ *µ !*µ $*  § µ (±       * 
   2  3 	 4  5  6  7 ! 8 & 9 + : 9 ;    *    :       :      : #     :  '     ' ÿ 5     ÿ               #             h     *+· +*µ ±           A  B  C    4                  #       '                #           0       	   *+· +*µ *µ *µ *,µ ±           I  J  K  L  M  N    H                                            '                                	 
   *+,· .*	µ 1±           P  Q  R    R                                            '     3   	                       3    F G     /     *´ °           U                    /     *´ ­           Y                    /     *´ ¯           ]                    /     *´ ¬           a              6 7     /     *´ °           e                    /     *´ !¬           i                    /     *´ $¬           m                    m     *´ Ç *+¶ 4µ *´ 1Ç *+¶ 8µ 1±           u  v  x  y  {                                       4     *µ (±       
    ~                ¡      /     *´ (¬                         : 7     /     *´ 1°                         ` 7    ³     ß» ;Y· =L+>¶ @*¶ D¶ HW+K¶ @*´ 1¶ @W*´ !ª      P          D   2   P   8   ,   J   >MM§ 8OM§ 2QM§ ,SM§ &UM§  WM§ » ;Y· =Y¶ @*´ !¶ [¶ ^M+a¶ @,¶ @W+c¶ @e½ Y*´ ¸ gS¸ m¶ @W+s¶ @*´ ¶ @W+K¶ @*´ 1¶ @W+u¶ @W+¶ ^°       F         $  T  Z  `  f  l  r  x      ·  Å  Ó  Ú     \ 	 W  ¢    ]  ¢    c  ¢    i  ¢    o  ¢    u  ¢      ß      × £ ¤   P ¢        ü T ;ü  n ¥     ¦     §      4     *µ !±       
    ¢  £              ¨    ©