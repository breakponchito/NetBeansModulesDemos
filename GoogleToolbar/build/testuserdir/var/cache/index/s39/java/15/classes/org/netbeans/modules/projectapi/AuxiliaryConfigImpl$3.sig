����   4 W	      5org/netbeans/modules/projectapi/AuxiliaryConfigImpl$3 this$0 5Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;	   	 
 val$elementName Ljava/lang/String;	    
 val$namespace	     
val$shared Z
      java/lang/Object <init> ()V
      3org/netbeans/modules/projectapi/AuxiliaryConfigImpl 
access$000 Y(Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;)Lorg/netbeans/api/project/Project;    ! " #  org/netbeans/api/project/Project 	getLookup ()Lorg/openide/util/Lookup; % /org/netbeans/spi/project/AuxiliaryConfiguration
 ' ( ) * + org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object; $ - . / removeConfigurationFragment ((Ljava/lang/String;Ljava/lang/String;Z)Z
  1 2 3 
access$200 ](Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;Ljava/lang/String;Ljava/lang/String;Z)Z
 5 6 7 8 9 java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
  ; < = run ()Ljava/lang/Boolean; ? org/openide/util/Mutex$Action ](Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl;Ljava/lang/String;Ljava/lang/String;Z)V Code LineNumberTable LocalVariableTable this 7Lorg/netbeans/modules/projectapi/AuxiliaryConfigImpl$3; MethodParameters 	Signature delegate 1Lorg/netbeans/spi/project/AuxiliaryConfiguration; result StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/lang/Object; FLjava/lang/Object;Lorg/openide/util/Mutex$Action<Ljava/lang/Boolean;>; 
SourceFile AuxiliaryConfigImpl.java EnclosingMethod InnerClasses U org/openide/util/Mutex Action      >  	 
    
               @  A   N     *+� *,� *-� *� *� �    B       � C        D E         F    � 	   G      < =  A   �     K*� � �  $� &� $L=+� +*� *� *� � , �=*� *� *� *� � 0�=� 4�    B          0 F C        K D E    6 H I   4 J   K   	 � 0 $ L     M  A < N  A   /     *� :�    B       � C        D E   L     M    G    O P    Q R     - S            > T V	