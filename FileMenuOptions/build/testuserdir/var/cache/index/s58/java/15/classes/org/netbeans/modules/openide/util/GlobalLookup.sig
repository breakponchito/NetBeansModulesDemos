����   4 @
      java/lang/Object <init> ()V	  	 
   .org/netbeans/modules/openide/util/GlobalLookup systemLookup Lorg/openide/util/Lookup;	     CURRENT Ljava/lang/ThreadLocal;
      java/lang/ThreadLocal get ()Ljava/lang/Object;  org/openide/util/Lookup
     set (Ljava/lang/Object;)V     !  java/lang/Runnable run
   	Signature 2Ljava/lang/ThreadLocal<Lorg/openide/util/Lookup;>; Code LineNumberTable LocalVariableTable this 0Lorg/netbeans/modules/openide/util/GlobalLookup; execute 0(Lorg/openide/util/Lookup;Ljava/lang/Runnable;)Z defaultLookup r Ljava/lang/Runnable; prev StackMapTable 2 java/lang/Throwable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value AssignmentToMethodParameter current ()Lorg/openide/util/Lookup; setSystemLookup (Lorg/openide/util/Lookup;)V lkp <clinit> 
SourceFile GlobalLookup.java !          #    $ J          %   3     *� �    &   
        '        ( )   	 * +  %   �     <*� � K� � � M,*� �� *� +�  � ,� � N� ,� -��   & 0    &   2    $  %  '  (  )  ,   - & / - 0 0 / 8 0 : 1 '        < ,      < - .   * /   0    �  V 1	 3   	 ,   -   4     5  6[ s 7 	 8 9  %   "      
� � � �    &       5 	 : ;  %   3     *� �    &   
    9  : '        <    3    <    =   %   #      � Y� "� �    &         >    ?