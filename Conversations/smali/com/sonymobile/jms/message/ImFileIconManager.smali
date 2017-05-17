.class public Lcom/sonymobile/jms/message/ImFileIconManager;
.super Ljava/lang/Object;
.source "ImFileIconManager.java"


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mImFileIconDir:Ljava/io/File;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImFileIconListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mListeners:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mAppCtx:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "im_thumbnail_dir"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mImFileIconDir:Ljava/io/File;

    .line 43
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mImFileIconDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mImFileIconDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Failed to create ImFileIcon directory \'"

    .line 45
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mImFileIconDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'!"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V

    goto :goto_0
.end method

.method private closeStream(Ljava/io/FileOutputStream;)V
    .locals 1
    .param p1, "fileOutputStream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getFileIconFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mImFileIconDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "thumbnail_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyListeners(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    return-void

    .line 137
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/message/ImFileIconListener;

    .line 138
    .local v1, "listener":Lcom/sonymobile/jms/message/ImFileIconListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImFileIconListener;->onFileIconStored(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeFileIconDataAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 118
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sonymobile/jms/message/ImFileIconManager;->getFileIconFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 119
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v5, 0x4b

    :try_start_2
    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 127
    invoke-direct {p0, p2}, Lcom/sonymobile/jms/message/ImFileIconManager;->notifyListeners(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 132
    invoke-direct {p0, v3}, Lcom/sonymobile/jms/message/ImFileIconManager;->closeStream(Ljava/io/FileOutputStream;)V

    .line 134
    return-void

    .line 119
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    new-instance v4, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileIcon for msg \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' already exists and can not be delete!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 129
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    :try_start_4
    new-instance v4, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Store fileicon message \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 132
    :goto_1
    invoke-direct {p0, v2}, Lcom/sonymobile/jms/message/ImFileIconManager;->closeStream(Ljava/io/FileOutputStream;)V

    throw v4

    .line 123
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_5
    new-instance v4, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileIcon for msg \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' cannot be created!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 133
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    return-void
.end method

.method ensureFileIconRemovedForMessageId(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImFileIconManager;->getFileIconFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 101
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Failed to delete the existing thumnail associated to msg \'"

    .line 103
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'!"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsError()V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    goto :goto_0
.end method

.method getFileIcon(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImFileIconManager;->getFileIconFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 60
    return-object v1
.end method

.method onImFileMessageInvitationReceived(Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;)V
    .locals 5
    .param p1, "invitation"    # Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->getFileIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    .local v1, "fileIcon":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;->getMessage()Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "msgId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/jms/message/ImFileIconManager;->storeFileIconDataAsFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not store fileicon for message \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 86
    .end local v0    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :cond_1
    return-void
.end method

.method registerFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V
    .locals 1
    .param p1, "imFileIconListener"    # Lcom/sonymobile/jms/message/ImFileIconListener;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method unregisterFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V
    .locals 1
    .param p1, "imFileIconListener"    # Lcom/sonymobile/jms/message/ImFileIconListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImFileIconManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method
