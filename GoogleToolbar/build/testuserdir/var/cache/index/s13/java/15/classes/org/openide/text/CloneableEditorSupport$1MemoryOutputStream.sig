ΚώΊΎ   4 6	      ;org/openide/text/CloneableEditorSupport$1MemoryOutputStream this$0 )Lorg/openide/text/CloneableEditorSupport;
  	 
   java/io/ByteArrayOutputStream <init> (I)V	     buf [B	     count I
      java/io/OutputStream write ([BII)V -(Lorg/openide/text/CloneableEditorSupport;I)V Code LineNumberTable LocalVariableTable this =Lorg/openide/text/CloneableEditorSupport$1MemoryOutputStream; size MethodParameters writeTo (Ljava/io/OutputStream;)V os Ljava/io/OutputStream; 
Exceptions ) java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile CloneableEditorSupport.java EnclosingMethod 0 'org/openide/text/CloneableEditorSupport 2 3 saveDocumentImpl %(Ljavax/swing/text/StyledDocument;Z)V InnerClasses MemoryOutputStream                    Q     *+΅ *· ±            
                        !   "   	  !    # $     F     +*΄ *΄ Ά ±       
                     % &  '     ( "    %   *     +    ,    - .    / 1 4   
     5  