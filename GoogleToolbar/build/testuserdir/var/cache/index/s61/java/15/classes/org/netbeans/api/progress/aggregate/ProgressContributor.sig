Êþº¾   4 
      java/lang/Object <init> ()V	  	 
   7org/netbeans/api/progress/aggregate/ProgressContributor id Ljava/lang/String;	     	workunits I	     current	     lastParentedUnit	     parent =Lorg/netbeans/api/progress/aggregate/AggregateProgressHandle;	     parentUnits
    ! " # ;org/netbeans/api/progress/aggregate/AggregateProgressHandle processContributorStart N(Lorg/netbeans/api/progress/aggregate/ProgressContributor;Ljava/lang/String;)V
  % & ' progress (Ljava/lang/String;I)V
  ) * + processContributorFinish <(Lorg/netbeans/api/progress/aggregate/ProgressContributor;)V	  - . / LOG Ljava/util/logging/Logger;	 1 2 3 4 5 java/util/logging/Level WARNING Ljava/util/logging/Level; 7 .logged ''{0}'' @{1} <{2} or >{3} in {4} at {5}
 9 : ; < = java/lang/Integer valueOf (I)Ljava/lang/Integer;	  ? @  displayName
 B C D E F )org/netbeans/progress/module/LoggingUtils 
findCaller ()Ljava/lang/String;
 H I J K L java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  N O P processContributorStep O(Lorg/netbeans/api/progress/aggregate/ProgressContributor;Ljava/lang/String;I)V R lProgress Contributor before progress: current={0} lastParentedUnit={1}, parentUnits={2}, delta={3}, step={4}
 T U V < W java/lang/Double (D)Ljava/lang/Double; Y ^Progress Contributor after progress: count={0}, new parentUnits={2}, new lastParentedUnits={1}
 [ \ ] ^ F java/lang/Class getName
 H ` a b 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; (Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this 9Lorg/netbeans/api/progress/aggregate/ProgressContributor; MethodParameters getTrackingId 	setParent @(Lorg/netbeans/api/progress/aggregate/AggregateProgressHandle;)V par getWorkUnits ()I getRemainingParentWorkUnits setAvailableParentWorkUnits (I)V newCount getCompletedRatio ()D StackMapTable start finish workunit message count Z unit delta step D <clinit> 
SourceFile ProgressContributor.java 1       . /                                     c  d   a     *· *+µ *µ *µ *µ ±    e       .  / 	 0  1  2  3 f        g h         i        j F  d   /     *´ °    e       9 f        g h     k l  d   >     *+µ ±    e   
    =  > f        g h      m   i    m     n o  d   /     *´ ¬    e       A f        g h     p o  d   /     *´ ¬    e       E f        g h     q r  d   >     *µ ±    e   
    I  J f        g h      s   i    s     t u  d   K     *´  § *´ *´ l¯    e       M f        g h   v    I  w r  d   d     *´ Ç ±*µ *´ *¶ ±    e       U  V  X  Y  Z f        g h         v     i        x   d   m     %*´ Ç ±*´ *´ ¢ **´ ¶ $*´ *¶ (±    e       b  c  e  f  h $ i f       % g h   v      & r  d   ?     *¶ $±    e   
    q  r f        g h      y   i    y    & c  d   B     
*+*´ ¶ $±    e   
    y 	 z f       
 g h     
 z   i    z    & '  d  *    Q*´ Ç ±*´ ¡ *´ ¤ C² ,² 06½ Y+SY¸ 8SY*´ ¸ 8SY*´ ¸ 8SY*´ ´ >SY¸ AS¶ G±+Æ *´   *´ *+¶ M±*µ *´ *´ d>*´ *´ *´ doo9 ¹o6*´    § 6 ?² ,² 0Q½ Y*´ ¸ 8SY*´ ¸ 8SY*´ ¸ 8SY¸ 8SY¸ SS¶ G**´ k`µ **´ dµ  .² ,² 0X½ Y¸ 8SY*´ ¸ 8SY*´ ¸ 8S¶ G*´ *+¶ M±    e   Z           W  X  d  n  o  t  ~      ¢  ¹  ¾  ú 
   E ¤P ¦ f   H  ¢ ® {   ¹  K |   Q g h    Q z    Q }   ~ Ó ~    ¿    v    
?þ B@ü Bû Jù 
 i   	 z   }       d   $      ¶ Z¸ _³ ,±    e       $      