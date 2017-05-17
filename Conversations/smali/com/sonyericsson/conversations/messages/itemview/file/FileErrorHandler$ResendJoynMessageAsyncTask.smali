.class Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;
.super Landroid/os/AsyncTask;
.source "FileErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResendJoynMessageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;-><init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)V

    return-void
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 8
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 85
    :try_start_0
    throw p1
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->logMessageResendFailed(Ljava/lang/Exception;)V

    .line 83
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_1
    move-exception v5

    .line 99
    .local v5, "e":Ljava/lang/Exception;
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->logMessageResendFailed(Ljava/lang/Exception;)V

    .line 100
    instance-of v7, v5, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_0

    .line 101
    const-string/jumbo v7, "Failed to resend message"

    invoke-static {v7, v5}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 102
    check-cast v5, Ljava/lang/RuntimeException;

    .end local v5    # "e":Ljava/lang/Exception;
    throw v5

    .line 96
    :catch_2
    move-exception v6

    .line 97
    .local v6, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->logMessageResendFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 94
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v4

    .line 95
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->logMessageResendFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 92
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 93
    .local v2, "e":Lcom/sonymobile/jms/file/FileTooBigException;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->logMessageResendFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 90
    .end local v2    # "e":Lcom/sonymobile/jms/file/FileTooBigException;
    :catch_5
    move-exception v3

    .line 91
    .local v3, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->logMessageResendFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 88
    .end local v3    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_6
    move-exception v1

    .line 89
    .local v1, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->logMessageResendFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private logMessageResendFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 108
    const-string/jumbo v0, "Failed to resend message with msgId \'"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->-get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "\'"

    .line 108
    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->-get1(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-static {v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->-get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->resendImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonyericsson/conversations/model/JoynMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->-get3(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Landroid/content/Context;

    move-result-object v0

    .line 77
    const v1, 0x7f0b01f9

    .line 78
    const/4 v2, 0x0

    .line 76
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->handleException(Ljava/lang/Exception;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler$ResendJoynMessageAsyncTask;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;->-get3(Lcom/sonyericsson/conversations/messages/itemview/file/FileErrorHandler;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 59
    return-void
.end method
