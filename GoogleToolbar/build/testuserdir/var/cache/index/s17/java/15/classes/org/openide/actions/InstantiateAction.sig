����   4 b
      #org/openide/util/actions/NodeAction <init> ()V  org/openide/loaders/DataObject
 
     org/openide/nodes/Node 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
     
isTemplate ()Z
      %org/openide/actions/InstantiateAction instantiateTemplate 1(Lorg/openide/loaders/DataObject;)Ljava/util/Set;  $org/openide/util/UserCancelException  java/io/IOException
     ! " org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V $ Instantiate
 & ' ( ) * org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; , org/openide/util/HelpCtx
 + .  / (Ljava/lang/Class;)V
 1 2 3 4 5 %org/openide/actions/NewTemplateAction 	getWizard >(Lorg/openide/nodes/Node;)Lorg/openide/loaders/TemplateWizard;
 7 8 9 :  "org/openide/loaders/TemplateWizard instantiate serialVersionUID J ConstantValue���1�� Code LineNumberTable LocalVariableTable this 'Lorg/openide/actions/InstantiateAction; enable ([Lorg/openide/nodes/Node;)Z activatedNodes [Lorg/openide/nodes/Node; obj  Lorg/openide/loaders/DataObject; StackMapTable MethodParameters performAction ([Lorg/openide/nodes/Node;)V ex Ljava/io/IOException; H getName ()Ljava/lang/String; 
getHelpCtx ()Lorg/openide/util/HelpCtx; 
Exceptions 	Signature S(Lorg/openide/loaders/DataObject;)Ljava/util/Set<Lorg/openide/loaders/DataObject;>; 
SourceFile InstantiateAction.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; InnerClasses ` org/openide/nodes/Node$Cookie Cookie !       ; <  =    >      @   /     *� �    A       ' B        C D    E F  @   |     %+�� �+2� 	� M,� ,� � � �    A       ,  -  . B        % C D     % G H    I J  K    �  @ L    G    M N  @   �     )+2� 	� M,� ,� � ,� W� N� N-� �        #   A   & 	   2  3  5  ;  6   ; # 9 $ : ( = B   *  $  O P    ) C D     ) G H    I J  K    �    Q   C  L    G    R S  @   2     #� %�    A       B B        C D    T U  @   4     
� +Y� -�    A       F B       
 C D   	    @   3     	� 0*� 6�    A       U B       	 I J   V      L    I   W    X  Y    Z [     \     ]   ^   
  _ 
 a	