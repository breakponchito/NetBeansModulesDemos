����   4 8
      %org/openide/awt/ToolbarWithOverflow$4 superUpdateUI ()V	   	 
 this$0 %Lorg/openide/awt/ToolbarWithOverflow;
      javax/swing/JButton <init> (Ljavax/swing/Icon;)V	      org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;  'org/openide/awt/ToolbarWithOverflow$4$1
     *(Lorg/openide/awt/ToolbarWithOverflow$4;)V
     
readAccess (Ljava/lang/Runnable;)V
  ! "  updateUI :(Lorg/openide/awt/ToolbarWithOverflow;Ljavax/swing/Icon;)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/awt/ToolbarWithOverflow$4; icon Ljavax/swing/Icon; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
access$500 x0 
SourceFile ToolbarWithOverflow.java EnclosingMethod 4 #org/openide/awt/ToolbarWithOverflow 6  setupOverflowButton InnerClasses        	 
       #  $   I     *+� *,� �    %       &         ' (      	 
     ) *  +   	 	� )    "   $   =     � � Y*� � �    %   
   ! ' &        ' (   ,     -       $   3     *�  �    %   
   * + &        ' (   .   $   /     *� �    %       &        / (    0    1 2    3 5 7                  