����   4 Q	      #org/openide/loaders/XMLDataObject$1 this$0 #Lorg/openide/loaders/XMLDataObject;
  	 
   java/lang/Object <init> ()V   org/openide/cookies/EditorCookie
      java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z  org/openide/cookies/OpenCookie  org/openide/cookies/CloseCookie  org/openide/cookies/PrintCookie
       !org/openide/loaders/XMLDataObject 
access$000 G(Lorg/openide/loaders/XMLDataObject;)Lorg/openide/cookies/EditorCookie;
  " # $ createEditorCookie $()Lorg/openide/cookies/EditorCookie;
  & ' ( 
access$002 i(Lorg/openide/loaders/XMLDataObject;Lorg/openide/cookies/EditorCookie;)Lorg/openide/cookies/EditorCookie;  * + , getClass ()Ljava/lang/Class;
  . / 0 cast &(Ljava/lang/Object;)Ljava/lang/Object; 2 org/openide/nodes/Node$Cookie 4 #org/openide/nodes/CookieSet$Factory &(Lorg/openide/loaders/XMLDataObject;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/loaders/XMLDataObject$1; MethodParameters createCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; klass Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<TT;>; StackMapTable 	Signature ?<T::Lorg/openide/nodes/Node$Cookie;>(Ljava/lang/Class<TT;>;)TT; 
SourceFile XMLDataObject.java EnclosingMethod I  registerEditor InnerClasses L org/openide/nodes/Node Cookie O org/openide/nodes/CookieSet Factory      3          5  6   >     
*+� *� �    7       � 8       
 9 :     
    ;    �  < =  6   �     q+� � +� � +� � +� � N*� � � *� *� � !� %W*� � � �+*� � � ) � � +*� � � -� 1� ��    7   "    �  �  �  � $ � = � I � o � 8       q 9 :     q > ?  @       q > A  B    $#@ 1  ;    >   C    D  E    F G     H J            1 K M	 3 N P	