����   4 Q
      -org/openide/text/EditorSupportLineSet$COSHack getCloneableEditorSupport I(Lorg/openide/text/PositionRef;)Lorg/openide/text/CloneableEditorSupport;
  	 
   java/lang/Object <init> ()V
      org/openide/text/PositionRef +()Lorg/openide/text/CloneableEditorSupport;	     redirectMethod Ljava/lang/reflect/Method;
      java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;  'org/openide/text/CloneableEditorSupport   java/lang/IllegalAccessException ! "java/lang/IllegalArgumentException # java/lang/SecurityException % +java/lang/reflect/InvocationTargetException ' 2org/openide/windows/CloneableOpenSupportRedirector ) findRedirect + java/lang/Class - (org/openide/windows/CloneableOpenSupport
 * / 0 1 getDeclaredMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
  3 4 5 setAccessible (Z)V 7 java/lang/NoSuchMethodException Code LineNumberTable LocalVariableTable this /Lorg/openide/text/EditorSupportLineSet$COSHack; result Ljava/lang/Object; pos Lorg/openide/text/PositionRef; orig )Lorg/openide/text/CloneableEditorSupport; StackMapTable MethodParameters 
access$000 x0 <clinit> m J java/lang/Throwable 
SourceFile EditorSupportLineSet.java InnerClasses O %org/openide/text/EditorSupportLineSet COSHack 0                8   /     *� �    9       :        ; <   
    8   �     ?*� L+� 	� � +�� � Y+S� M,� � ,� �� M� M� M� M+�   , 0   , 4    , 8 "  , < $  9   >       ! ( -% 0! 1% 4" 5% 8# 9% <$ =' :      !  = >    ? ? @    : A B  C    �  B C  C "C $  D    ?  E   8   /     *� �    9       :        F @    G   8   �     7K&(� *Y,S� .K*� 2*� � L*� � L*� � 
M*� ,��     6   ' "   /    9   :   
        $ ' ( , / 4 6 :      4 H    C    �     6G "G I�   K    L M   
   N P 