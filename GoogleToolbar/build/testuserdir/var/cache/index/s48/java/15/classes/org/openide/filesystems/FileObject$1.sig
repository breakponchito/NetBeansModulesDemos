����   4 I	      $org/openide/filesystems/FileObject$1 this$0 $Lorg/openide/filesystems/FileObject;	   	 
 val$os Ljava/io/OutputStream;	     val$lock "Lorg/openide/filesystems/FileLock;
      java/io/FilterOutputStream <init> (Ljava/io/OutputStream;)V
      java/io/OutputStream write ([BII)V
     flush ()V
   ! " #   org/openide/filesystems/FileLock releaseLock
  % &  close ( java/io/IOException
   * + , isValid ()Z u(Lorg/openide/filesystems/FileObject;Ljava/io/OutputStream;Ljava/io/OutputStream;Lorg/openide/filesystems/FileLock;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/FileObject$1; out MethodParameters b [B off I len 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; iex Ljava/io/IOException; StackMapTable 
SourceFile FileObject.java EnclosingMethod D "org/openide/filesystems/FileObject F G getOutputStreamImpl ()Ljava/io/OutputStream; InnerClasses        	 
               -  .   T     *+� *-� *� *,� �    /      % 0         1 2            3 
  4    � 3   	      .   W     *� +� �    /   
   * 
+ 0   *     1 2      5 6     7 8     9 8  :     ' 4    5   7   9   ;     <    &   .   �     '*� *� � *� $� L*� � )� 
*� � +��      '  /   & 	  0 1 2 8 3 4 5 $7 &9 0       = >    ' 1 2   ?    R '�  '�  :     ' ;     <    @    A B    C E H   
        