����   4 D
      java/lang/Object <init> ()V  4org/netbeans/modules/openide/text/AskEditorQuestions 
 ASK_OnReload
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;  yes
      java/lang/String equals (Ljava/lang/Object;)Z  no  )org/openide/NotifyDescriptor$Confirmation  org/openide/NotifyDescriptor
     ! (Ljava/lang/Object;I)V
 # $ % & ' org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer;
 # ) * + notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;	  - . / 	OK_OPTION Ljava/lang/Object;
   Code LineNumberTable LocalVariableTable this 6Lorg/netbeans/modules/openide/text/AskEditorQuestions; askReloadDocument (Ljava/lang/String;)Z localizedMessage Ljava/lang/String; ask nd Lorg/openide/NotifyDescriptor; res StackMapTable MethodParameters 
SourceFile AskEditorQuestions.java InnerClasses Confirmation 1            1   3     *� �    2   
       3        4 5   	 6 7  1   �     >	� L+� � �+� � �� Y*� M� ",� (N� ,-� 0� ��    2   * 
          "  #  % ( & 0 ' : ( < * 3   *    > 8 9    6 : 9  (  ; <  0  = /  >    �  
�    ?    8    @    A B   
    C 	