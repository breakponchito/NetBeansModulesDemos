����   4 <
      java/lang/Object <init> ()V	  	 
   Oorg/netbeans/modules/openide/nodes/NodesRegistrationSupport$AbstractRegistrator cls Ljava/lang/Class;
     init
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
     lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	      Lorg/openide/util/Lookup$Result;
     register
 ! " # $ % org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V ' org/openide/util/LookupListener (Ljava/lang/Class;)V Code LineNumberTable LocalVariableTable this QLorg/netbeans/modules/openide/nodes/NodesRegistrationSupport$AbstractRegistrator; MethodParameters resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile NodesRegistrationSupport.java InnerClasses 9 ;org/netbeans/modules/openide/nodes/NodesRegistrationSupport AbstractRegistrator Result     &                 (  )   q     %*� *+� *� *� +� � *� *� *�  �    *       �  � 	 �  �  �  � $ � +       % , -     %    .                  / 0  )   O     *� *� � � *� �    *         +        , -      1 2  .    1   3     4    5    6 7      8 :
 !  ;	