����   4 ;	      'org/netbeans/api/project/ProjectUtils$2 
val$master "Lorg/netbeans/api/project/Project;	   	  val$candidate
      java/lang/Object <init> ()V  java/util/HashMap
  
      %org/netbeans/api/project/ProjectUtils 
access$000 x(Ljava/util/Map;Lorg/netbeans/api/project/Project;Lorg/netbeans/api/project/Project;Lorg/netbeans/api/project/Project;)Z
      java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
    ! " run ()Ljava/lang/Boolean; $ org/openide/util/Mutex$Action G(Lorg/netbeans/api/project/Project;Lorg/netbeans/api/project/Project;)V Code LineNumberTable LocalVariableTable this )Lorg/netbeans/api/project/ProjectUtils$2; MethodParameters 	Signature #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/lang/Object; FLjava/lang/Object;Lorg/openide/util/Mutex$Action<Ljava/lang/Boolean;>; 
SourceFile ProjectUtils.java EnclosingMethod 5 6 hasSubprojectCycles G(Lorg/netbeans/api/project/Project;Lorg/netbeans/api/project/Project;)Z InnerClasses 9 org/openide/util/Mutex Action      #      	        %  &   9     *+� *,� *� 
�    '       � (        ) *   +   	  	 ,      ! "  &   D     � Y� *� *� *� � � �    '       � (        ) *   -     .  A ! /  &   /     *� �    '       � (        ) *   -     .    ,    0 1    2 3     4 7            # 8 :	