����   4 -	      org/openide/text/LineVector$Ref this$0 Lorg/openide/text/LineVector;
  	 
   org/openide/util/BaseUtilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
      java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
      org/openide/text/LineVector refGC ()V  java/lang/Runnable 7(Lorg/openide/text/LineVector;Lorg/openide/text/Line;)V Code LineNumberTable LocalVariableTable this !Lorg/openide/text/LineVector$Ref; line Lorg/openide/text/Line; MethodParameters run #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 	Signature JLjava/lang/ref/WeakReference<Lorg/openide/text/Line;>;Ljava/lang/Runnable; 
SourceFile LineVector.java InnerClasses Ref 0                  J     *+� *,� � �          � � �                 ! "  #   	  !    $      6     *� � �       
   � �              %     &    '    ( )    * +   
    , 