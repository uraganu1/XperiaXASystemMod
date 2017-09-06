.class Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ContactsAsyncHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/incallui/ContactsAsyncHelper;

    .line 120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    return-void
.end method

.method private getPhotoIconWhenAppropriate(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x0

    .line 191
    instance-of v8, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_0

    .line 192
    return-object v10

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 195
    const v9, 0x7f0800bd

    .line 194
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 196
    .local v0, "iconSize":I
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "photo":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 197
    .local v4, "orgBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 198
    .local v6, "orgWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 199
    .local v5, "orgHeight":I
    if-le v6, v5, :cond_2

    move v1, v6

    .line 201
    .local v1, "longerEdge":I
    :goto_0
    if-le v1, v0, :cond_4

    .line 202
    int-to-float v8, v1

    int-to-float v9, v0

    div-float v7, v8, v9

    .line 203
    .local v7, "ratio":F
    int-to-float v8, v6

    div-float/2addr v8, v7

    float-to-int v3, v8

    .line 204
    .local v3, "newWidth":I
    int-to-float v8, v5

    div-float/2addr v8, v7

    float-to-int v2, v8

    .line 207
    .local v2, "newHeight":I
    if-lez v3, :cond_1

    if-gtz v2, :cond_3

    .line 208
    :cond_1
    const-string/jumbo v8, "Photo icon\'s width or height become 0."

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    return-object v10

    .line 199
    .end local v1    # "longerEdge":I
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v7    # "ratio":F
    :cond_2
    move v1, v5

    .restart local v1    # "longerEdge":I
    goto :goto_0

    .line 214
    .restart local v2    # "newHeight":I
    .restart local v3    # "newWidth":I
    .restart local v7    # "ratio":F
    :cond_3
    const/4 v8, 0x1

    invoke-static {v4, v3, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8

    .line 216
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v7    # "ratio":F
    :cond_4
    return-object v4
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    .line 127
    .local v0, "args":Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;
    iget v7, p1, Landroid/os/Message;->arg1:I

    sparse-switch v7, :sswitch_data_0

    .line 179
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/incallui/ContactsAsyncHelper;

    invoke-static {v7}, Lcom/android/incallui/ContactsAsyncHelper;->-get0(Lcom/android/incallui/ContactsAsyncHelper;)Landroid/os/Handler;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 180
    .local v6, "reply":Landroid/os/Message;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 181
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void

    .line 129
    .end local v6    # "reply":Landroid/os/Message;
    :sswitch_0
    const/4 v5, 0x0

    .line 132
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 133
    iget-object v8, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    .line 132
    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 138
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :goto_1
    if-eqz v5, :cond_2

    .line 140
    :try_start_1
    iget-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 141
    iget-object v8, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 140
    const/4 v9, 0x0

    .line 141
    const/4 v10, 0x0

    .line 139
    invoke-static {v7, v9, v5, v8, v10}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->getPhotoIconWhenAppropriate(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    .line 147
    iget-object v7, p0, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/incallui/ContactsAsyncHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loading image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 148
    const-string/jumbo v9, " token: "

    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 148
    iget v9, p1, Landroid/os/Message;->what:I

    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 148
    const-string/jumbo v9, " image URI: "

    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 148
    iget-object v9, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :goto_2
    if-eqz v5, :cond_0

    .line 159
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "Unable to close input stream."

    invoke-static {p0, v7, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v7, "Error opening photo input stream"

    invoke-static {p0, v7, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 156
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    .line 157
    if-eqz v5, :cond_1

    .line 159
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 156
    :cond_1
    :goto_3
    throw v7

    .line 150
    :cond_2
    const/4 v7, 0x0

    :try_start_5
    iput-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 151
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    .line 152
    iget-object v7, p0, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/incallui/ContactsAsyncHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Problem with image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 153
    const-string/jumbo v9, " token: "

    .line 152
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 153
    iget v9, p1, Landroid/os/Message;->what:I

    .line 152
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 153
    const-string/jumbo v9, " image URI: "

    .line 152
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 153
    iget-object v9, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    .line 152
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 154
    const-string/jumbo v9, ", using default image."

    .line 152
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 160
    :catch_2
    move-exception v2

    .line 161
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "Unable to close input stream."

    invoke-static {p0, v8, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    :sswitch_1
    iget-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->extension:Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;

    if-eqz v7, :cond_0

    .line 168
    iget-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/incallui/SomcGawUtil;->getInstance(Landroid/content/Context;)Lcom/android/incallui/SomcGawUtil;

    move-result-object v4

    .line 169
    .local v4, "imageUtil":Lcom/android/incallui/SomcGawUtil;
    iget-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->extension:Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;

    iget-object v7, v7, Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;->name:Ljava/lang/String;

    .line 170
    iget-object v8, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->extension:Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;

    iget-object v8, v8, Lcom/android/incallui/ContactsAsyncHelper$WorkerExtensionArgs;->phoneNumber:Ljava/lang/String;

    .line 169
    invoke-virtual {v4, v7, v8}, Lcom/android/incallui/SomcGawUtil;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 171
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    .line 172
    iget-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/ContactsAsyncHelper$WorkerHandler;->getPhotoIconWhenAppropriate(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
