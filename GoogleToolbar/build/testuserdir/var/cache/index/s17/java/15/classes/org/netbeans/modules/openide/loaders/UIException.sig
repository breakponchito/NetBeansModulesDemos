����   4 B
      java/lang/Object <init> ()V
  	 
   =org/netbeans/modules/openide/loaders/UIException$AnnException findOrCreate W(Ljava/lang/Throwable;Z)Lorg/netbeans/modules/openide/loaders/UIException$AnnException;  java/util/logging/LogRecord	      9org/netbeans/modules/openide/loaders/UIException$OwnLevel USER Ljava/util/logging/Level;
     .(Ljava/util/logging/Level;Ljava/lang/String;)V
     	setThrown (Ljava/lang/Throwable;)V
     	addRecord  (Ljava/util/logging/LogRecord;)V
 ! " # $ % org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable; ' 0org/netbeans/modules/openide/loaders/UIException Code LineNumberTable LocalVariableTable this 2Lorg/netbeans/modules/openide/loaders/UIException; annotateUser a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Date;)V t Ljava/lang/Throwable; msg Ljava/lang/String; locMsg 
stackTrace date Ljava/util/Date; ex ?Lorg/netbeans/modules/openide/loaders/UIException$AnnException; rec Ljava/util/logging/LogRecord; StackMapTable MethodParameters 
SourceFile UIException.java InnerClasses AnnException OwnLevel 1 &           (   3     *� �    )   
    *  + *        + ,   	 - .  (   �     0*� :� Y� +� :-� 	-� � ,� 	*,�  W�    )   "    4  5  6  7  9 % ; ) < / > *   H    0 / 0     0 1 2    0 3 2    0 4 0    0 5 6   ) 7 8    9 :  ;    �    <    /   1   3   4   5    =    > ?      & @   & A 