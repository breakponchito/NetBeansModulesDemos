����   4 8	      "org/openide/util/NbCollections$4$1 this$0 "Lorg/openide/util/NbCollections$4;
  	 
   java/lang/Object <init> ()V	       org/openide/util/NbCollections$4 val$enumeration Ljava/util/Enumeration;      java/util/Enumeration hasMoreElements ()Z     nextElement ()Ljava/lang/Object;  'java/lang/UnsupportedOperationException
  	 ! java/util/Iterator %(Lorg/openide/util/NbCollections$4;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/util/NbCollections$4$1; MethodParameters hasNext next 	Signature ()TE; remove #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; +Ljava/lang/Object;Ljava/util/Iterator<TE;>; 
SourceFile NbCollections.java EnclosingMethod 5 6 iterator ()Ljava/util/Iterator; InnerClasses                 "  #   >     
*+� *� �    $      # %       
 & '     
    (    �  )   #   7     *� � �  �    $      % %        & '    *   #   7     *� � �  �    $      ( %        & '   +    ,  -   #   2     � Y� �    $      , %        & '   .     /    +    0 1    2 3     4 7                  