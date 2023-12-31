Ęþšū   4 
      >org/openide/explorer/propertysheet/ComboBoxAutoCompleteSupport getPopupList ,(Ljavax/swing/JComboBox;)Ljavax/swing/JList;
  	 
   java/lang/Object <init> ()V
      javax/swing/JComboBox 	getEditor ()Ljavax/swing/ComboBoxEditor;      javax/swing/ComboBoxEditor getEditorComponent ()Ljava/awt/Component;  javax/swing/text/JTextComponent
     getDocument ()Ljavax/swing/text/Document;   Sorg/openide/explorer/propertysheet/ComboBoxAutoCompleteSupport$AutoCompleteListener
  "  # (Ljavax/swing/JComboBox;)V % & ' ( ) javax/swing/text/Document addDocumentListener '(Ljavax/swing/event/DocumentListener;)V
  + , - setIgnoreSelectionEvents (Ljavax/swing/JComboBox;Z)V
  / 0 1 setEditable (Z)V 3 nb.combo.autocomplete
 5 6 7 8 9 java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
  ; < = putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V ? %nb.combo.autocomplete.ignoreselection
  A B C getClientProperty &(Ljava/lang/Object;)Ljava/lang/Object;
 5 E F G booleanValue ()Z
 I J K L G java/lang/String isEmpty
  N O P getItemCount ()I
  R S T 	getItemAt (I)Ljava/lang/Object;
  V W X toString ()Ljava/lang/String;
 I Z [ X toLowerCase
 I ] ^ _ 	compareTo (Ljava/lang/String;)I
 I a b c 
startsWith (Ljava/lang/String;)Z
  e f g getUI ()Ljavax/swing/plaf/ComboBoxUI;
 i j k l m javax/swing/plaf/ComboBoxUI getAccessibleChild ;(Ljavax/swing/JComponent;I)Ljavax/accessibility/Accessible; o !javax/swing/plaf/basic/ComboPopup n q r s getList ()Ljavax/swing/JList; Code LineNumberTable LocalVariableTable this @Lorg/openide/explorer/propertysheet/ComboBoxAutoCompleteSupport; install (Ljavax/swing/JComboBox;)Z 
textEditor !Ljavax/swing/text/JTextComponent; doc Ljavax/swing/text/Document; combo Ljavax/swing/JComboBox; res Z comboEditor Ljavax/swing/ComboBoxEditor; StackMapTable MethodParameters isIgnoreSelectionEvents Ljava/lang/Object; ignore isAutoCompleteInstalled 	findMatch ,(Ljavax/swing/JComboBox;Ljava/lang/String;)I item Ljava/lang/String; i I 
editorText a  Ljavax/accessibility/Accessible;  javax/accessibility/Accessible 
access$000 x0 
SourceFile  ComboBoxAutoCompleteSupport.java InnerClasses AutoCompleteListener 0             t   /     *· ą    u       % v        w x   	 y z  t   Ó     J<*ķ M,đ  Á  .,đ  Ā N-ķ :ŧ Y*· !đ $ *ļ **ķ .<*2ļ 4ķ :Ž    u   .    (  )  *  +  , # - 2 . 7 / < 0 > 2 H 3 v   4   ! { |  #  } ~    J      H     C       	 ý >           z  t   f     *>ķ @L+Á 5 +Ā 5ķ D § Ž    u   
    7  9 v                    
 ü  @         , -  t   C     *>ļ 4ķ :ą    u   
    = 
 > v                     	         z  t   f     *2ķ @L+Á 5 +Ā 5ķ D § Ž    u   
    A  C v                    
 ü  @            t       \+Ĩ 
+ķ H Ž=*ķ MĒ *ķ Qķ UN-ķ Y+ķ \ Ž§ĸß=*ķ MĒ *ķ Qķ UN-ķ Y+ķ ` Ž§ĸßŽ    u   6           !  ,  .  4  >  G  R  T  Z  v   >  !      $    G     6 $      \       \        ü ú ü ú     	       
    t   k     *ķ d*ķ hL+Á n +Ā nđ p °°    u        
     Ą v            
         ü             t   /     *ļ °    u       % v                     
     
