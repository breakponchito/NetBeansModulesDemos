����   4 /
      -org/openide/util/actions/CallbackSystemAction <init> ()V
   	  
initialize  !javax/swing/text/DefaultEditorKit  cut-to-clipboard  org/openide/actions/CutAction  Cut
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;  org/openide/util/HelpCtx
     (Ljava/lang/Class;)V  %org/openide/resources/actions/cut.gif Code LineNumberTable LocalVariableTable this Lorg/openide/actions/CutAction; getActionMapKey ()Ljava/lang/Object; getName ()Ljava/lang/String; 
getHelpCtx ()Lorg/openide/util/HelpCtx; iconResource asynchronous ()Z 
SourceFile CutAction.java !               /     *� �             !        " #    	      3     *� �        
       ! !        " #    $ %     -     �            $ !        " #    & '     2     � �            ( !        " #    ( )     4     
� Y� �            , !       
 " #    * '     -     �            0 !        " #    + ,     ,     �            4 !        " #    -    .